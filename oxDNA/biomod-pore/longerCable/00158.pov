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
	<23.931982, 34.659176, 34.998329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.244970, 34.894836, 34.917690>,  <24.432764, 35.036232, 34.869305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.244970, 34.894836, 34.917690>,  <23.931982, 34.659176, 34.998329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.244970, 34.894836, 34.917690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112573, 0.184585, 0.976348,
		0.612427, -0.786659, 0.078110,
		0.782471, 0.589149, -0.201602,
		24.479712, 35.071583, 34.857208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.504248, 34.464371, 35.414776>,  <23.931982, 34.659176, 34.998329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.504248, 34.464371, 35.414776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.488171, 34.848171, 35.303246>,  <24.478525, 35.078453, 35.236328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.488171, 34.848171, 35.303246>,  <24.504248, 34.464371, 35.414776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.488171, 34.848171, 35.303246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040662, 0.280389, 0.959025,
		0.998364, 0.027208, -0.050285,
		-0.040193, 0.959501, -0.278824,
		24.476112, 35.136021, 35.219597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.707760, 34.731998, 36.146957>,  <24.504248, 34.464371, 35.414776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.707760, 34.731998, 36.146957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.401039, 34.977436, 36.222336>,  <24.217007, 35.124699, 36.267563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.401039, 34.977436, 36.222336>,  <24.707760, 34.731998, 36.146957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.401039, 34.977436, 36.222336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604574, 0.591775, 0.533191,
		0.215648, 0.522781, -0.824740,
		-0.766802, 0.613598, 0.188445,
		24.170998, 35.161514, 36.278870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.754858, 35.458755, 35.931198>,  <24.707760, 34.731998, 36.146957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.754858, 35.458755, 35.931198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.491604, 35.468735, 36.232193>,  <24.333651, 35.474724, 36.412788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.491604, 35.468735, 36.232193>,  <24.754858, 35.458755, 35.931198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.491604, 35.468735, 36.232193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564245, 0.678066, 0.471014,
		-0.498482, 0.734578, -0.460339,
		-0.658136, 0.024952, 0.752485,
		24.294163, 35.476219, 36.457939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.501865, 36.174042, 35.711845>,  <24.754858, 35.458755, 35.931198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.501865, 36.174042, 35.711845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.178877, 35.983604, 35.572517>,  <23.985085, 35.869343, 35.488918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.178877, 35.983604, 35.572517>,  <24.501865, 36.174042, 35.711845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.178877, 35.983604, 35.572517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209313, -0.320821, 0.923722,
		-0.551527, 0.818785, 0.159400,
		-0.807469, -0.476093, -0.348323,
		23.936636, 35.840778, 35.468021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.701357, 36.783981, 35.660789>,  <24.501865, 36.174042, 35.711845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.701357, 36.783981, 35.660789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.044600, 36.666626, 35.829346>,  <25.250546, 36.596210, 35.930481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.044600, 36.666626, 35.829346>,  <24.701357, 36.783981, 35.660789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.044600, 36.666626, 35.829346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231606, 0.953612, 0.192310,
		-0.458269, -0.067425, 0.886253,
		0.858108, -0.293391, 0.421395,
		25.302032, 36.578609, 35.955765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.844488, 37.264767, 36.156395>,  <24.701357, 36.783981, 35.660789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.844488, 37.264767, 36.156395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214691, 37.113861, 36.143044>,  <25.436813, 37.023319, 36.135033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214691, 37.113861, 36.143044>,  <24.844488, 37.264767, 36.156395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.214691, 37.113861, 36.143044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371733, 0.888001, 0.270683,
		-0.072480, -0.262926, 0.962090,
		0.925506, -0.377260, -0.033376,
		25.492344, 37.000683, 36.133030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.149014, 37.503059, 36.738106>,  <24.844488, 37.264767, 36.156395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.149014, 37.503059, 36.738106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.461414, 37.422127, 36.501766>,  <25.648855, 37.373566, 36.359962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.461414, 37.422127, 36.501766>,  <25.149014, 37.503059, 36.738106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.461414, 37.422127, 36.501766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483746, 0.794353, 0.367413,
		0.395001, -0.572770, 0.718268,
		0.781002, -0.202331, -0.590846,
		25.695715, 37.361427, 36.324512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.794025, 37.463665, 37.130081>,  <25.149014, 37.503059, 36.738106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.794025, 37.463665, 37.130081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909870, 37.530399, 36.753086>,  <25.979378, 37.570438, 36.526890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909870, 37.530399, 36.753086>,  <25.794025, 37.463665, 37.130081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.909870, 37.530399, 36.753086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590066, 0.744192, 0.313050,
		0.753621, -0.646797, 0.117087,
		0.289615, 0.166831, -0.942492,
		25.996754, 37.580448, 36.470337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554880, 37.480530, 37.125397>,  <25.794025, 37.463665, 37.130081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.554880, 37.480530, 37.125397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.413536, 37.677330, 36.807133>,  <26.328730, 37.795410, 36.616173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.413536, 37.677330, 36.807133>,  <26.554880, 37.480530, 37.125397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.413536, 37.677330, 36.807133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513565, 0.812926, 0.274596,
		0.781913, -0.311592, -0.539928,
		-0.353359, 0.491998, -0.795660,
		26.307528, 37.824928, 36.568436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.101126, 37.784882, 36.875820>,  <26.554880, 37.480530, 37.125397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.101126, 37.784882, 36.875820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816126, 38.003258, 36.699505>,  <26.645126, 38.134285, 36.593716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816126, 38.003258, 36.699505>,  <27.101126, 37.784882, 36.875820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816126, 38.003258, 36.699505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444688, 0.837261, 0.318192,
		0.542770, 0.030697, -0.839320,
		-0.712498, 0.545940, -0.440790,
		26.602377, 38.167038, 36.567268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.365053, 38.393444, 36.386585>,  <27.101126, 37.784882, 36.875820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.365053, 38.393444, 36.386585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008041, 38.466106, 36.551697>,  <26.793835, 38.509705, 36.650764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008041, 38.466106, 36.551697>,  <27.365053, 38.393444, 36.386585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.008041, 38.466106, 36.551697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348767, 0.858301, 0.376405,
		-0.285918, 0.479918, -0.829415,
		-0.892531, 0.181652, 0.412783,
		26.740282, 38.520603, 36.675533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662893, 38.955109, 36.809708>,  <27.365053, 38.393444, 36.386585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662893, 38.955109, 36.809708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618219, 39.013565, 37.202885>,  <27.591415, 39.048637, 37.438789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618219, 39.013565, 37.202885>,  <27.662893, 38.955109, 36.809708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618219, 39.013565, 37.202885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696035, 0.717478, -0.027588,
		-0.709269, 0.681079, -0.181849,
		-0.111683, 0.146141, 0.982939,
		27.584715, 39.057407, 37.497765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964701, 39.191414, 37.093803>,  <27.662893, 38.955109, 36.809708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964701, 39.191414, 37.093803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849628, 39.395935, 36.769875>,  <26.780584, 39.518646, 36.575520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849628, 39.395935, 36.769875>,  <26.964701, 39.191414, 37.093803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.849628, 39.395935, 36.769875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645412, -0.728223, -0.230508,
		-0.707589, 0.456355, 0.539497,
		-0.287681, 0.511304, -0.809820,
		26.763325, 39.549328, 36.526928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.263842, 39.042461, 37.154224>,  <26.964701, 39.191414, 37.093803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.263842, 39.042461, 37.154224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432144, 39.106339, 36.797020>,  <26.533125, 39.144665, 36.582699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432144, 39.106339, 36.797020>,  <26.263842, 39.042461, 37.154224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.432144, 39.106339, 36.797020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388889, -0.857597, -0.336591,
		-0.819592, 0.488903, -0.298736,
		0.420756, 0.159692, -0.893008,
		26.558371, 39.154247, 36.529118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.677549, 39.095726, 36.636414>,  <26.263842, 39.042461, 37.154224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.677549, 39.095726, 36.636414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.029596, 38.945301, 36.520504>,  <26.240826, 38.855045, 36.450958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.029596, 38.945301, 36.520504>,  <25.677549, 39.095726, 36.636414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.029596, 38.945301, 36.520504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458055, -0.833093, -0.310067,
		-0.124800, 0.405627, -0.905479,
		0.880120, -0.376063, -0.289769,
		26.293633, 38.832481, 36.433575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.567823, 38.773563, 36.014446>,  <25.677549, 39.095726, 36.636414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.567823, 38.773563, 36.014446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885668, 38.606033, 36.190254>,  <26.076374, 38.505516, 36.295738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885668, 38.606033, 36.190254>,  <25.567823, 38.773563, 36.014446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.885668, 38.606033, 36.190254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329234, -0.905520, -0.267655,
		0.510095, 0.067976, -0.857428,
		0.794612, -0.418824, 0.439521,
		26.124052, 38.480385, 36.322109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823957, 38.354572, 35.497540>,  <25.567823, 38.773563, 36.014446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823957, 38.354572, 35.497540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988779, 38.206493, 35.830566>,  <26.087671, 38.117645, 36.030384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988779, 38.206493, 35.830566>,  <25.823957, 38.354572, 35.497540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.988779, 38.206493, 35.830566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188113, -0.928621, -0.319807,
		0.891530, -0.024839, -0.452280,
		0.412053, -0.370197, 0.832566,
		26.112394, 38.095436, 36.080338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280739, 37.868740, 35.260120>,  <25.823957, 38.354572, 35.497540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.280739, 37.868740, 35.260120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182156, 37.782154, 35.637989>,  <26.123005, 37.730202, 35.864708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182156, 37.782154, 35.637989>,  <26.280739, 37.868740, 35.260120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.182156, 37.782154, 35.637989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056668, -0.969851, -0.237020,
		0.967495, -0.111948, 0.226761,
		-0.246458, -0.216466, 0.944670,
		26.108219, 37.717213, 35.921391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.666752, 37.189281, 35.454933>,  <26.280739, 37.868740, 35.260120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.666752, 37.189281, 35.454933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351549, 37.222778, 35.698910>,  <26.162426, 37.242878, 35.845295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351549, 37.222778, 35.698910>,  <26.666752, 37.189281, 35.454933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351549, 37.222778, 35.698910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202921, -0.970675, -0.128893,
		0.581262, -0.225339, 0.781893,
		-0.788009, 0.083742, 0.609942,
		26.115147, 37.247902, 35.881893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.367573, 37.480824, 35.646400>,  <26.666752, 37.189281, 35.454933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.367573, 37.480824, 35.646400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.267218, 37.661648, 35.988792>,  <27.207005, 37.770142, 36.194225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.267218, 37.661648, 35.988792>,  <27.367573, 37.480824, 35.646400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.267218, 37.661648, 35.988792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968006, -0.121411, -0.219601,
		0.004651, -0.883684, 0.468061,
		-0.250886, 0.452065, 0.855975,
		27.191952, 37.797268, 36.245586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111429, 36.777237, 35.997921>,  <27.367573, 37.480824, 35.646400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.111429, 36.777237, 35.997921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461359, 36.961880, 35.939129>,  <27.671318, 37.072666, 35.903854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461359, 36.961880, 35.939129>,  <27.111429, 36.777237, 35.997921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461359, 36.961880, 35.939129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439515, -0.883885, -0.159921,
		-0.203730, 0.075304, -0.976127,
		0.874826, 0.461603, -0.146976,
		27.723806, 37.100361, 35.895035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485449, 36.124260, 35.993671>,  <27.111429, 36.777237, 35.997921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485449, 36.124260, 35.993671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714809, 36.436703, 35.894806>,  <27.852425, 36.624168, 35.835487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714809, 36.436703, 35.894806>,  <27.485449, 36.124260, 35.993671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.714809, 36.436703, 35.894806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778732, -0.613360, -0.131784,
		-0.254539, -0.116913, -0.959969,
		0.573399, 0.781103, -0.247168,
		27.886829, 36.671032, 35.820656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.146551, 35.926010, 35.459309>,  <27.485449, 36.124260, 35.993671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.146551, 35.926010, 35.459309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284893, 36.012558, 35.094109>,  <27.367899, 36.064487, 34.874989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284893, 36.012558, 35.094109>,  <27.146551, 35.926010, 35.459309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.284893, 36.012558, 35.094109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934549, -0.166212, 0.314629,
		-0.083676, -0.962060, -0.259691,
		0.345855, 0.216367, -0.913000,
		27.388649, 36.077469, 34.820210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887993, 35.762745, 36.157021>,  <27.146551, 35.926010, 35.459309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887993, 35.762745, 36.157021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134823, 35.860729, 36.456142>,  <27.282921, 35.919521, 36.635616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134823, 35.860729, 36.456142>,  <26.887993, 35.762745, 36.157021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134823, 35.860729, 36.456142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309948, -0.949153, 0.055155,
		0.723291, 0.197746, -0.661624,
		0.617076, 0.244962, 0.747805,
		27.319946, 35.934219, 36.680485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506872, 35.304596, 36.516731>,  <26.887993, 35.762745, 36.157021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506872, 35.304596, 36.516731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254652, 35.076946, 36.305637>,  <27.103319, 34.940357, 36.178982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254652, 35.076946, 36.305637>,  <27.506872, 35.304596, 36.516731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254652, 35.076946, 36.305637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747006, -0.629574, -0.213587,
		-0.210687, -0.528895, 0.822120,
		-0.630550, -0.569128, -0.527731,
		27.065487, 34.906208, 36.147320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488104, 34.505093, 36.662888>,  <27.506872, 35.304596, 36.516731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488104, 34.505093, 36.662888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360004, 34.515003, 36.284084>,  <27.283146, 34.520950, 36.056801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360004, 34.515003, 36.284084>,  <27.488104, 34.505093, 36.662888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360004, 34.515003, 36.284084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675913, -0.694450, -0.246741,
		-0.663765, -0.719114, 0.205647,
		-0.320247, 0.024778, -0.947010,
		27.263931, 34.522438, 35.999981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560040, 33.801949, 36.355427>,  <27.488104, 34.505093, 36.662888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560040, 33.801949, 36.355427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563282, 34.059574, 36.049454>,  <27.565228, 34.214149, 35.865871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563282, 34.059574, 36.049454>,  <27.560040, 33.801949, 36.355427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563282, 34.059574, 36.049454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627788, -0.598695, -0.497441,
		-0.778342, -0.476182, -0.409187,
		0.008106, 0.644062, -0.764930,
		27.565714, 34.252792, 35.819973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308384, 33.597439, 35.773540>,  <27.560040, 33.801949, 36.355427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308384, 33.597439, 35.773540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579309, 33.862961, 35.646664>,  <27.741865, 34.022274, 35.570538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579309, 33.862961, 35.646664>,  <27.308384, 33.597439, 35.773540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579309, 33.862961, 35.646664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519717, -0.736876, -0.432328,
		-0.520709, 0.127974, -0.844088,
		0.677315, 0.663804, -0.317188,
		27.782503, 34.062103, 35.551506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.372320, 33.756657, 34.986843>,  <27.308384, 33.597439, 35.773540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.372320, 33.756657, 34.986843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.684296, 33.774014, 35.236584>,  <27.871481, 33.784428, 35.386429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.684296, 33.774014, 35.236584>,  <27.372320, 33.756657, 34.986843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.684296, 33.774014, 35.236584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518804, -0.602802, -0.606195,
		0.350059, 0.796710, -0.492658,
		0.779937, 0.043389, 0.624352,
		27.918276, 33.787029, 35.423889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048983, 34.158703, 34.681381>,  <27.372320, 33.756657, 34.986843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048983, 34.158703, 34.681381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.084055, 33.836052, 34.915192>,  <28.105099, 33.642464, 35.055477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.084055, 33.836052, 34.915192>,  <28.048983, 34.158703, 34.681381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084055, 33.836052, 34.915192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387369, -0.512994, -0.766017,
		0.917746, 0.293592, 0.267481,
		0.087680, -0.806623, 0.584527,
		28.110359, 33.594067, 35.090549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738497, 33.908695, 34.728024>,  <28.048983, 34.158703, 34.681381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738497, 33.908695, 34.728024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473501, 33.610027, 34.751999>,  <28.314503, 33.430828, 34.766384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473501, 33.610027, 34.751999>,  <28.738497, 33.908695, 34.728024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473501, 33.610027, 34.751999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435467, -0.449005, -0.780232,
		0.609486, -0.490797, 0.622611,
		-0.662491, -0.746668, 0.059936,
		28.274754, 33.386028, 34.769981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099943, 33.183460, 34.779385>,  <28.738497, 33.908695, 34.728024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099943, 33.183460, 34.779385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737679, 33.234138, 34.617535>,  <28.520319, 33.264545, 34.520424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737679, 33.234138, 34.617535>,  <29.099943, 33.183460, 34.779385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737679, 33.234138, 34.617535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284227, -0.526728, -0.801107,
		-0.314623, -0.840539, 0.441029,
		-0.905664, 0.126695, -0.404625,
		28.465979, 33.272148, 34.496147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476950, 32.625782, 34.774693>,  <29.099943, 33.183460, 34.779385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476950, 32.625782, 34.774693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469975, 32.867355, 34.455956>,  <28.465790, 33.012299, 34.264713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469975, 32.867355, 34.455956>,  <28.476950, 32.625782, 34.774693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469975, 32.867355, 34.455956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345505, -0.744231, -0.571617,
		-0.938255, -0.285282, -0.195684,
		-0.017438, 0.603932, -0.796845,
		28.464743, 33.048534, 34.216904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841242, 32.172443, 34.467430>,  <28.476950, 32.625782, 34.774693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841242, 32.172443, 34.467430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754271, 32.451035, 34.193890>,  <28.702087, 32.618187, 34.029766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754271, 32.451035, 34.193890>,  <28.841242, 32.172443, 34.467430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754271, 32.451035, 34.193890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621833, -0.441193, -0.647048,
		-0.752362, -0.565925, -0.337165,
		-0.217426, 0.696475, -0.683848,
		28.689043, 32.659977, 33.988735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574503, 32.397282, 34.839043>,  <28.841242, 32.172443, 34.467430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574503, 32.397282, 34.839043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847273, 32.398590, 34.546474>,  <30.010935, 32.399376, 34.370934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847273, 32.398590, 34.546474>,  <29.574503, 32.397282, 34.839043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847273, 32.398590, 34.546474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689487, 0.330871, 0.644307,
		0.244110, -0.943671, 0.223376,
		0.681922, 0.003267, -0.731417,
		30.051849, 32.399570, 34.327049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170628, 31.834694, 34.792934>,  <29.574503, 32.397282, 34.839043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170628, 31.834694, 34.792934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250380, 32.211708, 34.685696>,  <30.298231, 32.437916, 34.621353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250380, 32.211708, 34.685696>,  <30.170628, 31.834694, 34.792934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250380, 32.211708, 34.685696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650475, 0.077319, 0.755582,
		0.732892, -0.325034, -0.597680,
		0.199378, 0.942536, -0.268093,
		30.310192, 32.494469, 34.605267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969629, 31.983437, 34.573376>,  <30.170628, 31.834694, 34.792934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969629, 31.983437, 34.573376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773607, 32.291496, 34.736698>,  <30.655994, 32.476334, 34.834690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773607, 32.291496, 34.736698>,  <30.969629, 31.983437, 34.573376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773607, 32.291496, 34.736698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817913, 0.244284, 0.520906,
		0.301434, 0.589231, -0.749629,
		-0.490057, 0.770151, 0.408305,
		30.626591, 32.522541, 34.859188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421814, 32.508331, 34.704975>,  <30.969629, 31.983437, 34.573376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421814, 32.508331, 34.704975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.109552, 32.579525, 34.944607>,  <30.922195, 32.622242, 35.088387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.109552, 32.579525, 34.944607>,  <31.421814, 32.508331, 34.704975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109552, 32.579525, 34.944607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618894, 0.086890, 0.780653,
		0.086890, 0.980190, -0.177984,
		-0.780653, 0.177984, 0.599084,
		30.875357, 32.632919, 35.124332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601309, 33.064487, 35.127769>,  <31.421814, 32.508331, 34.704975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601309, 33.064487, 35.127769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305084, 32.880497, 35.323723>,  <31.127350, 32.770103, 35.441296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305084, 32.880497, 35.323723>,  <31.601309, 33.064487, 35.127769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305084, 32.880497, 35.323723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483799, 0.140988, 0.863748,
		-0.466374, 0.876665, 0.118127,
		-0.740563, -0.459979, 0.489883,
		31.082914, 32.742504, 35.470688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593731, 33.335091, 35.731571>,  <31.601309, 33.064487, 35.127769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593731, 33.335091, 35.731571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409103, 33.022163, 35.898872>,  <31.298326, 32.834408, 35.999252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409103, 33.022163, 35.898872>,  <31.593731, 33.335091, 35.731571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409103, 33.022163, 35.898872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516006, 0.146747, 0.843921,
		-0.721589, 0.605352, 0.335944,
		-0.461570, -0.782314, 0.418257,
		31.270632, 32.787468, 36.024349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053917, 33.505901, 36.408768>,  <31.593731, 33.335091, 35.731571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053917, 33.505901, 36.408768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347084, 33.754471, 36.519520>,  <32.522984, 33.903614, 36.585972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347084, 33.754471, 36.519520>,  <32.053917, 33.505901, 36.408768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347084, 33.754471, 36.519520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592191, -0.382412, -0.709275,
		-0.334880, 0.683805, -0.648279,
		0.732915, 0.621427, 0.276881,
		32.566959, 33.940899, 36.602585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265282, 34.160782, 35.950920>,  <32.053917, 33.505901, 36.408768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265282, 34.160782, 35.950920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568775, 33.961544, 36.118832>,  <32.750874, 33.841999, 36.219578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568775, 33.961544, 36.118832>,  <32.265282, 34.160782, 35.950920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568775, 33.961544, 36.118832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284197, -0.326742, -0.901372,
		0.586133, 0.803204, -0.106352,
		0.758736, -0.498099, 0.419783,
		32.796394, 33.812115, 36.244766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947010, 34.414112, 35.774696>,  <32.265282, 34.160782, 35.950920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947010, 34.414112, 35.774696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894928, 34.020588, 35.823967>,  <32.863678, 33.784473, 35.853531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894928, 34.020588, 35.823967>,  <32.947010, 34.414112, 35.774696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894928, 34.020588, 35.823967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132781, -0.140420, -0.981148,
		0.982556, -0.111392, 0.148913,
		-0.130202, -0.983806, 0.123180,
		32.855865, 33.725445, 35.860920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425732, 34.138905, 35.316208>,  <32.947010, 34.414112, 35.774696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425732, 34.138905, 35.316208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122635, 33.889889, 35.394463>,  <32.940777, 33.740479, 35.441414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122635, 33.889889, 35.394463>,  <33.425732, 34.138905, 35.316208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122635, 33.889889, 35.394463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274253, 0.031773, -0.961132,
		0.592128, -0.781942, -0.194809,
		-0.757739, -0.622541, 0.195637,
		32.895313, 33.703125, 35.453156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419189, 33.548492, 34.833031>,  <33.425732, 34.138905, 35.316208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419189, 33.548492, 34.833031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058304, 33.654606, 34.969051>,  <32.841774, 33.718273, 35.050663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058304, 33.654606, 34.969051>,  <33.419189, 33.548492, 34.833031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058304, 33.654606, 34.969051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351113, 0.006100, -0.936313,
		-0.250460, -0.964152, 0.087640,
		-0.902214, 0.265280, 0.340054,
		32.787640, 33.734192, 35.071068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951622, 33.084473, 34.524429>,  <33.419189, 33.548492, 34.833031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951622, 33.084473, 34.524429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799721, 33.450619, 34.577942>,  <32.708580, 33.670307, 34.610050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799721, 33.450619, 34.577942>,  <32.951622, 33.084473, 34.524429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799721, 33.450619, 34.577942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254160, 0.035816, -0.966499,
		-0.889488, -0.401036, 0.219048,
		-0.379756, 0.915362, 0.133785,
		32.685795, 33.725227, 34.618076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179180, 33.122101, 34.453186>,  <32.951622, 33.084473, 34.524429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179180, 33.122101, 34.453186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359077, 33.461414, 34.341366>,  <32.467014, 33.665001, 34.274273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359077, 33.461414, 34.341366>,  <32.179180, 33.122101, 34.453186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359077, 33.461414, 34.341366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242848, -0.185058, -0.952249,
		-0.859510, 0.496154, 0.122776,
		0.449742, 0.848283, -0.279550,
		32.493999, 33.715900, 34.257500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720594, 33.565128, 34.122795>,  <32.179180, 33.122101, 34.453186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720594, 33.565128, 34.122795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095051, 33.586494, 33.983780>,  <32.319725, 33.599316, 33.900372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095051, 33.586494, 33.983780>,  <31.720594, 33.565128, 34.122795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095051, 33.586494, 33.983780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289751, -0.442761, -0.848532,
		-0.199201, 0.895047, -0.399011,
		0.936143, 0.053414, -0.347539,
		32.375893, 33.602520, 33.879517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562906, 33.753521, 33.350494>,  <31.720594, 33.565128, 34.122795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562906, 33.753521, 33.350494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819099, 33.544128, 33.125729>,  <31.972816, 33.418491, 32.990868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819099, 33.544128, 33.125729>,  <31.562906, 33.753521, 33.350494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819099, 33.544128, 33.125729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695873, -0.705115, -0.136285,
		-0.324871, 0.478308, -0.815892,
		0.640484, -0.523482, -0.561913,
		32.011246, 33.387085, 32.957153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119648, 33.507786, 32.803753>,  <31.562906, 33.753521, 33.350494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119648, 33.507786, 32.803753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439844, 33.268089, 32.808205>,  <31.631962, 33.124271, 32.810875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439844, 33.268089, 32.808205>,  <31.119648, 33.507786, 32.803753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439844, 33.268089, 32.808205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570583, -0.767624, -0.291871,
		0.183448, 0.227287, -0.956393,
		0.800489, -0.599244, 0.011133,
		31.679991, 33.088318, 32.811546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241503, 33.239475, 32.135574>,  <31.119648, 33.507786, 32.803753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241503, 33.239475, 32.135574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329304, 32.979832, 32.426910>,  <31.381985, 32.824043, 32.601711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329304, 32.979832, 32.426910>,  <31.241503, 33.239475, 32.135574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329304, 32.979832, 32.426910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578193, -0.687865, -0.438788,
		0.785819, -0.324804, -0.526300,
		0.219503, -0.649111, 0.728336,
		31.395155, 32.785099, 32.645412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275610, 32.526131, 31.770819>,  <31.241503, 33.239475, 32.135574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275610, 32.526131, 31.770819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182487, 32.495731, 32.158638>,  <31.126614, 32.477489, 32.391331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182487, 32.495731, 32.158638>,  <31.275610, 32.526131, 31.770819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182487, 32.495731, 32.158638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739011, -0.634238, -0.227167,
		0.632190, -0.769393, 0.091488,
		-0.232805, -0.076002, 0.969549,
		31.112646, 32.472931, 32.449501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253511, 31.808319, 31.996773>,  <31.275610, 32.526131, 31.770819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253511, 31.808319, 31.996773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.551239, 31.874268, 32.255634>,  <31.729876, 31.913836, 32.410950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.551239, 31.874268, 32.255634>,  <31.253511, 31.808319, 31.996773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551239, 31.874268, 32.255634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464061, -0.569176, 0.678739,
		0.480248, -0.805517, -0.347138,
		0.744318, 0.164870, 0.647154,
		31.774534, 31.923729, 32.449780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745811, 31.167912, 32.160088>,  <31.253511, 31.808319, 31.996773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745811, 31.167912, 32.160088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717142, 31.432320, 32.458862>,  <31.699940, 31.590965, 32.638126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717142, 31.432320, 32.458862>,  <31.745811, 31.167912, 32.160088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717142, 31.432320, 32.458862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406645, -0.703166, 0.583264,
		0.910770, -0.261933, 0.319200,
		-0.071675, 0.661021, 0.746937,
		31.695641, 31.630627, 32.682941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965607, 30.824224, 32.703796>,  <31.745811, 31.167912, 32.160088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965607, 30.824224, 32.703796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765175, 31.118849, 32.885517>,  <31.644917, 31.295624, 32.994549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765175, 31.118849, 32.885517>,  <31.965607, 30.824224, 32.703796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765175, 31.118849, 32.885517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410466, -0.664442, 0.624528,
		0.761863, 0.126461, 0.635273,
		-0.501080, 0.736563, 0.454306,
		31.614851, 31.339817, 33.021809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259436, 30.607599, 32.983097>,  <31.965607, 30.824224, 32.703796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259436, 30.607599, 32.983097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030888, 30.832777, 32.744225>,  <30.893759, 30.967884, 32.600899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030888, 30.832777, 32.744225>,  <31.259436, 30.607599, 32.983097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030888, 30.832777, 32.744225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348419, 0.825217, 0.444546,
		0.743060, 0.045930, -0.667646,
		-0.571371, 0.562945, -0.597183,
		30.859476, 31.001661, 32.565071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559172, 30.606573, 33.368118>,  <31.259436, 30.607599, 32.983097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559172, 30.606573, 33.368118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448931, 30.933516, 33.570492>,  <30.382786, 31.129681, 33.691917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448931, 30.933516, 33.570492>,  <30.559172, 30.606573, 33.368118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448931, 30.933516, 33.570492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821974, 0.473267, -0.316822,
		-0.498400, 0.328551, -0.802279,
		-0.275600, 0.817357, 0.505937,
		30.366251, 31.178722, 33.722275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467047, 31.164263, 32.939461>,  <30.559172, 30.606573, 33.368118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467047, 31.164263, 32.939461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574707, 31.264315, 33.311481>,  <30.639303, 31.324347, 33.534695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574707, 31.264315, 33.311481>,  <30.467047, 31.164263, 32.939461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574707, 31.264315, 33.311481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781351, 0.507872, -0.362707,
		-0.563070, 0.824319, -0.058744,
		0.269152, 0.250129, 0.930050,
		30.655453, 31.339354, 33.590496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535007, 31.960533, 33.026035>,  <30.467047, 31.164263, 32.939461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535007, 31.960533, 33.026035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792856, 31.751801, 33.249519>,  <30.947565, 31.626562, 33.383610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792856, 31.751801, 33.249519>,  <30.535007, 31.960533, 33.026035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792856, 31.751801, 33.249519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761006, 0.368163, -0.534159,
		0.073044, 0.769512, 0.634441,
		0.644620, -0.521830, 0.558711,
		30.986242, 31.595251, 33.417133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941765, 32.372826, 33.472485>,  <30.535007, 31.960533, 33.026035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941765, 32.372826, 33.472485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144543, 32.053268, 33.343006>,  <31.266209, 31.861534, 33.265320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144543, 32.053268, 33.343006>,  <30.941765, 32.372826, 33.472485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144543, 32.053268, 33.343006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620005, 0.598833, -0.506945,
		0.598833, 0.056302, 0.798893,
		0.506945, -0.798893, -0.323693,
		31.296627, 31.813601, 33.245899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622509, 32.500992, 33.643085>,  <30.941765, 32.372826, 33.472485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622509, 32.500992, 33.643085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625166, 32.250710, 33.331074>,  <31.626760, 32.100540, 33.143867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625166, 32.250710, 33.331074>,  <31.622509, 32.500992, 33.643085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625166, 32.250710, 33.331074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737133, 0.530165, -0.419001,
		0.675716, -0.572201, 0.464752,
		0.006643, -0.625709, -0.780028,
		31.627159, 32.062996, 33.097065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333973, 32.192860, 33.489994>,  <31.622509, 32.500992, 33.643085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333973, 32.192860, 33.489994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120346, 32.311073, 33.173153>,  <31.992168, 32.382000, 32.983047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120346, 32.311073, 33.173153>,  <32.333973, 32.192860, 33.489994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120346, 32.311073, 33.173153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681098, 0.705466, -0.196018,
		0.500872, -0.644187, -0.578057,
		-0.534072, 0.295534, -0.792103,
		31.960125, 32.399734, 32.935520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750156, 32.387398, 32.880894>,  <32.333973, 32.192860, 33.489994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750156, 32.387398, 32.880894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410431, 32.594944, 32.842030>,  <32.206596, 32.719471, 32.818710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410431, 32.594944, 32.842030>,  <32.750156, 32.387398, 32.880894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410431, 32.594944, 32.842030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526095, 0.816822, -0.236696,
		-0.043451, -0.252146, -0.966713,
		-0.849315, 0.518868, -0.097161,
		32.155636, 32.750603, 32.812881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875374, 32.685974, 32.266983>,  <32.750156, 32.387398, 32.880894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875374, 32.685974, 32.266983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618507, 32.886772, 32.498711>,  <32.464386, 33.007252, 32.637749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618507, 32.886772, 32.498711>,  <32.875374, 32.685974, 32.266983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618507, 32.886772, 32.498711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649868, 0.757338, 0.064112,
		-0.406560, 0.417655, -0.812572,
		-0.642169, 0.501999, 0.579324,
		32.425858, 33.037373, 32.672508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144836, 33.298767, 31.877312>,  <32.875374, 32.685974, 32.266983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144836, 33.298767, 31.877312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748890, 33.263874, 31.832504>,  <32.511322, 33.242939, 31.805620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748890, 33.263874, 31.832504>,  <33.144836, 33.298767, 31.877312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748890, 33.263874, 31.832504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117033, -0.054628, -0.991624,
		0.080385, -0.994689, 0.064284,
		-0.989870, -0.087236, -0.112020,
		32.451927, 33.237705, 31.798899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809593, 32.821045, 31.305031>,  <33.144836, 33.298767, 31.877312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809593, 32.821045, 31.305031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527363, 33.093643, 31.382715>,  <32.358025, 33.257202, 31.429325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527363, 33.093643, 31.382715>,  <32.809593, 32.821045, 31.305031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527363, 33.093643, 31.382715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190889, 0.081142, -0.978252,
		-0.682436, -0.727307, 0.072838,
		-0.705579, 0.681499, 0.194209,
		32.315689, 33.298092, 31.440977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345726, 32.758900, 30.787146>,  <32.809593, 32.821045, 31.305031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345726, 32.758900, 30.787146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257961, 33.118874, 30.937862>,  <32.205303, 33.334858, 31.028292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257961, 33.118874, 30.937862>,  <32.345726, 32.758900, 30.787146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257961, 33.118874, 30.937862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402541, 0.268293, -0.875203,
		-0.888717, -0.343706, 0.303394,
		-0.219414, 0.899936, 0.376792,
		32.192139, 33.388855, 31.050900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695253, 32.917435, 30.501694>,  <32.345726, 32.758900, 30.787146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695253, 32.917435, 30.501694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857874, 33.270386, 30.596455>,  <31.955446, 33.482155, 30.653311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857874, 33.270386, 30.596455>,  <31.695253, 32.917435, 30.501694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857874, 33.270386, 30.596455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218768, 0.345774, -0.912459,
		-0.887049, 0.319135, 0.333611,
		0.406552, 0.882379, 0.236902,
		31.979839, 33.535099, 30.667524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118280, 33.510334, 30.428110>,  <31.695253, 32.917435, 30.501694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118280, 33.510334, 30.428110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482113, 33.674488, 30.402037>,  <31.700413, 33.772980, 30.386393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482113, 33.674488, 30.402037>,  <31.118280, 33.510334, 30.428110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482113, 33.674488, 30.402037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239283, 0.389049, -0.889598,
		-0.339713, 0.824760, 0.452069,
		0.909582, 0.410380, -0.065186,
		31.754988, 33.797604, 30.382481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005318, 34.038700, 29.959080>,  <31.118280, 33.510334, 30.428110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005318, 34.038700, 29.959080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403811, 34.020668, 29.929432>,  <31.642906, 34.009850, 29.911642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403811, 34.020668, 29.929432>,  <31.005318, 34.038700, 29.959080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403811, 34.020668, 29.929432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047724, 0.428734, -0.902169,
		0.072446, 0.902306, 0.424966,
		0.996230, -0.045077, -0.074122,
		31.702679, 34.007145, 29.907196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235821, 34.687351, 29.739031>,  <31.005318, 34.038700, 29.959080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235821, 34.687351, 29.739031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559135, 34.462414, 29.669243>,  <31.753124, 34.327450, 29.627371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559135, 34.462414, 29.669243>,  <31.235821, 34.687351, 29.739031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559135, 34.462414, 29.669243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006627, 0.304988, -0.952333,
		0.588751, 0.768603, 0.250245,
		0.808288, -0.562345, -0.174469,
		31.801622, 34.293709, 29.616901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774284, 35.043320, 29.445074>,  <31.235821, 34.687351, 29.739031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774284, 35.043320, 29.445074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862080, 34.675068, 29.315908>,  <31.914757, 34.454117, 29.238409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862080, 34.675068, 29.315908>,  <31.774284, 35.043320, 29.445074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862080, 34.675068, 29.315908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167227, 0.361588, -0.917218,
		0.961176, 0.147319, 0.233318,
		0.219489, -0.920625, -0.322914,
		31.927927, 34.398880, 29.219034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277042, 35.075539, 28.894285>,  <31.774284, 35.043320, 29.445074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277042, 35.075539, 28.894285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137749, 34.705650, 28.832804>,  <32.054173, 34.483715, 28.795916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137749, 34.705650, 28.832804>,  <32.277042, 35.075539, 28.894285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137749, 34.705650, 28.832804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251715, 0.065700, -0.965569,
		0.902982, -0.374928, 0.209888,
		-0.348229, -0.924723, -0.153701,
		32.033279, 34.428234, 28.786694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762970, 34.854389, 28.579231>,  <32.277042, 35.075539, 28.894285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762970, 34.854389, 28.579231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480637, 34.582062, 28.500965>,  <32.311237, 34.418663, 28.454004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480637, 34.582062, 28.500965>,  <32.762970, 34.854389, 28.579231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480637, 34.582062, 28.500965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257797, 0.010402, -0.966143,
		0.659807, -0.732375, 0.168172,
		-0.705829, -0.680822, -0.195667,
		32.268887, 34.377815, 28.442265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068989, 34.299259, 28.193213>,  <32.762970, 34.854389, 28.579231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068989, 34.299259, 28.193213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678566, 34.271294, 28.110828>,  <32.444313, 34.254513, 28.061398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678566, 34.271294, 28.110828>,  <33.068989, 34.299259, 28.193213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678566, 34.271294, 28.110828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216618, -0.227128, -0.949468,
		0.019605, -0.971352, 0.236836,
		-0.976060, -0.069917, -0.205959,
		32.385750, 34.250317, 28.049040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975525, 33.641586, 27.890491>,  <33.068989, 34.299259, 28.193213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975525, 33.641586, 27.890491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681129, 33.857277, 27.726757>,  <32.504494, 33.986691, 27.628515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681129, 33.857277, 27.726757>,  <32.975525, 33.641586, 27.890491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681129, 33.857277, 27.726757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325569, -0.248221, -0.912355,
		-0.593577, -0.804746, 0.007130,
		-0.735983, 0.539231, -0.409338,
		32.460335, 34.019047, 27.603956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962280, 33.271027, 27.292166>,  <32.975525, 33.641586, 27.890491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962280, 33.271027, 27.292166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750431, 33.606216, 27.239574>,  <32.623322, 33.807331, 27.208019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750431, 33.606216, 27.239574>,  <32.962280, 33.271027, 27.292166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750431, 33.606216, 27.239574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095364, -0.095193, -0.990880,
		-0.842853, -0.537335, -0.029496,
		-0.529627, 0.837979, -0.131476,
		32.591541, 33.857609, 27.200132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700729, 33.226452, 26.648752>,  <32.962280, 33.271027, 27.292166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700729, 33.226452, 26.648752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621727, 33.617031, 26.683483>,  <32.574326, 33.851379, 26.704323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621727, 33.617031, 26.683483>,  <32.700729, 33.226452, 26.648752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621727, 33.617031, 26.683483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038872, 0.080703, -0.995980,
		-0.979532, -0.200083, 0.022018,
		-0.197501, 0.976450, 0.086829,
		32.562477, 33.909966, 26.709532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096565, 33.386734, 26.268209>,  <32.700729, 33.226452, 26.648752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096565, 33.386734, 26.268209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268494, 33.744087, 26.320539>,  <32.371651, 33.958500, 26.351938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268494, 33.744087, 26.320539>,  <32.096565, 33.386734, 26.268209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268494, 33.744087, 26.320539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052273, 0.120029, -0.991393,
		-0.901401, 0.432959, 0.004891,
		0.429819, 0.893387, 0.130826,
		32.397438, 34.012104, 26.359787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750452, 33.755325, 25.878279>,  <32.096565, 33.386734, 26.268209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750452, 33.755325, 25.878279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083317, 33.975281, 25.906925>,  <32.283035, 34.107254, 25.924114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083317, 33.975281, 25.906925>,  <31.750452, 33.755325, 25.878279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083317, 33.975281, 25.906925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130842, 0.320204, -0.938269,
		-0.538879, 0.771420, 0.338410,
		0.832160, 0.549892, 0.071617,
		32.332966, 34.140247, 25.928410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573061, 34.441032, 25.769650>,  <31.750452, 33.755325, 25.878279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573061, 34.441032, 25.769650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961519, 34.392151, 25.687729>,  <32.194595, 34.362823, 25.638577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961519, 34.392151, 25.687729>,  <31.573061, 34.441032, 25.769650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961519, 34.392151, 25.687729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139528, 0.405306, -0.903470,
		0.193416, 0.905976, 0.376560,
		0.971145, -0.122205, -0.204802,
		32.252861, 34.355488, 25.626287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820004, 35.087440, 25.798479>,  <31.573061, 34.441032, 25.769650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820004, 35.087440, 25.798479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049240, 34.858604, 25.563778>,  <32.186783, 34.721302, 25.422956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049240, 34.858604, 25.563778>,  <31.820004, 35.087440, 25.798479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049240, 34.858604, 25.563778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372067, 0.456303, -0.808303,
		0.730158, 0.681544, 0.048648,
		0.573093, -0.572088, -0.586753,
		32.221169, 34.686977, 25.387753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941950, 35.545708, 25.298115>,  <31.820004, 35.087440, 25.798479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941950, 35.545708, 25.298115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051647, 35.191872, 25.147230>,  <32.117466, 34.979568, 25.056700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051647, 35.191872, 25.147230>,  <31.941950, 35.545708, 25.298115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051647, 35.191872, 25.147230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315729, 0.287682, -0.904187,
		0.908354, 0.367063, -0.200397,
		0.274243, -0.884593, -0.377209,
		32.133919, 34.926495, 25.034067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343857, 35.695629, 24.754011>,  <31.941950, 35.545708, 25.298115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343857, 35.695629, 24.754011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217636, 35.321953, 24.687426>,  <32.141903, 35.097748, 24.647474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217636, 35.321953, 24.687426>,  <32.343857, 35.695629, 24.754011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217636, 35.321953, 24.687426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241223, 0.248639, -0.938078,
		0.917734, -0.255860, -0.303808,
		-0.315556, -0.934192, -0.166465,
		32.122971, 35.041695, 24.637486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565205, 35.459259, 24.061625>,  <32.343857, 35.695629, 24.754011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565205, 35.459259, 24.061625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271950, 35.197094, 24.134239>,  <32.095997, 35.039795, 24.177807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271950, 35.197094, 24.134239>,  <32.565205, 35.459259, 24.061625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271950, 35.197094, 24.134239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392926, 0.190338, -0.899656,
		0.555089, -0.730898, -0.397070,
		-0.733134, -0.655408, 0.181535,
		32.052010, 35.000473, 24.188700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592873, 34.951180, 23.484720>,  <32.565205, 35.459259, 24.061625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592873, 34.951180, 23.484720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232151, 34.964451, 23.657068>,  <32.015717, 34.972412, 23.760477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232151, 34.964451, 23.657068>,  <32.592873, 34.951180, 23.484720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232151, 34.964451, 23.657068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388293, 0.375424, -0.841597,
		-0.189678, -0.926259, -0.325677,
		-0.901804, 0.033175, 0.430870,
		31.961609, 34.974403, 23.786329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146961, 34.627861, 22.984245>,  <32.592873, 34.951180, 23.484720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146961, 34.627861, 22.984245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912769, 34.826038, 23.240917>,  <31.772255, 34.944942, 23.394920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912769, 34.826038, 23.240917>,  <32.146961, 34.627861, 22.984245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912769, 34.826038, 23.240917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404389, 0.507538, -0.760838,
		-0.702627, -0.704943, -0.096802,
		-0.585479, 0.495440, 0.641681,
		31.737125, 34.974670, 23.433422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482569, 34.649906, 22.624187>,  <32.146961, 34.627861, 22.984245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482569, 34.649906, 22.624187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452839, 34.950058, 22.886911>,  <31.435001, 35.130150, 23.044546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452839, 34.950058, 22.886911>,  <31.482569, 34.649906, 22.624187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452839, 34.950058, 22.886911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403324, 0.579743, -0.707974,
		-0.912034, -0.317527, 0.259558,
		-0.074324, 0.750383, 0.656812,
		31.430542, 35.175175, 23.083956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817608, 34.973812, 22.439993>,  <31.482569, 34.649906, 22.624187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817608, 34.973812, 22.439993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040792, 35.214989, 22.668079>,  <31.174704, 35.359695, 22.804932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040792, 35.214989, 22.668079>,  <30.817608, 34.973812, 22.439993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040792, 35.214989, 22.668079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169210, 0.755339, -0.633112,
		-0.812432, 0.256767, 0.523474,
		0.557962, 0.602938, 0.570214,
		31.208181, 35.395870, 22.839144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373013, 35.458664, 22.587868>,  <30.817608, 34.973812, 22.439993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373013, 35.458664, 22.587868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.745106, 35.601078, 22.623432>,  <30.968363, 35.686527, 22.644770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.745106, 35.601078, 22.623432>,  <30.373013, 35.458664, 22.587868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745106, 35.601078, 22.623432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168620, 0.629894, -0.758156,
		-0.325932, 0.690271, 0.645983,
		0.930234, 0.356033, 0.088909,
		31.024176, 35.707890, 22.650105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277945, 36.212883, 22.650965>,  <30.373013, 35.458664, 22.587868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277945, 36.212883, 22.650965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652430, 36.157036, 22.521961>,  <30.877121, 36.123528, 22.444559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652430, 36.157036, 22.521961>,  <30.277945, 36.212883, 22.650965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652430, 36.157036, 22.521961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142160, 0.688808, -0.710869,
		0.321397, 0.711372, 0.625022,
		0.936213, -0.139618, -0.322510,
		30.933294, 36.115150, 22.425209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434996, 36.901569, 22.462309>,  <30.277945, 36.212883, 22.650965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434996, 36.901569, 22.462309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720154, 36.687744, 22.280752>,  <30.891249, 36.559448, 22.171818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720154, 36.687744, 22.280752>,  <30.434996, 36.901569, 22.462309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720154, 36.687744, 22.280752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103013, 0.720050, -0.686233,
		0.693663, 0.442456, 0.568388,
		0.712895, -0.534566, -0.453894,
		30.934023, 36.527374, 22.144585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964098, 37.357559, 22.254025>,  <30.434996, 36.901569, 22.462309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964098, 37.357559, 22.254025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.006401, 37.041630, 22.012365>,  <31.031784, 36.852074, 21.867371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.006401, 37.041630, 22.012365>,  <30.964098, 37.357559, 22.254025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006401, 37.041630, 22.012365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295368, 0.605086, -0.739343,
		0.949512, -0.100253, 0.297282,
		0.105760, -0.789823, -0.604148,
		31.038130, 36.804684, 21.831121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519743, 37.539879, 21.908056>,  <30.964098, 37.357559, 22.254025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519743, 37.539879, 21.908056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327332, 37.290562, 21.661444>,  <31.211884, 37.140972, 21.513475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327332, 37.290562, 21.661444>,  <31.519743, 37.539879, 21.908056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327332, 37.290562, 21.661444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250128, 0.576438, -0.777918,
		0.840266, -0.528413, -0.121379,
		-0.481029, -0.623298, -0.616532,
		31.183023, 37.103573, 21.476484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940027, 37.515804, 21.319273>,  <31.519743, 37.539879, 21.908056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940027, 37.515804, 21.319273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593988, 37.374966, 21.176367>,  <31.386366, 37.290462, 21.090624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593988, 37.374966, 21.176367>,  <31.940027, 37.515804, 21.319273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593988, 37.374966, 21.176367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294370, 0.220333, -0.929946,
		0.406149, -0.909660, -0.086962,
		-0.865095, -0.352097, -0.357264,
		31.334459, 37.269337, 21.069187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082485, 37.226269, 20.697550>,  <31.940027, 37.515804, 21.319273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082485, 37.226269, 20.697550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693707, 37.315613, 20.668091>,  <31.460440, 37.369221, 20.650415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693707, 37.315613, 20.668091>,  <32.082485, 37.226269, 20.697550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693707, 37.315613, 20.668091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158727, 0.391883, -0.906219,
		-0.173555, -0.892489, -0.416345,
		-0.971949, 0.223364, -0.073648,
		31.402122, 37.382622, 20.645996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873625, 37.016167, 19.970137>,  <32.082485, 37.226269, 20.697550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873625, 37.016167, 19.970137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627611, 37.295853, 20.115919>,  <31.480003, 37.463665, 20.203388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627611, 37.295853, 20.115919>,  <31.873625, 37.016167, 19.970137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627611, 37.295853, 20.115919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062453, 0.503961, -0.861465,
		-0.786025, -0.507067, -0.353621,
		-0.615032, 0.699218, 0.364458,
		31.443102, 37.505619, 20.225256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648155, 37.317509, 19.339066>,  <31.873625, 37.016167, 19.970137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648155, 37.317509, 19.339066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487034, 37.568291, 19.605803>,  <31.390362, 37.718761, 19.765844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487034, 37.568291, 19.605803>,  <31.648155, 37.317509, 19.339066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487034, 37.568291, 19.605803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093711, 0.752981, -0.651336,
		-0.910478, -0.199868, -0.362054,
		-0.402801, 0.626955, 0.666842,
		31.366194, 37.756378, 19.805855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314960, 37.696949, 18.957138>,  <31.648155, 37.317509, 19.339066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314960, 37.696949, 18.957138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284386, 37.906502, 19.296478>,  <31.266041, 38.032234, 19.500082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284386, 37.906502, 19.296478>,  <31.314960, 37.696949, 18.957138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284386, 37.906502, 19.296478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171658, 0.831222, -0.528775,
		-0.982186, -0.186046, 0.026392,
		-0.076439, 0.523886, 0.848352,
		31.261454, 38.063667, 19.550983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648338, 38.060307, 18.966736>,  <31.314960, 37.696949, 18.957138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648338, 38.060307, 18.966736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939617, 38.238083, 19.175426>,  <31.114386, 38.344749, 19.300640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939617, 38.238083, 19.175426>,  <30.648338, 38.060307, 18.966736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939617, 38.238083, 19.175426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125860, 0.835007, -0.535651,
		-0.673710, 0.324396, 0.663989,
		0.728199, 0.444443, 0.521725,
		31.158077, 38.371414, 19.331944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388138, 38.709209, 19.099352>,  <30.648338, 38.060307, 18.966736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388138, 38.709209, 19.099352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785704, 38.735661, 19.134602>,  <31.024242, 38.751530, 19.155752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785704, 38.735661, 19.134602>,  <30.388138, 38.709209, 19.099352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785704, 38.735661, 19.134602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019761, 0.893888, -0.447854,
		-0.108388, 0.443386, 0.889753,
		0.993912, 0.066125, 0.088125,
		31.083878, 38.755497, 19.161039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538515, 39.314713, 19.472933>,  <30.388138, 38.709209, 19.099352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538515, 39.314713, 19.472933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876415, 39.227631, 19.277382>,  <31.079155, 39.175381, 19.160051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876415, 39.227631, 19.277382>,  <30.538515, 39.314713, 19.472933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876415, 39.227631, 19.277382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112972, 0.965472, -0.234735,
		0.523100, 0.143064, 0.840179,
		0.844751, -0.217706, -0.488876,
		31.129841, 39.162319, 19.130718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936857, 39.906742, 19.535568>,  <30.538515, 39.314713, 19.472933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936857, 39.906742, 19.535568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103611, 39.731213, 19.217161>,  <31.203663, 39.625896, 19.026117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103611, 39.731213, 19.217161>,  <30.936857, 39.906742, 19.535568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103611, 39.731213, 19.217161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166400, 0.897789, -0.407782,
		0.893599, 0.037542, 0.447294,
		0.416885, -0.438823, -0.796016,
		31.228676, 39.599567, 18.978355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703484, 40.081547, 19.494162>,  <30.936857, 39.906742, 19.535568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703484, 40.081547, 19.494162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579813, 39.954617, 19.135561>,  <31.505610, 39.878460, 18.920401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579813, 39.954617, 19.135561>,  <31.703484, 40.081547, 19.494162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579813, 39.954617, 19.135561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118537, 0.922478, -0.367400,
		0.943588, -0.219860, -0.247593,
		-0.309176, -0.317325, -0.896501,
		31.487059, 39.859421, 18.866611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103752, 40.453552, 19.003080>,  <31.703484, 40.081547, 19.494162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103752, 40.453552, 19.003080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794186, 40.322151, 18.786512>,  <31.608444, 40.243309, 18.656572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794186, 40.322151, 18.786512>,  <32.103752, 40.453552, 19.003080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794186, 40.322151, 18.786512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034618, 0.831715, -0.554122,
		0.632335, -0.447590, -0.632310,
		-0.773922, -0.328501, -0.541417,
		31.562010, 40.223602, 18.624086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254684, 40.743950, 18.343813>,  <32.103752, 40.453552, 19.003080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254684, 40.743950, 18.343813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863676, 40.659618, 18.345041>,  <31.629072, 40.609020, 18.345778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863676, 40.659618, 18.345041>,  <32.254684, 40.743950, 18.343813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863676, 40.659618, 18.345041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155949, 0.713097, -0.683501,
		0.141914, -0.668613, -0.729944,
		-0.977517, -0.210832, 0.003071,
		31.570421, 40.596367, 18.345963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067505, 40.753750, 17.567398>,  <32.254684, 40.743950, 18.343813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067505, 40.753750, 17.567398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766920, 40.833729, 17.818899>,  <31.586569, 40.881714, 17.969799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766920, 40.833729, 17.818899>,  <32.067505, 40.753750, 17.567398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766920, 40.833729, 17.818899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266354, 0.779933, -0.566357,
		-0.603626, -0.593065, -0.532832,
		-0.751460, 0.199946, 0.628753,
		31.541483, 40.893711, 18.007524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669172, 40.982708, 17.165125>,  <32.067505, 40.753750, 17.567398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669172, 40.982708, 17.165125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503201, 41.109882, 17.506124>,  <31.403618, 41.186188, 17.710724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503201, 41.109882, 17.506124>,  <31.669172, 40.982708, 17.165125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503201, 41.109882, 17.506124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279315, 0.847209, -0.451907,
		-0.865919, -0.425625, -0.262729,
		-0.414930, 0.317931, 0.852498,
		31.378721, 41.205261, 17.761873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908873, 41.149967, 17.005423>,  <31.669172, 40.982708, 17.165125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908873, 41.149967, 17.005423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055895, 41.354412, 17.316208>,  <31.144108, 41.477077, 17.502678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055895, 41.354412, 17.316208>,  <30.908873, 41.149967, 17.005423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055895, 41.354412, 17.316208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379120, 0.845218, -0.376662,
		-0.849218, -0.156118, 0.504436,
		0.367555, 0.511110, 0.776962,
		31.166161, 41.507744, 17.549297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302664, 41.463169, 17.394747>,  <30.908873, 41.149967, 17.005423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302664, 41.463169, 17.394747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656345, 41.649940, 17.389593>,  <30.868555, 41.762001, 17.386501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656345, 41.649940, 17.389593>,  <30.302664, 41.463169, 17.394747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656345, 41.649940, 17.389593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444867, 0.833383, -0.327973,
		-0.142401, 0.295727, 0.944599,
		0.884203, 0.466924, -0.012884,
		30.921606, 41.790016, 17.385727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192789, 42.077587, 17.759777>,  <30.302664, 41.463169, 17.394747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192789, 42.077587, 17.759777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513063, 42.151249, 17.531744>,  <30.705227, 42.195446, 17.394924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513063, 42.151249, 17.531744>,  <30.192789, 42.077587, 17.759777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513063, 42.151249, 17.531744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362620, 0.906443, -0.216488,
		0.476878, 0.380061, 0.792554,
		0.800684, 0.184157, -0.570080,
		30.753269, 42.206497, 17.360720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417580, 42.772621, 17.927870>,  <30.192789, 42.077587, 17.759777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417580, 42.772621, 17.927870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490919, 42.652477, 17.553453>,  <30.534924, 42.580391, 17.328804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490919, 42.652477, 17.553453>,  <30.417580, 42.772621, 17.927870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490919, 42.652477, 17.553453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342169, 0.873141, -0.347197,
		0.921577, 0.383942, 0.057317,
		0.183349, -0.300357, -0.936039,
		30.545923, 42.562370, 17.272642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899891, 43.287037, 17.707041>,  <30.417580, 42.772621, 17.927870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899891, 43.287037, 17.707041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733534, 43.094204, 17.398592>,  <30.633718, 42.978504, 17.213522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733534, 43.094204, 17.398592>,  <30.899891, 43.287037, 17.707041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733534, 43.094204, 17.398592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193146, 0.875414, -0.443107,
		0.888667, -0.035344, -0.457188,
		-0.415890, -0.482079, -0.771126,
		30.608767, 42.949581, 17.167255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234701, 43.882729, 17.572939>,  <30.899891, 43.287037, 17.707041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234701, 43.882729, 17.572939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347902, 43.986526, 17.203600>,  <31.415823, 44.048805, 16.981997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347902, 43.986526, 17.203600>,  <31.234701, 43.882729, 17.572939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347902, 43.986526, 17.203600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268248, 0.945700, 0.183563,
		0.920843, 0.195737, 0.337246,
		0.283003, 0.259498, -0.923347,
		31.432802, 44.064377, 16.926596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183630, 44.607811, 17.643530>,  <31.234701, 43.882729, 17.572939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183630, 44.607811, 17.643530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316677, 44.835968, 17.943933>,  <31.396505, 44.972862, 18.124176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316677, 44.835968, 17.943933>,  <31.183630, 44.607811, 17.643530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316677, 44.835968, 17.943933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084666, -0.775077, 0.626168,
		0.939253, -0.271860, -0.209512,
		0.332618, 0.570392, 0.751011,
		31.416462, 45.007084, 18.169237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776697, 44.242222, 17.982086>,  <31.183630, 44.607811, 17.643530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776697, 44.242222, 17.982086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525328, 44.460850, 18.203480>,  <31.374506, 44.592026, 18.336317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525328, 44.460850, 18.203480>,  <31.776697, 44.242222, 17.982086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525328, 44.460850, 18.203480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036266, -0.731351, 0.681036,
		0.777027, 0.407905, 0.479419,
		-0.628421, 0.546571, 0.553486,
		31.336802, 44.624821, 18.369526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836718, 43.900661, 18.548935>,  <31.776697, 44.242222, 17.982086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836718, 43.900661, 18.548935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544226, 44.150070, 18.659582>,  <31.368731, 44.299717, 18.725971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544226, 44.150070, 18.659582>,  <31.836718, 43.900661, 18.548935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544226, 44.150070, 18.659582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192137, -0.577373, 0.793551,
		0.654512, 0.527120, 0.541996,
		-0.731230, 0.623526, 0.276618,
		31.324856, 44.337128, 18.742567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019043, 44.212742, 19.180819>,  <31.836718, 43.900661, 18.548935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019043, 44.212742, 19.180819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621912, 44.178894, 19.147015>,  <31.383635, 44.158585, 19.126732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621912, 44.178894, 19.147015>,  <32.019043, 44.212742, 19.180819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621912, 44.178894, 19.147015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019883, -0.579992, 0.814379,
		-0.117930, 0.810214, 0.574147,
		-0.992823, -0.084624, -0.084508,
		31.324064, 44.153507, 19.121662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712023, 44.405247, 19.876194>,  <32.019043, 44.212742, 19.180819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712023, 44.405247, 19.876194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494267, 44.159191, 19.648073>,  <31.363613, 44.011559, 19.511202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494267, 44.159191, 19.648073>,  <31.712023, 44.405247, 19.876194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494267, 44.159191, 19.648073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006634, -0.683012, 0.730377,
		-0.838804, 0.393829, 0.375908,
		-0.544393, -0.615137, -0.570301,
		31.330948, 43.974651, 19.476982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090878, 44.074696, 20.324656>,  <31.712023, 44.405247, 19.876194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090878, 44.074696, 20.324656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170290, 43.840157, 20.010515>,  <31.217937, 43.699432, 19.822031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170290, 43.840157, 20.010515>,  <31.090878, 44.074696, 20.324656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170290, 43.840157, 20.010515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101276, -0.784740, 0.611495,
		-0.974848, -0.200938, -0.096412,
		0.198531, -0.586350, -0.785353,
		31.229849, 43.664253, 19.774910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831947, 43.383480, 20.472002>,  <31.090878, 44.074696, 20.324656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831947, 43.383480, 20.472002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113491, 43.290154, 20.203630>,  <31.282417, 43.234158, 20.042606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113491, 43.290154, 20.203630>,  <30.831947, 43.383480, 20.472002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113491, 43.290154, 20.203630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263920, -0.791011, 0.551948,
		-0.659492, -0.565566, -0.495183,
		0.703858, -0.233316, -0.670930,
		31.324648, 43.220158, 20.002352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824524, 42.679874, 20.287920>,  <30.831947, 43.383480, 20.472002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824524, 42.679874, 20.287920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194668, 42.778584, 20.172812>,  <31.416754, 42.837811, 20.103746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194668, 42.778584, 20.172812>,  <30.824524, 42.679874, 20.287920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194668, 42.778584, 20.172812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332951, -0.892011, 0.305713,
		-0.181254, -0.378708, -0.907594,
		0.925360, 0.246772, -0.287772,
		31.472275, 42.852615, 20.086479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038116, 42.043949, 20.071144>,  <30.824524, 42.679874, 20.287920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038116, 42.043949, 20.071144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355427, 42.281357, 20.125467>,  <31.545813, 42.423801, 20.158062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355427, 42.281357, 20.125467>,  <31.038116, 42.043949, 20.071144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355427, 42.281357, 20.125467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527141, -0.781122, 0.334619,
		0.304688, -0.193855, -0.932516,
		0.793276, 0.593522, 0.135810,
		31.593410, 42.459412, 20.166210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480562, 41.604603, 19.925337>,  <31.038116, 42.043949, 20.071144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480562, 41.604603, 19.925337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645056, 41.888985, 20.153522>,  <31.743752, 42.059612, 20.290434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645056, 41.888985, 20.153522>,  <31.480562, 41.604603, 19.925337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645056, 41.888985, 20.153522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418311, -0.703236, 0.574870,
		0.809878, 0.002225, -0.586595,
		0.411235, 0.710953, 0.570466,
		31.768427, 42.102272, 20.324661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082241, 41.401176, 20.110668>,  <31.480562, 41.604603, 19.925337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082241, 41.401176, 20.110668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003197, 41.677517, 20.388855>,  <31.955770, 41.843323, 20.555767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003197, 41.677517, 20.388855>,  <32.082241, 41.401176, 20.110668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003197, 41.677517, 20.388855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339207, -0.617437, 0.709725,
		0.919722, 0.376155, -0.112332,
		-0.197609, 0.690854, 0.695465,
		31.943914, 41.884773, 20.597494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667847, 41.489346, 20.590410>,  <32.082241, 41.401176, 20.110668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667847, 41.489346, 20.590410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353970, 41.617805, 20.802494>,  <32.165642, 41.694881, 20.929745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353970, 41.617805, 20.802494>,  <32.667847, 41.489346, 20.590410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353970, 41.617805, 20.802494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315495, -0.529364, 0.787551,
		0.533593, 0.785264, 0.314068,
		-0.784692, 0.321145, 0.530212,
		32.118561, 41.714149, 20.961557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822006, 41.368488, 21.271313>,  <32.667847, 41.489346, 20.590410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822006, 41.368488, 21.271313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434864, 41.448406, 21.332411>,  <32.202579, 41.496357, 21.369070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434864, 41.448406, 21.332411>,  <32.822006, 41.368488, 21.271313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434864, 41.448406, 21.332411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050779, -0.439600, 0.896757,
		0.246316, 0.875690, 0.415325,
		-0.967858, 0.199796, 0.152748,
		32.144508, 41.508347, 21.378235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877911, 41.746223, 21.811592>,  <32.822006, 41.368488, 21.271313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877911, 41.746223, 21.811592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509670, 41.593494, 21.778828>,  <32.288727, 41.501858, 21.759169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509670, 41.593494, 21.778828>,  <32.877911, 41.746223, 21.811592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509670, 41.593494, 21.778828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145541, -0.530115, 0.835342,
		-0.362373, 0.757095, 0.543594,
		-0.920600, -0.381820, -0.081911,
		32.233490, 41.478947, 21.754255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605988, 41.868584, 22.407261>,  <32.877911, 41.746223, 21.811592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605988, 41.868584, 22.407261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373055, 41.568787, 22.281305>,  <32.233295, 41.388908, 22.205732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373055, 41.568787, 22.281305>,  <32.605988, 41.868584, 22.407261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373055, 41.568787, 22.281305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267289, -0.542322, 0.796519,
		-0.767754, 0.379672, 0.516142,
		-0.582332, -0.749490, -0.314888,
		32.198357, 41.343941, 22.186838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114170, 41.585777, 23.002537>,  <32.605988, 41.868584, 22.407261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114170, 41.585777, 23.002537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181087, 41.310673, 22.719976>,  <32.221237, 41.145611, 22.550440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181087, 41.310673, 22.719976>,  <32.114170, 41.585777, 23.002537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181087, 41.310673, 22.719976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289850, -0.650526, 0.702000,
		-0.942337, -0.322192, 0.090517,
		0.167295, -0.687757, -0.706402,
		32.231277, 41.104347, 22.508057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720217, 41.021629, 23.188551>,  <32.114170, 41.585777, 23.002537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720217, 41.021629, 23.188551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969870, 40.846226, 22.929888>,  <32.119663, 40.740982, 22.774691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969870, 40.846226, 22.929888>,  <31.720217, 41.021629, 23.188551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969870, 40.846226, 22.929888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203827, -0.707605, 0.676572,
		-0.754265, -0.554076, -0.352257,
		0.624131, -0.438515, -0.646657,
		32.157108, 40.714672, 22.735891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557920, 40.359188, 23.231323>,  <31.720217, 41.021629, 23.188551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557920, 40.359188, 23.231323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914616, 40.354725, 23.050358>,  <32.128632, 40.352047, 22.941778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914616, 40.354725, 23.050358>,  <31.557920, 40.359188, 23.231323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914616, 40.354725, 23.050358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318666, -0.694347, 0.645240,
		-0.321330, -0.719554, -0.615622,
		0.891740, -0.011157, -0.452412,
		32.182137, 40.351379, 22.914635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588785, 39.722805, 23.058718>,  <31.557920, 40.359188, 23.231323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588785, 39.722805, 23.058718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967833, 39.850525, 23.055553>,  <32.195263, 39.927158, 23.053654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967833, 39.850525, 23.055553>,  <31.588785, 39.722805, 23.058718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967833, 39.850525, 23.055553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239329, -0.693435, 0.679610,
		0.211514, -0.645906, -0.733531,
		0.947620, 0.319302, -0.007913,
		32.252117, 39.946316, 23.053179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954767, 39.113102, 22.902954>,  <31.588785, 39.722805, 23.058718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954767, 39.113102, 22.902954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192478, 39.389629, 23.067348>,  <32.335106, 39.555546, 23.165985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192478, 39.389629, 23.067348>,  <31.954767, 39.113102, 22.902954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192478, 39.389629, 23.067348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426903, -0.704228, 0.567289,
		0.681607, -0.161676, -0.713634,
		0.594278, 0.691320, 0.410987,
		32.370762, 39.597027, 23.190645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586521, 38.705772, 23.126909>,  <31.954767, 39.113102, 22.902954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586521, 38.705772, 23.126909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599972, 39.033695, 23.355570>,  <32.608040, 39.230450, 23.492765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599972, 39.033695, 23.355570>,  <32.586521, 38.705772, 23.126909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599972, 39.033695, 23.355570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326141, -0.549662, 0.769093,
		0.944723, 0.160579, -0.285855,
		0.033623, 0.819808, 0.571650,
		32.610058, 39.279636, 23.527065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215843, 38.615925, 23.543417>,  <32.586521, 38.705772, 23.126909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215843, 38.615925, 23.543417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981071, 38.891388, 23.713717>,  <32.840206, 39.056667, 23.815897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981071, 38.891388, 23.713717>,  <33.215843, 38.615925, 23.543417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981071, 38.891388, 23.713717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136688, -0.434021, 0.890473,
		0.798014, 0.580842, 0.160610,
		-0.586933, 0.688656, 0.425749,
		32.804993, 39.097984, 23.841442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620918, 38.762707, 24.161301>,  <33.215843, 38.615925, 23.543417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620918, 38.762707, 24.161301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254623, 38.914791, 24.213243>,  <33.034847, 39.006042, 24.244410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254623, 38.914791, 24.213243>,  <33.620918, 38.762707, 24.161301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254623, 38.914791, 24.213243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124830, -0.037964, 0.991452,
		0.381891, 0.924120, -0.012696,
		-0.915739, 0.380211, 0.129856,
		32.979900, 39.028854, 24.252201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748970, 39.213943, 24.662571>,  <33.620918, 38.762707, 24.161301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748970, 39.213943, 24.662571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356380, 39.139568, 24.681011>,  <33.120827, 39.094944, 24.692076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356380, 39.139568, 24.681011>,  <33.748970, 39.213943, 24.662571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356380, 39.139568, 24.681011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074191, -0.147063, 0.986341,
		-0.176623, 0.971492, 0.158135,
		-0.981478, -0.185942, 0.046102,
		33.061935, 39.083786, 24.694841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557434, 39.495762, 25.317907>,  <33.748970, 39.213943, 24.662571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557434, 39.495762, 25.317907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256210, 39.244438, 25.239811>,  <33.075474, 39.093643, 25.192953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256210, 39.244438, 25.239811>,  <33.557434, 39.495762, 25.317907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256210, 39.244438, 25.239811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076937, -0.210617, 0.974536,
		-0.653434, 0.748909, 0.110268,
		-0.753064, -0.628312, -0.195243,
		33.030293, 39.055946, 25.181238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022038, 39.545208, 25.952206>,  <33.557434, 39.495762, 25.317907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022038, 39.545208, 25.952206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918777, 39.213203, 25.754440>,  <32.856823, 39.014000, 25.635780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918777, 39.213203, 25.754440>,  <33.022038, 39.545208, 25.952206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918777, 39.213203, 25.754440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302959, -0.416397, 0.857222,
		-0.917375, 0.371076, -0.143967,
		-0.258147, -0.830010, -0.494413,
		32.841335, 38.964199, 25.606117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398170, 39.486187, 26.232111>,  <33.022038, 39.545208, 25.952206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398170, 39.486187, 26.232111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532635, 39.140453, 26.082483>,  <32.613316, 38.933014, 25.992706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532635, 39.140453, 26.082483>,  <32.398170, 39.486187, 26.232111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532635, 39.140453, 26.082483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117258, -0.432503, 0.893975,
		-0.934476, -0.256659, -0.246741,
		0.336163, -0.864330, -0.374068,
		32.633484, 38.881153, 25.970263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853418, 39.099754, 26.412861>,  <32.398170, 39.486187, 26.232111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853418, 39.099754, 26.412861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160999, 38.855076, 26.338524>,  <32.345547, 38.708267, 26.293922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160999, 38.855076, 26.338524>,  <31.853418, 39.099754, 26.412861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160999, 38.855076, 26.338524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292415, -0.595029, 0.748622,
		-0.568508, -0.521315, -0.636420,
		0.768956, -0.611696, -0.185838,
		32.391685, 38.671566, 26.282772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585600, 38.328388, 26.365005>,  <31.853418, 39.099754, 26.412861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585600, 38.328388, 26.365005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974541, 38.317574, 26.457787>,  <32.207905, 38.311085, 26.513454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974541, 38.317574, 26.457787>,  <31.585600, 38.328388, 26.365005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974541, 38.317574, 26.457787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215426, -0.487246, 0.846276,
		0.090138, -0.872846, -0.479598,
		0.972351, -0.027036, 0.231953,
		32.266247, 38.309464, 26.527372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626286, 37.684410, 26.600903>,  <31.585600, 38.328388, 26.365005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626286, 37.684410, 26.600903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958488, 37.859688, 26.738447>,  <32.157810, 37.964855, 26.820974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958488, 37.859688, 26.738447>,  <31.626286, 37.684410, 26.600903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958488, 37.859688, 26.738447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076577, -0.521655, 0.849713,
		0.551719, -0.732024, -0.399682,
		0.830507, 0.438196, 0.343863,
		32.207642, 37.991146, 26.841606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952950, 37.247578, 27.081070>,  <31.626286, 37.684410, 26.600903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952950, 37.247578, 27.081070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122993, 37.585606, 27.210768>,  <32.225021, 37.788422, 27.288586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122993, 37.585606, 27.210768>,  <31.952950, 37.247578, 27.081070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122993, 37.585606, 27.210768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021055, -0.348895, 0.936925,
		0.904897, -0.405123, -0.130525,
		0.425109, 0.845073, 0.324244,
		32.250526, 37.839127, 27.308041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518883, 37.014034, 27.465620>,  <31.952950, 37.247578, 27.081070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518883, 37.014034, 27.465620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466595, 37.391129, 27.588366>,  <32.435223, 37.617386, 27.662012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466595, 37.391129, 27.588366>,  <32.518883, 37.014034, 27.465620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466595, 37.391129, 27.588366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226655, -0.272904, 0.934960,
		0.965162, 0.191774, -0.178000,
		-0.130724, 0.942733, 0.306864,
		32.427376, 37.673950, 27.680424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066051, 37.148945, 27.904898>,  <32.518883, 37.014034, 27.465620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066051, 37.148945, 27.904898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787132, 37.415260, 28.011105>,  <32.619781, 37.575050, 28.074829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787132, 37.415260, 28.011105>,  <33.066051, 37.148945, 27.904898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787132, 37.415260, 28.011105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041144, -0.332642, 0.942155,
		0.715602, 0.667885, 0.204557,
		-0.697295, 0.665792, 0.265519,
		32.577942, 37.614998, 28.090759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290909, 37.453693, 28.509966>,  <33.066051, 37.148945, 27.904898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290909, 37.453693, 28.509966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901047, 37.543152, 28.512070>,  <32.667130, 37.596828, 28.513332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901047, 37.543152, 28.512070>,  <33.290909, 37.453693, 28.509966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901047, 37.543152, 28.512070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031370, -0.159924, 0.986631,
		0.221498, 0.961461, 0.162886,
		-0.974656, 0.223646, 0.005262,
		32.608650, 37.610245, 28.513649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160378, 38.036896, 29.049482>,  <33.290909, 37.453693, 28.509966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160378, 38.036896, 29.049482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817142, 37.843914, 28.979145>,  <32.611202, 37.728123, 28.936943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817142, 37.843914, 28.979145>,  <33.160378, 38.036896, 29.049482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817142, 37.843914, 28.979145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130071, -0.127053, 0.983331,
		-0.496757, 0.866656, 0.046268,
		-0.858087, -0.482458, -0.175841,
		32.559715, 37.699177, 28.926394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653957, 38.263561, 29.652014>,  <33.160378, 38.036896, 29.049482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653957, 38.263561, 29.652014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494934, 37.924259, 29.512064>,  <32.399521, 37.720676, 29.428095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494934, 37.924259, 29.512064>,  <32.653957, 38.263561, 29.652014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494934, 37.924259, 29.512064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330070, -0.223573, 0.917098,
		-0.856156, 0.480080, -0.191102,
		-0.397555, -0.848256, -0.349874,
		32.375668, 37.669781, 29.407103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974001, 38.211655, 29.901587>,  <32.653957, 38.263561, 29.652014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974001, 38.211655, 29.901587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031345, 37.828293, 29.802864>,  <32.065750, 37.598278, 29.743629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031345, 37.828293, 29.802864>,  <31.974001, 38.211655, 29.901587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031345, 37.828293, 29.802864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216062, -0.273677, 0.937239,
		-0.965797, -0.081037, -0.246309,
		0.143361, -0.958402, -0.246808,
		32.074352, 37.540771, 29.728823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654335, 37.902294, 30.510420>,  <31.974001, 38.211655, 29.901587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654335, 37.902294, 30.510420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854324, 37.637993, 30.286480>,  <31.974318, 37.479412, 30.152117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854324, 37.637993, 30.286480>,  <31.654335, 37.902294, 30.510420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854324, 37.637993, 30.286480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013737, -0.640314, 0.767990,
		-0.865932, -0.391665, -0.311063,
		0.499973, -0.660754, -0.559849,
		32.004314, 37.439766, 30.118525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422277, 37.209324, 30.691698>,  <31.654335, 37.902294, 30.510420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422277, 37.209324, 30.691698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798512, 37.177361, 30.559692>,  <32.024254, 37.158180, 30.480488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798512, 37.177361, 30.559692>,  <31.422277, 37.209324, 30.691698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798512, 37.177361, 30.559692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223041, -0.587422, 0.777938,
		-0.256025, -0.805325, -0.534698,
		0.940587, -0.079913, -0.330015,
		32.080688, 37.153385, 30.460688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577312, 36.609478, 30.830952>,  <31.422277, 37.209324, 30.691698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577312, 36.609478, 30.830952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948793, 36.742687, 30.765705>,  <32.171680, 36.822613, 30.726557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948793, 36.742687, 30.765705>,  <31.577312, 36.609478, 30.830952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948793, 36.742687, 30.765705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341506, -0.596669, 0.726195,
		0.144514, -0.730124, -0.667858,
		0.928703, 0.333023, -0.163115,
		32.227406, 36.842594, 30.716770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942118, 36.063232, 30.903650>,  <31.577312, 36.609478, 30.830952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942118, 36.063232, 30.903650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228085, 36.339931, 30.944408>,  <32.399666, 36.505951, 30.968864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228085, 36.339931, 30.944408>,  <31.942118, 36.063232, 30.903650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228085, 36.339931, 30.944408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540488, -0.639185, 0.547097,
		0.443582, -0.336055, -0.830844,
		0.714918, 0.691743, 0.101898,
		32.442558, 36.547455, 30.974977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652664, 35.752472, 30.771576>,  <31.942118, 36.063232, 30.903650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652664, 35.752472, 30.771576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726921, 36.089252, 30.974220>,  <32.771473, 36.291321, 31.095806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726921, 36.089252, 30.974220>,  <32.652664, 35.752472, 30.771576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726921, 36.089252, 30.974220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678463, -0.482775, 0.553730,
		0.710793, 0.240922, -0.660855,
		0.185638, 0.841953, 0.506610,
		32.782612, 36.341839, 31.126204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353333, 35.747711, 30.814686>,  <32.652664, 35.752472, 30.771576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353333, 35.747711, 30.814686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227940, 35.999653, 31.098944>,  <33.152706, 36.150818, 31.269499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227940, 35.999653, 31.098944>,  <33.353333, 35.747711, 30.814686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227940, 35.999653, 31.098944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502907, -0.524679, 0.686875,
		0.805491, 0.572708, -0.152283,
		-0.313479, 0.629855, 0.710643,
		33.133896, 36.188610, 31.312136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923843, 36.015820, 31.215332>,  <33.353333, 35.747711, 30.814686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923843, 36.015820, 31.215332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598267, 36.032204, 31.447130>,  <33.402920, 36.042034, 31.586208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598267, 36.032204, 31.447130>,  <33.923843, 36.015820, 31.215332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598267, 36.032204, 31.447130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518967, -0.397033, 0.756993,
		0.261083, 0.916890, 0.301908,
		-0.813947, 0.040958, 0.579494,
		33.354084, 36.044491, 31.620979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694508, 36.167454, 31.298199>,  <33.923843, 36.015820, 31.215332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694508, 36.167454, 31.298199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981583, 36.388435, 31.467768>,  <35.153828, 36.521027, 31.569510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981583, 36.388435, 31.467768>,  <34.694508, 36.167454, 31.298199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981583, 36.388435, 31.467768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192864, 0.742648, -0.641309,
		-0.669120, 0.378503, 0.639542,
		0.717692, 0.552457, 0.423921,
		35.196892, 36.554173, 31.594944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374676, 36.776558, 31.492346>,  <34.694508, 36.167454, 31.298199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374676, 36.776558, 31.492346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760414, 36.882393, 31.494759>,  <34.991856, 36.945892, 31.496206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760414, 36.882393, 31.494759>,  <34.374676, 36.776558, 31.492346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760414, 36.882393, 31.494759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222816, 0.823988, -0.520957,
		-0.142806, 0.501038, 0.853562,
		0.964344, 0.264583, 0.006032,
		35.049717, 36.961769, 31.496569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457760, 37.500301, 31.845081>,  <34.374676, 36.776558, 31.492346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457760, 37.500301, 31.845081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744133, 37.412521, 31.579969>,  <34.915958, 37.359852, 31.420902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744133, 37.412521, 31.579969>,  <34.457760, 37.500301, 31.845081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744133, 37.412521, 31.579969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180799, 0.858657, -0.479604,
		0.674348, 0.463196, 0.575069,
		0.715937, -0.219449, -0.662779,
		34.958916, 37.346687, 31.381136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654083, 38.166210, 31.687181>,  <34.457760, 37.500301, 31.845081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654083, 38.166210, 31.687181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803875, 37.929028, 31.402039>,  <34.893749, 37.786716, 31.230953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803875, 37.929028, 31.402039>,  <34.654083, 38.166210, 31.687181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803875, 37.929028, 31.402039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006281, 0.767157, -0.641428,
		0.927213, 0.244680, 0.283562,
		0.374481, -0.592960, -0.712855,
		34.916218, 37.751141, 31.188183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161121, 38.602753, 31.279068>,  <34.654083, 38.166210, 31.687181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161121, 38.602753, 31.279068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071926, 38.305283, 31.026966>,  <35.018410, 38.126801, 30.875706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071926, 38.305283, 31.026966>,  <35.161121, 38.602753, 31.279068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071926, 38.305283, 31.026966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026068, 0.650851, -0.758758,
		0.974472, -0.152766, -0.164520,
		-0.222991, -0.743677, -0.630254,
		35.005028, 38.082180, 30.837891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531063, 38.820339, 30.724752>,  <35.161121, 38.602753, 31.279068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531063, 38.820339, 30.724752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289051, 38.542759, 30.568617>,  <35.143845, 38.376209, 30.474936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289051, 38.542759, 30.568617>,  <35.531063, 38.820339, 30.724752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289051, 38.542759, 30.568617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002378, 0.491825, -0.870691,
		0.796196, -0.525869, -0.299220,
		-0.605034, -0.693952, -0.390339,
		35.107540, 38.334572, 30.451515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864197, 38.577332, 30.090988>,  <35.531063, 38.820339, 30.724752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864197, 38.577332, 30.090988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470135, 38.511314, 30.072121>,  <35.233696, 38.471703, 30.060801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470135, 38.511314, 30.072121>,  <35.864197, 38.577332, 30.090988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470135, 38.511314, 30.072121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049919, 0.538380, -0.841222,
		0.164234, -0.826382, -0.538628,
		-0.985157, -0.165045, -0.047168,
		35.174587, 38.461800, 30.057970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848137, 38.244846, 29.419903>,  <35.864197, 38.577332, 30.090988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848137, 38.244846, 29.419903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506451, 38.414948, 29.539555>,  <35.301437, 38.517006, 29.611345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506451, 38.414948, 29.539555>,  <35.848137, 38.244846, 29.419903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506451, 38.414948, 29.539555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056332, 0.496251, -0.866350,
		-0.516859, -0.756899, -0.399950,
		-0.854215, 0.425251, 0.299129,
		35.250187, 38.542522, 29.629293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414192, 38.134029, 28.869482>,  <35.848137, 38.244846, 29.419903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414192, 38.134029, 28.869482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227406, 38.422810, 29.073729>,  <35.115334, 38.596077, 29.196278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227406, 38.422810, 29.073729>,  <35.414192, 38.134029, 28.869482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227406, 38.422810, 29.073729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255615, 0.442585, -0.859523,
		-0.846522, -0.531894, -0.022134,
		-0.466971, 0.721947, 0.510618,
		35.087315, 38.639393, 29.226913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735569, 38.229355, 28.573221>,  <35.414192, 38.134029, 28.869482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735569, 38.229355, 28.573221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819111, 38.567886, 28.769222>,  <34.869236, 38.771008, 28.886824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819111, 38.567886, 28.769222>,  <34.735569, 38.229355, 28.573221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819111, 38.567886, 28.769222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295557, 0.532246, -0.793322,
		-0.932216, 0.020864, 0.361300,
		0.208852, 0.846332, 0.490002,
		34.881767, 38.821785, 28.916224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294022, 38.752403, 28.319551>,  <34.735569, 38.229355, 28.573221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294022, 38.752403, 28.319551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545635, 38.986744, 28.523937>,  <34.696606, 39.127350, 28.646568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545635, 38.986744, 28.523937>,  <34.294022, 38.752403, 28.319551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545635, 38.986744, 28.523937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112194, 0.718834, -0.686069,
		-0.769236, 0.374236, 0.517903,
		0.629038, 0.585855, 0.510965,
		34.734348, 39.162498, 28.677227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976418, 39.355858, 28.286093>,  <34.294022, 38.752403, 28.319551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976418, 39.355858, 28.286093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365234, 39.422123, 28.352655>,  <34.598526, 39.461884, 28.392593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365234, 39.422123, 28.352655>,  <33.976418, 39.355858, 28.286093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365234, 39.422123, 28.352655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007000, 0.728816, -0.684674,
		-0.234708, 0.664366, 0.709598,
		0.972041, 0.165665, 0.166409,
		34.656845, 39.471821, 28.402578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011429, 40.042675, 28.301624>,  <33.976418, 39.355858, 28.286093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011429, 40.042675, 28.301624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389301, 39.935738, 28.225615>,  <34.616024, 39.871574, 28.180010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389301, 39.935738, 28.225615>,  <34.011429, 40.042675, 28.301624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389301, 39.935738, 28.225615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030272, 0.647937, -0.761092,
		0.326597, 0.713235, 0.620185,
		0.944679, -0.267344, -0.190023,
		34.672707, 39.855534, 28.168608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122974, 40.587521, 27.899734>,  <34.011429, 40.042675, 28.301624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122974, 40.587521, 27.899734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454086, 40.370300, 27.843334>,  <34.652752, 40.239967, 27.809494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454086, 40.370300, 27.843334>,  <34.122974, 40.587521, 27.899734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454086, 40.370300, 27.843334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246547, 0.577822, -0.778034,
		0.503987, 0.609274, 0.612195,
		0.827775, -0.543054, -0.141000,
		34.702419, 40.207386, 27.801035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628727, 41.083858, 27.733864>,  <34.122974, 40.587521, 27.899734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628727, 41.083858, 27.733864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756615, 40.747414, 27.559370>,  <34.833347, 40.545547, 27.454674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756615, 40.747414, 27.559370>,  <34.628727, 41.083858, 27.733864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756615, 40.747414, 27.559370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119230, 0.492457, -0.862131,
		0.939979, 0.223631, 0.257737,
		0.319723, -0.841115, -0.436236,
		34.852531, 40.495079, 27.428499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126911, 41.259689, 27.317768>,  <34.628727, 41.083858, 27.733864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126911, 41.259689, 27.317768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054813, 40.899994, 27.158329>,  <35.011555, 40.684177, 27.062666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054813, 40.899994, 27.158329>,  <35.126911, 41.259689, 27.317768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054813, 40.899994, 27.158329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064996, 0.393461, -0.917041,
		0.981472, -0.191201, -0.012473,
		-0.180246, -0.899239, -0.398598,
		35.000740, 40.630222, 27.038750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615387, 41.190243, 26.734056>,  <35.126911, 41.259689, 27.317768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615387, 41.190243, 26.734056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275547, 40.984039, 26.689466>,  <35.071644, 40.860317, 26.662712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275547, 40.984039, 26.689466>,  <35.615387, 41.190243, 26.734056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275547, 40.984039, 26.689466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207871, 0.521537, -0.827520,
		0.484726, -0.679894, -0.550259,
		-0.849606, -0.515503, -0.111472,
		35.020664, 40.829388, 26.656023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678795, 41.256119, 25.956165>,  <35.615387, 41.190243, 26.734056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678795, 41.256119, 25.956165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317112, 41.126358, 26.067287>,  <35.100101, 41.048500, 26.133961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317112, 41.126358, 26.067287>,  <35.678795, 41.256119, 25.956165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317112, 41.126358, 26.067287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395991, 0.393073, -0.829870,
		0.160013, -0.860382, -0.483879,
		-0.904205, -0.324402, 0.277807,
		35.045849, 41.029037, 26.150629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417313, 40.912586, 25.302694>,  <35.678795, 41.256119, 25.956165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417313, 40.912586, 25.302694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104233, 40.985157, 25.540842>,  <34.916386, 41.028702, 25.683731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104233, 40.985157, 25.540842>,  <35.417313, 40.912586, 25.302694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104233, 40.985157, 25.540842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494256, 0.400196, -0.771722,
		-0.378279, -0.898291, -0.223559,
		-0.782698, 0.181431, 0.595371,
		34.869423, 41.039585, 25.719454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859573, 40.489384, 25.086811>,  <35.417313, 40.912586, 25.302694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859573, 40.489384, 25.086811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710823, 40.809185, 25.275488>,  <34.621571, 41.001068, 25.388695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710823, 40.809185, 25.275488>,  <34.859573, 40.489384, 25.086811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710823, 40.809185, 25.275488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611493, 0.171321, -0.772480,
		-0.698414, -0.575707, 0.425182,
		-0.371880, 0.799506, 0.471694,
		34.599258, 41.049038, 25.416996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177731, 40.394150, 25.029249>,  <34.859573, 40.489384, 25.086811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177731, 40.394150, 25.029249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237122, 40.783249, 25.100496>,  <34.272755, 41.016708, 25.143244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237122, 40.783249, 25.100496>,  <34.177731, 40.394150, 25.029249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237122, 40.783249, 25.100496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430458, 0.225727, -0.873930,
		-0.890315, 0.053083, 0.452240,
		0.148474, 0.972743, 0.178118,
		34.281662, 41.075073, 25.153933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559433, 40.805321, 24.893251>,  <34.177731, 40.394150, 25.029249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559433, 40.805321, 24.893251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860409, 41.065487, 24.851704>,  <34.040993, 41.221588, 24.826775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860409, 41.065487, 24.851704>,  <33.559433, 40.805321, 24.893251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860409, 41.065487, 24.851704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313500, 0.214961, -0.924938,
		-0.579269, 0.728523, 0.365651,
		0.752439, 0.650419, -0.103872,
		34.086140, 41.260612, 24.820541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311825, 41.281876, 24.366039>,  <33.559433, 40.805321, 24.893251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311825, 41.281876, 24.366039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706604, 41.345627, 24.375185>,  <33.943474, 41.383877, 24.380672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706604, 41.345627, 24.375185>,  <33.311825, 41.281876, 24.366039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706604, 41.345627, 24.375185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020318, 0.017576, -0.999639,
		-0.159726, 0.987061, 0.014108,
		0.986952, 0.159382, 0.022862,
		34.002689, 41.393440, 24.382044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423138, 41.814903, 23.905926>,  <33.311825, 41.281876, 24.366039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423138, 41.814903, 23.905926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766987, 41.610531, 23.905403>,  <33.973297, 41.487907, 23.905090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766987, 41.610531, 23.905403>,  <33.423138, 41.814903, 23.905926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766987, 41.610531, 23.905403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053242, 0.092122, -0.994323,
		0.508149, 0.854673, 0.106393,
		0.859622, -0.510929, -0.001307,
		34.024872, 41.457253, 23.905010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774651, 42.228020, 23.484915>,  <33.423138, 41.814903, 23.905926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774651, 42.228020, 23.484915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962803, 41.875378, 23.500448>,  <34.075695, 41.663792, 23.509768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962803, 41.875378, 23.500448>,  <33.774651, 42.228020, 23.484915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962803, 41.875378, 23.500448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316092, 0.127241, -0.940157,
		0.823907, 0.454511, 0.338521,
		0.470385, -0.881606, 0.038833,
		34.103920, 41.610897, 23.512098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377106, 42.361687, 23.125566>,  <33.774651, 42.228020, 23.484915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377106, 42.361687, 23.125566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354885, 41.962311, 23.127512>,  <34.341553, 41.722683, 23.128679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354885, 41.962311, 23.127512>,  <34.377106, 42.361687, 23.125566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354885, 41.962311, 23.127512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210071, -0.016447, -0.977548,
		0.976107, -0.053281, 0.210658,
		-0.055550, -0.998444, 0.004861,
		34.338219, 41.662777, 23.128971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070332, 42.007904, 22.881157>,  <34.377106, 42.361687, 23.125566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070332, 42.007904, 22.881157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739174, 41.799046, 22.799227>,  <34.540482, 41.673729, 22.750069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739174, 41.799046, 22.799227>,  <35.070332, 42.007904, 22.881157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739174, 41.799046, 22.799227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239262, 0.001518, -0.970954,
		0.507295, -0.852852, 0.123674,
		-0.827892, -0.522150, -0.204825,
		34.490807, 41.642399, 22.737780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346321, 41.473637, 22.435221>,  <35.070332, 42.007904, 22.881157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346321, 41.473637, 22.435221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950199, 41.441608, 22.389822>,  <34.712524, 41.422394, 22.362583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950199, 41.441608, 22.389822>,  <35.346321, 41.473637, 22.435221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950199, 41.441608, 22.389822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114164, -0.003802, -0.993455,
		0.079112, -0.996782, 0.012905,
		-0.990307, -0.080067, -0.113496,
		34.653107, 41.417587, 22.355774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332336, 40.922272, 22.000793>,  <35.346321, 41.473637, 22.435221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332336, 40.922272, 22.000793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989380, 41.124531, 21.962412>,  <34.783607, 41.245888, 21.939383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989380, 41.124531, 21.962412>,  <35.332336, 40.922272, 22.000793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989380, 41.124531, 21.962412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112545, 0.002277, -0.993644,
		-0.502214, -0.862738, -0.058861,
		-0.857388, 0.505647, -0.095953,
		34.732162, 41.276226, 21.933626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957218, 40.535572, 21.466196>,  <35.332336, 40.922272, 22.000793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957218, 40.535572, 21.466196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826336, 40.913006, 21.486540>,  <34.747807, 41.139465, 21.498745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826336, 40.913006, 21.486540>,  <34.957218, 40.535572, 21.466196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826336, 40.913006, 21.486540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122437, 0.011033, -0.992415,
		-0.936989, -0.330946, 0.111920,
		-0.327201, 0.943585, 0.050858,
		34.728176, 41.196083, 21.501797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407272, 40.540730, 20.957317>,  <34.957218, 40.535572, 21.466196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407272, 40.540730, 20.957317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495438, 40.923565, 21.032579>,  <34.548336, 41.153267, 21.077736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495438, 40.923565, 21.032579>,  <34.407272, 40.540730, 20.957317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495438, 40.923565, 21.032579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057720, 0.179764, -0.982015,
		-0.973697, 0.227311, -0.015620,
		0.220415, 0.957087, 0.188156,
		34.561562, 41.210690, 21.089025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890587, 40.845478, 20.769194>,  <34.407272, 40.540730, 20.957317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890587, 40.845478, 20.769194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206902, 41.087452, 20.731861>,  <34.396690, 41.232635, 20.709461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206902, 41.087452, 20.731861>,  <33.890587, 40.845478, 20.769194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206902, 41.087452, 20.731861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110156, -0.009340, -0.993870,
		-0.602098, 0.796221, 0.059251,
		0.790787, 0.604934, -0.093332,
		34.444138, 41.268932, 20.703861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662418, 41.359642, 20.271566>,  <33.890587, 40.845478, 20.769194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662418, 41.359642, 20.271566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057049, 41.424225, 20.261702>,  <34.293827, 41.462975, 20.255783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057049, 41.424225, 20.261702>,  <33.662418, 41.359642, 20.271566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057049, 41.424225, 20.261702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049384, 0.150949, -0.987307,
		-0.155685, 0.975267, 0.156895,
		0.986571, 0.161457, -0.024662,
		34.353020, 41.472660, 20.254303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688580, 41.806847, 19.775789>,  <33.662418, 41.359642, 20.271566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688580, 41.806847, 19.775789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075657, 41.710697, 19.806236>,  <34.307903, 41.653008, 19.824505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075657, 41.710697, 19.806236>,  <33.688580, 41.806847, 19.775789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075657, 41.710697, 19.806236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148534, 0.299521, -0.942457,
		0.203740, 0.923314, 0.325547,
		0.967692, -0.240371, 0.076119,
		34.365963, 41.638584, 19.829073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069302, 42.331562, 19.474499>,  <33.688580, 41.806847, 19.775789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069302, 42.331562, 19.474499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285275, 41.994911, 19.469854>,  <34.414860, 41.792919, 19.467068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285275, 41.994911, 19.469854>,  <34.069302, 42.331562, 19.474499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285275, 41.994911, 19.469854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192913, 0.137165, -0.971581,
		0.819301, 0.522351, 0.236421,
		0.539935, -0.841627, -0.011612,
		34.447254, 41.742424, 19.466372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494595, 42.439114, 18.958490>,  <34.069302, 42.331562, 19.474499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494595, 42.439114, 18.958490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543053, 42.042770, 18.982252>,  <34.572128, 41.804966, 18.996510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543053, 42.042770, 18.982252>,  <34.494595, 42.439114, 18.958490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543053, 42.042770, 18.982252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185614, -0.036176, -0.981957,
		0.975127, 0.129981, 0.179535,
		0.121141, -0.990856, 0.059403,
		34.579395, 41.745514, 19.000072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905064, 42.292992, 18.412979>,  <34.494595, 42.439114, 18.958490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905064, 42.292992, 18.412979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761555, 41.925678, 18.479952>,  <34.675449, 41.705292, 18.520136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761555, 41.925678, 18.479952>,  <34.905064, 42.292992, 18.412979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761555, 41.925678, 18.479952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135557, -0.228732, -0.964005,
		0.923528, -0.323166, 0.206544,
		-0.358777, -0.918284, 0.167433,
		34.653923, 41.650192, 18.530182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485577, 41.755287, 18.174011>,  <34.905064, 42.292992, 18.412979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485577, 41.755287, 18.174011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104824, 41.637371, 18.140491>,  <34.876373, 41.566624, 18.120378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104824, 41.637371, 18.140491>,  <35.485577, 41.755287, 18.174011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104824, 41.637371, 18.140491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111467, -0.078306, -0.990678,
		0.285479, -0.952348, 0.107397,
		-0.951881, -0.294789, -0.083800,
		34.819260, 41.548935, 18.115351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030182, 41.184963, 18.239849>,  <35.485577, 41.755287, 18.174011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030182, 41.184963, 18.239849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306976, 40.899876, 18.193916>,  <36.473053, 40.728825, 18.166357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306976, 40.899876, 18.193916>,  <36.030182, 41.184963, 18.239849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306976, 40.899876, 18.193916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011917, -0.147768, 0.988950,
		-0.721813, -0.685708, -0.093760,
		0.691986, -0.712719, -0.114832,
		36.514572, 40.686058, 18.159466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766823, 40.552998, 18.509947>,  <36.030182, 41.184963, 18.239849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766823, 40.552998, 18.509947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165253, 40.574429, 18.538111>,  <36.404312, 40.587288, 18.555008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165253, 40.574429, 18.538111>,  <35.766823, 40.552998, 18.509947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165253, 40.574429, 18.538111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050349, -0.311104, 0.949041,
		0.072753, -0.948864, -0.307186,
		0.996078, 0.053579, 0.070409,
		36.464077, 40.590504, 18.559233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157516, 39.862648, 18.539227>,  <35.766823, 40.552998, 18.509947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157516, 39.862648, 18.539227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425709, 40.102680, 18.713751>,  <36.586624, 40.246700, 18.818466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425709, 40.102680, 18.713751>,  <36.157516, 39.862648, 18.539227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425709, 40.102680, 18.713751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017787, -0.600906, 0.799122,
		0.741717, -0.528032, -0.413567,
		0.670477, 0.600078, 0.436310,
		36.626850, 40.282703, 18.844645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465702, 39.419579, 18.945057>,  <36.157516, 39.862648, 18.539227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465702, 39.419579, 18.945057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592674, 39.754227, 19.123627>,  <36.668858, 39.955017, 19.230768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592674, 39.754227, 19.123627>,  <36.465702, 39.419579, 18.945057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592674, 39.754227, 19.123627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230864, -0.524790, 0.819328,
		0.919749, -0.157018, -0.359732,
		0.317433, 0.836625, 0.446425,
		36.687904, 40.005215, 19.257555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995335, 39.119427, 19.323559>,  <36.465702, 39.419579, 18.945057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995335, 39.119427, 19.323559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950386, 39.481487, 19.487549>,  <36.923416, 39.698723, 19.585943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950386, 39.481487, 19.487549>,  <36.995335, 39.119427, 19.323559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950386, 39.481487, 19.487549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064544, -0.405069, 0.912005,
		0.991568, 0.128942, -0.012904,
		-0.112369, 0.905148, 0.409976,
		36.916676, 39.753033, 19.610542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496868, 39.154667, 19.758821>,  <36.995335, 39.119427, 19.323559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496868, 39.154667, 19.758821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223297, 39.411194, 19.897936>,  <37.059155, 39.565109, 19.981405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223297, 39.411194, 19.897936>,  <37.496868, 39.154667, 19.758821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223297, 39.411194, 19.897936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226246, -0.266764, 0.936830,
		0.693582, 0.719409, 0.037352,
		-0.683928, 0.641317, 0.347786,
		37.018120, 39.603588, 20.002272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798336, 39.485291, 20.285709>,  <37.496868, 39.154667, 19.758821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798336, 39.485291, 20.285709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410175, 39.538715, 20.366196>,  <37.177280, 39.570770, 20.414488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410175, 39.538715, 20.366196>,  <37.798336, 39.485291, 20.285709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410175, 39.538715, 20.366196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191464, -0.082372, 0.978037,
		0.147203, 0.987611, 0.054362,
		-0.970398, 0.133562, 0.201218,
		37.119057, 39.578785, 20.426561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766167, 39.712288, 20.976149>,  <37.798336, 39.485291, 20.285709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766167, 39.712288, 20.976149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383091, 39.620716, 20.906387>,  <37.153244, 39.565773, 20.864531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383091, 39.620716, 20.906387>,  <37.766167, 39.712288, 20.976149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383091, 39.620716, 20.906387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134256, -0.180643, 0.974343,
		-0.254558, 0.956536, 0.142266,
		-0.957693, -0.228926, -0.174405,
		37.095783, 39.552036, 20.854067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313244, 40.127239, 21.455379>,  <37.766167, 39.712288, 20.976149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313244, 40.127239, 21.455379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084801, 39.816643, 21.348869>,  <36.947735, 39.630287, 21.284964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084801, 39.816643, 21.348869>,  <37.313244, 40.127239, 21.455379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084801, 39.816643, 21.348869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196020, -0.185996, 0.962799,
		-0.797128, 0.602057, -0.045983,
		-0.571107, -0.776488, -0.266277,
		36.913467, 39.583698, 21.268986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581127, 40.206211, 21.743435>,  <37.313244, 40.127239, 21.455379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581127, 40.206211, 21.743435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659504, 39.819065, 21.680386>,  <36.706532, 39.586777, 21.642555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659504, 39.819065, 21.680386>,  <36.581127, 40.206211, 21.743435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659504, 39.819065, 21.680386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301032, -0.212347, 0.929671,
		-0.933266, -0.134714, -0.332966,
		0.195944, -0.967864, -0.157623,
		36.718288, 39.528706, 21.633099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052303, 39.899326, 22.146301>,  <36.581127, 40.206211, 21.743435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052303, 39.899326, 22.146301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322456, 39.612171, 22.078773>,  <36.484547, 39.439880, 22.038258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322456, 39.612171, 22.078773>,  <36.052303, 39.899326, 22.146301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322456, 39.612171, 22.078773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115412, -0.328984, 0.937256,
		-0.728382, -0.613522, -0.305042,
		0.675381, -0.717886, -0.168818,
		36.525070, 39.396805, 22.028128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755630, 39.399944, 22.415798>,  <36.052303, 39.899326, 22.146301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755630, 39.399944, 22.415798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139767, 39.288494, 22.411406>,  <36.370247, 39.221622, 22.408770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139767, 39.288494, 22.411406>,  <35.755630, 39.399944, 22.415798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139767, 39.288494, 22.411406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055956, -0.231150, 0.971308,
		-0.273178, -0.932166, -0.237573,
		0.960335, -0.278633, -0.010985,
		36.427868, 39.204906, 22.408110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815727, 38.730824, 22.753899>,  <35.755630, 39.399944, 22.415798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815727, 38.730824, 22.753899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166836, 38.919300, 22.788515>,  <36.377502, 39.032387, 22.809284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166836, 38.919300, 22.788515>,  <35.815727, 38.730824, 22.753899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166836, 38.919300, 22.788515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076757, -0.039981, 0.996248,
		0.472887, -0.881122, 0.001073,
		0.877773, 0.471195, 0.086539,
		36.430168, 39.060658, 22.814476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294727, 38.337952, 23.168943>,  <35.815727, 38.730824, 22.753899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294727, 38.337952, 23.168943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447395, 38.707298, 23.185488>,  <36.538998, 38.928909, 23.195414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447395, 38.707298, 23.185488>,  <36.294727, 38.337952, 23.168943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447395, 38.707298, 23.185488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155937, -0.108433, 0.981797,
		0.911048, -0.368277, -0.185374,
		0.381674, 0.923371, 0.041360,
		36.561897, 38.984310, 23.197895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001415, 38.306503, 23.658920>,  <36.294727, 38.337952, 23.168943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001415, 38.306503, 23.658920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888317, 38.687260, 23.611658>,  <36.820457, 38.915714, 23.583302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888317, 38.687260, 23.611658>,  <37.001415, 38.306503, 23.658920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888317, 38.687260, 23.611658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127124, 0.159282, 0.979014,
		0.950735, 0.261788, -0.166044,
		-0.282742, 0.951891, -0.118156,
		36.803493, 38.972828, 23.576212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571167, 38.719212, 24.002129>,  <37.001415, 38.306503, 23.658920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571167, 38.719212, 24.002129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235405, 38.936337, 23.991163>,  <37.033947, 39.066612, 23.984585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235405, 38.936337, 23.991163>,  <37.571167, 38.719212, 24.002129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235405, 38.936337, 23.991163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033053, -0.000637, 0.999454,
		0.542498, 0.839854, 0.018476,
		-0.839407, 0.542812, -0.027414,
		36.983582, 39.099178, 23.982939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729153, 39.297832, 24.213768>,  <37.571167, 38.719212, 24.002129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729153, 39.297832, 24.213768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336288, 39.329762, 24.281874>,  <37.100571, 39.348919, 24.322737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336288, 39.329762, 24.281874>,  <37.729153, 39.297832, 24.213768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336288, 39.329762, 24.281874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188041, 0.408283, 0.893278,
		0.001791, 0.909358, -0.416010,
		-0.982160, 0.079827, 0.170265,
		37.041641, 39.353710, 24.332952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710030, 39.829308, 24.704004>,  <37.729153, 39.297832, 24.213768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710030, 39.829308, 24.704004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350700, 39.653763, 24.712103>,  <37.135101, 39.548435, 24.716963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350700, 39.653763, 24.712103>,  <37.710030, 39.829308, 24.704004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350700, 39.653763, 24.712103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012291, 0.071177, 0.997388,
		-0.439156, 0.895731, -0.069334,
		-0.898327, -0.438861, 0.020249,
		37.081203, 39.522106, 24.718178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260548, 40.207962, 25.159723>,  <37.710030, 39.829308, 24.704004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260548, 40.207962, 25.159723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108036, 39.838787, 25.138494>,  <37.016529, 39.617283, 25.125757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108036, 39.838787, 25.138494>,  <37.260548, 40.207962, 25.159723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108036, 39.838787, 25.138494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091716, -0.019359, 0.995597,
		-0.919901, 0.384464, -0.077267,
		-0.381275, -0.922937, -0.053070,
		36.993652, 39.561905, 25.122574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622505, 40.274433, 25.488083>,  <37.260548, 40.207962, 25.159723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622505, 40.274433, 25.488083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735229, 39.890697, 25.494453>,  <36.802864, 39.660458, 25.498276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735229, 39.890697, 25.494453>,  <36.622505, 40.274433, 25.488083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735229, 39.890697, 25.494453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070063, -0.004020, 0.997534,
		-0.956909, -0.282231, -0.068347,
		0.281810, -0.959338, 0.015927,
		36.819771, 39.602898, 25.499231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165215, 40.055187, 26.010088>,  <36.622505, 40.274433, 25.488083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165215, 40.055187, 26.010088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446934, 39.773087, 25.977636>,  <36.615967, 39.603825, 25.958164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446934, 39.773087, 25.977636>,  <36.165215, 40.055187, 26.010088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446934, 39.773087, 25.977636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046486, -0.159856, 0.986045,
		-0.708380, -0.690699, -0.145371,
		0.704299, -0.705252, -0.081131,
		36.658222, 39.561512, 25.953297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957897, 39.421192, 26.357492>,  <36.165215, 40.055187, 26.010088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957897, 39.421192, 26.357492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355690, 39.379616, 26.351913>,  <36.594368, 39.354671, 26.348566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355690, 39.379616, 26.351913>,  <35.957897, 39.421192, 26.357492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355690, 39.379616, 26.351913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016856, -0.289705, 0.956968,
		-0.103504, -0.951456, -0.289859,
		0.994486, -0.103935, -0.013948,
		36.654037, 39.348434, 26.347729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054161, 38.824734, 26.839344>,  <35.957897, 39.421192, 26.357492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054161, 38.824734, 26.839344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407925, 39.003262, 26.784771>,  <36.620182, 39.110378, 26.752028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407925, 39.003262, 26.784771>,  <36.054161, 38.824734, 26.839344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407925, 39.003262, 26.784771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230615, -0.163774, 0.959164,
		0.405749, -0.879760, -0.247771,
		0.884412, 0.446319, -0.136435,
		36.673248, 39.137157, 26.743841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544048, 38.357414, 27.098778>,  <36.054161, 38.824734, 26.839344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544048, 38.357414, 27.098778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742352, 38.704781, 27.095257>,  <36.861332, 38.913200, 27.093145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742352, 38.704781, 27.095257>,  <36.544048, 38.357414, 27.098778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742352, 38.704781, 27.095257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438987, -0.241837, 0.865335,
		0.749343, -0.432861, -0.501116,
		0.495758, 0.868416, -0.008801,
		36.891079, 38.965305, 27.092617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290142, 38.221306, 27.203077>,  <36.544048, 38.357414, 27.098778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290142, 38.221306, 27.203077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250153, 38.601536, 27.320658>,  <37.226158, 38.829674, 27.391207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250153, 38.601536, 27.320658>,  <37.290142, 38.221306, 27.203077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250153, 38.601536, 27.320658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345560, -0.243871, 0.906154,
		0.933056, 0.192166, -0.304102,
		-0.099970, 0.950578, 0.293951,
		37.220161, 38.886711, 27.408842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801273, 38.383652, 27.640671>,  <37.290142, 38.221306, 27.203077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801273, 38.383652, 27.640671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539955, 38.668228, 27.744257>,  <37.383163, 38.838974, 27.806408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539955, 38.668228, 27.744257>,  <37.801273, 38.383652, 27.640671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539955, 38.668228, 27.744257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238493, -0.131253, 0.962234,
		0.718559, 0.690383, -0.083927,
		-0.653294, 0.711438, 0.258965,
		37.343967, 38.881660, 27.821947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208405, 38.778477, 28.008438>,  <37.801273, 38.383652, 27.640671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208405, 38.778477, 28.008438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831860, 38.865734, 28.111397>,  <37.605934, 38.918087, 28.173172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831860, 38.865734, 28.111397>,  <38.208405, 38.778477, 28.008438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831860, 38.865734, 28.111397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255473, -0.037488, 0.966089,
		0.220396, 0.975196, -0.020440,
		-0.941360, 0.218144, 0.257399,
		37.549450, 38.931179, 28.188616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354954, 39.258949, 28.486200>,  <38.208405, 38.778477, 28.008438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354954, 39.258949, 28.486200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994080, 39.098366, 28.549314>,  <37.777557, 39.002014, 28.587183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994080, 39.098366, 28.549314>,  <38.354954, 39.258949, 28.486200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994080, 39.098366, 28.549314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276273, -0.256865, 0.926117,
		-0.331270, 0.879119, 0.342652,
		-0.902183, -0.401460, 0.157785,
		37.723423, 38.977928, 28.596649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163094, 39.428391, 29.185785>,  <38.354954, 39.258949, 28.486200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163094, 39.428391, 29.185785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940834, 39.110874, 29.086866>,  <37.807480, 38.920364, 29.027515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940834, 39.110874, 29.086866>,  <38.163094, 39.428391, 29.185785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940834, 39.110874, 29.086866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349074, -0.492686, 0.797125,
		-0.754587, 0.356596, 0.550851,
		-0.555648, -0.793788, -0.247297,
		37.774139, 38.872738, 29.012678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877453, 39.240902, 29.844513>,  <38.163094, 39.428391, 29.185785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877453, 39.240902, 29.844513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845375, 38.935856, 29.587769>,  <37.826130, 38.752827, 29.433722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845375, 38.935856, 29.587769>,  <37.877453, 39.240902, 29.844513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845375, 38.935856, 29.587769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206264, -0.642694, 0.737834,
		-0.975204, -0.073222, 0.208842,
		-0.080196, -0.762616, -0.641861,
		37.821316, 38.707069, 29.395210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531048, 38.712860, 30.170799>,  <37.877453, 39.240902, 29.844513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531048, 38.712860, 30.170799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718685, 38.509724, 29.881786>,  <37.831268, 38.387844, 29.708380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718685, 38.509724, 29.881786>,  <37.531048, 38.712860, 30.170799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718685, 38.509724, 29.881786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158977, -0.756209, 0.634723,
		-0.868722, -0.412610, -0.273998,
		0.469093, -0.507839, -0.722531,
		37.859413, 38.357372, 29.665028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404671, 37.959976, 30.275234>,  <37.531048, 38.712860, 30.170799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404671, 37.959976, 30.275234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730373, 37.950417, 30.043230>,  <37.925797, 37.944679, 29.904028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730373, 37.950417, 30.043230>,  <37.404671, 37.959976, 30.275234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730373, 37.950417, 30.043230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378520, -0.735667, 0.561709,
		-0.440121, -0.676922, -0.589974,
		0.814258, -0.023903, -0.580011,
		37.974651, 37.943245, 29.869226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560970, 37.313438, 30.196384>,  <37.404671, 37.959976, 30.275234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560970, 37.313438, 30.196384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909683, 37.494965, 30.122581>,  <38.118912, 37.603882, 30.078299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909683, 37.494965, 30.122581>,  <37.560970, 37.313438, 30.196384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909683, 37.494965, 30.122581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459620, -0.627348, 0.628636,
		0.169534, -0.632839, -0.755495,
		0.871784, 0.453816, -0.184509,
		38.171219, 37.631111, 30.067228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920792, 36.837051, 29.918068>,  <37.560970, 37.313438, 30.196384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920792, 36.837051, 29.918068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178326, 37.096977, 30.079668>,  <38.332848, 37.252934, 30.176628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178326, 37.096977, 30.079668>,  <37.920792, 36.837051, 29.918068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178326, 37.096977, 30.079668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336257, -0.714560, 0.613462,
		0.687319, -0.259121, -0.678564,
		0.643836, 0.649815, 0.403999,
		38.371475, 37.291924, 30.200869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729446, 36.507942, 29.855968>,  <37.920792, 36.837051, 29.918068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729446, 36.507942, 29.855968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728817, 36.799786, 30.129517>,  <38.728439, 36.974892, 30.293644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728817, 36.799786, 30.129517>,  <38.729446, 36.507942, 29.855968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728817, 36.799786, 30.129517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457097, -0.607721, 0.649414,
		0.889416, 0.313614, -0.332546,
		-0.001570, 0.729604, 0.683868,
		38.728348, 37.018665, 30.334677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391640, 36.499260, 30.129120>,  <38.729446, 36.507942, 29.855968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391640, 36.499260, 30.129120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198753, 36.699425, 30.416746>,  <39.083019, 36.819523, 30.589321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198753, 36.699425, 30.416746>,  <39.391640, 36.499260, 30.129120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198753, 36.699425, 30.416746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462850, -0.551358, 0.694099,
		0.743797, 0.667527, 0.034260,
		-0.482219, 0.500412, 0.719064,
		39.054089, 36.849548, 30.632465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904617, 36.785282, 30.642544>,  <39.391640, 36.499260, 30.129120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904617, 36.785282, 30.642544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558075, 36.788811, 30.842281>,  <39.350147, 36.790928, 30.962124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558075, 36.788811, 30.842281>,  <39.904617, 36.785282, 30.642544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558075, 36.788811, 30.842281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418817, -0.531822, 0.736042,
		0.272058, 0.846810, 0.457052,
		-0.866359, 0.008825, 0.499344,
		39.298168, 36.791458, 30.992085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121922, 36.745617, 31.342091>,  <39.904617, 36.785282, 30.642544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121922, 36.745617, 31.342091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730213, 36.664883, 31.348831>,  <39.495186, 36.616440, 31.352875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730213, 36.664883, 31.348831>,  <40.121922, 36.745617, 31.342091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730213, 36.664883, 31.348831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127121, -0.547726, 0.826944,
		-0.157678, 0.811947, 0.562032,
		-0.979274, -0.201837, 0.016851,
		39.436432, 36.604332, 31.353886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832611, 36.929443, 32.068573>,  <40.121922, 36.745617, 31.342091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832611, 36.929443, 32.068573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594883, 36.651253, 31.907034>,  <39.452248, 36.484337, 31.810110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594883, 36.651253, 31.907034>,  <39.832611, 36.929443, 32.068573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594883, 36.651253, 31.907034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001715, -0.501059, 0.865412,
		-0.804226, 0.515024, 0.296597,
		-0.594321, -0.695478, -0.403848,
		39.416588, 36.442608, 31.785879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269531, 36.797592, 32.597393>,  <39.832611, 36.929443, 32.068573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269531, 36.797592, 32.597393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324860, 36.483414, 32.356079>,  <39.358055, 36.294907, 32.211292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324860, 36.483414, 32.356079>,  <39.269531, 36.797592, 32.597393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324860, 36.483414, 32.356079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007098, -0.608335, 0.793648,
		-0.990362, -0.114059, -0.078570,
		0.138320, -0.785441, -0.603282,
		39.366356, 36.247780, 32.175095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798359, 36.215401, 32.740028>,  <39.269531, 36.797592, 32.597393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798359, 36.215401, 32.740028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156982, 36.100582, 32.605103>,  <39.372158, 36.031693, 32.524147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156982, 36.100582, 32.605103>,  <38.798359, 36.215401, 32.740028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156982, 36.100582, 32.605103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132086, -0.553644, 0.822212,
		-0.422761, -0.781719, -0.458463,
		0.896564, -0.287043, -0.337313,
		39.425953, 36.014469, 32.503910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837414, 35.408020, 32.743900>,  <38.798359, 36.215401, 32.740028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837414, 35.408020, 32.743900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195789, 35.583424, 32.772213>,  <39.410812, 35.688663, 32.789200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195789, 35.583424, 32.772213>,  <38.837414, 35.408020, 32.743900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195789, 35.583424, 32.772213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182567, -0.508810, 0.841298,
		0.404929, -0.740827, -0.535918,
		0.895937, 0.438506, 0.070781,
		39.464569, 35.714977, 32.793446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410263, 34.822929, 32.765984>,  <38.837414, 35.408020, 32.743900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410263, 34.822929, 32.765984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565685, 35.156544, 32.922657>,  <39.658939, 35.356712, 33.016663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565685, 35.156544, 32.922657>,  <39.410263, 34.822929, 32.765984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565685, 35.156544, 32.922657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148416, -0.476182, 0.866732,
		0.909394, -0.278641, -0.308807,
		0.388556, 0.834032, 0.391682,
		39.682251, 35.406754, 33.040161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013382, 34.641205, 33.054012>,  <39.410263, 34.822929, 32.765984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013382, 34.641205, 33.054012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983841, 34.993591, 33.240963>,  <39.966118, 35.205025, 33.353134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983841, 34.993591, 33.240963>,  <40.013382, 34.641205, 33.054012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983841, 34.993591, 33.240963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426091, -0.395851, 0.813479,
		0.901661, 0.259220, -0.346140,
		-0.073850, 0.880969, 0.467375,
		39.961685, 35.257881, 33.381176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717148, 34.789883, 33.447392>,  <40.013382, 34.641205, 33.054012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717148, 34.789883, 33.447392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407028, 34.990108, 33.601452>,  <40.220955, 35.110245, 33.693890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407028, 34.990108, 33.601452>,  <40.717148, 34.789883, 33.447392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407028, 34.990108, 33.601452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177402, -0.412670, 0.893438,
		0.606163, 0.761012, 0.231143,
		-0.775303, 0.500564, 0.385150,
		40.174438, 35.140278, 33.716995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960308, 34.894573, 34.062778>,  <40.717148, 34.789883, 33.447392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960308, 34.894573, 34.062778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582077, 35.016460, 34.108444>,  <40.355141, 35.089592, 34.135845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582077, 35.016460, 34.108444>,  <40.960308, 34.894573, 34.062778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582077, 35.016460, 34.108444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038272, -0.244256, 0.968955,
		0.323145, 0.920589, 0.219300,
		-0.945575, 0.304720, 0.114163,
		40.298405, 35.107876, 34.142693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769951, 35.550247, 34.615536>,  <40.960308, 34.894573, 34.062778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769951, 35.550247, 34.615536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456074, 35.305481, 34.575905>,  <40.267746, 35.158623, 34.552128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456074, 35.305481, 34.575905>,  <40.769951, 35.550247, 34.615536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456074, 35.305481, 34.575905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016025, -0.139752, 0.990057,
		-0.619678, 0.778478, 0.099857,
		-0.784693, -0.611916, -0.099076,
		40.220665, 35.121906, 34.546181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335049, 35.770264, 35.314857>,  <40.769951, 35.550247, 34.615536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335049, 35.770264, 35.314857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193207, 35.420330, 35.182842>,  <40.108101, 35.210369, 35.103634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193207, 35.420330, 35.182842>,  <40.335049, 35.770264, 35.314857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193207, 35.420330, 35.182842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049326, -0.334977, 0.940934,
		-0.933714, 0.349941, 0.075633,
		-0.354607, -0.874833, -0.330034,
		40.086826, 35.157879, 35.083832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954590, 35.507278, 35.901527>,  <40.335049, 35.770264, 35.314857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954590, 35.507278, 35.901527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956841, 35.191410, 35.656128>,  <39.958191, 35.001888, 35.508888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956841, 35.191410, 35.656128>,  <39.954590, 35.507278, 35.901527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956841, 35.191410, 35.656128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054793, -0.612831, 0.788312,
		-0.998482, 0.029182, -0.046715,
		0.005624, -0.789675, -0.613500,
		39.958527, 34.954506, 35.472076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543045, 35.009830, 36.129128>,  <39.954590, 35.507278, 35.901527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543045, 35.009830, 36.129128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746933, 34.765816, 35.886459>,  <39.869267, 34.619408, 35.740860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746933, 34.765816, 35.886459>,  <39.543045, 35.009830, 36.129128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746933, 34.765816, 35.886459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081960, -0.736371, 0.671595,
		-0.856431, -0.292599, -0.425337,
		0.509714, -0.610035, -0.606670,
		39.899849, 34.582806, 35.704460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060810, 34.329800, 36.061470>,  <39.543045, 35.009830, 36.129128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060810, 34.329800, 36.061470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459953, 34.305374, 36.052067>,  <39.699440, 34.290718, 36.046425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459953, 34.305374, 36.052067>,  <39.060810, 34.329800, 36.061470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459953, 34.305374, 36.052067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039099, -0.844570, 0.534016,
		-0.052460, -0.531953, -0.845147,
		0.997858, -0.061059, -0.023507,
		39.759312, 34.287056, 36.045013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330139, 33.668407, 35.667328>,  <39.060810, 34.329800, 36.061470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330139, 33.668407, 35.667328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572853, 33.800419, 35.956573>,  <39.718479, 33.879627, 36.130123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572853, 33.800419, 35.956573>,  <39.330139, 33.668407, 35.667328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572853, 33.800419, 35.956573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008988, -0.912521, 0.408930,
		0.794818, -0.241632, -0.556668,
		0.606782, 0.330028, 0.723116,
		39.754887, 33.899426, 36.173508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450310, 32.985798, 36.047745>,  <39.330139, 33.668407, 35.667328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450310, 32.985798, 36.047745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690121, 33.215191, 36.271061>,  <39.834007, 33.352825, 36.405048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690121, 33.215191, 36.271061>,  <39.450310, 32.985798, 36.047745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690121, 33.215191, 36.271061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015483, -0.705732, 0.708309,
		0.800202, -0.416009, -0.431987,
		0.599530, 0.573479, 0.558288,
		39.869980, 33.387234, 36.438549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954880, 32.601421, 36.215916>,  <39.450310, 32.985798, 36.047745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954880, 32.601421, 36.215916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957531, 32.889481, 36.493431>,  <39.959122, 33.062317, 36.659939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957531, 32.889481, 36.493431>,  <39.954880, 32.601421, 36.215916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957531, 32.889481, 36.493431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137763, -0.687841, 0.712668,
		0.990443, 0.090855, -0.103768,
		0.006627, 0.720152, 0.693784,
		39.959518, 33.105526, 36.701565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550880, 32.505211, 36.655117>,  <39.954880, 32.601421, 36.215916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550880, 32.505211, 36.655117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275581, 32.706501, 36.864147>,  <40.110401, 32.827274, 36.989563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275581, 32.706501, 36.864147>,  <40.550880, 32.505211, 36.655117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275581, 32.706501, 36.864147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072552, -0.668961, 0.739748,
		0.721840, 0.547043, 0.423900,
		-0.688247, 0.503225, 0.522572,
		40.069107, 32.857468, 37.020920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733456, 32.603653, 37.352245>,  <40.550880, 32.505211, 36.655117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733456, 32.603653, 37.352245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346054, 32.647469, 37.441692>,  <40.113613, 32.673756, 37.495361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346054, 32.647469, 37.441692>,  <40.733456, 32.603653, 37.352245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346054, 32.647469, 37.441692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118549, -0.586902, 0.800932,
		0.218973, 0.802215, 0.555430,
		-0.968503, 0.109537, 0.223617,
		40.055504, 32.680328, 37.508778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521626, 32.904694, 38.050705>,  <40.733456, 32.603653, 37.352245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521626, 32.904694, 38.050705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244194, 32.652328, 37.911625>,  <40.077736, 32.500908, 37.828175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244194, 32.652328, 37.911625>,  <40.521626, 32.904694, 38.050705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244194, 32.652328, 37.911625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007556, -0.489010, 0.872245,
		-0.720343, 0.602341, 0.343933,
		-0.693576, -0.630915, -0.347704,
		40.036121, 32.463055, 37.807312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044983, 32.906303, 38.592476>,  <40.521626, 32.904694, 38.050705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044983, 32.906303, 38.592476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015396, 32.570724, 38.376812>,  <39.997643, 32.369377, 38.247414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015396, 32.570724, 38.376812>,  <40.044983, 32.906303, 38.592476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015396, 32.570724, 38.376812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024307, -0.542001, 0.840026,
		-0.996964, 0.049029, 0.060483,
		-0.073968, -0.838946, -0.539164,
		39.993206, 32.319042, 38.215061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866692, 32.534752, 39.099712>,  <40.044983, 32.906303, 38.592476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866692, 32.534752, 39.099712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961006, 32.282204, 38.804203>,  <40.017593, 32.130676, 38.626900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961006, 32.282204, 38.804203>,  <39.866692, 32.534752, 39.099712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961006, 32.282204, 38.804203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301810, -0.675040, 0.673225,
		-0.923752, -0.381704, 0.031390,
		0.235783, -0.631366, -0.738771,
		40.031742, 32.092793, 38.582573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666233, 31.873636, 39.400753>,  <39.866692, 32.534752, 39.099712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666233, 31.873636, 39.400753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929688, 31.818455, 39.104870>,  <40.087761, 31.785347, 38.927341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929688, 31.818455, 39.104870>,  <39.666233, 31.873636, 39.400753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929688, 31.818455, 39.104870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482826, -0.676507, 0.556074,
		-0.577129, -0.723400, -0.378964,
		0.658636, -0.137953, -0.739708,
		40.127277, 31.777069, 38.882957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723492, 31.212177, 39.182957>,  <39.666233, 31.873636, 39.400753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723492, 31.212177, 39.182957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086811, 31.369698, 39.126518>,  <40.304802, 31.464209, 39.092655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086811, 31.369698, 39.126518>,  <39.723492, 31.212177, 39.182957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086811, 31.369698, 39.126518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396148, -0.701421, 0.592516,
		0.134363, -0.594080, -0.793105,
		0.908302, 0.393799, -0.141099,
		40.359303, 31.487837, 39.084190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129913, 30.616043, 39.125153>,  <39.723492, 31.212177, 39.182957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129913, 30.616043, 39.125153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359989, 30.933172, 39.205742>,  <40.498035, 31.123449, 39.254093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359989, 30.933172, 39.205742>,  <40.129913, 30.616043, 39.125153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359989, 30.933172, 39.205742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606708, -0.578664, 0.545026,
		0.548694, -0.191258, -0.813853,
		0.575188, 0.792823, 0.201471,
		40.532547, 31.171019, 39.266182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922028, 30.551006, 38.992039>,  <40.129913, 30.616043, 39.125153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922028, 30.551006, 38.992039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884083, 30.814907, 39.290226>,  <40.861317, 30.973248, 39.469139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884083, 30.814907, 39.290226>,  <40.922028, 30.551006, 38.992039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884083, 30.814907, 39.290226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792514, -0.403119, 0.457620,
		0.602430, 0.634208, -0.484622,
		-0.094866, 0.659754, 0.745470,
		40.855621, 31.012833, 39.513866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456139, 31.177790, 39.087170>,  <40.922028, 30.551006, 38.992039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456139, 31.177790, 39.087170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312004, 31.023975, 39.427120>,  <41.225521, 30.931686, 39.631088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312004, 31.023975, 39.427120>,  <41.456139, 31.177790, 39.087170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312004, 31.023975, 39.427120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916815, -0.314050, 0.246623,
		0.172067, 0.868046, 0.465714,
		-0.360338, -0.384538, 0.849875,
		41.203903, 30.908613, 39.682083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203411, 31.651669, 38.613384>,  <41.456139, 31.177790, 39.087170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203411, 31.651669, 38.613384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871738, 31.443815, 38.695789>,  <40.672737, 31.319103, 38.745232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871738, 31.443815, 38.695789>,  <41.203411, 31.651669, 38.613384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871738, 31.443815, 38.695789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504751, 0.537680, -0.675371,
		0.240179, -0.663988, -0.708120,
		-0.829180, -0.519634, 0.206009,
		40.622986, 31.287924, 38.757591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903591, 31.234045, 38.047974>,  <41.203411, 31.651669, 38.613384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903591, 31.234045, 38.047974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600510, 31.366673, 38.272812>,  <40.418663, 31.446249, 38.407715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600510, 31.366673, 38.272812>,  <40.903591, 31.234045, 38.047974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600510, 31.366673, 38.272812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354282, 0.514359, -0.780973,
		-0.548065, -0.790884, -0.272261,
		-0.757699, 0.331567, 0.562098,
		40.373199, 31.466143, 38.441441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285774, 31.184395, 37.682976>,  <40.903591, 31.234045, 38.047974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285774, 31.184395, 37.682976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193401, 31.463915, 37.953781>,  <40.137978, 31.631628, 38.116264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193401, 31.463915, 37.953781>,  <40.285774, 31.184395, 37.682976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193401, 31.463915, 37.953781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380576, 0.575506, -0.723847,
		-0.895450, -0.424816, 0.133043,
		-0.230935, 0.698802, 0.677011,
		40.124123, 31.673555, 38.156883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576153, 31.316799, 37.518555>,  <40.285774, 31.184395, 37.682976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576153, 31.316799, 37.518555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733513, 31.622078, 37.723598>,  <39.827930, 31.805244, 37.846626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733513, 31.622078, 37.723598>,  <39.576153, 31.316799, 37.518555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733513, 31.622078, 37.723598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371267, 0.641963, -0.670854,
		-0.841068, 0.073601, 0.535899,
		0.393403, 0.763195, 0.512609,
		39.851532, 31.851036, 37.877380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043316, 31.762342, 37.382969>,  <39.576153, 31.316799, 37.518555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043316, 31.762342, 37.382969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349079, 31.975571, 37.528030>,  <39.532536, 32.103508, 37.615067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349079, 31.975571, 37.528030>,  <39.043316, 31.762342, 37.382969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349079, 31.975571, 37.528030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175404, 0.713212, -0.678647,
		-0.620413, 0.455154, 0.638688,
		0.764409, 0.533070, 0.362650,
		39.578403, 32.135490, 37.636826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836491, 32.448277, 37.573875>,  <39.043316, 31.762342, 37.382969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836491, 32.448277, 37.573875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213531, 32.439487, 37.440598>,  <39.439754, 32.434212, 37.360630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213531, 32.439487, 37.440598>,  <38.836491, 32.448277, 37.573875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213531, 32.439487, 37.440598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279324, 0.494876, -0.822846,
		0.182973, 0.868686, 0.460332,
		0.942602, -0.021977, -0.333194,
		39.496311, 32.432896, 37.340641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176716, 33.123821, 37.426109>,  <38.836491, 32.448277, 37.573875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176716, 33.123821, 37.426109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350826, 32.889694, 37.152485>,  <39.455292, 32.749218, 36.988312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350826, 32.889694, 37.152485>,  <39.176716, 33.123821, 37.426109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350826, 32.889694, 37.152485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382220, 0.567799, -0.729049,
		0.815133, 0.578799, 0.023429,
		0.435276, -0.585317, -0.684061,
		39.481407, 32.714100, 36.947266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422649, 33.744385, 37.787582>,  <39.176716, 33.123821, 37.426109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422649, 33.744385, 37.787582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632595, 33.498650, 37.551918>,  <39.758564, 33.351208, 37.410519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632595, 33.498650, 37.551918>,  <39.422649, 33.744385, 37.787582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632595, 33.498650, 37.551918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170994, 0.754154, -0.634045,
		0.833831, 0.232048, 0.500879,
		0.524869, -0.614333, -0.589158,
		39.790054, 33.314350, 37.375172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024399, 34.049141, 37.590740>,  <39.422649, 33.744385, 37.787582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024399, 34.049141, 37.590740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006622, 33.759521, 37.315411>,  <39.995956, 33.585751, 37.150215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006622, 33.759521, 37.315411>,  <40.024399, 34.049141, 37.590740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006622, 33.759521, 37.315411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212373, 0.666405, -0.714704,
		0.976178, -0.177940, 0.124154,
		-0.044437, -0.724045, -0.688320,
		39.993290, 33.542309, 37.108913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463303, 34.321850, 37.130753>,  <40.024399, 34.049141, 37.590740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463303, 34.321850, 37.130753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298138, 34.023590, 36.921558>,  <40.199039, 33.844635, 36.796043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298138, 34.023590, 36.921558>,  <40.463303, 34.321850, 37.130753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298138, 34.023590, 36.921558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080376, 0.542147, -0.836431,
		0.907218, -0.387406, -0.163926,
		-0.412910, -0.745650, -0.522984,
		40.174263, 33.799896, 36.764664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910152, 34.048809, 36.578789>,  <40.463303, 34.321850, 37.130753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910152, 34.048809, 36.578789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525871, 33.991108, 36.483936>,  <40.295303, 33.956486, 36.427025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525871, 33.991108, 36.483936>,  <40.910152, 34.048809, 36.578789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525871, 33.991108, 36.483936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135470, 0.501984, -0.854201,
		0.242263, -0.852761, -0.462717,
		-0.960706, -0.144257, -0.237135,
		40.237659, 33.947830, 36.412796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939793, 34.040581, 35.800869>,  <40.910152, 34.048809, 36.578789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939793, 34.040581, 35.800869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556423, 34.095238, 35.901070>,  <40.326401, 34.128033, 35.961189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556423, 34.095238, 35.901070>,  <40.939793, 34.040581, 35.800869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556423, 34.095238, 35.901070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185634, 0.368131, -0.911054,
		-0.216708, -0.919678, -0.327460,
		-0.958425, 0.136645, 0.250501,
		40.268894, 34.136230, 35.976219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657745, 34.083218, 35.162403>,  <40.939793, 34.040581, 35.800869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657745, 34.083218, 35.162403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309055, 34.133209, 35.351921>,  <40.099842, 34.163204, 35.465633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309055, 34.133209, 35.351921>,  <40.657745, 34.083218, 35.162403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309055, 34.133209, 35.351921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307576, 0.613143, -0.727635,
		-0.381446, -0.780023, -0.496048,
		-0.871720, 0.124981, 0.473797,
		40.047539, 34.170704, 35.494061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093132, 33.862083, 34.817577>,  <40.657745, 34.083218, 35.162403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093132, 33.862083, 34.817577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010586, 34.179787, 35.046158>,  <39.961060, 34.370411, 35.183308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010586, 34.179787, 35.046158>,  <40.093132, 33.862083, 34.817577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010586, 34.179787, 35.046158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181647, 0.542777, -0.819999,
		-0.961466, -0.273023, 0.032265,
		-0.206365, 0.794262, 0.571455,
		39.948677, 34.418064, 35.217594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426918, 34.093048, 34.751282>,  <40.093132, 33.862083, 34.817577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426918, 34.093048, 34.751282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661263, 34.409912, 34.819683>,  <39.801868, 34.600033, 34.860725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661263, 34.409912, 34.819683>,  <39.426918, 34.093048, 34.751282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661263, 34.409912, 34.819683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344931, 0.434687, -0.831907,
		-0.733341, 0.428397, 0.527908,
		0.585862, 0.792164, 0.171007,
		39.837021, 34.647560, 34.870987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125183, 34.439789, 34.305439>,  <39.426918, 34.093048, 34.751282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125183, 34.439789, 34.305439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418594, 34.686192, 34.420311>,  <39.594643, 34.834034, 34.489235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418594, 34.686192, 34.420311>,  <39.125183, 34.439789, 34.305439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418594, 34.686192, 34.420311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110971, 0.525415, -0.843579,
		-0.670535, 0.586924, 0.453767,
		0.733532, 0.616004, 0.287177,
		39.638653, 34.870991, 34.506466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941071, 35.180740, 34.155281>,  <39.125183, 34.439789, 34.305439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941071, 35.180740, 34.155281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338039, 35.220798, 34.183762>,  <39.576221, 35.244835, 34.200848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338039, 35.220798, 34.183762>,  <38.941071, 35.180740, 34.155281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338039, 35.220798, 34.183762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020227, 0.704670, -0.709247,
		-0.121199, 0.702432, 0.701356,
		0.992422, 0.100146, 0.071197,
		39.635765, 35.250843, 34.205120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242096, 35.909832, 34.158428>,  <38.941071, 35.180740, 34.155281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242096, 35.909832, 34.158428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536182, 35.671204, 34.029709>,  <39.712635, 35.528027, 33.952477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536182, 35.671204, 34.029709>,  <39.242096, 35.909832, 34.158428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536182, 35.671204, 34.029709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102726, 0.567331, -0.817057,
		0.669998, 0.567660, 0.478397,
		0.735221, -0.596571, -0.321797,
		39.756748, 35.492233, 33.933170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714451, 36.460850, 33.918037>,  <39.242096, 35.909832, 34.158428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714451, 36.460850, 33.918037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778316, 36.093872, 33.772266>,  <39.816635, 35.873688, 33.684803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778316, 36.093872, 33.772266>,  <39.714451, 36.460850, 33.918037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778316, 36.093872, 33.772266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119946, 0.384461, -0.915315,
		0.979858, 0.102429, 0.171427,
		0.159662, -0.917441, -0.364431,
		39.826214, 35.818642, 33.662937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298870, 36.506424, 33.426132>,  <39.714451, 36.460850, 33.918037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298870, 36.506424, 33.426132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099049, 36.173260, 33.330879>,  <39.979156, 35.973362, 33.273727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099049, 36.173260, 33.330879>,  <40.298870, 36.506424, 33.426132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099049, 36.173260, 33.330879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085854, 0.225937, -0.970351,
		0.862021, -0.505183, -0.041357,
		-0.499549, -0.832912, -0.238134,
		39.949184, 35.923386, 33.259438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631760, 36.182323, 32.836037>,  <40.298870, 36.506424, 33.426132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631760, 36.182323, 32.836037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248623, 36.067448, 32.832798>,  <40.018742, 35.998524, 32.830856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248623, 36.067448, 32.832798>,  <40.631760, 36.182323, 32.836037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248623, 36.067448, 32.832798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031375, 0.132560, -0.990678,
		0.285583, -0.948658, -0.135981,
		-0.957841, -0.287187, -0.008093,
		39.961269, 35.981293, 32.830372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408890, 35.514256, 32.959679>,  <40.631760, 36.182323, 32.836037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408890, 35.514256, 32.959679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740410, 35.733257, 33.005867>,  <40.939320, 35.864658, 33.033581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740410, 35.733257, 33.005867>,  <40.408890, 35.514256, 32.959679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740410, 35.733257, 33.005867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558825, -0.820399, -0.121079,
		0.028445, 0.164881, -0.985903,
		0.828798, 0.547503, 0.115475,
		40.989048, 35.897507, 33.040508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870506, 34.941036, 32.737484>,  <40.408890, 35.514256, 32.959679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870506, 34.941036, 32.737484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190342, 34.701355, 32.753571>,  <41.382244, 34.557549, 32.763222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190342, 34.701355, 32.753571>,  <40.870506, 34.941036, 32.737484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190342, 34.701355, 32.753571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389588, 0.466582, -0.794054,
		0.457033, 0.650585, 0.606515,
		0.799589, -0.599200, 0.040217,
		41.430218, 34.521595, 32.765636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584892, 35.347965, 32.827770>,  <40.870506, 34.941036, 32.737484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584892, 35.347965, 32.827770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711109, 35.028351, 32.623039>,  <41.786839, 34.836582, 32.500202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711109, 35.028351, 32.623039>,  <41.584892, 35.347965, 32.827770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711109, 35.028351, 32.623039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481123, 0.599633, -0.639500,
		0.817895, -0.044463, 0.573647,
		0.315544, -0.799039, -0.511829,
		41.805771, 34.788639, 32.469490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229290, 35.604645, 32.525066>,  <41.584892, 35.347965, 32.827770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.229290, 35.604645, 32.525066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136604, 35.273438, 32.320831>,  <42.080994, 35.074715, 32.198292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136604, 35.273438, 32.320831>,  <42.229290, 35.604645, 32.525066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136604, 35.273438, 32.320831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295411, 0.440190, -0.847918,
		0.926845, -0.347306, 0.142607,
		-0.231713, -0.828017, -0.510586,
		42.067089, 35.025032, 32.167656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735031, 35.176334, 32.758720>,  <42.229290, 35.604645, 32.525066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735031, 35.176334, 32.758720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785873, 35.430977, 32.454464>,  <42.816380, 35.583763, 32.271912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785873, 35.430977, 32.454464>,  <42.735031, 35.176334, 32.758720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785873, 35.430977, 32.454464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258950, 0.761562, 0.594111,
		0.957491, 0.121450, 0.261652,
		0.127110, 0.636610, -0.760638,
		42.824005, 35.621960, 32.226273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010548, 34.607437, 33.282360>,  <42.735031, 35.176334, 32.758720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010548, 34.607437, 33.282360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976685, 34.269447, 33.071133>,  <42.956367, 34.066654, 32.944397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976685, 34.269447, 33.071133>,  <43.010548, 34.607437, 33.282360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976685, 34.269447, 33.071133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701328, -0.426990, 0.570805,
		-0.707794, -0.322026, 0.628750,
		-0.084656, -0.844973, -0.528067,
		42.951286, 34.015957, 32.912712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016891, 34.065689, 33.723061>,  <43.010548, 34.607437, 33.282360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016891, 34.065689, 33.723061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172333, 33.931965, 33.379612>,  <43.265598, 33.851730, 33.173542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172333, 33.931965, 33.379612>,  <43.016891, 34.065689, 33.723061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172333, 33.931965, 33.379612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807765, -0.324715, 0.492012,
		-0.443289, -0.884760, 0.143857,
		0.388600, -0.334306, -0.858621,
		43.288914, 33.831673, 33.122025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131527, 33.291504, 33.771942>,  <43.016891, 34.065689, 33.723061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131527, 33.291504, 33.771942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369926, 33.479141, 33.511257>,  <43.512966, 33.591724, 33.354847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369926, 33.479141, 33.511257>,  <43.131527, 33.291504, 33.771942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369926, 33.479141, 33.511257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787913, -0.498155, 0.361987,
		-0.154848, -0.729238, -0.666509,
		0.595999, 0.469098, -0.651714,
		43.548725, 33.619869, 33.315742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.427738, 32.826286, 33.319191>,  <43.131527, 33.291504, 33.771942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.427738, 32.826286, 33.319191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.658218, 33.147869, 33.378029>,  <43.796509, 33.340820, 33.413330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.658218, 33.147869, 33.378029>,  <43.427738, 32.826286, 33.319191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.658218, 33.147869, 33.378029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731104, -0.587463, 0.346950,
		0.365345, -0.092376, -0.926277,
		0.576204, 0.803961, 0.147091,
		43.831081, 33.389057, 33.422157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171192, 32.752644, 33.031502>,  <43.427738, 32.826286, 33.319191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171192, 32.752644, 33.031502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.147659, 33.009224, 33.337463>,  <44.133541, 33.163170, 33.521042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.147659, 33.009224, 33.337463>,  <44.171192, 32.752644, 33.031502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.147659, 33.009224, 33.337463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828057, -0.396597, 0.396273,
		0.557549, 0.656700, -0.507824,
		-0.058831, 0.641449, 0.764907,
		44.130009, 33.201660, 33.566936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.816292, 32.963737, 33.321781>,  <44.171192, 32.752644, 33.031502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.816292, 32.963737, 33.321781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.547256, 33.006775, 33.614643>,  <44.385834, 33.032597, 33.790359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.547256, 33.006775, 33.614643>,  <44.816292, 32.963737, 33.321781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547256, 33.006775, 33.614643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540764, -0.603936, 0.585521,
		0.505173, 0.789737, 0.348017,
		-0.672587, 0.107595, 0.732154,
		44.345482, 33.039055, 33.834290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.577854, 33.608849, 33.472012>,  <44.816292, 32.963737, 33.321781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.577854, 33.608849, 33.472012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589241, 33.247261, 33.642670>,  <44.596073, 33.030308, 33.745064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589241, 33.247261, 33.642670>,  <44.577854, 33.608849, 33.472012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.589241, 33.247261, 33.642670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967079, 0.132886, 0.217025,
		-0.252879, 0.406418, 0.877996,
		0.028470, -0.903972, 0.426642,
		44.597782, 32.976070, 33.770664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.682236, 33.692005, 34.146278>,  <44.577854, 33.608849, 33.472012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.682236, 33.692005, 34.146278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.832043, 33.361610, 33.977760>,  <44.921928, 33.163376, 33.876652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.832043, 33.361610, 33.977760>,  <44.682236, 33.692005, 34.146278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.832043, 33.361610, 33.977760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927216, 0.332687, 0.172018,
		-0.001926, -0.455052, 0.890462,
		0.374522, -0.825982, -0.421291,
		44.944401, 33.113815, 33.851372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.303535, 33.560932, 34.571865>,  <44.682236, 33.692005, 34.146278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.303535, 33.560932, 34.571865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.346920, 33.342964, 34.239288>,  <45.372952, 33.212181, 34.039742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.346920, 33.342964, 34.239288>,  <45.303535, 33.560932, 34.571865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.346920, 33.342964, 34.239288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982716, 0.184988, 0.006954,
		0.150017, -0.817826, 0.555567,
		0.108460, -0.544922, -0.831443,
		45.379459, 33.179489, 33.989857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.901955, 33.128925, 34.754772>,  <45.303535, 33.560932, 34.571865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.901955, 33.128925, 34.754772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.833275, 33.105812, 34.361389>,  <45.792068, 33.091942, 34.125359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.833275, 33.105812, 34.361389>,  <45.901955, 33.128925, 34.754772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.833275, 33.105812, 34.361389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983131, 0.053826, -0.174801,
		0.063036, -0.996877, 0.047567,
		-0.171695, -0.057783, -0.983454,
		45.781765, 33.088478, 34.066353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.179623, 33.578224, 35.361130>,  <45.901955, 33.128925, 34.754772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.179623, 33.578224, 35.361130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.340988, 33.809608, 35.077541>,  <46.437809, 33.948441, 34.907391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.340988, 33.809608, 35.077541>,  <46.179623, 33.578224, 35.361130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.340988, 33.809608, 35.077541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101506, -0.741741, -0.662961,
		-0.909369, 0.339414, -0.240514,
		0.403417, 0.578462, -0.708969,
		46.462013, 33.983147, 34.864849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.205158, 33.628971, 36.005711>,  <46.179623, 33.578224, 35.361130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.205158, 33.628971, 36.005711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.321480, 33.851307, 36.317215>,  <46.391273, 33.984711, 36.504120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.321480, 33.851307, 36.317215>,  <46.205158, 33.628971, 36.005711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.321480, 33.851307, 36.317215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573658, 0.550123, -0.606861,
		-0.765736, 0.623220, -0.158889,
		0.290799, 0.555843, 0.778764,
		46.408718, 34.018059, 36.550846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.183594, 34.464645, 35.831898>,  <46.205158, 33.628971, 36.005711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.183594, 34.464645, 35.831898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.488964, 34.378948, 36.075626>,  <46.672188, 34.327530, 36.221863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.488964, 34.378948, 36.075626>,  <46.183594, 34.464645, 35.831898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.488964, 34.378948, 36.075626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634390, 0.425953, -0.645068,
		-0.121343, 0.879013, 0.461098,
		0.763430, -0.214242, 0.609324,
		46.717995, 34.314674, 36.258423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.543961, 35.123543, 35.958576>,  <46.183594, 34.464645, 35.831898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.543961, 35.123543, 35.958576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.763588, 34.789394, 35.969036>,  <46.895367, 34.588905, 35.975311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.763588, 34.789394, 35.969036>,  <46.543961, 35.123543, 35.958576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.763588, 34.789394, 35.969036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619327, 0.385669, -0.683881,
		0.561208, 0.391692, 0.729125,
		0.549071, -0.835366, 0.026145,
		46.928310, 34.538784, 35.976879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.301289, 35.169487, 36.090775>,  <46.543961, 35.123543, 35.958576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.301289, 35.169487, 36.090775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.188896, 34.887909, 35.829849>,  <47.121460, 34.718964, 35.673294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.188896, 34.887909, 35.829849>,  <47.301289, 35.169487, 36.090775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.188896, 34.887909, 35.829849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637452, 0.371212, -0.675172,
		0.717429, -0.605530, 0.344426,
		-0.280982, -0.703943, -0.652314,
		47.104603, 34.676727, 35.634155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.868439, 34.850842, 35.872158>,  <47.301289, 35.169487, 36.090775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.868439, 34.850842, 35.872158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587379, 34.849022, 35.587551>,  <47.418743, 34.847931, 35.416786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587379, 34.849022, 35.587551>,  <47.868439, 34.850842, 35.872158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.587379, 34.849022, 35.587551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702868, 0.151170, -0.695071,
		0.110724, -0.988497, -0.103020,
		-0.702649, -0.004551, -0.711522,
		47.376583, 34.847656, 35.374096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.041840, 34.327515, 35.227261>,  <47.868439, 34.850842, 35.872158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.041840, 34.327515, 35.227261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.792023, 34.598984, 35.072674>,  <47.642132, 34.761864, 34.979923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.792023, 34.598984, 35.072674>,  <48.041840, 34.327515, 35.227261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.792023, 34.598984, 35.072674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546692, 0.026508, -0.836914,
		-0.557745, -0.733964, -0.387580,
		-0.624538, 0.678671, -0.386468,
		47.604660, 34.802586, 34.956734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.156868, 35.790447, 21.888206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.759533, 35.770752, 21.929893>,  <34.521133, 35.758934, 21.954905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.759533, 35.770752, 21.929893>,  <35.156868, 35.790447, 21.888206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759533, 35.770752, 21.929893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114818, -0.343501, 0.932107,
		-0.010094, 0.937861, 0.346865,
		-0.993335, -0.049236, 0.104216,
		34.461533, 35.755981, 21.961159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044682, 35.998661, 22.569523>,  <35.156868, 35.790447, 21.888206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044682, 35.998661, 22.569523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.688946, 35.828888, 22.501478>,  <34.475506, 35.727024, 22.460651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.688946, 35.828888, 22.501478>,  <35.044682, 35.998661, 22.569523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688946, 35.828888, 22.501478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154553, -0.071117, 0.985422,
		-0.430340, 0.902664, -0.002350,
		-0.889337, -0.424429, -0.170114,
		34.422146, 35.701561, 22.450443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484741, 36.323734, 22.994892>,  <35.044682, 35.998661, 22.569523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484741, 36.323734, 22.994892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.404629, 35.939098, 22.919802>,  <34.356560, 35.708317, 22.874748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.404629, 35.939098, 22.919802>,  <34.484741, 36.323734, 22.994892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404629, 35.939098, 22.919802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014279, -0.194452, 0.980808,
		-0.979635, 0.193756, 0.052675,
		-0.200280, -0.961586, -0.187726,
		34.344543, 35.650623, 22.863483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240807, 36.090076, 23.635267>,  <34.484741, 36.323734, 22.994892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240807, 36.090076, 23.635267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.308418, 35.756107, 23.425756>,  <34.348984, 35.555725, 23.300051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.308418, 35.756107, 23.425756>,  <34.240807, 36.090076, 23.635267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308418, 35.756107, 23.425756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086461, -0.516814, 0.851720,
		-0.981812, -0.189248, -0.015166,
		0.169024, -0.834918, -0.523777,
		34.359127, 35.505630, 23.268623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780312, 35.572708, 23.904057>,  <34.240807, 36.090076, 23.635267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780312, 35.572708, 23.904057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.060310, 35.361790, 23.711405>,  <34.228310, 35.235237, 23.595814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.060310, 35.361790, 23.711405>,  <33.780312, 35.572708, 23.904057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060310, 35.361790, 23.711405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090087, -0.603826, 0.792009,
		-0.708443, -0.597791, -0.375172,
		0.699995, -0.527295, -0.481630,
		34.270309, 35.203602, 23.566916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585186, 34.872383, 23.980242>,  <33.780312, 35.572708, 23.904057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585186, 34.872383, 23.980242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.976791, 34.874043, 23.898745>,  <34.211754, 34.875038, 23.849846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.976791, 34.874043, 23.898745>,  <33.585186, 34.872383, 23.980242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976791, 34.874043, 23.898745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159518, -0.637763, 0.753533,
		-0.126814, -0.770221, -0.625041,
		0.979016, 0.004147, -0.203742,
		34.270496, 34.875286, 23.837622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754028, 34.162495, 23.956421>,  <33.585186, 34.872383, 23.980242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754028, 34.162495, 23.956421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.075363, 34.389812, 24.027632>,  <34.268166, 34.526203, 24.070358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.075363, 34.389812, 24.027632>,  <33.754028, 34.162495, 23.956421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075363, 34.389812, 24.027632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112874, -0.438823, 0.891456,
		0.584731, -0.696044, -0.416668,
		0.803336, 0.568293, 0.178029,
		34.316364, 34.560299, 24.081039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259460, 33.721489, 24.330513>,  <33.754028, 34.162495, 23.956421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259460, 33.721489, 24.330513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.410870, 34.088207, 24.381422>,  <34.501717, 34.308239, 24.411968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.410870, 34.088207, 24.381422>,  <34.259460, 33.721489, 24.330513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410870, 34.088207, 24.381422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356353, -0.271252, 0.894111,
		0.854244, -0.293087, -0.429379,
		0.378523, 0.916800, 0.127273,
		34.524426, 34.363247, 24.419603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042854, 33.675007, 24.358326>,  <34.259460, 33.721489, 24.330513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042854, 33.675007, 24.358326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.919544, 34.012344, 24.534391>,  <34.845558, 34.214745, 24.640032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.919544, 34.012344, 24.534391>,  <35.042854, 33.675007, 24.358326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919544, 34.012344, 24.534391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316522, -0.345405, 0.883464,
		0.897095, 0.411672, -0.160455,
		-0.308276, 0.843339, 0.440165,
		34.827061, 34.265347, 24.666441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586178, 33.871624, 24.773077>,  <35.042854, 33.675007, 24.358326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586178, 33.871624, 24.773077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.257168, 34.057148, 24.904737>,  <35.059761, 34.168461, 24.983734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.257168, 34.057148, 24.904737>,  <35.586178, 33.871624, 24.773077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257168, 34.057148, 24.904737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290315, -0.155260, 0.944252,
		0.489054, 0.872226, -0.006945,
		-0.822522, 0.463807, 0.329151,
		35.010410, 34.196289, 25.003483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754696, 34.141861, 25.378693>,  <35.586178, 33.871624, 24.773077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754696, 34.141861, 25.378693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.359337, 34.180481, 25.425587>,  <35.122120, 34.203651, 25.453722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.359337, 34.180481, 25.425587>,  <35.754696, 34.141861, 25.378693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359337, 34.180481, 25.425587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068051, -0.408545, 0.910198,
		0.135772, 0.907618, 0.397236,
		-0.988400, 0.096547, 0.117234,
		35.062817, 34.209446, 25.460756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707291, 34.645218, 25.947962>,  <35.754696, 34.141861, 25.378693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707291, 34.645218, 25.947962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.372768, 34.428207, 25.916327>,  <35.172054, 34.298000, 25.897345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.372768, 34.428207, 25.916327>,  <35.707291, 34.645218, 25.947962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372768, 34.428207, 25.916327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070831, -0.249962, 0.965662,
		-0.543665, 0.801989, 0.247473,
		-0.836308, -0.542525, -0.079090,
		35.121876, 34.265450, 25.892599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356609, 34.952366, 26.481384>,  <35.707291, 34.645218, 25.947962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356609, 34.952366, 26.481384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.190434, 34.598488, 26.396784>,  <35.090729, 34.386162, 26.346024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.190434, 34.598488, 26.396784>,  <35.356609, 34.952366, 26.481384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190434, 34.598488, 26.396784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011393, -0.237559, 0.971306,
		-0.909550, 0.401108, 0.108770,
		-0.415438, -0.884691, -0.211501,
		35.065804, 34.333080, 26.333334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791550, 34.917225, 26.893465>,  <35.356609, 34.952366, 26.481384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791550, 34.917225, 26.893465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.826622, 34.526077, 26.817482>,  <34.847668, 34.291389, 26.771893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.826622, 34.526077, 26.817482>,  <34.791550, 34.917225, 26.893465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826622, 34.526077, 26.817482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032833, -0.187753, 0.981668,
		-0.995607, -0.092315, 0.015644,
		0.087685, -0.977869, -0.189959,
		34.852928, 34.232716, 26.760494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321358, 34.613724, 27.387039>,  <34.791550, 34.917225, 26.893465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321358, 34.613724, 27.387039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.536041, 34.289497, 27.293293>,  <34.664852, 34.094959, 27.237045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.536041, 34.289497, 27.293293>,  <34.321358, 34.613724, 27.387039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536041, 34.289497, 27.293293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005610, -0.274325, 0.961621,
		-0.843751, -0.517422, -0.142684,
		0.536705, -0.810568, -0.234365,
		34.697052, 34.046326, 27.222984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998802, 33.957790, 27.650761>,  <34.321358, 34.613724, 27.387039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998802, 33.957790, 27.650761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.387272, 33.871246, 27.610756>,  <34.620354, 33.819321, 27.586754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.387272, 33.871246, 27.610756>,  <33.998802, 33.957790, 27.650761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387272, 33.871246, 27.610756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028524, -0.311080, 0.949955,
		-0.236641, -0.925429, -0.295943,
		0.971178, -0.216357, -0.100011,
		34.678627, 33.806339, 27.580751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087906, 33.272335, 27.959520>,  <33.998802, 33.957790, 27.650761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087906, 33.272335, 27.959520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.448326, 33.445217, 27.945074>,  <34.664577, 33.548946, 27.936407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.448326, 33.445217, 27.945074>,  <34.087906, 33.272335, 27.959520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448326, 33.445217, 27.945074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151771, -0.236216, 0.959775,
		0.406285, -0.870290, -0.278439,
		0.901054, 0.432201, -0.036114,
		34.718643, 33.574879, 27.934240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401180, 32.871132, 28.373999>,  <34.087906, 33.272335, 27.959520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401180, 32.871132, 28.373999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.629402, 33.198669, 28.348829>,  <34.766335, 33.395195, 28.333729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.629402, 33.198669, 28.348829>,  <34.401180, 32.871132, 28.373999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629402, 33.198669, 28.348829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326760, -0.156050, 0.932135,
		0.753458, -0.552390, -0.356601,
		0.570550, 0.818848, -0.062922,
		34.800568, 33.444324, 28.329952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127014, 32.674587, 28.533655>,  <34.401180, 32.871132, 28.373999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127014, 32.674587, 28.533655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.104343, 33.064075, 28.621895>,  <35.090740, 33.297768, 28.674839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.104343, 33.064075, 28.621895>,  <35.127014, 32.674587, 28.533655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104343, 33.064075, 28.621895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215304, -0.203836, 0.955036,
		0.974901, 0.101622, -0.198093,
		-0.056674, 0.973716, 0.220600,
		35.087341, 33.356190, 28.688074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838310, 32.824039, 28.948162>,  <35.127014, 32.674587, 28.533655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838310, 32.824039, 28.948162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.585926, 33.123489, 29.029598>,  <35.434494, 33.303158, 29.078459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.585926, 33.123489, 29.029598>,  <35.838310, 32.824039, 28.948162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585926, 33.123489, 29.029598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318030, 0.010231, 0.948026,
		0.707630, 0.662918, -0.244539,
		-0.630965, 0.748622, 0.203588,
		35.396637, 33.348076, 29.090675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163273, 33.345554, 29.257988>,  <35.838310, 32.824039, 28.948162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163273, 33.345554, 29.257988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.781971, 33.397434, 29.367147>,  <35.553188, 33.428562, 29.432644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.781971, 33.397434, 29.367147>,  <36.163273, 33.345554, 29.257988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781971, 33.397434, 29.367147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280108, 0.040672, 0.959107,
		0.113299, 0.990718, -0.075101,
		-0.953259, 0.129703, 0.272900,
		35.495995, 33.436344, 29.449017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275986, 33.903996, 29.851149>,  <36.163273, 33.345554, 29.257988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275986, 33.903996, 29.851149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.921661, 33.726315, 29.904858>,  <35.709068, 33.619705, 29.937082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.921661, 33.726315, 29.904858>,  <36.275986, 33.903996, 29.851149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921661, 33.726315, 29.904858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093869, 0.111844, 0.989282,
		-0.454460, 0.888917, -0.057375,
		-0.885807, -0.444204, 0.134270,
		35.655918, 33.593052, 29.945139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645325, 34.560432, 29.682522>,  <36.275986, 33.903996, 29.851149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645325, 34.560432, 29.682522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.023880, 34.451366, 29.751810>,  <37.251015, 34.385925, 29.793383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.023880, 34.451366, 29.751810>,  <36.645325, 34.560432, 29.682522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023880, 34.451366, 29.751810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270141, 0.373989, -0.887218,
		0.177133, 0.886445, 0.427597,
		0.946387, -0.272667, 0.173219,
		37.307796, 34.369568, 29.803776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029762, 35.176796, 29.619209>,  <36.645325, 34.560432, 29.682522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029762, 35.176796, 29.619209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.276608, 34.869942, 29.549145>,  <37.424713, 34.685829, 29.507107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.276608, 34.869942, 29.549145>,  <37.029762, 35.176796, 29.619209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276608, 34.869942, 29.549145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229738, 0.388557, -0.892325,
		0.752591, 0.510423, 0.416022,
		0.617112, -0.767132, -0.175161,
		37.461742, 34.639801, 29.496597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689476, 35.511955, 29.384508>,  <37.029762, 35.176796, 29.619209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689476, 35.511955, 29.384508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.710270, 35.128197, 29.273615>,  <37.722748, 34.897942, 29.207079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.710270, 35.128197, 29.273615>,  <37.689476, 35.511955, 29.384508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710270, 35.128197, 29.273615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235521, 0.281557, -0.930191,
		0.970478, -0.016935, 0.240596,
		0.051989, -0.959395, -0.277233,
		37.725868, 34.840378, 29.190445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311050, 35.421318, 29.016975>,  <37.689476, 35.511955, 29.384508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311050, 35.421318, 29.016975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.062016, 35.130783, 28.900475>,  <37.912598, 34.956463, 28.830574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.062016, 35.130783, 28.900475>,  <38.311050, 35.421318, 29.016975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062016, 35.130783, 28.900475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220532, 0.194252, -0.955841,
		0.750837, -0.659320, 0.039242,
		-0.622583, -0.726335, -0.291253,
		37.875240, 34.912884, 28.813099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722927, 35.105038, 28.452082>,  <38.311050, 35.421318, 29.016975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722927, 35.105038, 28.452082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.353851, 34.957390, 28.407537>,  <38.132408, 34.868801, 28.380812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.353851, 34.957390, 28.407537>,  <38.722927, 35.105038, 28.452082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353851, 34.957390, 28.407537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154957, -0.090553, -0.983762,
		0.353039, -0.924961, 0.140749,
		-0.922688, -0.369116, -0.111360,
		38.077045, 34.846657, 28.374130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754070, 34.544037, 27.988005>,  <38.722927, 35.105038, 28.452082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754070, 34.544037, 27.988005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.381104, 34.685684, 27.959169>,  <38.157322, 34.770672, 27.941868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.381104, 34.685684, 27.959169>,  <38.754070, 34.544037, 27.988005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381104, 34.685684, 27.959169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108069, 0.082878, -0.990683,
		-0.344849, -0.931519, -0.115547,
		-0.932416, 0.354123, -0.072088,
		38.101379, 34.791920, 27.937544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402431, 34.183746, 27.403275>,  <38.754070, 34.544037, 27.988005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402431, 34.183746, 27.403275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.173691, 34.505650, 27.466959>,  <38.036446, 34.698792, 27.505169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.173691, 34.505650, 27.466959>,  <38.402431, 34.183746, 27.403275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173691, 34.505650, 27.466959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064175, 0.237367, -0.969298,
		-0.817842, -0.544079, -0.187385,
		-0.571853, 0.804758, 0.159212,
		38.002136, 34.747078, 27.514723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977093, 34.269390, 26.836420>,  <38.402431, 34.183746, 27.403275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977093, 34.269390, 26.836420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.941673, 34.641708, 26.978277>,  <37.920422, 34.865101, 27.063393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.941673, 34.641708, 26.978277>,  <37.977093, 34.269390, 26.836420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941673, 34.641708, 26.978277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038142, 0.358951, -0.932577,
		-0.995341, -0.069052, -0.067287,
		-0.088549, 0.930799, 0.354645,
		37.915108, 34.920948, 27.084671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399624, 34.587627, 26.513973>,  <37.977093, 34.269390, 26.836420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399624, 34.587627, 26.513973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.635490, 34.886429, 26.636793>,  <37.777008, 35.065708, 26.710485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.635490, 34.886429, 26.636793>,  <37.399624, 34.587627, 26.513973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635490, 34.886429, 26.636793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085582, 0.435830, -0.895950,
		-0.803101, 0.502032, 0.320924,
		0.589664, 0.747005, 0.307051,
		37.812389, 35.110531, 26.728909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123711, 35.060356, 26.124390>,  <37.399624, 34.587627, 26.513973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123711, 35.060356, 26.124390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.457684, 35.244377, 26.245213>,  <37.658066, 35.354790, 26.317707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.457684, 35.244377, 26.245213>,  <37.123711, 35.060356, 26.124390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457684, 35.244377, 26.245213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004237, 0.554200, -0.832373,
		-0.550335, 0.693696, 0.464669,
		0.834933, 0.460052, 0.302056,
		37.708164, 35.382393, 26.335829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004917, 35.768314, 26.133636>,  <37.123711, 35.060356, 26.124390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004917, 35.768314, 26.133636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402653, 35.743248, 26.099310>,  <37.641293, 35.728207, 26.078714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402653, 35.743248, 26.099310>,  <37.004917, 35.768314, 26.133636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402653, 35.743248, 26.099310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039279, 0.533635, -0.844802,
		0.098734, 0.843390, 0.528152,
		0.994338, -0.062666, -0.085815,
		37.700954, 35.724449, 26.073565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176628, 36.387676, 25.946764>,  <37.004917, 35.768314, 26.133636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176628, 36.387676, 25.946764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.475777, 36.149788, 25.828785>,  <37.655266, 36.007057, 25.757998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.475777, 36.149788, 25.828785>,  <37.176628, 36.387676, 25.946764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475777, 36.149788, 25.828785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088038, 0.529238, -0.843894,
		0.657977, 0.605160, 0.448161,
		0.747874, -0.594717, -0.294949,
		37.700138, 35.971375, 25.740299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634312, 36.817062, 25.634380>,  <37.176628, 36.387676, 25.946764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634312, 36.817062, 25.634380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.723423, 36.464920, 25.466885>,  <37.776890, 36.253635, 25.366386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.723423, 36.464920, 25.466885>,  <37.634312, 36.817062, 25.634380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723423, 36.464920, 25.466885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070402, 0.442943, -0.893781,
		0.972323, 0.169639, 0.160659,
		0.222783, -0.880355, -0.418741,
		37.790257, 36.200813, 25.341263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111519, 36.972950, 25.064871>,  <37.634312, 36.817062, 25.634380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111519, 36.972950, 25.064871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.010468, 36.593143, 24.990463>,  <37.949837, 36.365261, 24.945818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.010468, 36.593143, 24.990463>,  <38.111519, 36.972950, 25.064871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010468, 36.593143, 24.990463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081808, 0.212529, -0.973724,
		0.964098, -0.230775, -0.131369,
		-0.252631, -0.949513, -0.186019,
		37.934677, 36.308289, 24.934658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568306, 36.677181, 24.561440>,  <38.111519, 36.972950, 25.064871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568306, 36.677181, 24.561440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.213963, 36.493813, 24.532883>,  <38.001354, 36.383789, 24.515749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.213963, 36.493813, 24.532883>,  <38.568306, 36.677181, 24.561440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213963, 36.493813, 24.532883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058526, 0.263066, -0.963001,
		0.460245, -0.848907, -0.259869,
		-0.885861, -0.458426, -0.071392,
		37.948204, 36.356285, 24.511465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534180, 36.349987, 23.832508>,  <38.568306, 36.677181, 24.561440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534180, 36.349987, 23.832508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.157852, 36.314892, 23.963451>,  <37.932056, 36.293835, 24.042017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.157852, 36.314892, 23.963451>,  <38.534180, 36.349987, 23.832508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157852, 36.314892, 23.963451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329180, 0.006731, -0.944243,
		0.080645, -0.996121, -0.035215,
		-0.940817, -0.087740, 0.327360,
		37.875607, 36.288570, 24.061659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190979, 35.817726, 23.400095>,  <38.534180, 36.349987, 23.832508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190979, 35.817726, 23.400095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.893002, 36.033039, 23.557728>,  <37.714214, 36.162228, 23.652308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.893002, 36.033039, 23.557728>,  <38.190979, 35.817726, 23.400095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893002, 36.033039, 23.557728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444802, 0.039483, -0.894758,
		-0.497196, -0.841836, 0.210019,
		-0.744948, 0.538287, 0.394081,
		37.669518, 36.194527, 23.675953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551693, 35.441952, 23.157412>,  <38.190979, 35.817726, 23.400095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551693, 35.441952, 23.157412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.451340, 35.809978, 23.277773>,  <37.391129, 36.030792, 23.349989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.451340, 35.809978, 23.277773>,  <37.551693, 35.441952, 23.157412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451340, 35.809978, 23.277773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592282, 0.099973, -0.799505,
		-0.765677, -0.378800, 0.519855,
		-0.250881, 0.920063, 0.300903,
		37.376076, 36.085999, 23.368044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.823570, 35.495594, 22.914705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.957466, 35.865681, 22.986172>,  <37.037804, 36.087734, 23.029051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.957466, 35.865681, 22.986172>,  <36.823570, 35.495594, 22.914705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957466, 35.865681, 22.986172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530138, 0.341660, -0.776030,
		-0.779039, 0.165053, 0.604860,
		0.334742, 0.925217, 0.178666,
		37.057888, 36.143246, 23.039772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243031, 35.994350, 22.944180>,  <36.823570, 35.495594, 22.914705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243031, 35.994350, 22.944180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.555023, 36.223373, 22.843142>,  <36.742218, 36.360786, 22.782518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.555023, 36.223373, 22.843142>,  <36.243031, 35.994350, 22.944180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555023, 36.223373, 22.843142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426676, 0.191283, -0.883945,
		-0.457791, 0.797239, 0.393494,
		0.779984, 0.572556, -0.252596,
		36.789017, 36.395142, 22.767363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989769, 36.614632, 22.559330>,  <36.243031, 35.994350, 22.944180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989769, 36.614632, 22.559330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.379234, 36.602283, 22.468967>,  <36.612911, 36.594875, 22.414749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.379234, 36.602283, 22.468967>,  <35.989769, 36.614632, 22.559330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379234, 36.602283, 22.468967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196561, 0.388457, -0.900258,
		0.115545, 0.920950, 0.372158,
		0.973660, -0.030868, -0.225907,
		36.671333, 36.593021, 22.401196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131771, 37.279800, 22.267523>,  <35.989769, 36.614632, 22.559330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131771, 37.279800, 22.267523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.410023, 37.024109, 22.136383>,  <36.576973, 36.870693, 22.057699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.410023, 37.024109, 22.136383>,  <36.131771, 37.279800, 22.267523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410023, 37.024109, 22.136383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119306, 0.347230, -0.930160,
		0.708429, 0.686158, 0.165278,
		0.695626, -0.639233, -0.327850,
		36.618710, 36.832340, 22.038029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320297, 37.539902, 21.661591>,  <36.131771, 37.279800, 22.267523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320297, 37.539902, 21.661591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.510342, 37.188778, 21.637177>,  <36.624367, 36.978104, 21.622528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.510342, 37.188778, 21.637177>,  <36.320297, 37.539902, 21.661591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510342, 37.188778, 21.637177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047224, 0.094698, -0.994385,
		0.878660, 0.469557, 0.086445,
		0.475107, -0.877809, -0.061033,
		36.652874, 36.925434, 21.618866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870995, 37.584419, 21.171360>,  <36.320297, 37.539902, 21.661591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870995, 37.584419, 21.171360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.792702, 37.192940, 21.196131>,  <36.745728, 36.958050, 21.210993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.792702, 37.192940, 21.196131>,  <36.870995, 37.584419, 21.171360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792702, 37.192940, 21.196131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065966, -0.049864, -0.996575,
		0.978437, -0.199143, -0.054801,
		-0.195729, -0.978701, 0.061925,
		36.733982, 36.899330, 21.214708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204037, 37.392479, 20.661303>,  <36.870995, 37.584419, 21.171360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204037, 37.392479, 20.661303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.968018, 37.076389, 20.727495>,  <36.826405, 36.886734, 20.767210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.968018, 37.076389, 20.727495>,  <37.204037, 37.392479, 20.661303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968018, 37.076389, 20.727495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276216, 0.004987, -0.961082,
		0.758647, -0.612795, -0.221216,
		-0.590050, -0.790226, 0.165480,
		36.791004, 36.839321, 20.777140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443577, 36.860401, 20.251089>,  <37.204037, 37.392479, 20.661303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443577, 36.860401, 20.251089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.056946, 36.784023, 20.319521>,  <36.824966, 36.738197, 20.360580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.056946, 36.784023, 20.319521>,  <37.443577, 36.860401, 20.251089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056946, 36.784023, 20.319521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180281, 0.031787, -0.983101,
		0.182279, -0.981086, -0.065148,
		-0.966578, -0.190944, 0.171077,
		36.766972, 36.726742, 20.370844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246994, 36.483437, 19.697630>,  <37.443577, 36.860401, 20.251089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246994, 36.483437, 19.697630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.903599, 36.632915, 19.838112>,  <36.697559, 36.722603, 19.922401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.903599, 36.632915, 19.838112>,  <37.246994, 36.483437, 19.697630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903599, 36.632915, 19.838112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327761, 0.126885, -0.936201,
		-0.394419, -0.918830, 0.013554,
		-0.858491, 0.373699, 0.351202,
		36.646053, 36.745026, 19.943472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760273, 36.151432, 19.286596>,  <37.246994, 36.483437, 19.697630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760273, 36.151432, 19.286596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.548992, 36.452709, 19.443413>,  <36.422222, 36.633476, 19.537502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.548992, 36.452709, 19.443413>,  <36.760273, 36.151432, 19.286596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548992, 36.452709, 19.443413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299510, 0.266763, -0.916041,
		-0.794539, -0.601279, 0.084683,
		-0.528206, 0.753194, 0.392042,
		36.390530, 36.678669, 19.561026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137512, 36.064205, 19.023914>,  <36.760273, 36.151432, 19.286596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137512, 36.064205, 19.023914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.137718, 36.449760, 19.130434>,  <36.137840, 36.681095, 19.194345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.137718, 36.449760, 19.130434>,  <36.137512, 36.064205, 19.023914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137718, 36.449760, 19.130434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367968, 0.247800, -0.896211,
		-0.929838, -0.097528, 0.354809,
		0.000516, 0.963890, 0.266301,
		36.137875, 36.738926, 19.210325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471790, 36.384876, 18.877596>,  <36.137512, 36.064205, 19.023914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471790, 36.384876, 18.877596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.755970, 36.666271, 18.885237>,  <35.926479, 36.835110, 18.889822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.755970, 36.666271, 18.885237>,  <35.471790, 36.384876, 18.877596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755970, 36.666271, 18.885237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232957, 0.260702, -0.936891,
		-0.664074, 0.661163, 0.349098,
		0.710449, 0.703490, 0.019103,
		35.969105, 36.877319, 18.890968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124989, 36.918839, 18.425533>,  <35.471790, 36.384876, 18.877596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124989, 36.918839, 18.425533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.504131, 37.043877, 18.450352>,  <35.731617, 37.118900, 18.465242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.504131, 37.043877, 18.450352>,  <35.124989, 36.918839, 18.425533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504131, 37.043877, 18.450352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121032, 0.533187, -0.837295,
		-0.294814, 0.786128, 0.543220,
		0.947859, 0.312593, 0.062044,
		35.788490, 37.137653, 18.468966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084812, 37.640022, 18.358505>,  <35.124989, 36.918839, 18.425533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084812, 37.640022, 18.358505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471539, 37.569618, 18.284437>,  <35.703575, 37.527374, 18.239996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471539, 37.569618, 18.284437>,  <35.084812, 37.640022, 18.358505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471539, 37.569618, 18.284437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016950, 0.679020, -0.733924,
		0.254912, 0.712708, 0.653504,
		0.966816, -0.176009, -0.185171,
		35.761581, 37.516815, 18.228886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455387, 38.315609, 18.428820>,  <35.084812, 37.640022, 18.358505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455387, 38.315609, 18.428820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.641556, 38.059624, 18.184252>,  <35.753258, 37.906033, 18.037510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.641556, 38.059624, 18.184252>,  <35.455387, 38.315609, 18.428820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641556, 38.059624, 18.184252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021650, 0.682362, -0.730694,
		0.884827, 0.353315, 0.303728,
		0.465417, -0.639961, -0.611421,
		35.781181, 37.867634, 18.000826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978096, 38.688114, 18.256495>,  <35.455387, 38.315609, 18.428820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978096, 38.688114, 18.256495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.913876, 38.405556, 17.980745>,  <35.875343, 38.236023, 17.815296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.913876, 38.405556, 17.980745>,  <35.978096, 38.688114, 18.256495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913876, 38.405556, 17.980745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206642, 0.658900, -0.723291,
		0.965155, -0.258576, 0.040186,
		-0.160547, -0.706392, -0.689373,
		35.865711, 38.193638, 17.773933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560120, 38.799282, 17.828152>,  <35.978096, 38.688114, 18.256495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560120, 38.799282, 17.828152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.270435, 38.617859, 17.620382>,  <36.096626, 38.509007, 17.495720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.270435, 38.617859, 17.620382>,  <36.560120, 38.799282, 17.828152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270435, 38.617859, 17.620382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126329, 0.653239, -0.746539,
		0.677908, -0.606271, -0.415785,
		-0.724212, -0.453559, -0.519425,
		36.053173, 38.481792, 17.464556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889725, 38.720242, 17.077921>,  <36.560120, 38.799282, 17.828152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889725, 38.720242, 17.077921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512566, 38.622128, 16.987782>,  <36.286270, 38.563259, 16.933699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512566, 38.622128, 16.987782>,  <36.889725, 38.720242, 17.077921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512566, 38.622128, 16.987782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008310, 0.693659, -0.720256,
		0.332981, -0.677254, -0.656087,
		-0.942897, -0.245284, -0.225348,
		36.229698, 38.548542, 16.920177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928898, 38.698940, 16.355425>,  <36.889725, 38.720242, 17.077921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928898, 38.698940, 16.355425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.540337, 38.737591, 16.442177>,  <36.307201, 38.760780, 16.494228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.540337, 38.737591, 16.442177>,  <36.928898, 38.698940, 16.355425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540337, 38.737591, 16.442177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070591, 0.754603, -0.652374,
		-0.226697, -0.649028, -0.726203,
		-0.971404, 0.096628, 0.216882,
		36.248917, 38.766579, 16.507242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563942, 38.751278, 15.760315>,  <36.928898, 38.698940, 16.355425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563942, 38.751278, 15.760315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.314617, 38.927299, 16.018875>,  <36.165020, 39.032913, 16.174011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.314617, 38.927299, 16.018875>,  <36.563942, 38.751278, 15.760315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314617, 38.927299, 16.018875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274153, 0.651187, -0.707669,
		-0.732338, -0.618314, -0.285253,
		-0.623315, 0.440050, 0.646401,
		36.127625, 39.059315, 16.212795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018600, 38.958282, 15.312726>,  <36.563942, 38.751278, 15.760315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018600, 38.958282, 15.312726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.969482, 39.162388, 15.653210>,  <35.940014, 39.284851, 15.857500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.969482, 39.162388, 15.653210>,  <36.018600, 38.958282, 15.312726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969482, 39.162388, 15.653210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284705, 0.803537, -0.522753,
		-0.950718, -0.306533, 0.046607,
		-0.122791, 0.510260, 0.851209,
		35.932644, 39.315464, 15.908572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270859, 39.276928, 15.370780>,  <36.018600, 38.958282, 15.312726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270859, 39.276928, 15.370780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.524029, 39.502407, 15.583063>,  <35.675930, 39.637695, 15.710433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.524029, 39.502407, 15.583063>,  <35.270859, 39.276928, 15.370780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524029, 39.502407, 15.583063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296074, 0.809602, -0.506837,
		-0.715368, 0.163659, 0.679312,
		0.632921, 0.563702, 0.530709,
		35.713905, 39.671516, 15.742276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933735, 39.786816, 15.547072>,  <35.270859, 39.276928, 15.370780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933735, 39.786816, 15.547072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.303951, 39.938148, 15.553268>,  <35.526081, 40.028950, 15.556986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.303951, 39.938148, 15.553268>,  <34.933735, 39.786816, 15.547072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303951, 39.938148, 15.553268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344867, 0.859150, -0.378058,
		-0.156341, 0.344566, 0.925652,
		0.925540, 0.378332, 0.015491,
		35.581612, 40.051647, 15.557916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327839, 40.295223, 15.429877>,  <34.933735, 39.786816, 15.547072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327839, 40.295223, 15.429877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.131763, 40.614193, 15.570632>,  <34.014118, 40.805576, 15.655085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.131763, 40.614193, 15.570632>,  <34.327839, 40.295223, 15.429877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131763, 40.614193, 15.570632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448130, -0.576848, 0.682954,
		0.747590, 0.177087, 0.640116,
		-0.490192, 0.797425, 0.351888,
		33.984707, 40.853420, 15.676198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491165, 40.513470, 16.120144>,  <34.327839, 40.295223, 15.429877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491165, 40.513470, 16.120144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.106445, 40.591557, 16.043385>,  <33.875614, 40.638409, 15.997329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.106445, 40.591557, 16.043385>,  <34.491165, 40.513470, 16.120144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106445, 40.591557, 16.043385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264490, -0.482007, 0.835293,
		0.070566, 0.854143, 0.515228,
		-0.961803, 0.195216, -0.191899,
		33.817905, 40.650120, 15.985815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136150, 40.904015, 16.769526>,  <34.491165, 40.513470, 16.120144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136150, 40.904015, 16.769526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.867947, 40.709583, 16.545332>,  <33.707024, 40.592926, 16.410816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.867947, 40.709583, 16.545332>,  <34.136150, 40.904015, 16.769526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867947, 40.709583, 16.545332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278218, -0.535594, 0.797329,
		-0.687754, 0.690557, 0.223888,
		-0.670514, -0.486076, -0.560482,
		33.666794, 40.563759, 16.377188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662769, 40.861248, 17.186468>,  <34.136150, 40.904015, 16.769526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662769, 40.861248, 17.186468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.563126, 40.562698, 16.939611>,  <33.503338, 40.383568, 16.791498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.563126, 40.562698, 16.939611>,  <33.662769, 40.861248, 17.186468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563126, 40.562698, 16.939611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228300, -0.574013, 0.786376,
		-0.941181, 0.336790, -0.027404,
		-0.249113, -0.746379, -0.617139,
		33.488392, 40.338783, 16.754469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081036, 40.487030, 17.470098>,  <33.662769, 40.861248, 17.186468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081036, 40.487030, 17.470098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.205761, 40.217339, 17.202312>,  <33.280598, 40.055523, 17.041641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.205761, 40.217339, 17.202312>,  <33.081036, 40.487030, 17.470098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205761, 40.217339, 17.202312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305149, -0.738332, 0.601456,
		-0.899808, 0.016742, -0.435966,
		0.311818, -0.674230, -0.669466,
		33.299305, 40.015068, 17.001472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604256, 39.960041, 17.423260>,  <33.081036, 40.487030, 17.470098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604256, 39.960041, 17.423260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.933891, 39.776325, 17.290638>,  <33.131672, 39.666096, 17.211065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.933891, 39.776325, 17.290638>,  <32.604256, 39.960041, 17.423260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933891, 39.776325, 17.290638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085348, -0.679304, 0.728877,
		-0.559993, -0.572362, -0.599007,
		0.824089, -0.459290, -0.331556,
		33.181118, 39.638538, 17.191172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388977, 39.286129, 17.354343>,  <32.604256, 39.960041, 17.423260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388977, 39.286129, 17.354343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.787247, 39.273666, 17.389368>,  <33.026207, 39.266190, 17.410383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.787247, 39.273666, 17.389368>,  <32.388977, 39.286129, 17.354343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787247, 39.273666, 17.389368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081118, -0.751180, 0.655094,
		0.045360, -0.659362, -0.750456,
		0.995672, -0.031160, 0.087560,
		33.085949, 39.264317, 17.415636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509323, 38.536243, 17.285254>,  <32.388977, 39.286129, 17.354343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509323, 38.536243, 17.285254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.857117, 38.684254, 17.416142>,  <33.065792, 38.773060, 17.494675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.857117, 38.684254, 17.416142>,  <32.509323, 38.536243, 17.285254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857117, 38.684254, 17.416142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140858, -0.820680, 0.553754,
		0.473445, -0.435391, -0.765692,
		0.869488, 0.370026, 0.327218,
		33.117962, 38.795261, 17.514307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973938, 37.970047, 17.261974>,  <32.509323, 38.536243, 17.285254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973938, 37.970047, 17.261974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.119305, 38.224285, 17.534430>,  <33.206524, 38.376827, 17.697903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.119305, 38.224285, 17.534430>,  <32.973938, 37.970047, 17.261974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119305, 38.224285, 17.534430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287349, -0.771954, 0.567026,
		0.886204, -0.010343, -0.463179,
		0.363417, 0.635594, 0.681137,
		33.228329, 38.414963, 17.738771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657055, 37.706985, 17.504568>,  <32.973938, 37.970047, 17.261974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657055, 37.706985, 17.504568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.518036, 37.958862, 17.782473>,  <33.434624, 38.109989, 17.949215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.518036, 37.958862, 17.782473>,  <33.657055, 37.706985, 17.504568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518036, 37.958862, 17.782473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261780, -0.646326, 0.716752,
		0.900378, 0.430982, 0.059789,
		-0.347550, 0.629696, 0.694761,
		33.413773, 38.147770, 17.990900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160763, 37.735188, 17.995171>,  <33.657055, 37.706985, 17.504568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160763, 37.735188, 17.995171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.848553, 37.883865, 18.196217>,  <33.661228, 37.973072, 18.316843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.848553, 37.883865, 18.196217>,  <34.160763, 37.735188, 17.995171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848553, 37.883865, 18.196217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284946, -0.504089, 0.815291,
		0.556405, 0.779573, 0.287540,
		-0.780525, 0.371699, 0.502614,
		33.614395, 37.995377, 18.347000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421173, 38.114346, 18.536768>,  <34.160763, 37.735188, 17.995171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421173, 38.114346, 18.536768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.046944, 38.049286, 18.662140>,  <33.822407, 38.010250, 18.737364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.046944, 38.049286, 18.662140>,  <34.421173, 38.114346, 18.536768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046944, 38.049286, 18.662140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352479, -0.376713, 0.856648,
		-0.021261, 0.911939, 0.409775,
		-0.935578, -0.162650, 0.313430,
		33.766270, 38.000492, 18.756168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355747, 38.303719, 19.283092>,  <34.421173, 38.114346, 18.536768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355747, 38.303719, 19.283092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.076275, 38.026814, 19.210852>,  <33.908592, 37.860668, 19.167507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.076275, 38.026814, 19.210852>,  <34.355747, 38.303719, 19.283092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076275, 38.026814, 19.210852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210710, -0.440351, 0.872750,
		-0.683703, 0.571716, 0.453531,
		-0.698678, -0.692265, -0.180603,
		33.866673, 37.819134, 19.156672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951683, 38.198906, 19.837204>,  <34.355747, 38.303719, 19.283092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951683, 38.198906, 19.837204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.891476, 37.860981, 19.631819>,  <33.855350, 37.658226, 19.508587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.891476, 37.860981, 19.631819>,  <33.951683, 38.198906, 19.837204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891476, 37.860981, 19.631819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062696, -0.526491, 0.847866,
		-0.986617, 0.095427, 0.132212,
		-0.150518, -0.844808, -0.513462,
		33.846321, 37.607540, 19.477779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598026, 37.854397, 20.350454>,  <33.951683, 38.198906, 19.837204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598026, 37.854397, 20.350454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.715111, 37.593449, 20.070818>,  <33.785362, 37.436878, 19.903036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.715111, 37.593449, 20.070818>,  <33.598026, 37.854397, 20.350454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715111, 37.593449, 20.070818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066167, -0.715540, 0.695431,
		-0.953908, -0.249819, -0.166283,
		0.292714, -0.652374, -0.699089,
		33.802925, 37.397736, 19.861092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115158, 37.332081, 20.517214>,  <33.598026, 37.854397, 20.350454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115158, 37.332081, 20.517214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.427170, 37.188282, 20.312347>,  <33.614376, 37.102001, 20.189426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.427170, 37.188282, 20.312347>,  <33.115158, 37.332081, 20.517214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427170, 37.188282, 20.312347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173706, -0.661921, 0.729169,
		-0.601148, -0.657740, -0.453871,
		0.780030, -0.359498, -0.512166,
		33.661179, 37.080433, 20.158697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922913, 36.669170, 20.485474>,  <33.115158, 37.332081, 20.517214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922913, 36.669170, 20.485474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.318329, 36.699303, 20.433136>,  <33.555576, 36.717381, 20.401733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.318329, 36.699303, 20.433136>,  <32.922913, 36.669170, 20.485474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318329, 36.699303, 20.433136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150659, -0.435626, 0.887430,
		0.009850, -0.896970, -0.441982,
		0.988537, 0.075330, -0.130845,
		33.614891, 36.721901, 20.393883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136353, 35.978420, 20.451216>,  <32.922913, 36.669170, 20.485474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136353, 35.978420, 20.451216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.473030, 36.179394, 20.530323>,  <33.675037, 36.299976, 20.577787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.473030, 36.179394, 20.530323>,  <33.136353, 35.978420, 20.451216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473030, 36.179394, 20.530323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201825, -0.632468, 0.747831,
		0.500817, -0.589530, -0.633748,
		0.841694, 0.502432, 0.197769,
		33.725540, 36.330124, 20.589653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704144, 35.503601, 20.580814>,  <33.136353, 35.978420, 20.451216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704144, 35.503601, 20.580814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.847252, 35.839436, 20.744326>,  <33.933117, 36.040936, 20.842432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.847252, 35.839436, 20.744326>,  <33.704144, 35.503601, 20.580814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847252, 35.839436, 20.744326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265645, -0.511176, 0.817393,
		0.895226, -0.183853, -0.405917,
		0.357775, 0.839581, 0.408778,
		33.954586, 36.091309, 20.866959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377129, 35.397034, 20.649343>,  <33.704144, 35.503601, 20.580814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377129, 35.397034, 20.649343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.266342, 35.668209, 20.921724>,  <34.199871, 35.830914, 21.085152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.266342, 35.668209, 20.921724>,  <34.377129, 35.397034, 20.649343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266342, 35.668209, 20.921724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246615, -0.634783, 0.732279,
		0.928694, 0.370747, 0.008622,
		-0.276963, 0.677936, 0.680951,
		34.183254, 35.871590, 21.126009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810738, 35.396969, 21.136509>,  <34.377129, 35.397034, 20.649343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810738, 35.396969, 21.136509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.517391, 35.578419, 21.339050>,  <34.341381, 35.687286, 21.460575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.517391, 35.578419, 21.339050>,  <34.810738, 35.396969, 21.136509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517391, 35.578419, 21.339050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224430, -0.541521, 0.810177,
		0.641716, 0.707801, 0.295329,
		-0.733371, 0.453622, 0.506354,
		34.297379, 35.714504, 21.490957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.738598, 35.270187, 25.408365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.429592, 35.503166, 25.509541>,  <38.244186, 35.642952, 25.570246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.429592, 35.503166, 25.509541>,  <38.738598, 35.270187, 25.408365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429592, 35.503166, 25.509541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099328, -0.282585, 0.954086,
		0.627177, 0.762171, 0.160449,
		-0.772517, 0.582443, 0.252936,
		38.197838, 35.677898, 25.585421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934006, 35.418842, 26.051903>,  <38.738598, 35.270187, 25.408365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934006, 35.418842, 26.051903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.549183, 35.527969, 26.053137>,  <38.318287, 35.593445, 26.053877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.549183, 35.527969, 26.053137>,  <38.934006, 35.418842, 26.051903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549183, 35.527969, 26.053137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060170, -0.223183, 0.972918,
		0.266119, 0.935820, 0.231131,
		-0.962060, 0.272819, 0.003085,
		38.260563, 35.609814, 26.054062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877029, 35.864155, 26.621204>,  <38.934006, 35.418842, 26.051903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877029, 35.864155, 26.621204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.524727, 35.698929, 26.528559>,  <38.313343, 35.599792, 26.472971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.524727, 35.698929, 26.528559>,  <38.877029, 35.864155, 26.621204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524727, 35.698929, 26.528559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190225, -0.139307, 0.971807,
		-0.433681, 0.899985, 0.044121,
		-0.880758, -0.413062, -0.231615,
		38.260498, 35.575012, 26.459074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541214, 36.029305, 27.239281>,  <38.877029, 35.864155, 26.621204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541214, 36.029305, 27.239281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.295971, 35.766640, 27.063601>,  <38.148823, 35.609043, 26.958193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.295971, 35.766640, 27.063601>,  <38.541214, 36.029305, 27.239281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295971, 35.766640, 27.063601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354840, -0.267804, 0.895751,
		-0.705821, 0.705040, -0.068815,
		-0.613112, -0.656657, -0.439198,
		38.112038, 35.569641, 26.931841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900524, 36.150707, 27.462437>,  <38.541214, 36.029305, 27.239281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900524, 36.150707, 27.462437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.897221, 35.765221, 27.355722>,  <37.895237, 35.533928, 27.291695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.897221, 35.765221, 27.355722>,  <37.900524, 36.150707, 27.462437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897221, 35.765221, 27.355722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360099, -0.246028, 0.899888,
		-0.932878, 0.103505, -0.345002,
		-0.008263, -0.963720, -0.266786,
		37.894741, 35.476105, 27.275686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345257, 35.877907, 27.796265>,  <37.900524, 36.150707, 27.462437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345257, 35.877907, 27.796265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.531433, 35.535160, 27.707592>,  <37.643139, 35.329510, 27.654388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.531433, 35.535160, 27.707592>,  <37.345257, 35.877907, 27.796265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531433, 35.535160, 27.707592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053100, -0.277045, 0.959389,
		-0.883487, -0.434763, -0.174447,
		0.465436, -0.856871, -0.221679,
		37.671062, 35.278099, 27.641088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899834, 35.308273, 27.958448>,  <37.345257, 35.877907, 27.796265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899834, 35.308273, 27.958448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.265034, 35.145267, 27.950905>,  <37.484154, 35.047466, 27.946379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.265034, 35.145267, 27.950905>,  <36.899834, 35.308273, 27.958448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265034, 35.145267, 27.950905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124018, -0.321303, 0.938820,
		-0.388640, -0.854809, -0.343890,
		0.913005, -0.407512, -0.018860,
		37.538937, 35.023014, 27.945248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885082, 34.455807, 28.039890>,  <36.899834, 35.308273, 27.958448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885082, 34.455807, 28.039890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.243618, 34.581509, 28.164995>,  <37.458740, 34.656929, 28.240059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.243618, 34.581509, 28.164995>,  <36.885082, 34.455807, 28.039890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243618, 34.581509, 28.164995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163755, -0.420893, 0.892207,
		0.412023, -0.850935, -0.325801,
		0.896338, 0.314259, 0.312762,
		37.512520, 34.675785, 28.258823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057663, 33.971817, 28.446150>,  <36.885082, 34.455807, 28.039890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057663, 33.971817, 28.446150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.305859, 34.261868, 28.565609>,  <37.454777, 34.435898, 28.637285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.305859, 34.261868, 28.565609>,  <37.057663, 33.971817, 28.446150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305859, 34.261868, 28.565609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010526, -0.388492, 0.921392,
		0.784146, -0.568568, -0.248687,
		0.620488, 0.725124, 0.298649,
		37.492004, 34.479404, 28.655203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711002, 33.630459, 28.729637>,  <37.057663, 33.971817, 28.446150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711002, 33.630459, 28.729637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.744434, 33.997986, 28.883930>,  <37.764492, 34.218502, 28.976507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.744434, 33.997986, 28.883930>,  <37.711002, 33.630459, 28.729637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744434, 33.997986, 28.883930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008853, -0.387758, 0.921719,
		0.996462, -0.073623, -0.040543,
		0.083581, 0.918816, 0.385735,
		37.769508, 34.273632, 28.999651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200127, 33.597176, 29.327940>,  <37.711002, 33.630459, 28.729637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200127, 33.597176, 29.327940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.967953, 33.920940, 29.363592>,  <37.828648, 34.115200, 29.384983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.967953, 33.920940, 29.363592>,  <38.200127, 33.597176, 29.327940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967953, 33.920940, 29.363592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145276, -0.210629, 0.966711,
		0.801240, 0.548168, 0.239845,
		-0.580439, 0.809412, 0.089128,
		37.793819, 34.163765, 29.390331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505375, 34.049858, 29.817547>,  <38.200127, 33.597176, 29.327940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505375, 34.049858, 29.817547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.107067, 34.083527, 29.802780>,  <37.868084, 34.103729, 29.793921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.107067, 34.083527, 29.802780>,  <38.505375, 34.049858, 29.817547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107067, 34.083527, 29.802780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058704, -0.273353, 0.960121,
		0.070726, 0.958224, 0.277138,
		-0.995767, 0.084175, -0.036919,
		37.808338, 34.108780, 29.791704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341648, 34.365059, 30.436007>,  <38.505375, 34.049858, 29.817547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341648, 34.365059, 30.436007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.998989, 34.197525, 30.315516>,  <37.793396, 34.097004, 30.243221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.998989, 34.197525, 30.315516>,  <38.341648, 34.365059, 30.436007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998989, 34.197525, 30.315516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244217, -0.185101, 0.951891,
		-0.454443, 0.888996, 0.056279,
		-0.856644, -0.418836, -0.301226,
		37.741997, 34.071873, 30.225147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791977, 34.687237, 30.734043>,  <38.341648, 34.365059, 30.436007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791977, 34.687237, 30.734043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.676128, 34.317001, 30.636557>,  <37.606621, 34.094860, 30.578066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.676128, 34.317001, 30.636557>,  <37.791977, 34.687237, 30.734043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676128, 34.317001, 30.636557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187253, -0.194913, 0.962780,
		-0.938646, 0.324478, -0.116869,
		-0.289621, -0.925593, -0.243714,
		37.589241, 34.039322, 30.563442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520164, 35.060997, 30.830875>,  <37.791977, 34.687237, 30.734043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520164, 35.060997, 30.830875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.235283, 35.214920, 31.065716>,  <38.064354, 35.307274, 31.206621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.235283, 35.214920, 31.065716>,  <38.520164, 35.060997, 30.830875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235283, 35.214920, 31.065716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355301, -0.918925, 0.171281,
		0.605413, -0.086611, 0.791184,
		-0.712205, 0.384805, 0.587103,
		38.021622, 35.330360, 31.241846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551979, 35.606228, 31.235678>,  <38.520164, 35.060997, 30.830875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551979, 35.606228, 31.235678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.817245, 35.861794, 31.391632>,  <38.976406, 36.015133, 31.485205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.817245, 35.861794, 31.391632>,  <38.551979, 35.606228, 31.235678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817245, 35.861794, 31.391632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376436, 0.734935, -0.564063,
		-0.646925, 0.227299, 0.727890,
		0.663163, 0.638910, 0.389884,
		39.016193, 36.053467, 31.508596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189735, 36.245647, 31.350359>,  <38.551979, 35.606228, 31.235678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189735, 36.245647, 31.350359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.567280, 36.377686, 31.355402>,  <38.793808, 36.456909, 31.358427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.567280, 36.377686, 31.355402>,  <38.189735, 36.245647, 31.350359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567280, 36.377686, 31.355402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268770, 0.789580, -0.551659,
		-0.192054, 0.517302, 0.833975,
		0.943864, 0.330095, 0.012607,
		38.850437, 36.476715, 31.359184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079075, 36.922035, 31.488411>,  <38.189735, 36.245647, 31.350359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079075, 36.922035, 31.488411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.442448, 36.867489, 31.330345>,  <38.660473, 36.834759, 31.235506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.442448, 36.867489, 31.330345>,  <38.079075, 36.922035, 31.488411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442448, 36.867489, 31.330345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131398, 0.804233, -0.579607,
		0.396844, 0.578458, 0.712673,
		0.908432, -0.136370, -0.395163,
		38.714977, 36.826576, 31.211796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350513, 37.538422, 31.521120>,  <38.079075, 36.922035, 31.488411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350513, 37.538422, 31.521120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.555008, 37.332684, 31.245703>,  <38.677704, 37.209240, 31.080452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.555008, 37.332684, 31.245703>,  <38.350513, 37.538422, 31.521120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555008, 37.332684, 31.245703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297964, 0.645390, -0.703342,
		0.806135, 0.564735, 0.176692,
		0.511237, -0.514340, -0.688542,
		38.708378, 37.178383, 31.039141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830086, 38.021046, 31.167080>,  <38.350513, 37.538422, 31.521120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830086, 38.021046, 31.167080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.786667, 37.705067, 30.925686>,  <38.760616, 37.515480, 30.780849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.786667, 37.705067, 30.925686>,  <38.830086, 38.021046, 31.167080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786667, 37.705067, 30.925686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160549, 0.613033, -0.773573,
		0.981041, 0.012922, -0.193367,
		-0.108544, -0.789952, -0.603485,
		38.754105, 37.468082, 30.744640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237221, 38.254234, 30.583431>,  <38.830086, 38.021046, 31.167080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237221, 38.254234, 30.583431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.989269, 37.965149, 30.461163>,  <38.840500, 37.791698, 30.387802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.989269, 37.965149, 30.461163>,  <39.237221, 38.254234, 30.583431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989269, 37.965149, 30.461163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295449, 0.575829, -0.762320,
		0.726957, -0.382232, -0.570467,
		-0.619874, -0.722717, -0.305673,
		38.803307, 37.748333, 30.369461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268227, 38.199100, 29.784323>,  <39.237221, 38.254234, 30.583431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268227, 38.199100, 29.784323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.929298, 38.006516, 29.873987>,  <38.725941, 37.890965, 29.927786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.929298, 38.006516, 29.873987>,  <39.268227, 38.199100, 29.784323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929298, 38.006516, 29.873987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476574, 0.503029, -0.720999,
		0.234376, -0.717743, -0.655678,
		-0.847316, -0.481464, 0.224160,
		38.675102, 37.862076, 29.941235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001377, 37.921974, 29.115988>,  <39.268227, 38.199100, 29.784323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001377, 37.921974, 29.115988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.683407, 37.926952, 29.358620>,  <38.492626, 37.929939, 29.504200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.683407, 37.926952, 29.358620>,  <39.001377, 37.921974, 29.115988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683407, 37.926952, 29.358620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523149, 0.492271, -0.695690,
		-0.307264, -0.870353, -0.384805,
		-0.794924, 0.012450, 0.606582,
		38.444931, 37.930687, 29.540594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372993, 37.667473, 28.719748>,  <39.001377, 37.921974, 29.115988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372993, 37.667473, 28.719748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.240513, 37.910995, 29.008099>,  <38.161026, 38.057110, 29.181108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.240513, 37.910995, 29.008099>,  <38.372993, 37.667473, 28.719748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240513, 37.910995, 29.008099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595243, 0.457980, -0.660257,
		-0.732116, -0.647773, 0.210706,
		-0.331198, 0.608806, 0.720877,
		38.141155, 38.093636, 29.224361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605476, 37.664917, 28.666317>,  <38.372993, 37.667473, 28.719748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605476, 37.664917, 28.666317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.694244, 37.997147, 28.870628>,  <37.747505, 38.196484, 28.993216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.694244, 37.997147, 28.870628>,  <37.605476, 37.664917, 28.666317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694244, 37.997147, 28.870628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704728, 0.498656, -0.504678,
		-0.673876, -0.247962, 0.695992,
		0.221920, 0.830576, 0.510778,
		37.760818, 38.246319, 29.023861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926311, 37.908333, 28.965467>,  <37.605476, 37.664917, 28.666317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926311, 37.908333, 28.965467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.199707, 38.199875, 28.949457>,  <37.363747, 38.374802, 28.939850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.199707, 38.199875, 28.949457>,  <36.926311, 37.908333, 28.965467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199707, 38.199875, 28.949457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661999, 0.595823, -0.454699,
		-0.307563, 0.337281, 0.889745,
		0.683492, 0.728860, -0.040027,
		37.404755, 38.418533, 28.937449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553215, 38.464535, 29.005808>,  <36.926311, 37.908333, 28.965467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553215, 38.464535, 29.005808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.891903, 38.633083, 28.875879>,  <37.095116, 38.734211, 28.797922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.891903, 38.633083, 28.875879>,  <36.553215, 38.464535, 29.005808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891903, 38.633083, 28.875879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500491, 0.423743, -0.754951,
		-0.180472, 0.801804, 0.569684,
		0.846722, 0.421369, -0.324823,
		37.145920, 38.759495, 28.778433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401482, 39.235405, 28.694044>,  <36.553215, 38.464535, 29.005808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401482, 39.235405, 28.694044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.754635, 39.128532, 28.539574>,  <36.966526, 39.064407, 28.446892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.754635, 39.128532, 28.539574>,  <36.401482, 39.235405, 28.694044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754635, 39.128532, 28.539574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115751, 0.673167, -0.730375,
		0.455102, 0.689536, 0.563402,
		0.882884, -0.267181, -0.386174,
		37.019501, 39.048378, 28.423721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940327, 39.842209, 28.685617>,  <36.401482, 39.235405, 28.694044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940327, 39.842209, 28.685617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.582001, 39.708748, 28.568180>,  <35.367004, 39.628674, 28.497717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.582001, 39.708748, 28.568180>,  <35.940327, 39.842209, 28.685617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582001, 39.708748, 28.568180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082476, -0.524332, 0.847510,
		-0.436711, 0.783425, 0.442185,
		-0.895813, -0.333648, -0.293595,
		35.313255, 39.608654, 28.480101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535664, 40.020565, 29.177502>,  <35.940327, 39.842209, 28.685617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535664, 40.020565, 29.177502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.299145, 39.738346, 29.021259>,  <35.157234, 39.569016, 28.927515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.299145, 39.738346, 29.021259>,  <35.535664, 40.020565, 29.177502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299145, 39.738346, 29.021259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079745, -0.430820, 0.898908,
		-0.802504, 0.562667, 0.198477,
		-0.591294, -0.705550, -0.390604,
		35.121758, 39.526680, 28.904078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991634, 39.874168, 29.648420>,  <35.535664, 40.020565, 29.177502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991634, 39.874168, 29.648420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.946465, 39.546211, 29.423916>,  <34.919361, 39.349438, 29.289213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.946465, 39.546211, 29.423916>,  <34.991634, 39.874168, 29.648420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946465, 39.546211, 29.423916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064536, -0.557631, 0.827577,
		-0.991505, 0.129679, 0.010060,
		-0.112929, -0.819897, -0.561263,
		34.912586, 39.300243, 29.255537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482037, 39.522942, 29.944393>,  <34.991634, 39.874168, 29.648420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482037, 39.522942, 29.944393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.658409, 39.261833, 29.697989>,  <34.764233, 39.105167, 29.550146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.658409, 39.261833, 29.697989>,  <34.482037, 39.522942, 29.944393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658409, 39.261833, 29.697989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223750, -0.744609, 0.628883,
		-0.869205, -0.139460, -0.474377,
		0.440929, -0.652770, -0.616014,
		34.790688, 39.066002, 29.513184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108418, 38.930538, 30.043867>,  <34.482037, 39.522942, 29.944393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108418, 38.930538, 30.043867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.451992, 38.788437, 29.896338>,  <34.658134, 38.703175, 29.807819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.451992, 38.788437, 29.896338>,  <34.108418, 38.930538, 30.043867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451992, 38.788437, 29.896338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112937, -0.833914, 0.540216,
		-0.499479, -0.422355, -0.756397,
		0.858933, -0.355252, -0.368823,
		34.709671, 38.681862, 29.785690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927887, 38.162895, 29.923716>,  <34.108418, 38.930538, 30.043867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927887, 38.162895, 29.923716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.318726, 38.238922, 29.962000>,  <34.553230, 38.284538, 29.984970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.318726, 38.238922, 29.962000>,  <33.927887, 38.162895, 29.923716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318726, 38.238922, 29.962000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097625, -0.800003, 0.592000,
		0.189087, -0.569097, -0.800234,
		0.977095, 0.190063, 0.095712,
		34.611855, 38.295940, 29.990713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257160, 37.508865, 29.854446>,  <33.927887, 38.162895, 29.923716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257160, 37.508865, 29.854446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.532017, 37.740738, 30.029631>,  <34.696930, 37.879864, 30.134741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.532017, 37.740738, 30.029631>,  <34.257160, 37.508865, 29.854446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532017, 37.740738, 30.029631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155329, -0.706090, 0.690877,
		0.709729, -0.406700, -0.575222,
		0.687138, 0.579683, 0.437960,
		34.738159, 37.914642, 30.161018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806637, 37.108025, 30.061331>,  <34.257160, 37.508865, 29.854446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806637, 37.108025, 30.061331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.865025, 37.414162, 30.312073>,  <34.900055, 37.597843, 30.462517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.865025, 37.414162, 30.312073>,  <34.806637, 37.108025, 30.061331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865025, 37.414162, 30.312073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261002, -0.640982, 0.721817,
		0.954239, 0.058249, -0.293317,
		0.145966, 0.765342, 0.626853,
		34.908813, 37.643764, 30.500130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449051, 36.930008, 30.330433>,  <34.806637, 37.108025, 30.061331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449051, 36.930008, 30.330433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.287842, 37.201443, 30.576063>,  <35.191116, 37.364304, 30.723442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.287842, 37.201443, 30.576063>,  <35.449051, 36.930008, 30.330433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287842, 37.201443, 30.576063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414016, -0.463213, 0.783597,
		0.816188, 0.570045, -0.094262,
		-0.403023, 0.678588, 0.614077,
		35.166935, 37.405018, 30.760286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053089, 37.173527, 30.637356>,  <35.449051, 36.930008, 30.330433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053089, 37.173527, 30.637356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.727142, 37.224106, 30.863630>,  <35.531574, 37.254452, 30.999395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.727142, 37.224106, 30.863630>,  <36.053089, 37.173527, 30.637356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727142, 37.224106, 30.863630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349069, -0.672066, 0.653053,
		0.462754, 0.729616, 0.503507,
		-0.814868, 0.126444, 0.565687,
		35.482681, 37.262039, 31.033337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294529, 37.069138, 31.284256>,  <36.053089, 37.173527, 30.637356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294529, 37.069138, 31.284256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.904869, 37.065449, 31.374538>,  <35.671074, 37.063236, 31.428707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.904869, 37.065449, 31.374538>,  <36.294529, 37.069138, 31.284256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904869, 37.065449, 31.374538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184804, -0.607121, 0.772821,
		0.129904, 0.794556, 0.593132,
		-0.974152, -0.009221, 0.225705,
		35.612625, 37.062683, 31.442249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188644, 37.238033, 32.067375>,  <36.294529, 37.069138, 31.284256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188644, 37.238033, 32.067375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.869919, 37.039391, 31.929697>,  <35.678684, 36.920204, 31.847090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.869919, 37.039391, 31.929697>,  <36.188644, 37.238033, 32.067375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869919, 37.039391, 31.929697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013773, -0.584428, 0.811329,
		-0.604065, 0.641740, 0.472521,
		-0.796816, -0.496603, -0.344194,
		35.630875, 36.890411, 31.826439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.573891, 42.249413, 25.547264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433563, 41.892948, 25.432198>,  <34.349369, 41.679070, 25.363157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433563, 41.892948, 25.432198>,  <34.573891, 42.249413, 25.547264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433563, 41.892948, 25.432198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272745, -0.391110, 0.879001,
		-0.895845, 0.229907, 0.380268,
		-0.350815, -0.891165, -0.287668,
		34.328320, 41.625599, 25.345898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121098, 42.046993, 26.102783>,  <34.573891, 42.249413, 25.547264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121098, 42.046993, 26.102783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262840, 41.734421, 25.897341>,  <34.347885, 41.546879, 25.774075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262840, 41.734421, 25.897341>,  <34.121098, 42.046993, 26.102783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262840, 41.734421, 25.897341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240433, -0.454644, 0.857608,
		-0.903671, -0.427390, 0.026775,
		0.354360, -0.781432, -0.513607,
		34.369148, 41.499992, 25.743259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849651, 41.467350, 26.433964>,  <34.121098, 42.046993, 26.102783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849651, 41.467350, 26.433964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168789, 41.345852, 26.225662>,  <34.360271, 41.272953, 26.100681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168789, 41.345852, 26.225662>,  <33.849651, 41.467350, 26.433964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168789, 41.345852, 26.225662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302148, -0.546013, 0.781394,
		-0.521676, -0.780777, -0.343861,
		0.797847, -0.303738, -0.520752,
		34.408142, 41.254730, 26.069437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818951, 40.696968, 26.419361>,  <33.849651, 41.467350, 26.433964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818951, 40.696968, 26.419361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198486, 40.804146, 26.352549>,  <34.426208, 40.868454, 26.312462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198486, 40.804146, 26.352549>,  <33.818951, 40.696968, 26.419361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198486, 40.804146, 26.352549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311051, -0.702357, 0.640267,
		0.054244, -0.659468, -0.749773,
		0.948844, 0.267949, -0.167030,
		34.483139, 40.884529, 26.302439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084450, 40.039009, 26.242327>,  <33.818951, 40.696968, 26.419361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084450, 40.039009, 26.242327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372768, 40.281124, 26.377432>,  <34.545757, 40.426395, 26.458494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372768, 40.281124, 26.377432>,  <34.084450, 40.039009, 26.242327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372768, 40.281124, 26.377432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173110, -0.629038, 0.757855,
		0.671186, -0.487787, -0.558187,
		0.720793, 0.605290, 0.337761,
		34.589005, 40.462711, 26.478760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610176, 39.566723, 26.427448>,  <34.084450, 40.039009, 26.242327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610176, 39.566723, 26.427448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703751, 39.890087, 26.643501>,  <34.759895, 40.084106, 26.773132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703751, 39.890087, 26.643501>,  <34.610176, 39.566723, 26.427448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703751, 39.890087, 26.643501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271473, -0.587763, 0.762127,
		0.933583, -0.031656, -0.356960,
		0.233934, 0.808413, 0.540132,
		34.773930, 40.132610, 26.805540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223835, 39.427177, 26.778082>,  <34.610176, 39.566723, 26.427448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223835, 39.427177, 26.778082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066952, 39.728096, 26.989824>,  <34.972824, 39.908649, 27.116871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066952, 39.728096, 26.989824>,  <35.223835, 39.427177, 26.778082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066952, 39.728096, 26.989824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257393, -0.462727, 0.848312,
		0.883134, 0.468964, -0.012154,
		-0.392204, 0.752301, 0.529358,
		34.949291, 39.953785, 27.148632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604752, 39.358131, 27.412672>,  <35.223835, 39.427177, 26.778082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604752, 39.358131, 27.412672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349415, 39.636753, 27.543718>,  <35.196213, 39.803925, 27.622345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349415, 39.636753, 27.543718>,  <35.604752, 39.358131, 27.412672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349415, 39.636753, 27.543718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185217, -0.274114, 0.943693,
		0.747138, 0.663078, 0.045964,
		-0.638341, 0.696555, 0.327615,
		35.157913, 39.845718, 27.642002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927795, 39.643898, 27.921862>,  <35.604752, 39.358131, 27.412672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927795, 39.643898, 27.921862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541035, 39.709724, 27.999853>,  <35.308979, 39.749218, 28.046648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541035, 39.709724, 27.999853>,  <35.927795, 39.643898, 27.921862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541035, 39.709724, 27.999853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074138, -0.550010, 0.831861,
		0.244133, 0.818785, 0.519607,
		-0.966904, 0.164562, 0.194979,
		35.250965, 39.759094, 28.058346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531052, 39.797607, 28.243279>,  <35.927795, 39.643898, 27.921862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531052, 39.797607, 28.243279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768494, 39.512409, 28.094004>,  <36.910957, 39.341290, 28.004438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768494, 39.512409, 28.094004>,  <36.531052, 39.797607, 28.243279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768494, 39.512409, 28.094004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302042, 0.232437, -0.924523,
		0.745924, 0.661520, -0.077379,
		0.593605, -0.712996, -0.373188,
		36.946575, 39.298512, 27.982048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910309, 40.142845, 27.690268>,  <36.531052, 39.797607, 28.243279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910309, 40.142845, 27.690268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005199, 39.761105, 27.617674>,  <37.062134, 39.532059, 27.574118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005199, 39.761105, 27.617674>,  <36.910309, 40.142845, 27.690268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005199, 39.761105, 27.617674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113918, 0.158201, -0.980814,
		0.964751, 0.253352, -0.071188,
		0.237229, -0.954351, -0.181486,
		37.076366, 39.474800, 27.563229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473537, 40.163956, 27.136301>,  <36.910309, 40.142845, 27.690268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473537, 40.163956, 27.136301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309837, 39.800537, 27.102697>,  <37.211617, 39.582485, 27.082535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309837, 39.800537, 27.102697>,  <37.473537, 40.163956, 27.136301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309837, 39.800537, 27.102697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072902, 0.124340, -0.989558,
		0.909505, -0.398851, -0.117121,
		-0.409249, -0.908546, -0.084011,
		37.187061, 39.527973, 27.077494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916439, 39.674004, 26.637136>,  <37.473537, 40.163956, 27.136301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916439, 39.674004, 26.637136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541439, 39.536800, 26.660614>,  <37.316441, 39.454479, 26.674702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541439, 39.536800, 26.660614>,  <37.916439, 39.674004, 26.637136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541439, 39.536800, 26.660614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015424, -0.127545, -0.991713,
		0.347654, -0.930632, 0.114283,
		-0.937496, -0.343010, 0.058696,
		37.260189, 39.433899, 26.678223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912056, 39.161865, 26.233450>,  <37.916439, 39.674004, 26.637136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912056, 39.161865, 26.233450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522877, 39.242550, 26.278484>,  <37.289368, 39.290962, 26.305506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522877, 39.242550, 26.278484>,  <37.912056, 39.161865, 26.233450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522877, 39.242550, 26.278484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158207, -0.226703, -0.961029,
		-0.168329, -0.952847, 0.252484,
		-0.972952, 0.201713, 0.112587,
		37.230991, 39.303062, 26.312260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618122, 38.672585, 25.821766>,  <37.912056, 39.161865, 26.233450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618122, 38.672585, 25.821766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334229, 38.950157, 25.870340>,  <37.163895, 39.116699, 25.899485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334229, 38.950157, 25.870340>,  <37.618122, 38.672585, 25.821766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334229, 38.950157, 25.870340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195402, -0.028302, -0.980315,
		-0.676832, -0.719487, 0.155682,
		-0.709729, 0.693929, 0.121434,
		37.121311, 39.158337, 25.906771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046322, 38.352325, 25.429348>,  <37.618122, 38.672585, 25.821766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046322, 38.352325, 25.429348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960674, 38.742279, 25.453829>,  <36.909286, 38.976254, 25.468517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960674, 38.742279, 25.453829>,  <37.046322, 38.352325, 25.429348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960674, 38.742279, 25.453829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344883, -0.016834, -0.938495,
		-0.913897, -0.222059, 0.339826,
		-0.214122, 0.974888, 0.061200,
		36.896439, 39.034744, 25.472189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345291, 38.425549, 25.094849>,  <37.046322, 38.352325, 25.429348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345291, 38.425549, 25.094849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533573, 38.778275, 25.106428>,  <36.646542, 38.989910, 25.113377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533573, 38.778275, 25.106428>,  <36.345291, 38.425549, 25.094849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533573, 38.778275, 25.106428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214756, 0.146338, -0.965642,
		-0.855756, 0.448314, 0.258257,
		0.470704, 0.881816, 0.028951,
		36.674786, 39.042820, 25.115114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905075, 38.924057, 24.803749>,  <36.345291, 38.425549, 25.094849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905075, 38.924057, 24.803749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257053, 39.111713, 24.773823>,  <36.468243, 39.224308, 24.755867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257053, 39.111713, 24.773823>,  <35.905075, 38.924057, 24.803749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257053, 39.111713, 24.773823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209198, 0.241260, -0.947644,
		-0.426527, 0.849531, 0.310440,
		0.879950, 0.469139, -0.074816,
		36.521038, 39.252457, 24.751377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766224, 39.431427, 24.408556>,  <35.905075, 38.924057, 24.803749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766224, 39.431427, 24.408556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165493, 39.437859, 24.385250>,  <36.405056, 39.441715, 24.371267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165493, 39.437859, 24.385250>,  <35.766224, 39.431427, 24.408556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165493, 39.437859, 24.385250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059609, 0.102507, -0.992945,
		-0.009989, 0.994603, 0.103278,
		0.998172, 0.016075, -0.058264,
		36.464943, 39.442680, 24.367771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964001, 39.927448, 23.845821>,  <35.766224, 39.431427, 24.408556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964001, 39.927448, 23.845821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268490, 39.677841, 23.916399>,  <36.451183, 39.528076, 23.958746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268490, 39.677841, 23.916399>,  <35.964001, 39.927448, 23.845821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268490, 39.677841, 23.916399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186640, -0.049752, -0.981168,
		0.621046, 0.779823, 0.078594,
		0.761227, -0.624020, 0.176444,
		36.496857, 39.490635, 23.969332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514912, 40.257988, 23.438858>,  <35.964001, 39.927448, 23.845821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514912, 40.257988, 23.438858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599491, 39.870171, 23.488302>,  <36.650238, 39.637482, 23.517969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599491, 39.870171, 23.488302>,  <36.514912, 40.257988, 23.438858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599491, 39.870171, 23.488302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180268, -0.085616, -0.979884,
		0.960621, 0.229479, 0.156674,
		0.211449, -0.969541, 0.123612,
		36.662926, 39.579308, 23.525385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168858, 40.166401, 23.196222>,  <36.514912, 40.257988, 23.438858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168858, 40.166401, 23.196222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979549, 39.814060, 23.200476>,  <36.865963, 39.602657, 23.203028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979549, 39.814060, 23.200476>,  <37.168858, 40.166401, 23.196222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979549, 39.814060, 23.200476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020888, -0.023291, -0.999511,
		0.880669, -0.472818, 0.029422,
		-0.473272, -0.880852, 0.010635,
		36.837566, 39.549805, 23.203667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575645, 39.642681, 22.820587>,  <37.168858, 40.166401, 23.196222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575645, 39.642681, 22.820587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217194, 39.465446, 22.830509>,  <37.002121, 39.359104, 22.836462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217194, 39.465446, 22.830509>,  <37.575645, 39.642681, 22.820587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217194, 39.465446, 22.830509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104818, -0.265643, -0.958357,
		0.431227, -0.856216, 0.284495,
		-0.896134, -0.443090, 0.024805,
		36.948353, 39.332520, 22.837952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.797493, 36.158382, 20.726126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.917156, 36.446438, 20.976538>,  <30.988955, 36.619270, 21.126785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.917156, 36.446438, 20.976538>,  <30.797493, 36.158382, 20.726126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917156, 36.446438, 20.976538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023657, -0.661470, 0.749598,
		0.953911, -0.209438, -0.214919,
		0.299157, 0.720134, 0.626029,
		31.006903, 36.662479, 21.164347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212542, 35.755573, 21.116451>,  <30.797493, 36.158382, 20.726126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212542, 35.755573, 21.116451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.182673, 36.089550, 21.334551>,  <31.164751, 36.289936, 21.465410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.182673, 36.089550, 21.334551>,  <31.212542, 35.755573, 21.116451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182673, 36.089550, 21.334551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248300, -0.513989, 0.821074,
		0.965801, 0.196696, -0.168935,
		-0.074671, 0.834941, 0.545250,
		31.160271, 36.340031, 21.498125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807608, 35.763538, 21.584650>,  <31.212542, 35.755573, 21.116451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807608, 35.763538, 21.584650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.533194, 36.004181, 21.748320>,  <31.368546, 36.148567, 21.846521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.533194, 36.004181, 21.748320>,  <31.807608, 35.763538, 21.584650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533194, 36.004181, 21.748320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096873, -0.481847, 0.870884,
		0.721091, 0.637094, 0.272284,
		-0.686035, 0.601609, 0.409173,
		31.327383, 36.184662, 21.871071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178635, 35.879181, 22.131577>,  <31.807608, 35.763538, 21.584650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178635, 35.879181, 22.131577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.793844, 35.950470, 22.214363>,  <31.562969, 35.993244, 22.264034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.793844, 35.950470, 22.214363>,  <32.178635, 35.879181, 22.131577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793844, 35.950470, 22.214363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101605, -0.469872, 0.876868,
		0.253522, 0.864557, 0.433899,
		-0.961979, 0.178219, 0.206966,
		31.505251, 36.003937, 22.276453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205067, 36.100613, 22.783842>,  <32.178635, 35.879181, 22.131577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205067, 36.100613, 22.783842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.812450, 36.031540, 22.750946>,  <31.576881, 35.990097, 22.731209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.812450, 36.031540, 22.750946>,  <32.205067, 36.100613, 22.783842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812450, 36.031540, 22.750946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006207, -0.400999, 0.916058,
		-0.191162, 0.899657, 0.392524,
		-0.981539, -0.172679, -0.082240,
		31.517988, 35.979736, 22.726274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865038, 36.331234, 23.467155>,  <32.205067, 36.100613, 22.783842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865038, 36.331234, 23.467155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.710188, 36.015434, 23.276651>,  <31.617277, 35.825954, 23.162350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.710188, 36.015434, 23.276651>,  <31.865038, 36.331234, 23.467155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710188, 36.015434, 23.276651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006057, -0.518702, 0.854934,
		-0.922007, 0.328083, 0.205585,
		-0.387126, -0.789500, -0.476260,
		31.594049, 35.778584, 23.133774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421745, 36.058903, 24.011265>,  <31.865038, 36.331234, 23.467155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421745, 36.058903, 24.011265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.435793, 35.781750, 23.723186>,  <31.444221, 35.615459, 23.550339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.435793, 35.781750, 23.723186>,  <31.421745, 36.058903, 24.011265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435793, 35.781750, 23.723186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133678, -0.717421, 0.683694,
		-0.990402, 0.072263, -0.117818,
		0.035120, -0.692882, -0.720195,
		31.446329, 35.573887, 23.507128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902592, 35.633461, 24.120174>,  <31.421745, 36.058903, 24.011265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902592, 35.633461, 24.120174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.171045, 35.420921, 23.913387>,  <31.332117, 35.293400, 23.789316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.171045, 35.420921, 23.913387>,  <30.902592, 35.633461, 24.120174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171045, 35.420921, 23.913387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067484, -0.650660, 0.756365,
		-0.738260, -0.542508, -0.400821,
		0.671132, -0.531345, -0.516966,
		31.372385, 35.261517, 23.758297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730024, 34.876362, 24.204548>,  <30.902592, 35.633461, 24.120174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730024, 34.876362, 24.204548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.110529, 34.894707, 24.082565>,  <31.338831, 34.905716, 24.009375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.110529, 34.894707, 24.082565>,  <30.730024, 34.876362, 24.204548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110529, 34.894707, 24.082565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267460, -0.614974, 0.741803,
		-0.153518, -0.787213, -0.597268,
		0.951261, 0.045866, -0.304958,
		31.395906, 34.908466, 23.991077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044750, 34.153049, 24.354641>,  <30.730024, 34.876362, 24.204548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044750, 34.153049, 24.354641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.341307, 34.420097, 24.327436>,  <31.519241, 34.580326, 24.311113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.341307, 34.420097, 24.327436>,  <31.044750, 34.153049, 24.354641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341307, 34.420097, 24.327436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453131, -0.423280, 0.784542,
		0.494986, -0.612471, -0.616334,
		0.741391, 0.667618, -0.068012,
		31.563725, 34.620384, 24.307034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722223, 33.798988, 24.392157>,  <31.044750, 34.153049, 24.354641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722223, 33.798988, 24.392157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.833849, 34.180153, 24.439640>,  <31.900826, 34.408852, 24.468130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.833849, 34.180153, 24.439640>,  <31.722223, 33.798988, 24.392157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833849, 34.180153, 24.439640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625403, -0.274162, 0.730552,
		0.728693, -0.129631, -0.672460,
		0.279065, 0.952907, 0.118708,
		31.917568, 34.466026, 24.475252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421177, 33.775883, 24.360502>,  <31.722223, 33.798988, 24.392157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421177, 33.775883, 24.360502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.350883, 34.113754, 24.562746>,  <32.308708, 34.316479, 24.684092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.350883, 34.113754, 24.562746>,  <32.421177, 33.775883, 24.360502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350883, 34.113754, 24.562746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600442, -0.315038, 0.734997,
		0.780121, 0.432749, -0.451818,
		-0.175729, 0.844677, 0.505608,
		32.298164, 34.367157, 24.714428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078831, 34.047882, 24.671404>,  <32.421177, 33.775883, 24.360502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078831, 34.047882, 24.671404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.796284, 34.220306, 24.895985>,  <32.626755, 34.323761, 25.030733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.796284, 34.220306, 24.895985>,  <33.078831, 34.047882, 24.671404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796284, 34.220306, 24.895985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498714, -0.259811, 0.826912,
		0.502323, 0.864108, -0.031455,
		-0.706368, 0.431064, 0.561451,
		32.584373, 34.349625, 25.064421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473930, 34.314705, 25.185156>,  <33.078831, 34.047882, 24.671404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473930, 34.314705, 25.185156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.099968, 34.310131, 25.327044>,  <32.875591, 34.307388, 25.412176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.099968, 34.310131, 25.327044>,  <33.473930, 34.314705, 25.185156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099968, 34.310131, 25.327044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341865, -0.297426, 0.891441,
		0.095308, 0.954676, 0.281974,
		-0.934904, -0.011435, 0.354717,
		32.819496, 34.306702, 25.433458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945412, 34.890869, 25.396746>,  <33.473930, 34.314705, 25.185156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945412, 34.890869, 25.396746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.257446, 34.661499, 25.296635>,  <34.444668, 34.523876, 25.236568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.257446, 34.661499, 25.296635>,  <33.945412, 34.890869, 25.396746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257446, 34.661499, 25.296635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016393, 0.381151, -0.924368,
		0.625452, 0.725193, 0.287932,
		0.780090, -0.573427, -0.250280,
		34.491474, 34.489471, 25.221550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502144, 35.369465, 25.200169>,  <33.945412, 34.890869, 25.396746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502144, 35.369465, 25.200169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.566288, 35.007294, 25.042952>,  <34.604774, 34.789989, 24.948622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.566288, 35.007294, 25.042952>,  <34.502144, 35.369465, 25.200169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566288, 35.007294, 25.042952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032122, 0.402772, -0.914736,
		0.986536, 0.134062, 0.093672,
		0.160360, -0.905429, -0.393043,
		34.614395, 34.735664, 24.925039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064564, 35.479008, 24.718275>,  <34.502144, 35.369465, 25.200169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064564, 35.479008, 24.718275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.902351, 35.129173, 24.611956>,  <34.805023, 34.919273, 24.548164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.902351, 35.129173, 24.611956>,  <35.064564, 35.479008, 24.718275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902351, 35.129173, 24.611956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068951, 0.260685, -0.962959,
		0.911477, -0.408837, -0.045412,
		-0.405531, -0.874583, -0.265798,
		34.780693, 34.866798, 24.532217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482376, 35.138317, 24.239799>,  <35.064564, 35.479008, 24.718275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482376, 35.138317, 24.239799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.122330, 34.972206, 24.187136>,  <34.906300, 34.872540, 24.155539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.122330, 34.972206, 24.187136>,  <35.482376, 35.138317, 24.239799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122330, 34.972206, 24.187136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028319, 0.357348, -0.933542,
		0.434727, -0.836569, -0.333415,
		-0.900117, -0.415278, -0.131658,
		34.852295, 34.847622, 24.147638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566044, 34.875584, 23.515295>,  <35.482376, 35.138317, 24.239799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566044, 34.875584, 23.515295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.182808, 34.845444, 23.625841>,  <34.952866, 34.827358, 23.692169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.182808, 34.845444, 23.625841>,  <35.566044, 34.875584, 23.515295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182808, 34.845444, 23.625841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283309, 0.106711, -0.953073,
		0.042319, -0.991431, -0.123585,
		-0.958094, -0.075346, 0.276366,
		34.895378, 34.822838, 23.708750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214645, 34.536030, 22.996695>,  <35.566044, 34.875584, 23.515295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214645, 34.536030, 22.996695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.924698, 34.744431, 23.176970>,  <34.750729, 34.869469, 23.285135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.924698, 34.744431, 23.176970>,  <35.214645, 34.536030, 22.996695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924698, 34.744431, 23.176970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390303, 0.228488, -0.891884,
		-0.567647, -0.822408, 0.037723,
		-0.724873, 0.520998, 0.450688,
		34.707237, 34.900730, 23.312176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706726, 34.539234, 22.540997>,  <35.214645, 34.536030, 22.996695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706726, 34.539234, 22.540997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.556351, 34.831085, 22.769489>,  <34.466125, 35.006195, 22.906586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.556351, 34.831085, 22.769489>,  <34.706726, 34.539234, 22.540997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556351, 34.831085, 22.769489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474533, 0.377902, -0.794989,
		-0.795920, -0.569936, 0.204166,
		-0.375938, 0.729632, 0.571233,
		34.443569, 35.049976, 22.940859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932663, 34.525326, 22.448668>,  <34.706726, 34.539234, 22.540997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932663, 34.525326, 22.448668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.117393, 34.864296, 22.553421>,  <34.228233, 35.067680, 22.616274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.117393, 34.864296, 22.553421>,  <33.932663, 34.525326, 22.448668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117393, 34.864296, 22.553421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387209, 0.458259, -0.800042,
		-0.797988, 0.268078, 0.539768,
		0.461827, 0.847427, 0.261883,
		34.255943, 35.118523, 22.631987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422329, 34.975487, 22.249542>,  <33.932663, 34.525326, 22.448668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422329, 34.975487, 22.249542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.748936, 35.202690, 22.290836>,  <33.944901, 35.339012, 22.315613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.748936, 35.202690, 22.290836>,  <33.422329, 34.975487, 22.249542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748936, 35.202690, 22.290836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297930, 0.567755, -0.767393,
		-0.494500, 0.595835, 0.632811,
		0.816521, 0.568009, 0.103237,
		33.993893, 35.373093, 22.321808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198883, 35.723503, 22.195683>,  <33.422329, 34.975487, 22.249542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198883, 35.723503, 22.195683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.592014, 35.742393, 22.124332>,  <33.827892, 35.753727, 22.081522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.592014, 35.742393, 22.124332>,  <33.198883, 35.723503, 22.195683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592014, 35.742393, 22.124332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161517, 0.687633, -0.707866,
		0.089225, 0.724521, 0.683453,
		0.982828, 0.047230, -0.178377,
		33.886864, 35.756561, 22.070820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384087, 36.350574, 22.149324>,  <33.198883, 35.723503, 22.195683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384087, 36.350574, 22.149324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.685581, 36.178738, 21.950392>,  <33.866478, 36.075634, 21.831032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.685581, 36.178738, 21.950392>,  <33.384087, 36.350574, 22.149324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685581, 36.178738, 21.950392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097493, 0.675295, -0.731076,
		0.649910, 0.599522, 0.467109,
		0.753732, -0.429593, -0.497330,
		33.911701, 36.049858, 21.801193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872849, 36.853859, 21.950327>,  <33.384087, 36.350574, 22.149324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872849, 36.853859, 21.950327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.954086, 36.554062, 21.698290>,  <34.002827, 36.374184, 21.547068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.954086, 36.554062, 21.698290>,  <33.872849, 36.853859, 21.950327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954086, 36.554062, 21.698290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045037, 0.635672, -0.770644,
		0.978123, 0.184890, 0.095345,
		0.203092, -0.749491, -0.630092,
		34.015015, 36.329216, 21.509262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495220, 37.086933, 21.483549>,  <33.872849, 36.853859, 21.950327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495220, 37.086933, 21.483549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.299271, 36.790024, 21.300661>,  <34.181702, 36.611877, 21.190928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.299271, 36.790024, 21.300661>,  <34.495220, 37.086933, 21.483549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299271, 36.790024, 21.300661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026601, 0.536944, -0.843199,
		0.871386, -0.400901, -0.282781,
		-0.489877, -0.742274, -0.457221,
		34.152309, 36.567341, 21.163494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904327, 36.989971, 20.854277>,  <34.495220, 37.086933, 21.483549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904327, 36.989971, 20.854277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.550407, 36.815197, 20.789515>,  <34.338055, 36.710335, 20.750656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.550407, 36.815197, 20.789515>,  <34.904327, 36.989971, 20.854277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550407, 36.815197, 20.789515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020734, 0.310205, -0.950444,
		0.465505, -0.844312, -0.265411,
		-0.884802, -0.436934, -0.161908,
		34.284966, 36.684116, 20.740942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518951, 36.614754, 20.643309>,  <34.904327, 36.989971, 20.854277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518951, 36.614754, 20.643309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.909615, 36.668930, 20.576616>,  <36.144012, 36.701435, 20.536602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.909615, 36.668930, 20.576616>,  <35.518951, 36.614754, 20.643309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909615, 36.668930, 20.576616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192841, -0.210894, 0.958299,
		0.094627, -0.968081, -0.232088,
		0.976657, 0.135437, -0.166729,
		36.202610, 36.709560, 20.526598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790203, 36.050041, 20.956474>,  <35.518951, 36.614754, 20.643309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790203, 36.050041, 20.956474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.113525, 36.278172, 20.898006>,  <36.307518, 36.415051, 20.862925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.113525, 36.278172, 20.898006>,  <35.790203, 36.050041, 20.956474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113525, 36.278172, 20.898006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300914, -0.186793, 0.935179,
		0.506055, -0.799896, -0.322606,
		0.808306, 0.570329, -0.146172,
		36.356018, 36.449268, 20.854155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236866, 35.713280, 21.381533>,  <35.790203, 36.050041, 20.956474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236866, 35.713280, 21.381533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.415863, 36.060123, 21.294014>,  <36.523262, 36.268230, 21.241503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.415863, 36.060123, 21.294014>,  <36.236866, 35.713280, 21.381533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415863, 36.060123, 21.294014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355227, 0.052180, 0.933322,
		0.820708, -0.495381, -0.284670,
		0.447496, 0.867107, -0.218798,
		36.550114, 36.320255, 21.228374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934151, 35.648235, 21.488173>,  <36.236866, 35.713280, 21.381533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934151, 35.648235, 21.488173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.856777, 36.037247, 21.539986>,  <36.810352, 36.270653, 21.571074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.856777, 36.037247, 21.539986>,  <36.934151, 35.648235, 21.488173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856777, 36.037247, 21.539986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509175, -0.013341, 0.860560,
		0.838643, 0.232419, -0.492605,
		-0.193438, 0.972524, 0.129531,
		36.798744, 36.329002, 21.578844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689541, 35.978119, 21.720118>,  <36.934151, 35.648235, 21.488173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689541, 35.978119, 21.720118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.374855, 36.207439, 21.811689>,  <37.186043, 36.345032, 21.866632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.374855, 36.207439, 21.811689>,  <37.689541, 35.978119, 21.720118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374855, 36.207439, 21.811689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333277, 0.082289, 0.939231,
		0.519623, 0.815203, -0.255806,
		-0.786714, 0.573300, 0.228929,
		37.138840, 36.379429, 21.880367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933186, 36.685066, 22.099934>,  <37.689541, 35.978119, 21.720118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933186, 36.685066, 22.099934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.545288, 36.634140, 22.183258>,  <37.312550, 36.603584, 22.233252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.545288, 36.634140, 22.183258>,  <37.933186, 36.685066, 22.099934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545288, 36.634140, 22.183258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217586, -0.063764, 0.973956,
		-0.110718, 0.989810, 0.089537,
		-0.969741, -0.127316, 0.208309,
		37.254364, 36.595943, 22.245750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905575, 37.062565, 22.659719>,  <37.933186, 36.685066, 22.099934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905575, 37.062565, 22.659719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.554123, 36.872112, 22.674145>,  <37.343250, 36.757839, 22.682800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.554123, 36.872112, 22.674145>,  <37.905575, 37.062565, 22.659719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554123, 36.872112, 22.674145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155881, -0.214622, 0.964178,
		-0.451339, 0.852779, 0.262795,
		-0.878632, -0.476136, 0.036065,
		37.290535, 36.729271, 22.684963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599831, 37.388496, 23.179659>,  <37.905575, 37.062565, 22.659719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599831, 37.388496, 23.179659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.423634, 37.029869, 23.161186>,  <37.317917, 36.814693, 23.150103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.423634, 37.029869, 23.161186>,  <37.599831, 37.388496, 23.179659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423634, 37.029869, 23.161186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178851, -0.138047, 0.974144,
		-0.879763, 0.420840, 0.221160,
		-0.440489, -0.896570, -0.046181,
		37.291489, 36.760899, 23.147331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082470, 37.305435, 23.693527>,  <37.599831, 37.388496, 23.179659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082470, 37.305435, 23.693527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.160725, 36.923515, 23.604004>,  <37.207676, 36.694363, 23.550289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.160725, 36.923515, 23.604004>,  <37.082470, 37.305435, 23.693527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160725, 36.923515, 23.604004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137563, -0.199243, 0.970246,
		-0.970981, -0.220600, 0.092366,
		0.195633, -0.954797, -0.223808,
		37.219414, 36.637077, 23.536861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685703, 36.936104, 24.217749>,  <37.082470, 37.305435, 23.693527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685703, 36.936104, 24.217749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.986748, 36.738789, 24.043280>,  <37.167374, 36.620399, 23.938599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.986748, 36.738789, 24.043280>,  <36.685703, 36.936104, 24.217749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986748, 36.738789, 24.043280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402127, -0.180207, 0.897674,
		-0.521415, -0.850993, 0.062740,
		0.752608, -0.493291, -0.436170,
		37.212532, 36.590801, 23.912428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664577, 36.302147, 24.356689>,  <36.685703, 36.936104, 24.217749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664577, 36.302147, 24.356689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.055763, 36.305676, 24.273260>,  <37.290474, 36.307793, 24.223202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.055763, 36.305676, 24.273260>,  <36.664577, 36.302147, 24.356689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055763, 36.305676, 24.273260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185634, -0.493814, 0.849522,
		-0.095505, -0.869523, -0.484571,
		0.977967, 0.008819, -0.208575,
		37.349152, 36.308323, 24.210688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879196, 35.651344, 24.617399>,  <36.664577, 36.302147, 24.356689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879196, 35.651344, 24.617399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.224731, 35.849800, 24.582468>,  <37.432053, 35.968872, 24.561510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.224731, 35.849800, 24.582468>,  <36.879196, 35.651344, 24.617399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224731, 35.849800, 24.582468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347549, -0.461452, 0.816255,
		0.364679, -0.735464, -0.571053,
		0.863839, 0.496140, -0.087328,
		37.483883, 35.998642, 24.556271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410736, 35.193523, 24.620377>,  <36.879196, 35.651344, 24.617399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410736, 35.193523, 24.620377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.591347, 35.537251, 24.716454>,  <37.699711, 35.743488, 24.774099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.591347, 35.537251, 24.716454>,  <37.410736, 35.193523, 24.620377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591347, 35.537251, 24.716454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320293, -0.407352, 0.855264,
		0.832790, -0.309241, -0.459164,
		0.451524, 0.859322, 0.240191,
		37.726803, 35.795048, 24.788511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918549, 34.971004, 24.912840>,  <37.410736, 35.193523, 24.620377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918549, 34.971004, 24.912840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.875584, 35.344368, 25.049782>,  <37.849804, 35.568386, 25.131947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.875584, 35.344368, 25.049782>,  <37.918549, 34.971004, 24.912840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875584, 35.344368, 25.049782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298126, -0.298264, 0.906730,
		0.948464, 0.199459, -0.246236,
		-0.107412, 0.933410, 0.342357,
		37.843361, 35.624390, 25.152489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.657879, 38.729973, 22.492592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.293331, 38.890423, 22.455694>,  <37.074604, 38.986694, 22.433556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.293331, 38.890423, 22.455694>,  <37.657879, 38.729973, 22.492592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293331, 38.890423, 22.455694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086270, -0.032974, -0.995726,
		-0.402455, -0.915428, -0.004554,
		-0.911366, 0.401128, -0.092244,
		37.019920, 39.010761, 22.428020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437229, 38.445244, 21.864172>,  <37.657879, 38.729973, 22.492592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437229, 38.445244, 21.864172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.161068, 38.730175, 21.914656>,  <36.995373, 38.901134, 21.944946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.161068, 38.730175, 21.914656>,  <37.437229, 38.445244, 21.864172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161068, 38.730175, 21.914656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248543, -0.069722, -0.966108,
		-0.679391, -0.698371, 0.225181,
		-0.690401, 0.712332, 0.126207,
		36.953949, 38.943874, 21.952518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965343, 38.325592, 21.326340>,  <37.437229, 38.445244, 21.864172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965343, 38.325592, 21.326340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.847332, 38.694588, 21.425919>,  <36.776524, 38.915985, 21.485666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.847332, 38.694588, 21.425919>,  <36.965343, 38.325592, 21.326340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847332, 38.694588, 21.425919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254988, 0.175079, -0.950962,
		-0.920836, -0.344039, 0.183570,
		-0.295029, 0.922488, 0.248945,
		36.758823, 38.971333, 21.500603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310390, 38.476109, 20.919050>,  <36.965343, 38.325592, 21.326340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310390, 38.476109, 20.919050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.515457, 38.803272, 21.023508>,  <36.638496, 38.999573, 21.086182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.515457, 38.803272, 21.023508>,  <36.310390, 38.476109, 20.919050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515457, 38.803272, 21.023508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090274, 0.353817, -0.930948,
		-0.853831, 0.453687, 0.255225,
		0.512662, 0.817913, 0.261144,
		36.669254, 39.048645, 21.101851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980209, 38.963871, 20.536173>,  <36.310390, 38.476109, 20.919050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980209, 38.963871, 20.536173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.310387, 39.160912, 20.646435>,  <36.508492, 39.279137, 20.712593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.310387, 39.160912, 20.646435>,  <35.980209, 38.963871, 20.536173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310387, 39.160912, 20.646435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011915, 0.503432, -0.863953,
		-0.564357, 0.709861, 0.421425,
		0.825445, 0.492599, 0.275657,
		36.558022, 39.308693, 20.729132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888988, 39.664116, 20.601049>,  <35.980209, 38.963871, 20.536173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888988, 39.664116, 20.601049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.281963, 39.638676, 20.530890>,  <36.517750, 39.623413, 20.488794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.281963, 39.638676, 20.530890>,  <35.888988, 39.664116, 20.601049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281963, 39.638676, 20.530890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108449, 0.570310, -0.814239,
		0.151818, 0.818964, 0.553398,
		0.982441, -0.063600, -0.175399,
		36.576694, 39.619595, 20.478270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033489, 40.337906, 20.286316>,  <35.888988, 39.664116, 20.601049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033489, 40.337906, 20.286316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.366398, 40.131126, 20.206236>,  <36.566143, 40.007057, 20.158188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.366398, 40.131126, 20.206236>,  <36.033489, 40.337906, 20.286316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366398, 40.131126, 20.206236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217984, 0.637220, -0.739211,
		0.509709, 0.571586, 0.643029,
		0.832274, -0.516952, -0.200200,
		36.616081, 39.976040, 20.146175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552605, 40.859676, 20.152779>,  <36.033489, 40.337906, 20.286316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552605, 40.859676, 20.152779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.680851, 40.519070, 19.986826>,  <36.757797, 40.314705, 19.887255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.680851, 40.519070, 19.986826>,  <36.552605, 40.859676, 20.152779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680851, 40.519070, 19.986826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228424, 0.494583, -0.838577,
		0.919255, 0.174090, 0.353077,
		0.320614, -0.851517, -0.414881,
		36.777035, 40.263615, 19.862362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186199, 40.963890, 19.975929>,  <36.552605, 40.859676, 20.152779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186199, 40.963890, 19.975929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.016354, 40.682964, 19.747385>,  <36.914444, 40.514408, 19.610258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.016354, 40.682964, 19.747385>,  <37.186199, 40.963890, 19.975929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016354, 40.682964, 19.747385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156082, 0.564844, -0.810302,
		0.891818, -0.433246, -0.130223,
		-0.424616, -0.702317, -0.571360,
		36.888969, 40.472271, 19.575977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448414, 41.128731, 19.300507>,  <37.186199, 40.963890, 19.975929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448414, 41.128731, 19.300507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.191990, 40.849140, 19.173721>,  <37.038136, 40.681385, 19.097651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.191990, 40.849140, 19.173721>,  <37.448414, 41.128731, 19.300507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191990, 40.849140, 19.173721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191620, 0.254143, -0.947994,
		0.743183, -0.668460, -0.028983,
		-0.641062, -0.698979, -0.316966,
		36.999672, 40.639446, 19.078632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729557, 40.727051, 18.681936>,  <37.448414, 41.128731, 19.300507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729557, 40.727051, 18.681936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.329777, 40.732357, 18.669802>,  <37.089909, 40.735538, 18.662521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.329777, 40.732357, 18.669802>,  <37.729557, 40.727051, 18.681936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329777, 40.732357, 18.669802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032989, 0.320820, -0.946566,
		-0.002822, -0.947047, -0.321082,
		-0.999452, 0.013264, -0.030336,
		37.029942, 40.736336, 18.660700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478043, 40.368477, 17.968374>,  <37.729557, 40.727051, 18.681936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478043, 40.368477, 17.968374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.222755, 40.642509, 18.108854>,  <37.069584, 40.806931, 18.193142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.222755, 40.642509, 18.108854>,  <37.478043, 40.368477, 17.968374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222755, 40.642509, 18.108854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164036, 0.324703, -0.931483,
		-0.752181, -0.652094, -0.094851,
		-0.638213, 0.685085, 0.351202,
		37.031292, 40.848034, 18.214214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459053, 40.715389, 17.267998>,  <37.478043, 40.368477, 17.968374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459053, 40.715389, 17.267998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.149014, 40.857204, 17.477196>,  <36.962990, 40.942291, 17.602715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.149014, 40.857204, 17.477196>,  <37.459053, 40.715389, 17.267998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149014, 40.857204, 17.477196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307766, 0.511052, -0.802562,
		-0.551813, -0.783027, -0.287005,
		-0.775102, 0.354534, 0.522994,
		36.916481, 40.963566, 17.634094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791267, 40.291866, 17.165590>,  <37.459053, 40.715389, 17.267998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791267, 40.291866, 17.165590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.725025, 40.680489, 17.233295>,  <36.685280, 40.913662, 17.273918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.725025, 40.680489, 17.233295>,  <36.791267, 40.291866, 17.165590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725025, 40.680489, 17.233295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395061, 0.091905, -0.914046,
		-0.903605, -0.218239, 0.368605,
		-0.165603, 0.971558, 0.169264,
		36.675343, 40.971954, 17.284075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373920, 40.352921, 16.599699>,  <36.791267, 40.291866, 17.165590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373920, 40.352921, 16.599699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.141468, 40.145840, 16.348537>,  <36.001995, 40.021591, 16.197842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.141468, 40.145840, 16.348537>,  <36.373920, 40.352921, 16.599699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141468, 40.145840, 16.348537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046233, -0.791319, 0.609654,
		-0.812493, 0.325261, 0.483798,
		-0.581135, -0.517707, -0.627903,
		35.967129, 39.990528, 16.160166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952309, 40.024548, 17.021109>,  <36.373920, 40.352921, 16.599699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952309, 40.024548, 17.021109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.925785, 39.807785, 16.685982>,  <35.909870, 39.677727, 16.484905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.925785, 39.807785, 16.685982>,  <35.952309, 40.024548, 17.021109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925785, 39.807785, 16.685982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134726, -0.827113, 0.545648,
		-0.988661, 0.149059, -0.018162,
		-0.066312, -0.541908, -0.837817,
		35.905891, 39.645214, 16.434637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435482, 39.659683, 17.094820>,  <35.952309, 40.024548, 17.021109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435482, 39.659683, 17.094820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.642616, 39.450062, 16.824348>,  <35.766895, 39.324287, 16.662066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.642616, 39.450062, 16.824348>,  <35.435482, 39.659683, 17.094820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642616, 39.450062, 16.824348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285678, -0.850963, 0.440737,
		-0.806373, -0.035058, -0.590367,
		0.517833, -0.524054, -0.676178,
		35.797966, 39.292847, 16.621494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033531, 39.041950, 16.845465>,  <35.435482, 39.659683, 17.094820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033531, 39.041950, 16.845465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.413483, 38.948971, 16.761847>,  <35.641453, 38.893181, 16.711676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.413483, 38.948971, 16.761847>,  <35.033531, 39.041950, 16.845465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413483, 38.948971, 16.761847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108271, -0.871904, 0.477558,
		-0.293277, -0.430987, -0.853369,
		0.949877, -0.232452, -0.209046,
		35.698444, 38.879234, 16.699133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014923, 38.255665, 16.693913>,  <35.033531, 39.041950, 16.845465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014923, 38.255665, 16.693913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.386612, 38.366089, 16.792162>,  <35.609627, 38.432343, 16.851110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.386612, 38.366089, 16.792162>,  <35.014923, 38.255665, 16.693913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386612, 38.366089, 16.792162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092564, -0.817426, 0.568547,
		0.357732, -0.505573, -0.785127,
		0.929225, 0.276062, 0.245622,
		35.665379, 38.448906, 16.865849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385803, 37.683529, 16.629852>,  <35.014923, 38.255665, 16.693913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385803, 37.683529, 16.629852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.577099, 37.918613, 16.890892>,  <35.691875, 38.059666, 17.047516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.577099, 37.918613, 16.890892>,  <35.385803, 37.683529, 16.629852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577099, 37.918613, 16.890892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002129, -0.742306, 0.670058,
		0.878227, -0.321838, -0.353748,
		0.478239, 0.587710, 0.652598,
		35.720570, 38.094925, 17.086672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962151, 37.304874, 16.770823>,  <35.385803, 37.683529, 16.629852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962151, 37.304874, 16.770823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.957340, 37.570400, 17.069944>,  <35.954453, 37.729713, 17.249418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.957340, 37.570400, 17.069944>,  <35.962151, 37.304874, 16.770823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957340, 37.570400, 17.069944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341227, -0.700242, 0.627077,
		0.939904, 0.262712, -0.218089,
		-0.012025, 0.663810, 0.747805,
		35.953732, 37.769543, 17.294287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393166, 36.999985, 17.222797>,  <35.962151, 37.304874, 16.770823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393166, 36.999985, 17.222797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.222160, 37.280273, 17.451263>,  <36.119556, 37.448444, 17.588343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.222160, 37.280273, 17.451263>,  <36.393166, 36.999985, 17.222797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222160, 37.280273, 17.451263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196959, -0.544436, 0.815351,
		0.882293, 0.461068, 0.094740,
		-0.427512, 0.700718, 0.571164,
		36.093906, 37.490490, 17.622612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944351, 37.097591, 17.776655>,  <36.393166, 36.999985, 17.222797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944351, 37.097591, 17.776655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.594372, 37.236961, 17.911152>,  <36.384384, 37.320583, 17.991850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.594372, 37.236961, 17.911152>,  <36.944351, 37.097591, 17.776655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594372, 37.236961, 17.911152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197510, -0.377210, 0.904822,
		0.442098, 0.858086, 0.261223,
		-0.874951, 0.348426, 0.336244,
		36.331886, 37.341488, 18.012026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005993, 37.594002, 18.316202>,  <36.944351, 37.097591, 17.776655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005993, 37.594002, 18.316202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.638401, 37.454014, 18.388859>,  <36.417847, 37.370022, 18.432453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.638401, 37.454014, 18.388859>,  <37.005993, 37.594002, 18.316202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638401, 37.454014, 18.388859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253766, -0.172365, 0.951784,
		-0.301785, 0.920768, 0.247210,
		-0.918982, -0.349968, 0.181643,
		36.362705, 37.349022, 18.443352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854599, 37.865166, 19.049835>,  <37.005993, 37.594002, 18.316202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854599, 37.865166, 19.049835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.585804, 37.578045, 18.976963>,  <36.424526, 37.405773, 18.933241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.585804, 37.578045, 18.976963>,  <36.854599, 37.865166, 19.049835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585804, 37.578045, 18.976963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036511, -0.213589, 0.976241,
		-0.739661, 0.662674, 0.117322,
		-0.671988, -0.717804, -0.182178,
		36.384209, 37.362705, 18.922310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259266, 38.078815, 19.413404>,  <36.854599, 37.865166, 19.049835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259266, 38.078815, 19.413404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.256489, 37.681114, 19.370686>,  <36.254822, 37.442493, 19.345055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.256489, 37.681114, 19.370686>,  <36.259266, 38.078815, 19.413404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256489, 37.681114, 19.370686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190000, -0.103544, 0.976309,
		-0.981759, 0.027075, -0.188190,
		-0.006947, -0.994256, -0.106799,
		36.254406, 37.382835, 19.338646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808804, 37.815613, 19.882010>,  <36.259266, 38.078815, 19.413404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808804, 37.815613, 19.882010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.003704, 37.475239, 19.803520>,  <36.120644, 37.271015, 19.756426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.003704, 37.475239, 19.803520>,  <35.808804, 37.815613, 19.882010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003704, 37.475239, 19.803520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018300, -0.234602, 0.971919,
		-0.873071, -0.469976, -0.129882,
		0.487249, -0.850932, -0.196223,
		36.149879, 37.219959, 19.744654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522427, 37.295666, 20.313299>,  <35.808804, 37.815613, 19.882010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522427, 37.295666, 20.313299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.873024, 37.138844, 20.201548>,  <36.083382, 37.044750, 20.134497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.873024, 37.138844, 20.201548>,  <35.522427, 37.295666, 20.313299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873024, 37.138844, 20.201548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168766, -0.293267, 0.941017,
		-0.450864, -0.871944, -0.190881,
		0.876493, -0.392056, -0.279378,
		36.135971, 37.021229, 20.117735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924328, 36.740944, 20.133291>,  <35.522427, 37.295666, 20.313299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924328, 36.740944, 20.133291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.532074, 36.732845, 20.211210>,  <34.296722, 36.727985, 20.257961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.532074, 36.732845, 20.211210>,  <34.924328, 36.740944, 20.133291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532074, 36.732845, 20.211210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193685, 0.247625, -0.949299,
		-0.029021, -0.968644, -0.246751,
		-0.980634, -0.020242, 0.194799,
		34.237885, 36.726772, 20.269650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659500, 36.650753, 19.478033>,  <34.924328, 36.740944, 20.133291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659500, 36.650753, 19.478033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.340420, 36.769627, 19.687931>,  <34.148972, 36.840950, 19.813869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.340420, 36.769627, 19.687931>,  <34.659500, 36.650753, 19.478033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340420, 36.769627, 19.687931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388035, 0.413138, -0.823860,
		-0.461632, -0.860812, -0.214241,
		-0.797700, 0.297187, 0.524743,
		34.101109, 36.858784, 19.845354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145916, 36.445267, 19.001665>,  <34.659500, 36.650753, 19.478033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145916, 36.445267, 19.001665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.016697, 36.720612, 19.261448>,  <33.939163, 36.885818, 19.417318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.016697, 36.720612, 19.261448>,  <34.145916, 36.445267, 19.001665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016697, 36.720612, 19.261448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381017, 0.533575, -0.755065,
		-0.866293, -0.491378, 0.089907,
		-0.323050, 0.688364, 0.649456,
		33.919781, 36.927120, 19.456285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558842, 36.694687, 18.648787>,  <34.145916, 36.445267, 19.001665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558842, 36.694687, 18.648787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.625622, 36.953976, 18.945957>,  <33.665688, 37.109547, 19.124260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.625622, 36.953976, 18.945957>,  <33.558842, 36.694687, 18.648787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625622, 36.953976, 18.945957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517414, 0.699010, -0.493627,
		-0.839292, -0.301991, 0.452095,
		0.166949, 0.648217, 0.742928,
		33.675705, 37.148441, 19.168835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937939, 36.933315, 18.791473>,  <33.558842, 36.694687, 18.648787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937939, 36.933315, 18.791473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.202469, 37.204472, 18.919918>,  <33.361187, 37.367165, 18.996984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.202469, 37.204472, 18.919918>,  <32.937939, 36.933315, 18.791473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202469, 37.204472, 18.919918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352195, 0.658587, -0.664998,
		-0.662278, 0.326684, 0.674289,
		0.661321, 0.677895, 0.321111,
		33.400864, 37.407841, 19.016251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619473, 37.502613, 18.976164>,  <32.937939, 36.933315, 18.791473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619473, 37.502613, 18.976164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.983166, 37.655460, 18.910091>,  <33.201382, 37.747169, 18.870447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.983166, 37.655460, 18.910091>,  <32.619473, 37.502613, 18.976164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983166, 37.655460, 18.910091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398898, 0.686224, -0.608257,
		-0.119075, 0.618937, 0.776362,
		0.909231, 0.382118, -0.165181,
		33.255936, 37.770096, 18.860537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513588, 38.269512, 19.014507>,  <32.619473, 37.502613, 18.976164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513588, 38.269512, 19.014507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.852245, 38.211903, 18.809589>,  <33.055439, 38.177338, 18.686638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.852245, 38.211903, 18.809589>,  <32.513588, 38.269512, 19.014507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852245, 38.211903, 18.809589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299674, 0.666488, -0.682634,
		0.439755, 0.731471, 0.521119,
		0.846647, -0.144026, -0.512294,
		33.106239, 38.168694, 18.655901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317795, 38.952209, 19.373411>,  <32.513588, 38.269512, 19.014507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317795, 38.952209, 19.373411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.926289, 38.904293, 19.306883>,  <31.691383, 38.875546, 19.266966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.926289, 38.904293, 19.306883>,  <32.317795, 38.952209, 19.373411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926289, 38.904293, 19.306883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078609, -0.530013, 0.844338,
		-0.189292, 0.839486, 0.509344,
		-0.978769, -0.119788, -0.166319,
		31.632658, 38.868359, 19.256987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946926, 39.137016, 19.940655>,  <32.317795, 38.952209, 19.373411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946926, 39.137016, 19.940655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.708279, 38.879246, 19.749338>,  <31.565090, 38.724583, 19.634548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.708279, 38.879246, 19.749338>,  <31.946926, 39.137016, 19.940655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708279, 38.879246, 19.749338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111866, -0.523384, 0.844722,
		-0.794689, 0.557483, 0.240173,
		-0.596621, -0.644424, -0.478290,
		31.529293, 38.685917, 19.605850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484533, 38.900677, 20.481674>,  <31.946926, 39.137016, 19.940655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484533, 38.900677, 20.481674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.386860, 38.644032, 20.190826>,  <31.328257, 38.490044, 20.016317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.386860, 38.644032, 20.190826>,  <31.484533, 38.900677, 20.481674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386860, 38.644032, 20.190826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246427, -0.684149, 0.686450,
		-0.937896, 0.346802, 0.008947,
		-0.244184, -0.641614, -0.727122,
		31.313604, 38.451546, 19.972691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935963, 38.583679, 20.656569>,  <31.484533, 38.900677, 20.481674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935963, 38.583679, 20.656569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.068186, 38.315693, 20.390675>,  <31.147520, 38.154900, 20.231138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.068186, 38.315693, 20.390675>,  <30.935963, 38.583679, 20.656569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068186, 38.315693, 20.390675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342295, -0.741476, 0.577102,
		-0.879526, 0.036771, -0.474428,
		0.330556, -0.669970, -0.664734,
		31.167353, 38.114700, 20.191254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351706, 38.170132, 20.525578>,  <30.935963, 38.583679, 20.656569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351706, 38.170132, 20.525578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.678465, 37.958435, 20.433857>,  <30.874521, 37.831417, 20.378824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.678465, 37.958435, 20.433857>,  <30.351706, 38.170132, 20.525578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678465, 37.958435, 20.433857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264569, -0.697086, 0.666389,
		-0.512524, -0.483706, -0.709469,
		0.816898, -0.529244, -0.229300,
		30.923534, 37.799664, 20.365067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123846, 37.471012, 20.494596>,  <30.351706, 38.170132, 20.525578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123846, 37.471012, 20.494596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.520218, 37.456615, 20.546391>,  <30.758041, 37.447979, 20.577467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.520218, 37.456615, 20.546391>,  <30.123846, 37.471012, 20.494596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520218, 37.456615, 20.546391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111022, -0.762165, 0.637792,
		0.075734, -0.646382, -0.759247,
		0.990928, -0.035990, 0.129484,
		30.817497, 37.445820, 20.585236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303638, 36.737431, 20.558794>,  <30.123846, 37.471012, 20.494596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303638, 36.737431, 20.558794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.625952, 36.907055, 20.724146>,  <30.819340, 37.008831, 20.823357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.625952, 36.907055, 20.724146>,  <30.303638, 36.737431, 20.558794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625952, 36.907055, 20.724146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031062, -0.666805, 0.744584,
		0.591393, -0.612815, -0.524130,
		0.805785, 0.424061, 0.413379,
		30.867687, 37.034275, 20.848160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.803505, 40.898735, 18.107740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.188755, 41.000725, 18.142097>,  <34.419907, 41.061916, 18.162712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.188755, 41.000725, 18.142097>,  <33.803505, 40.898735, 18.107740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188755, 41.000725, 18.142097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134752, 0.180810, 0.974243,
		0.232871, -0.949894, 0.208501,
		0.963127, 0.254969, 0.085895,
		34.477692, 41.077217, 18.167866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994556, 40.606178, 18.722794>,  <33.803505, 40.898735, 18.107740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994556, 40.606178, 18.722794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.253517, 40.907845, 18.678783>,  <34.408894, 41.088844, 18.652378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.253517, 40.907845, 18.678783>,  <33.994556, 40.606178, 18.722794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253517, 40.907845, 18.678783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076998, 0.078903, 0.993904,
		0.758252, -0.651924, -0.006988,
		0.647399, 0.754167, -0.110025,
		34.447739, 41.134094, 18.645777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489162, 40.482430, 19.208576>,  <33.994556, 40.606178, 18.722794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489162, 40.482430, 19.208576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.521233, 40.874359, 19.135355>,  <34.540474, 41.109516, 19.091423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.521233, 40.874359, 19.135355>,  <34.489162, 40.482430, 19.208576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521233, 40.874359, 19.135355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225501, 0.161051, 0.960839,
		0.970938, -0.118317, -0.208039,
		0.080179, 0.979828, -0.183051,
		34.545288, 41.168308, 19.080441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165737, 40.692822, 19.520023>,  <34.489162, 40.482430, 19.208576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165737, 40.692822, 19.520023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.908695, 40.998451, 19.497211>,  <34.754471, 41.181828, 19.483524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.908695, 40.998451, 19.497211>,  <35.165737, 40.692822, 19.520023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908695, 40.998451, 19.497211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206654, 0.244515, 0.947368,
		0.737803, 0.596998, -0.315025,
		-0.642605, 0.764072, -0.057032,
		34.715912, 41.227673, 19.480103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600300, 41.281948, 19.745638>,  <35.165737, 40.692822, 19.520023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600300, 41.281948, 19.745638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.204323, 41.326828, 19.780098>,  <34.966736, 41.353756, 19.800774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.204323, 41.326828, 19.780098>,  <35.600300, 41.281948, 19.745638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204323, 41.326828, 19.780098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106736, 0.192797, 0.975416,
		0.092837, 0.974802, -0.202834,
		-0.989944, 0.112204, 0.086148,
		34.907341, 41.360489, 19.805943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641529, 41.493019, 20.343763>,  <35.600300, 41.281948, 19.745638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641529, 41.493019, 20.343763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.244873, 41.520130, 20.299837>,  <35.006882, 41.536396, 20.273481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.244873, 41.520130, 20.299837>,  <35.641529, 41.493019, 20.343763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244873, 41.520130, 20.299837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073874, 0.399565, 0.913723,
		0.105811, 0.914196, -0.391217,
		-0.991638, 0.067781, -0.109813,
		34.947380, 41.540466, 20.266893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314785, 42.227161, 20.541910>,  <35.641529, 41.493019, 20.343763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314785, 42.227161, 20.541910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.024529, 41.955261, 20.584568>,  <34.850372, 41.792122, 20.610163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.024529, 41.955261, 20.584568>,  <35.314785, 42.227161, 20.541910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024529, 41.955261, 20.584568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091498, 0.058282, 0.994098,
		-0.681958, 0.731120, 0.019904,
		-0.725645, -0.679755, 0.106643,
		34.806835, 41.751335, 20.616560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903625, 42.480034, 21.121065>,  <35.314785, 42.227161, 20.541910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903625, 42.480034, 21.121065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.751541, 42.110085, 21.124008>,  <34.660290, 41.888115, 21.125774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.751541, 42.110085, 21.124008>,  <34.903625, 42.480034, 21.121065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751541, 42.110085, 21.124008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256752, 0.113189, 0.959826,
		-0.888547, 0.363050, -0.280498,
		-0.380214, -0.924869, 0.007359,
		34.637478, 41.832623, 21.126217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288921, 42.464504, 21.588741>,  <34.903625, 42.480034, 21.121065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288921, 42.464504, 21.588741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.390270, 42.077984, 21.570543>,  <34.451080, 41.846073, 21.559626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.390270, 42.077984, 21.570543>,  <34.288921, 42.464504, 21.588741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390270, 42.077984, 21.570543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278279, -0.117847, 0.953243,
		-0.926479, -0.228864, -0.298760,
		0.253371, -0.966298, -0.045494,
		34.466282, 41.788094, 21.556894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687962, 42.025509, 21.883635>,  <34.288921, 42.464504, 21.588741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687962, 42.025509, 21.883635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.020161, 41.805229, 21.917116>,  <34.219479, 41.673061, 21.937204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.020161, 41.805229, 21.917116>,  <33.687962, 42.025509, 21.883635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020161, 41.805229, 21.917116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252863, -0.238831, 0.937561,
		-0.496323, -0.799806, -0.337600,
		0.830496, -0.550700, 0.083704,
		34.269310, 41.640018, 21.942228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436470, 41.268379, 21.952642>,  <33.687962, 42.025509, 21.883635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436470, 41.268379, 21.952642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.804333, 41.346371, 22.089008>,  <34.025051, 41.393166, 22.170828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.804333, 41.346371, 22.089008>,  <33.436470, 41.268379, 21.952642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804333, 41.346371, 22.089008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288228, -0.254551, 0.923108,
		0.266766, -0.947200, -0.177900,
		0.919652, 0.194978, 0.340915,
		34.080227, 41.404865, 22.191282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462170, 40.864330, 22.519104>,  <33.436470, 41.268379, 21.952642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462170, 40.864330, 22.519104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.786327, 41.092155, 22.574047>,  <33.980820, 41.228851, 22.607012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.786327, 41.092155, 22.574047>,  <33.462170, 40.864330, 22.519104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786327, 41.092155, 22.574047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207371, 0.059574, 0.976447,
		0.547962, -0.819788, 0.166388,
		0.810392, 0.569559, 0.137356,
		34.029446, 41.263023, 22.615253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366295, 40.166245, 22.379683>,  <33.462170, 40.864330, 22.519104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366295, 40.166245, 22.379683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.011673, 40.242970, 22.548077>,  <32.798901, 40.289005, 22.649113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.011673, 40.242970, 22.548077>,  <33.366295, 40.166245, 22.379683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011673, 40.242970, 22.548077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265071, 0.535194, -0.802063,
		-0.379151, -0.822665, -0.423636,
		-0.886556, 0.191809, 0.420984,
		32.745705, 40.300510, 22.674372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929642, 40.217632, 21.819593>,  <33.366295, 40.166245, 22.379683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929642, 40.217632, 21.819593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.689522, 40.363693, 22.104214>,  <32.545448, 40.451328, 22.274986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.689522, 40.363693, 22.104214>,  <32.929642, 40.217632, 21.819593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689522, 40.363693, 22.104214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449339, 0.582012, -0.677759,
		-0.661617, -0.726585, -0.185303,
		-0.600298, 0.365153, 0.711552,
		32.509434, 40.473240, 22.317678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251369, 40.166592, 21.574492>,  <32.929642, 40.217632, 21.819593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251369, 40.166592, 21.574492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.253674, 40.458061, 21.848427>,  <32.255058, 40.632942, 22.012789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.253674, 40.458061, 21.848427>,  <32.251369, 40.166592, 21.574492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253674, 40.458061, 21.848427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526614, 0.584403, -0.617375,
		-0.850085, -0.357087, 0.387097,
		0.005764, 0.728671, 0.684839,
		32.255402, 40.676662, 22.053879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540659, 40.350243, 21.694267>,  <32.251369, 40.166592, 21.574492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540659, 40.350243, 21.694267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.723164, 40.658665, 21.871941>,  <31.832666, 40.843719, 21.978544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.723164, 40.658665, 21.871941>,  <31.540659, 40.350243, 21.694267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723164, 40.658665, 21.871941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401447, 0.623846, -0.670565,
		-0.794144, 0.127637, 0.594175,
		0.456263, 0.771055, 0.444184,
		31.860043, 40.889980, 22.005196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078320, 40.883968, 21.627510>,  <31.540659, 40.350243, 21.694267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078320, 40.883968, 21.627510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.440397, 41.048298, 21.671043>,  <31.657644, 41.146896, 21.697163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.440397, 41.048298, 21.671043>,  <31.078320, 40.883968, 21.627510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440397, 41.048298, 21.671043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216389, 0.665917, -0.713954,
		-0.365785, 0.622717, 0.691683,
		0.905194, 0.410827, 0.108833,
		31.711956, 41.171547, 21.703693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877151, 41.652393, 21.574036>,  <31.078320, 40.883968, 21.627510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877151, 41.652393, 21.574036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.271910, 41.634529, 21.512016>,  <31.508764, 41.623810, 21.474804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.271910, 41.634529, 21.512016>,  <30.877151, 41.652393, 21.574036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271910, 41.634529, 21.512016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108378, 0.528398, -0.842051,
		0.119536, 0.847821, 0.516634,
		0.986897, -0.044664, -0.155048,
		31.567978, 41.621132, 21.465502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128876, 42.305233, 21.585762>,  <30.877151, 41.652393, 21.574036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128876, 42.305233, 21.585762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.421917, 42.106846, 21.399300>,  <31.597742, 41.987812, 21.287422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.421917, 42.106846, 21.399300>,  <31.128876, 42.305233, 21.585762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421917, 42.106846, 21.399300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035492, 0.656099, -0.753840,
		0.679729, 0.568811, 0.463057,
		0.732604, -0.495972, -0.466158,
		31.641699, 41.958054, 21.259453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639318, 42.878605, 21.369995>,  <31.128876, 42.305233, 21.585762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639318, 42.878605, 21.369995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.731647, 42.551479, 21.159128>,  <31.787045, 42.355206, 21.032608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.731647, 42.551479, 21.159128>,  <31.639318, 42.878605, 21.369995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731647, 42.551479, 21.159128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000181, 0.541762, -0.840532,
		0.972996, 0.194108, 0.124903,
		0.230821, -0.817812, -0.527168,
		31.800894, 42.306137, 21.000978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293385, 43.014545, 21.080471>,  <31.639318, 42.878605, 21.369995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293385, 43.014545, 21.080471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.112759, 42.744339, 20.847315>,  <32.004383, 42.582214, 20.707420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.112759, 42.744339, 20.847315>,  <32.293385, 43.014545, 21.080471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112759, 42.744339, 20.847315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154663, 0.584137, -0.796783,
		0.878730, -0.449952, -0.159299,
		-0.451566, -0.675520, -0.582890,
		31.977289, 42.541683, 20.672447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574352, 43.249763, 20.402132>,  <32.293385, 43.014545, 21.080471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574352, 43.249763, 20.402132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.291676, 42.982742, 20.308355>,  <32.122070, 42.822529, 20.252090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.291676, 42.982742, 20.308355>,  <32.574352, 43.249763, 20.402132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291676, 42.982742, 20.308355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238482, 0.536711, -0.809362,
		0.666115, -0.516062, -0.538490,
		-0.706694, -0.667549, -0.234440,
		32.079666, 42.782478, 20.238024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613201, 43.230083, 19.712822>,  <32.574352, 43.249763, 20.402132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613201, 43.230083, 19.712822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.252193, 43.103882, 19.830074>,  <32.035591, 43.028160, 19.900425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.252193, 43.103882, 19.830074>,  <32.613201, 43.230083, 19.712822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252193, 43.103882, 19.830074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422785, 0.519551, -0.742509,
		0.081968, -0.794056, -0.602293,
		-0.902516, -0.315502, 0.293129,
		31.981440, 43.009232, 19.918013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203335, 43.011135, 19.093971>,  <32.613201, 43.230083, 19.712822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203335, 43.011135, 19.093971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.925400, 43.081825, 19.372816>,  <31.758638, 43.124241, 19.540123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.925400, 43.081825, 19.372816>,  <32.203335, 43.011135, 19.093971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925400, 43.081825, 19.372816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546259, 0.500775, -0.671435,
		-0.467757, -0.847344, -0.251419,
		-0.694841, 0.176728, 0.697110,
		31.716948, 43.134842, 19.581949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562206, 42.860744, 18.790642>,  <32.203335, 43.011135, 19.093971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562206, 42.860744, 18.790642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.484449, 43.103149, 19.099176>,  <31.437796, 43.248592, 19.284298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.484449, 43.103149, 19.099176>,  <31.562206, 42.860744, 18.790642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484449, 43.103149, 19.099176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539427, 0.590722, -0.600055,
		-0.819287, -0.532724, 0.212070,
		-0.194390, 0.606014, 0.771337,
		31.426132, 43.284954, 19.330578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454214, 42.161102, 18.674210>,  <31.562206, 42.860744, 18.790642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454214, 42.161102, 18.674210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.357307, 41.945778, 18.351341>,  <31.299164, 41.816582, 18.157619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.357307, 41.945778, 18.351341>,  <31.454214, 42.161102, 18.674210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357307, 41.945778, 18.351341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143817, -0.842691, 0.518834,
		-0.959491, 0.009612, 0.281576,
		-0.242269, -0.538312, -0.807172,
		31.284626, 41.784283, 18.109190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913361, 41.690548, 18.846411>,  <31.454214, 42.161102, 18.674210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913361, 41.690548, 18.846411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.034285, 41.529327, 18.500889>,  <31.106840, 41.432594, 18.293575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.034285, 41.529327, 18.500889>,  <30.913361, 41.690548, 18.846411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034285, 41.529327, 18.500889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247010, -0.842127, 0.479383,
		-0.920649, -0.358291, -0.155026,
		0.302310, -0.403050, -0.863805,
		31.124977, 41.408413, 18.241747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447203, 41.048035, 18.677689>,  <30.913361, 41.690548, 18.846411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447203, 41.048035, 18.677689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.795628, 41.003212, 18.486401>,  <31.004683, 40.976318, 18.371628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.795628, 41.003212, 18.486401>,  <30.447203, 41.048035, 18.677689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795628, 41.003212, 18.486401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109013, -0.905238, 0.410684,
		-0.478925, -0.409863, -0.776301,
		0.871061, -0.112060, -0.478221,
		31.056946, 40.969593, 18.342934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327404, 40.346375, 18.416063>,  <30.447203, 41.048035, 18.677689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327404, 40.346375, 18.416063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.718237, 40.420551, 18.374266>,  <30.952736, 40.465057, 18.349186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.718237, 40.420551, 18.374266>,  <30.327404, 40.346375, 18.416063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718237, 40.420551, 18.374266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209474, -0.924926, 0.317226,
		-0.037822, -0.331845, -0.942576,
		0.977082, 0.185447, -0.104495,
		31.011362, 40.476185, 18.342916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600006, 39.847824, 17.809948>,  <30.327404, 40.346375, 18.416063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600006, 39.847824, 17.809948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.882927, 39.965736, 18.066956>,  <31.052679, 40.036484, 18.221161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.882927, 39.965736, 18.066956>,  <30.600006, 39.847824, 17.809948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882927, 39.965736, 18.066956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169067, -0.953070, 0.251145,
		0.686398, -0.069007, -0.723945,
		0.707301, 0.294781, 0.642518,
		31.095118, 40.054173, 18.259710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184717, 39.362438, 17.698914>,  <30.600006, 39.847824, 17.809948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184717, 39.362438, 17.698914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.264477, 39.526859, 18.054728>,  <31.312332, 39.625511, 18.268215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.264477, 39.526859, 18.054728>,  <31.184717, 39.362438, 17.698914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264477, 39.526859, 18.054728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382040, -0.868544, 0.315717,
		0.902378, 0.276884, -0.330226,
		0.199399, 0.411055, 0.889536,
		31.324297, 39.650177, 18.321589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957134, 39.244244, 18.025108>,  <31.184717, 39.362438, 17.698914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957134, 39.244244, 18.025108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.717905, 39.338047, 18.331654>,  <31.574368, 39.394329, 18.515581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.717905, 39.338047, 18.331654>,  <31.957134, 39.244244, 18.025108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717905, 39.338047, 18.331654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288038, -0.829443, 0.478600,
		0.747891, 0.506980, 0.428521,
		-0.598074, 0.234511, 0.766363,
		31.538483, 39.408401, 18.561562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281677, 38.920967, 18.627266>,  <31.957134, 39.244244, 18.025108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281677, 38.920967, 18.627266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.921574, 39.016754, 18.772699>,  <31.705511, 39.074226, 18.859961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.921574, 39.016754, 18.772699>,  <32.281677, 38.920967, 18.627266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921574, 39.016754, 18.772699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027093, -0.802704, 0.595762,
		0.434515, 0.546190, 0.716152,
		-0.900257, 0.239465, 0.363585,
		31.651497, 39.088593, 18.881775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895412, 38.947540, 18.841509>,  <32.281677, 38.920967, 18.627266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895412, 38.947540, 18.841509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.060101, 38.695133, 18.578512>,  <33.158913, 38.543690, 18.420713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.060101, 38.695133, 18.578512>,  <32.895412, 38.947540, 18.841509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060101, 38.695133, 18.578512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088300, 0.690464, -0.717957,
		0.907021, 0.353656, 0.228562,
		0.411724, -0.631020, -0.657493,
		33.183617, 38.505829, 18.381264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471382, 39.332859, 18.582571>,  <32.895412, 38.947540, 18.841509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471382, 39.332859, 18.582571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.407612, 39.030773, 18.328253>,  <33.369350, 38.849522, 18.175661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.407612, 39.030773, 18.328253>,  <33.471382, 39.332859, 18.582571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407612, 39.030773, 18.328253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103536, 0.627691, -0.771546,
		0.981765, -0.188835, -0.021881,
		-0.159429, -0.755212, -0.635797,
		33.359783, 38.804211, 18.137514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105286, 39.385387, 18.127026>,  <33.471382, 39.332859, 18.582571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105286, 39.385387, 18.127026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.804867, 39.190197, 17.949125>,  <33.624615, 39.073082, 17.842384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.804867, 39.190197, 17.949125>,  <34.105286, 39.385387, 18.127026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804867, 39.190197, 17.949125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168832, 0.509275, -0.843881,
		0.638299, -0.708881, -0.300103,
		-0.751046, -0.487981, -0.444751,
		33.579552, 39.043804, 17.815701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377396, 39.246784, 17.429440>,  <34.105286, 39.385387, 18.127026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377396, 39.246784, 17.429440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.978382, 39.231625, 17.405836>,  <33.738972, 39.222530, 17.391674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.978382, 39.231625, 17.405836>,  <34.377396, 39.246784, 17.429440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978382, 39.231625, 17.405836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030146, 0.527976, -0.848724,
		0.063318, -0.848413, -0.525534,
		-0.997538, -0.037897, -0.059007,
		33.679119, 39.220257, 17.388134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191780, 39.085960, 16.751238>,  <34.377396, 39.246784, 17.429440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191780, 39.085960, 16.751238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.850105, 39.246590, 16.883364>,  <33.645100, 39.342968, 16.962639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.850105, 39.246590, 16.883364>,  <34.191780, 39.085960, 16.751238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850105, 39.246590, 16.883364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013427, 0.652083, -0.758029,
		-0.519794, -0.643062, -0.562392,
		-0.854186, 0.401570, 0.330315,
		33.593849, 39.367062, 16.982458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784939, 39.131107, 16.169550>,  <34.191780, 39.085960, 16.751238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784939, 39.131107, 16.169550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.624374, 39.384933, 16.433731>,  <33.528034, 39.537228, 16.592239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.624374, 39.384933, 16.433731>,  <33.784939, 39.131107, 16.169550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624374, 39.384933, 16.433731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039925, 0.708292, -0.704789,
		-0.915027, -0.309279, -0.258982,
		-0.401412, 0.634561, 0.660455,
		33.503952, 39.575302, 16.631868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215977, 39.422768, 15.844897>,  <33.784939, 39.131107, 16.169550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215977, 39.422768, 15.844897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.342052, 39.695576, 16.108868>,  <33.417698, 39.859261, 16.267250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.342052, 39.695576, 16.108868>,  <33.215977, 39.422768, 15.844897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342052, 39.695576, 16.108868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015926, 0.699074, -0.714872,
		-0.948894, 0.214812, 0.231204,
		0.315192, 0.682020, 0.659926,
		33.436611, 39.900181, 16.306845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728233, 39.933388, 15.774619>,  <33.215977, 39.422768, 15.844897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728233, 39.933388, 15.774619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.037937, 40.113754, 15.952244>,  <33.223759, 40.221973, 16.058819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.037937, 40.113754, 15.952244>,  <32.728233, 39.933388, 15.774619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037937, 40.113754, 15.952244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005435, 0.696909, -0.717139,
		-0.632840, 0.557668, 0.537141,
		0.774264, 0.450914, 0.444063,
		33.270218, 40.249027, 16.085463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550507, 40.581547, 15.803363>,  <32.728233, 39.933388, 15.774619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550507, 40.581547, 15.803363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.947453, 40.606117, 15.846140>,  <33.185619, 40.620861, 15.871806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.947453, 40.606117, 15.846140>,  <32.550507, 40.581547, 15.803363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947453, 40.606117, 15.846140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019894, 0.776041, -0.630368,
		-0.121716, 0.627683, 0.768894,
		0.992366, 0.061430, 0.106944,
		33.245163, 40.624546, 15.878223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.440163, 32.959454, 29.967730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.788456, 33.155602, 29.982494>,  <34.997433, 33.273289, 29.991354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.788456, 33.155602, 29.982494>,  <34.440163, 32.959454, 29.967730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788456, 33.155602, 29.982494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211801, 0.441713, -0.871797,
		-0.443809, 0.751283, 0.488475,
		0.870732, 0.490370, 0.036914,
		35.049675, 33.302711, 29.993568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308830, 33.753868, 29.750608>,  <34.440163, 32.959454, 29.967730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308830, 33.753868, 29.750608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.686718, 33.656967, 29.662228>,  <34.913452, 33.598827, 29.609200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.686718, 33.656967, 29.662228>,  <34.308830, 33.753868, 29.750608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686718, 33.656967, 29.662228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181587, 0.174528, -0.967763,
		0.273004, 0.954387, 0.120891,
		0.944719, -0.242251, -0.220951,
		34.970135, 33.584293, 29.595942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540138, 34.341511, 29.338905>,  <34.308830, 33.753868, 29.750608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540138, 34.341511, 29.338905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792442, 34.040440, 29.263422>,  <34.943825, 33.859795, 29.218132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792442, 34.040440, 29.263422>,  <34.540138, 34.341511, 29.338905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792442, 34.040440, 29.263422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025832, 0.263424, -0.964334,
		0.775546, 0.603391, 0.185601,
		0.630762, -0.752680, -0.188710,
		34.981670, 33.814636, 29.206808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985458, 34.680420, 28.859472>,  <34.540138, 34.341511, 29.338905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985458, 34.680420, 28.859472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.014633, 34.284405, 28.811310>,  <35.032139, 34.046795, 28.782412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.014633, 34.284405, 28.811310>,  <34.985458, 34.680420, 28.859472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014633, 34.284405, 28.811310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241862, 0.134683, -0.960918,
		0.967565, 0.040966, 0.249277,
		0.072938, -0.990042, -0.120407,
		35.036514, 33.987392, 28.775188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517944, 34.538712, 28.407631>,  <34.985458, 34.680420, 28.859472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517944, 34.538712, 28.407631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.306892, 34.200096, 28.379416>,  <35.180260, 33.996925, 28.362486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.306892, 34.200096, 28.379416>,  <35.517944, 34.538712, 28.407631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306892, 34.200096, 28.379416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052439, 0.050419, -0.997351,
		0.847855, -0.529929, 0.017789,
		-0.527628, -0.846542, -0.070536,
		35.148605, 33.946133, 28.358255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883377, 34.103535, 27.948465>,  <35.517944, 34.538712, 28.407631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883377, 34.103535, 27.948465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.514229, 33.949493, 27.949245>,  <35.292740, 33.857067, 27.949715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.514229, 33.949493, 27.949245>,  <35.883377, 34.103535, 27.948465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514229, 33.949493, 27.949245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005187, 0.007362, -0.999959,
		0.385074, -0.922844, -0.008792,
		-0.922871, -0.385104, 0.001952,
		35.237366, 33.833961, 27.949831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931244, 33.585548, 27.317276>,  <35.883377, 34.103535, 27.948465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931244, 33.585548, 27.317276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.543919, 33.627941, 27.407730>,  <35.311523, 33.653378, 27.462002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.543919, 33.627941, 27.407730>,  <35.931244, 33.585548, 27.317276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543919, 33.627941, 27.407730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217257, 0.089072, -0.972042,
		-0.123164, -0.990370, -0.063223,
		-0.968313, 0.105985, 0.226136,
		35.253426, 33.659737, 27.475571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580296, 33.124844, 26.850903>,  <35.931244, 33.585548, 27.317276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580296, 33.124844, 26.850903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.303799, 33.384102, 26.978704>,  <35.137901, 33.539658, 27.055386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.303799, 33.384102, 26.978704>,  <35.580296, 33.124844, 26.850903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303799, 33.384102, 26.978704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309490, 0.134001, -0.941414,
		-0.652989, -0.749632, 0.107967,
		-0.691246, 0.648148, 0.319505,
		35.096424, 33.578545, 27.074556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821125, 32.971336, 26.593657>,  <35.580296, 33.124844, 26.850903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821125, 32.971336, 26.593657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.860825, 33.365208, 26.651007>,  <34.884644, 33.601532, 26.685417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.860825, 33.365208, 26.651007>,  <34.821125, 32.971336, 26.593657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860825, 33.365208, 26.651007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177760, 0.159313, -0.971092,
		-0.979056, 0.070891, 0.190848,
		0.099246, 0.984679, 0.143375,
		34.890598, 33.660610, 26.694019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577511, 33.208149, 25.985077>,  <34.821125, 32.971336, 26.593657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577511, 33.208149, 25.985077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.679569, 33.564568, 26.135241>,  <34.740803, 33.778419, 26.225340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.679569, 33.564568, 26.135241>,  <34.577511, 33.208149, 25.985077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679569, 33.564568, 26.135241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204162, 0.429153, -0.879855,
		-0.945103, 0.147844, 0.291414,
		0.255143, 0.891050, 0.375410,
		34.756111, 33.831882, 26.247864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012314, 33.640808, 25.980768>,  <34.577511, 33.208149, 25.985077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012314, 33.640808, 25.980768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.365337, 33.825745, 25.946529>,  <34.577152, 33.936707, 25.925985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.365337, 33.825745, 25.946529>,  <34.012314, 33.640808, 25.980768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365337, 33.825745, 25.946529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273332, 0.356338, -0.893484,
		-0.382594, 0.811949, 0.440863,
		0.882559, 0.462344, -0.085599,
		34.630104, 33.964447, 25.920849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837643, 34.290104, 25.878910>,  <34.012314, 33.640808, 25.980768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837643, 34.290104, 25.878910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.206032, 34.274471, 25.723841>,  <34.427063, 34.265091, 25.630800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.206032, 34.274471, 25.723841>,  <33.837643, 34.290104, 25.878910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206032, 34.274471, 25.723841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310579, 0.527174, -0.790967,
		0.235280, 0.848858, 0.473374,
		0.920969, -0.039079, -0.387671,
		34.482323, 34.262749, 25.607540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380440, 34.865120, 26.092684>,  <33.837643, 34.290104, 25.878910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380440, 34.865120, 26.092684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.054733, 34.640976, 26.032074>,  <32.859310, 34.506489, 25.995708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.054733, 34.640976, 26.032074>,  <33.380440, 34.865120, 26.092684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054733, 34.640976, 26.032074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119398, -0.093770, 0.988408,
		-0.568073, 0.822924, 0.009448,
		-0.814271, -0.560360, -0.151524,
		32.810452, 34.472866, 25.986616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100475, 35.107159, 26.658365>,  <33.380440, 34.865120, 26.092684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100475, 35.107159, 26.658365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.875404, 34.797951, 26.541176>,  <32.740360, 34.612427, 26.470861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.875404, 34.797951, 26.541176>,  <33.100475, 35.107159, 26.658365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875404, 34.797951, 26.541176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308865, -0.132150, 0.941880,
		-0.766809, 0.620465, -0.164401,
		-0.562678, -0.773020, -0.292973,
		32.706600, 34.566044, 26.453283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420319, 35.160778, 26.863348>,  <33.100475, 35.107159, 26.658365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420319, 35.160778, 26.863348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.490353, 34.769318, 26.820282>,  <32.532372, 34.534443, 26.794443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.490353, 34.769318, 26.820282>,  <32.420319, 35.160778, 26.863348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490353, 34.769318, 26.820282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413452, -0.172327, 0.894070,
		-0.893534, -0.112021, -0.434796,
		0.175082, -0.978649, -0.107665,
		32.542877, 34.475723, 26.787983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792601, 34.884262, 26.922525>,  <32.420319, 35.160778, 26.863348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792601, 34.884262, 26.922525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.050240, 34.593277, 27.017130>,  <32.204823, 34.418686, 27.073893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.050240, 34.593277, 27.017130>,  <31.792601, 34.884262, 26.922525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050240, 34.593277, 27.017130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375653, -0.031469, 0.926226,
		-0.666353, -0.685424, -0.293543,
		0.644095, -0.727464, 0.236512,
		32.243469, 34.375038, 27.088083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379694, 34.222206, 27.129728>,  <31.792601, 34.884262, 26.922525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379694, 34.222206, 27.129728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.723162, 34.222126, 27.334740>,  <31.929243, 34.222080, 27.457747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.723162, 34.222126, 27.334740>,  <31.379694, 34.222206, 27.129728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723162, 34.222126, 27.334740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512288, -0.030861, 0.858259,
		0.015654, -0.999524, -0.026597,
		0.858671, -0.000190, 0.512527,
		31.980762, 34.222065, 27.488499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129412, 34.295780, 27.784155>,  <31.379694, 34.222206, 27.129728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129412, 34.295780, 27.784155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.515110, 34.233601, 27.870008>,  <31.746529, 34.196293, 27.921520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.515110, 34.233601, 27.870008>,  <31.129412, 34.295780, 27.784155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515110, 34.233601, 27.870008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217320, -0.000306, 0.976100,
		-0.151671, -0.987843, -0.034078,
		0.964245, -0.155452, 0.214632,
		31.804384, 34.186966, 27.934399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307188, 33.579624, 28.173607>,  <31.129412, 34.295780, 27.784155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307188, 33.579624, 28.173607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.561886, 33.875462, 28.260841>,  <31.714705, 34.052963, 28.313183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.561886, 33.875462, 28.260841>,  <31.307188, 33.579624, 28.173607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561886, 33.875462, 28.260841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144423, -0.163434, 0.975926,
		0.757427, -0.652914, 0.002748,
		0.636747, 0.739590, 0.218086,
		31.752911, 34.097340, 28.326267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645277, 33.238060, 28.728977>,  <31.307188, 33.579624, 28.173607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645277, 33.238060, 28.728977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.779757, 33.614491, 28.743683>,  <31.860445, 33.840347, 28.752506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.779757, 33.614491, 28.743683>,  <31.645277, 33.238060, 28.728977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779757, 33.614491, 28.743683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116404, -0.080257, 0.989954,
		0.934569, -0.328543, -0.136527,
		0.336200, 0.941073, 0.036762,
		31.880617, 33.896812, 28.754711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256557, 33.184032, 28.922180>,  <31.645277, 33.238060, 28.728977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256557, 33.184032, 28.922180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.148235, 33.553432, 29.030853>,  <32.083241, 33.775074, 29.096058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.148235, 33.553432, 29.030853>,  <32.256557, 33.184032, 28.922180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148235, 33.553432, 29.030853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231837, -0.211352, 0.949517,
		0.934299, 0.320123, -0.156865,
		-0.270808, 0.923499, 0.271683,
		32.066994, 33.830482, 29.112358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792480, 33.490376, 29.368851>,  <32.256557, 33.184032, 28.922180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792480, 33.490376, 29.368851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.465633, 33.708038, 29.444963>,  <32.269524, 33.838634, 29.490631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.465633, 33.708038, 29.444963>,  <32.792480, 33.490376, 29.368851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465633, 33.708038, 29.444963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111318, -0.174927, 0.978268,
		0.565616, 0.820546, 0.082363,
		-0.817121, 0.544156, 0.190283,
		32.220497, 33.871284, 29.502048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019638, 33.776184, 29.947206>,  <32.792480, 33.490376, 29.368851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019638, 33.776184, 29.947206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.633617, 33.880489, 29.936764>,  <32.402004, 33.943073, 29.930498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.633617, 33.880489, 29.936764>,  <33.019638, 33.776184, 29.947206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633617, 33.880489, 29.936764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016230, 0.039967, 0.999069,
		0.261568, 0.964574, -0.034338,
		-0.965048, 0.260768, -0.026109,
		32.344101, 33.958721, 29.928930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959621, 34.274910, 30.347397>,  <33.019638, 33.776184, 29.947206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959621, 34.274910, 30.347397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.578327, 34.154106, 30.342949>,  <32.349548, 34.081623, 30.340281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.578327, 34.154106, 30.342949>,  <32.959621, 34.274910, 30.347397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578327, 34.154106, 30.342949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001957, -0.042959, 0.999075,
		-0.302207, 0.952337, 0.041541,
		-0.953240, -0.302009, -0.011119,
		32.292355, 34.063503, 30.339613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636944, 34.643154, 30.898041>,  <32.959621, 34.274910, 30.347397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636944, 34.643154, 30.898041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.420948, 34.312294, 30.835781>,  <32.291351, 34.113777, 30.798426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.420948, 34.312294, 30.835781>,  <32.636944, 34.643154, 30.898041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420948, 34.312294, 30.835781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078904, -0.134365, 0.987785,
		-0.837964, 0.545676, 0.007291,
		-0.539991, -0.827154, -0.155649,
		32.258949, 34.064148, 30.789087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992472, 34.635799, 31.395504>,  <32.636944, 34.643154, 30.898041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992472, 34.635799, 31.395504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.102180, 34.266731, 31.287096>,  <32.168007, 34.045292, 31.222052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.102180, 34.266731, 31.287096>,  <31.992472, 34.635799, 31.395504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102180, 34.266731, 31.287096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046084, -0.294115, 0.954658,
		-0.960547, -0.249347, -0.123188,
		0.274273, -0.922672, -0.271020,
		32.184464, 33.989929, 31.205790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313751, 35.191711, 31.807520>,  <31.992472, 34.635799, 31.395504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313751, 35.191711, 31.807520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.183647, 35.497437, 31.584797>,  <32.105583, 35.680870, 31.451164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.183647, 35.497437, 31.584797>,  <32.313751, 35.191711, 31.807520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183647, 35.497437, 31.584797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900993, -0.071722, 0.427865,
		0.287087, 0.640845, 0.711968,
		-0.325259, 0.764312, -0.556806,
		32.086071, 35.726730, 31.417755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339157, 35.817921, 32.179882>,  <32.313751, 35.191711, 31.807520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339157, 35.817921, 32.179882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.736816, 35.860886, 32.184345>,  <32.975414, 35.886665, 32.187023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.736816, 35.860886, 32.184345>,  <32.339157, 35.817921, 32.179882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736816, 35.860886, 32.184345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078354, 0.788560, -0.609946,
		-0.074317, 0.605504, 0.792365,
		0.994152, 0.107414, 0.011159,
		33.035061, 35.893108, 32.187695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534615, 36.430206, 32.499725>,  <32.339157, 35.817921, 32.179882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534615, 36.430206, 32.499725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.776245, 36.314503, 32.202694>,  <32.921223, 36.245079, 32.024475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.776245, 36.314503, 32.202694>,  <32.534615, 36.430206, 32.499725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776245, 36.314503, 32.202694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247024, 0.817939, -0.519572,
		0.757673, 0.497296, 0.422644,
		0.604079, -0.289263, -0.742574,
		32.957470, 36.227722, 31.979921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701149, 37.055885, 32.245243>,  <32.534615, 36.430206, 32.499725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701149, 37.055885, 32.245243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.834766, 36.796494, 31.971632>,  <32.914936, 36.640858, 31.807467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.834766, 36.796494, 31.971632>,  <32.701149, 37.055885, 32.245243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834766, 36.796494, 31.971632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366859, 0.579034, -0.728103,
		0.868232, 0.494161, -0.044476,
		0.334047, -0.648479, -0.684023,
		32.934978, 36.601952, 31.766424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963730, 37.444901, 31.796701>,  <32.701149, 37.055885, 32.245243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963730, 37.444901, 31.796701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.924740, 37.106705, 31.586693>,  <32.901348, 36.903786, 31.460688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.924740, 37.106705, 31.586693>,  <32.963730, 37.444901, 31.796701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924740, 37.106705, 31.586693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400382, 0.516273, -0.757071,
		0.911150, 0.136416, -0.388840,
		-0.097471, -0.845490, -0.525021,
		32.895500, 36.853058, 31.429186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209026, 37.570892, 31.218868>,  <32.963730, 37.444901, 31.796701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209026, 37.570892, 31.218868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.989433, 37.246361, 31.138506>,  <32.857677, 37.051640, 31.090288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.989433, 37.246361, 31.138506>,  <33.209026, 37.570892, 31.218868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989433, 37.246361, 31.138506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346079, 0.439437, -0.828930,
		0.760823, -0.385535, -0.522026,
		-0.548979, -0.811331, -0.200908,
		32.824738, 37.002960, 31.078234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372475, 37.352859, 30.533419>,  <33.209026, 37.570892, 31.218868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372475, 37.352859, 30.533419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.017345, 37.178333, 30.591934>,  <32.804268, 37.073616, 30.627045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.017345, 37.178333, 30.591934>,  <33.372475, 37.352859, 30.533419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017345, 37.178333, 30.591934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308678, 0.328859, -0.892507,
		0.341327, -0.837534, -0.426653,
		-0.887814, -0.436336, 0.146280,
		32.750999, 37.047440, 30.635820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275047, 36.889347, 30.056423>,  <33.372475, 37.352859, 30.533419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275047, 36.889347, 30.056423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.909130, 36.995991, 30.177795>,  <32.689579, 37.059978, 30.250618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.909130, 36.995991, 30.177795>,  <33.275047, 36.889347, 30.056423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909130, 36.995991, 30.177795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223756, 0.290923, -0.930214,
		-0.336282, -0.918848, -0.206478,
		-0.914794, 0.266614, 0.303429,
		32.634693, 37.075974, 30.268824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946877, 36.674965, 29.563950>,  <33.275047, 36.889347, 30.056423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946877, 36.674965, 29.563950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.674625, 36.905739, 29.744566>,  <32.511272, 37.044201, 29.852936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.674625, 36.905739, 29.744566>,  <32.946877, 36.674965, 29.563950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674625, 36.905739, 29.744566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409303, 0.211733, -0.887491,
		-0.607627, -0.788873, 0.092027,
		-0.680632, 0.576930, 0.451543,
		32.470436, 37.078819, 29.880030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332912, 36.391212, 29.345900>,  <32.946877, 36.674965, 29.563950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332912, 36.391212, 29.345900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.258732, 36.767479, 29.459572>,  <32.214222, 36.993237, 29.527775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.258732, 36.767479, 29.459572>,  <32.332912, 36.391212, 29.345900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258732, 36.767479, 29.459572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268486, 0.229689, -0.935499,
		-0.945264, -0.249787, 0.209959,
		-0.185450, 0.940664, 0.284181,
		32.203098, 37.049679, 29.544827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771921, 36.649323, 28.972363>,  <32.332912, 36.391212, 29.345900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771921, 36.649323, 28.972363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.967062, 36.979237, 29.086720>,  <32.084145, 37.177185, 29.155334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.967062, 36.979237, 29.086720>,  <31.771921, 36.649323, 28.972363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967062, 36.979237, 29.086720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138782, 0.396628, -0.907428,
		-0.861825, 0.403012, 0.307960,
		0.487850, 0.824783, 0.285893,
		32.113419, 37.226673, 29.172487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365019, 37.252342, 28.722652>,  <31.771921, 36.649323, 28.972363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365019, 37.252342, 28.722652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.734068, 37.394466, 28.782679>,  <31.955498, 37.479740, 28.818695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.734068, 37.394466, 28.782679>,  <31.365019, 37.252342, 28.722652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734068, 37.394466, 28.782679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062697, 0.522058, -0.850603,
		-0.380571, 0.775378, 0.503940,
		0.922624, 0.355310, 0.150067,
		32.010857, 37.501060, 28.827698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329639, 37.905418, 28.544983>,  <31.365019, 37.252342, 28.722652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329639, 37.905418, 28.544983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.725582, 37.848965, 28.551472>,  <31.963148, 37.815094, 28.555365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.725582, 37.848965, 28.551472>,  <31.329639, 37.905418, 28.544983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725582, 37.848965, 28.551472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091905, 0.549114, -0.830679,
		0.108327, 0.823745, 0.556515,
		0.989858, -0.141131, 0.016222,
		32.022541, 37.806625, 28.556339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703848, 38.514709, 28.471622>,  <31.329639, 37.905418, 28.544983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703848, 38.514709, 28.471622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.944458, 38.224960, 28.336895>,  <32.088825, 38.051109, 28.256060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.944458, 38.224960, 28.336895>,  <31.703848, 38.514709, 28.471622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944458, 38.224960, 28.336895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085703, 0.477709, -0.874328,
		0.794243, 0.497064, 0.349436,
		0.601525, -0.724377, -0.336817,
		32.124916, 38.007648, 28.235849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182220, 38.854069, 28.191109>,  <31.703848, 38.514709, 28.471622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182220, 38.854069, 28.191109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.239079, 38.502377, 28.009233>,  <32.273193, 38.291359, 27.900108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.239079, 38.502377, 28.009233>,  <32.182220, 38.854069, 28.191109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239079, 38.502377, 28.009233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180644, 0.474682, -0.861420,
		0.973223, 0.040306, 0.226300,
		0.142142, -0.879234, -0.454690,
		32.281719, 38.238605, 27.872826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683392, 38.995358, 27.666512>,  <32.182220, 38.854069, 28.191109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683392, 38.995358, 27.666512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.543247, 38.638733, 27.551714>,  <32.459160, 38.424759, 27.482836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.543247, 38.638733, 27.551714>,  <32.683392, 38.995358, 27.666512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543247, 38.638733, 27.551714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285847, 0.190014, -0.939248,
		0.891931, -0.411109, 0.188277,
		-0.350358, -0.891563, -0.286994,
		32.438141, 38.371265, 27.465616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182327, 38.738243, 27.329252>,  <32.683392, 38.995358, 27.666512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182327, 38.738243, 27.329252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.892521, 38.503700, 27.184330>,  <32.718636, 38.362976, 27.097378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.892521, 38.503700, 27.184330>,  <33.182327, 38.738243, 27.329252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892521, 38.503700, 27.184330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393963, 0.079028, -0.915723,
		0.565571, -0.806190, 0.173745,
		-0.724516, -0.586355, -0.362305,
		32.675167, 38.327793, 27.075638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510189, 38.161469, 26.854897>,  <33.182327, 38.738243, 27.329252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510189, 38.161469, 26.854897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129993, 38.228378, 26.750143>,  <32.901875, 38.268524, 26.687292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129993, 38.228378, 26.750143>,  <33.510189, 38.161469, 26.854897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129993, 38.228378, 26.750143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300061, 0.274979, -0.913428,
		-0.080778, -0.946788, -0.311557,
		-0.950494, 0.167271, -0.261882,
		32.844845, 38.278561, 26.671577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396610, 37.804539, 26.274033>,  <33.510189, 38.161469, 26.854897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396610, 37.804539, 26.274033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.131161, 38.103676, 26.266672>,  <32.971889, 38.283157, 26.262257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.131161, 38.103676, 26.266672>,  <33.396610, 37.804539, 26.274033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131161, 38.103676, 26.266672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194918, 0.149118, -0.969418,
		-0.722226, -0.646915, -0.244726,
		-0.663625, 0.747840, -0.018399,
		32.932072, 38.328026, 26.261152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019123, 37.676464, 25.649061>,  <33.396610, 37.804539, 26.274033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019123, 37.676464, 25.649061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.888493, 38.045746, 25.730097>,  <32.810116, 38.267315, 25.778719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.888493, 38.045746, 25.730097>,  <33.019123, 37.676464, 25.649061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888493, 38.045746, 25.730097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114248, 0.251328, -0.961136,
		-0.938241, -0.290738, -0.187551,
		-0.326575, 0.923204, 0.202590,
		32.790520, 38.322708, 25.790874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580723, 37.772942, 25.124628>,  <33.019123, 37.676464, 25.649061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580723, 37.772942, 25.124628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.620026, 38.141857, 25.274147>,  <32.643608, 38.363209, 25.363859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.620026, 38.141857, 25.274147>,  <32.580723, 37.772942, 25.124628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620026, 38.141857, 25.274147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028459, 0.378065, -0.925342,
		-0.994754, 0.080280, 0.063394,
		0.098253, 0.922292, 0.373797,
		32.649502, 38.418545, 25.386286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093803, 38.248642, 24.778904>,  <32.580723, 37.772942, 25.124628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093803, 38.248642, 24.778904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.378143, 38.493855, 24.916830>,  <32.548748, 38.640980, 24.999586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.378143, 38.493855, 24.916830>,  <32.093803, 38.248642, 24.778904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378143, 38.493855, 24.916830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036327, 0.521592, -0.852421,
		-0.702409, 0.593414, 0.393041,
		0.710846, 0.613027, 0.344814,
		32.591396, 38.677761, 25.020275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760977, 38.862934, 24.822348>,  <32.093803, 38.248642, 24.778904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760977, 38.862934, 24.822348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.156395, 38.906242, 24.780287>,  <32.393646, 38.932228, 24.755051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.156395, 38.906242, 24.780287>,  <31.760977, 38.862934, 24.822348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156395, 38.906242, 24.780287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149274, 0.598486, -0.787103,
		-0.022285, 0.793783, 0.607792,
		0.988545, 0.108269, -0.105154,
		32.452957, 38.938725, 24.748741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732769, 39.441677, 24.466818>,  <31.760977, 38.862934, 24.822348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732769, 39.441677, 24.466818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.113922, 39.330429, 24.418381>,  <32.342613, 39.263680, 24.389318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.113922, 39.330429, 24.418381>,  <31.732769, 39.441677, 24.466818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113922, 39.330429, 24.418381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090183, 0.640889, -0.762318,
		0.289628, 0.715478, 0.635773,
		0.952881, -0.278124, -0.121095,
		32.399788, 39.246990, 24.382051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159412, 40.063690, 24.434879>,  <31.732769, 39.441677, 24.466818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159412, 40.063690, 24.434879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.337814, 39.758961, 24.246960>,  <32.444855, 39.576122, 24.134209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.337814, 39.758961, 24.246960>,  <32.159412, 40.063690, 24.434879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337814, 39.758961, 24.246960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125056, 0.572789, -0.810107,
		0.886251, 0.302560, 0.350736,
		0.446004, -0.761821, -0.469798,
		32.471615, 39.530415, 24.106020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707085, 40.446594, 24.103662>,  <32.159412, 40.063690, 24.434879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707085, 40.446594, 24.103662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.653976, 40.091373, 23.927601>,  <32.622112, 39.878242, 23.821964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.653976, 40.091373, 23.927601>,  <32.707085, 40.446594, 24.103662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653976, 40.091373, 23.927601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210807, 0.408626, -0.888024,
		0.968469, -0.210691, 0.132954,
		-0.132770, -0.888051, -0.440156,
		32.614147, 39.824959, 23.795553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255199, 40.355736, 23.735525>,  <32.707085, 40.446594, 24.103662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255199, 40.355736, 23.735525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.962879, 40.126564, 23.587101>,  <32.787487, 39.989059, 23.498047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.962879, 40.126564, 23.587101>,  <33.255199, 40.355736, 23.735525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962879, 40.126564, 23.587101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070132, 0.477702, -0.875718,
		0.678982, -0.665995, -0.308923,
		-0.730798, -0.572932, -0.371059,
		32.743641, 39.954685, 23.475784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485695, 40.404339, 23.072886>,  <33.255199, 40.355736, 23.735525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485695, 40.404339, 23.072886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.111050, 40.264305, 23.078386>,  <32.886261, 40.180286, 23.081686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.111050, 40.264305, 23.078386>,  <33.485695, 40.404339, 23.072886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111050, 40.264305, 23.078386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228707, 0.581204, -0.780958,
		0.265409, -0.734604, -0.624432,
		-0.936617, -0.350085, 0.013752,
		32.830063, 40.159279, 23.082512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275768, 40.419697, 23.024559>,  <33.485695, 40.404339, 23.072886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275768, 40.419697, 23.024559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.302212, 40.817841, 23.052517>,  <34.318077, 41.056728, 23.069292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.302212, 40.817841, 23.052517>,  <34.275768, 40.419697, 23.024559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302212, 40.817841, 23.052517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064887, -0.074189, 0.995131,
		0.995701, -0.061248, -0.069490,
		0.066105, 0.995362, 0.069896,
		34.322044, 41.116447, 23.073486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801136, 40.524895, 23.552052>,  <34.275768, 40.419697, 23.024559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801136, 40.524895, 23.552052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.589310, 40.864052, 23.541920>,  <34.462215, 41.067547, 23.535841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.589310, 40.864052, 23.541920>,  <34.801136, 40.524895, 23.552052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589310, 40.864052, 23.541920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150066, 0.123034, 0.980991,
		0.834889, 0.515699, -0.192394,
		-0.529567, 0.847890, -0.025331,
		34.430439, 41.118420, 23.534321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180222, 40.905136, 23.930473>,  <34.801136, 40.524895, 23.552052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180222, 40.905136, 23.930473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.844990, 41.122772, 23.914509>,  <34.643852, 41.253353, 23.904930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.844990, 41.122772, 23.914509>,  <35.180222, 40.905136, 23.930473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844990, 41.122772, 23.914509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082500, 0.198711, 0.976579,
		0.539278, 0.815156, -0.211423,
		-0.838076, 0.544091, -0.039910,
		34.593567, 41.285999, 23.902536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282684, 41.503025, 24.357447>,  <35.180222, 40.905136, 23.930473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282684, 41.503025, 24.357447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.883583, 41.478756, 24.368809>,  <34.644123, 41.464195, 24.375626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.883583, 41.478756, 24.368809>,  <35.282684, 41.503025, 24.357447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883583, 41.478756, 24.368809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006641, 0.332343, 0.943135,
		-0.066664, 0.941205, -0.331194,
		-0.997753, -0.060674, 0.028406,
		34.584255, 41.460552, 24.377331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083672, 42.060242, 24.771355>,  <35.282684, 41.503025, 24.357447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083672, 42.060242, 24.771355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.789963, 41.788956, 24.783155>,  <34.613739, 41.626183, 24.790236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.789963, 41.788956, 24.783155>,  <35.083672, 42.060242, 24.771355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789963, 41.788956, 24.783155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028335, 0.012800, 0.999517,
		-0.678269, 0.734749, 0.009819,
		-0.734268, -0.678219, 0.029501,
		34.569683, 41.585491, 24.792006>
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
