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
	<24.176271, 34.685108, 35.061993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.313786, 34.976696, 34.825211>,  <24.396294, 35.151649, 34.683144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.313786, 34.976696, 34.825211>,  <24.176271, 34.685108, 35.061993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.313786, 34.976696, 34.825211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240203, 0.677670, 0.695030,
		0.907807, -0.096753, 0.408075,
		0.343786, 0.728974, -0.591953,
		24.416922, 35.195389, 34.647625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.719376, 34.509815, 35.545658>,  <24.176271, 34.685108, 35.061993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.719376, 34.509815, 35.545658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.324883, 34.463398, 35.592773>,  <24.088186, 34.435547, 35.621044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.324883, 34.463398, 35.592773>,  <24.719376, 34.509815, 35.545658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.324883, 34.463398, 35.592773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123476, -0.043038, 0.991414,
		-0.109979, 0.992311, 0.056774,
		-0.986234, -0.116045, 0.117793,
		24.029013, 34.428585, 35.628113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.863211, 34.996983, 35.003368>,  <24.719376, 34.509815, 35.545658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.863211, 34.996983, 35.003368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099859, 34.864925, 35.297577>,  <25.241848, 34.785690, 35.474102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099859, 34.864925, 35.297577>,  <24.863211, 34.996983, 35.003368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.099859, 34.864925, 35.297577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350032, 0.927024, 0.134550,
		-0.726265, 0.177852, 0.664010,
		0.591623, -0.330143, 0.735519,
		25.277346, 34.765881, 35.518234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.606770, 35.260479, 35.690411>,  <24.863211, 34.996983, 35.003368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.606770, 35.260479, 35.690411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.005157, 35.225468, 35.682610>,  <25.244190, 35.204460, 35.677929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.005157, 35.225468, 35.682610>,  <24.606770, 35.260479, 35.690411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.005157, 35.225468, 35.682610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089532, 0.982939, 0.160671,
		0.005104, -0.161769, 0.986815,
		0.995971, -0.087532, -0.019500,
		25.303949, 35.199207, 35.676758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.929794, 35.494637, 36.409336>,  <24.606770, 35.260479, 35.690411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.929794, 35.494637, 36.409336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178032, 35.553730, 36.101299>,  <25.326975, 35.589188, 35.916477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178032, 35.553730, 36.101299>,  <24.929794, 35.494637, 36.409336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.178032, 35.553730, 36.101299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123694, 0.951350, 0.282194,
		0.774314, -0.270383, 0.572128,
		0.620594, 0.147738, -0.770089,
		25.364210, 35.598053, 35.870274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.116053, 36.158035, 36.146343>,  <24.929794, 35.494637, 36.409336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.116053, 36.158035, 36.146343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502172, 36.253487, 36.103912>,  <25.733845, 36.310757, 36.078453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502172, 36.253487, 36.103912>,  <25.116053, 36.158035, 36.146343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.502172, 36.253487, 36.103912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199020, 0.409233, -0.890460,
		-0.169078, 0.880673, 0.442525,
		0.965300, 0.238628, -0.106079,
		25.791763, 36.325073, 36.072090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.291166, 36.883389, 36.119698>,  <25.116053, 36.158035, 36.146343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.291166, 36.883389, 36.119698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.539423, 36.662094, 35.897442>,  <25.688377, 36.529316, 35.764088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.539423, 36.662094, 35.897442>,  <25.291166, 36.883389, 36.119698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.539423, 36.662094, 35.897442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272221, 0.512527, -0.814378,
		0.735325, 0.656692, 0.167492,
		0.620640, -0.553237, -0.555639,
		25.725615, 36.496124, 35.730751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.245344, 37.279659, 35.574219>,  <25.291166, 36.883389, 36.119698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.245344, 37.279659, 35.574219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462042, 36.985046, 35.412216>,  <25.592060, 36.808277, 35.315014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462042, 36.985046, 35.412216>,  <25.245344, 37.279659, 35.574219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.462042, 36.985046, 35.412216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152676, 0.387599, -0.909097,
		0.826560, 0.554334, 0.097529,
		0.541745, -0.736533, -0.405008,
		25.624565, 36.764088, 35.290714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.778593, 37.562950, 35.237240>,  <25.245344, 37.279659, 35.574219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.778593, 37.562950, 35.237240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714687, 37.205055, 35.070423>,  <25.676344, 36.990318, 34.970333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714687, 37.205055, 35.070423>,  <25.778593, 37.562950, 35.237240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.714687, 37.205055, 35.070423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125883, 0.437486, -0.890370,
		0.979096, -0.089750, -0.182526,
		-0.159763, -0.894735, -0.417043,
		25.666758, 36.936634, 34.945309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.120457, 37.669506, 34.659210>,  <25.778593, 37.562950, 35.237240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.120457, 37.669506, 34.659210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868029, 37.370232, 34.577263>,  <25.716572, 37.190666, 34.528095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868029, 37.370232, 34.577263>,  <26.120457, 37.669506, 34.659210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.868029, 37.370232, 34.577263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134034, 0.365300, -0.921190,
		0.764060, -0.553874, -0.330812,
		-0.631068, -0.748185, -0.204873,
		25.678709, 37.145775, 34.515800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.287600, 37.365868, 33.981186>,  <26.120457, 37.669506, 34.659210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.287600, 37.365868, 33.981186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.903378, 37.265026, 34.028130>,  <25.672844, 37.204521, 34.056293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.903378, 37.265026, 34.028130>,  <26.287600, 37.365868, 33.981186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.903378, 37.265026, 34.028130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174238, 0.216727, -0.960557,
		0.216727, -0.943118, -0.252105,
		0.960557, 0.252105, -0.117357,
		25.615210, 37.189396, 34.063335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.234917, 36.970905, 33.384323>,  <26.287600, 37.365868, 33.981186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.234917, 36.970905, 33.384323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872076, 37.096756, 33.496162>,  <25.654371, 37.172268, 33.563267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872076, 37.096756, 33.496162>,  <26.234917, 36.970905, 33.384323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872076, 37.096756, 33.496162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236648, 0.168120, -0.956940,
		-0.348089, -0.934207, -0.078045,
		-0.907101, 0.314631, 0.279599,
		25.599945, 37.191147, 33.580044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.666109, 36.539425, 32.906342>,  <26.234917, 36.970905, 33.384323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.666109, 36.539425, 32.906342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469570, 36.856907, 33.049793>,  <25.351646, 37.047398, 33.135864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469570, 36.856907, 33.049793>,  <25.666109, 36.539425, 32.906342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.469570, 36.856907, 33.049793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367788, 0.184165, -0.911491,
		-0.789501, -0.579755, 0.201427,
		-0.491346, 0.793705, 0.358625,
		25.322166, 37.095016, 33.157379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.068619, 36.430672, 32.579788>,  <25.666109, 36.539425, 32.906342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.068619, 36.430672, 32.579788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.076794, 36.810722, 32.704266>,  <25.081699, 37.038754, 32.778950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.076794, 36.810722, 32.704266>,  <25.068619, 36.430672, 32.579788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.076794, 36.810722, 32.704266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453574, 0.286192, -0.844017,
		-0.890984, -0.123897, 0.436803,
		0.020438, 0.950128, 0.311189,
		25.082926, 37.095760, 32.797623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.506512, 36.702843, 32.459564>,  <25.068619, 36.430672, 32.579788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.506512, 36.702843, 32.459564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715117, 37.043888, 32.472744>,  <24.840279, 37.248516, 32.480652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715117, 37.043888, 32.472744>,  <24.506512, 36.702843, 32.459564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.715117, 37.043888, 32.472744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425288, 0.293223, -0.856242,
		-0.739701, 0.432526, 0.515523,
		0.521510, 0.852609, 0.032949,
		24.871569, 37.299671, 32.482628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.042374, 37.314831, 32.250050>,  <24.506512, 36.702843, 32.459564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.042374, 37.314831, 32.250050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.431881, 37.381828, 32.188438>,  <24.665585, 37.422028, 32.151470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.431881, 37.381828, 32.188438>,  <24.042374, 37.314831, 32.250050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.431881, 37.381828, 32.188438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221637, 0.544851, -0.808712,
		-0.051532, 0.821634, 0.567681,
		0.973767, 0.167493, -0.154027,
		24.724010, 37.432076, 32.142231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.087387, 38.068016, 32.041759>,  <24.042374, 37.314831, 32.250050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.087387, 38.068016, 32.041759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.425611, 37.890709, 31.922735>,  <24.628546, 37.784325, 31.851322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.425611, 37.890709, 31.922735>,  <24.087387, 38.068016, 32.041759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.425611, 37.890709, 31.922735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009772, 0.544402, -0.838767,
		0.533792, 0.712135, 0.455993,
		0.845559, -0.443271, -0.297557,
		24.679279, 37.757729, 31.833467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.416931, 38.609447, 31.838541>,  <24.087387, 38.068016, 32.041759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.416931, 38.609447, 31.838541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.598112, 38.299019, 31.663021>,  <24.706821, 38.112762, 31.557709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.598112, 38.299019, 31.663021>,  <24.416931, 38.609447, 31.838541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.598112, 38.299019, 31.663021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129984, 0.544414, -0.828684,
		0.882007, 0.318319, 0.347472,
		0.452954, -0.776071, -0.438801,
		24.733999, 38.066196, 31.531382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.996634, 38.927647, 31.599358>,  <24.416931, 38.609447, 31.838541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.996634, 38.927647, 31.599358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.947384, 38.582664, 31.402987>,  <24.917833, 38.375675, 31.285164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.947384, 38.582664, 31.402987>,  <24.996634, 38.927647, 31.599358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.947384, 38.582664, 31.402987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003110, 0.494353, -0.869256,
		0.992386, -0.108554, -0.058185,
		-0.123125, -0.862457, -0.490927,
		24.910446, 38.323929, 31.255709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.557423, 38.897667, 31.072039>,  <24.996634, 38.927647, 31.599358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.557423, 38.897667, 31.072039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.263525, 38.656555, 30.947586>,  <25.087187, 38.511887, 30.872915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.263525, 38.656555, 30.947586>,  <25.557423, 38.897667, 31.072039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.263525, 38.656555, 30.947586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001473, 0.460080, -0.887876,
		0.678341, -0.651905, -0.338929,
		-0.734745, -0.602782, -0.311131,
		25.043100, 38.475719, 30.854246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.774521, 38.600906, 30.453775>,  <25.557423, 38.897667, 31.072039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.774521, 38.600906, 30.453775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.381611, 38.534561, 30.418837>,  <25.145864, 38.494755, 30.397873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.381611, 38.534561, 30.418837>,  <25.774521, 38.600906, 30.453775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.381611, 38.534561, 30.418837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020286, 0.369179, -0.929137,
		0.186354, -0.914438, -0.359270,
		-0.982273, -0.165860, -0.087348,
		25.086929, 38.484802, 30.392632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.692236, 38.212036, 29.835613>,  <25.774521, 38.600906, 30.453775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.692236, 38.212036, 29.835613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333261, 38.370037, 29.914179>,  <25.117876, 38.464840, 29.961319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333261, 38.370037, 29.914179>,  <25.692236, 38.212036, 29.835613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.333261, 38.370037, 29.914179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103917, 0.243418, -0.964339,
		-0.428732, -0.885842, -0.177404,
		-0.897435, 0.395008, 0.196415,
		25.064032, 38.488541, 29.973103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.248003, 37.984444, 29.381275>,  <25.692236, 38.212036, 29.835613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.248003, 37.984444, 29.381275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.052120, 38.315426, 29.491190>,  <24.934591, 38.514015, 29.557138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.052120, 38.315426, 29.491190>,  <25.248003, 37.984444, 29.381275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.052120, 38.315426, 29.491190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102721, 0.258214, -0.960611,
		-0.865816, -0.498643, -0.041452,
		-0.489705, 0.827454, 0.274787,
		24.905209, 38.563663, 29.573626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.807060, 38.039200, 28.808519>,  <25.248003, 37.984444, 29.381275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.807060, 38.039200, 28.808519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.828802, 38.385948, 29.006746>,  <24.841846, 38.593998, 29.125683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.828802, 38.385948, 29.006746>,  <24.807060, 38.039200, 28.808519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.828802, 38.385948, 29.006746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082029, 0.490746, -0.867433,
		-0.995147, 0.087799, -0.044434,
		0.054354, 0.866868, 0.495566,
		24.845108, 38.646008, 29.155416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.352062, 38.501225, 28.518677>,  <24.807060, 38.039200, 28.808519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.352062, 38.501225, 28.518677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615438, 38.747662, 28.691595>,  <24.773464, 38.895523, 28.795347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615438, 38.747662, 28.691595>,  <24.352062, 38.501225, 28.518677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.615438, 38.747662, 28.691595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177521, 0.431044, -0.884696,
		-0.731398, 0.659261, 0.174446,
		0.658440, 0.616097, 0.432298,
		24.812971, 38.932491, 28.821285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.072077, 39.047657, 28.335663>,  <24.352062, 38.501225, 28.518677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.072077, 39.047657, 28.335663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.469625, 39.014828, 28.365295>,  <24.708155, 38.995132, 28.383076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.469625, 39.014828, 28.365295>,  <24.072077, 39.047657, 28.335663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.469625, 39.014828, 28.365295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096103, 0.310008, -0.945864,
		0.054662, 0.947185, 0.315995,
		0.993869, -0.082071, 0.074081,
		24.767786, 38.990208, 28.387520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.521416, 39.688957, 28.327248>,  <24.072077, 39.047657, 28.335663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.521416, 39.688957, 28.327248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.688450, 39.380337, 28.135279>,  <24.788670, 39.195164, 28.020098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.688450, 39.380337, 28.135279>,  <24.521416, 39.688957, 28.327248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.688450, 39.380337, 28.135279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020227, 0.520153, -0.853833,
		0.908413, 0.366255, 0.201602,
		0.417585, -0.771555, -0.479922,
		24.813725, 39.148869, 27.991302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.230938, 39.689995, 28.051622>,  <24.521416, 39.688957, 28.327248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.230938, 39.689995, 28.051622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028692, 39.436676, 27.817259>,  <24.907345, 39.284687, 27.676640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028692, 39.436676, 27.817259>,  <25.230938, 39.689995, 28.051622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.028692, 39.436676, 27.817259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377203, 0.448504, -0.810285,
		0.775932, -0.630701, 0.012110,
		-0.505616, -0.633294, -0.585911,
		24.877007, 39.246689, 27.641485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.570978, 39.195408, 27.737110>,  <25.230938, 39.689995, 28.051622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.570978, 39.195408, 27.737110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.626537, 39.441769, 27.426918>,  <25.659874, 39.589584, 27.240803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.626537, 39.441769, 27.426918>,  <25.570978, 39.195408, 27.737110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.626537, 39.441769, 27.426918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904912, 0.239173, 0.352039,
		0.402296, -0.750640, -0.524116,
		0.138900, 0.615903, -0.775481,
		25.668207, 39.626541, 27.194273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242748, 39.094742, 27.307970>,  <25.570978, 39.195408, 27.737110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.242748, 39.094742, 27.307970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138096, 39.477489, 27.358488>,  <26.075304, 39.707138, 27.388798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138096, 39.477489, 27.358488>,  <26.242748, 39.094742, 27.307970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138096, 39.477489, 27.358488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883258, 0.184618, 0.431012,
		0.389106, 0.224316, -0.893465,
		-0.261632, 0.956869, 0.126293,
		26.059607, 39.764549, 27.396376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702297, 39.578579, 26.987249>,  <26.242748, 39.094742, 27.307970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702297, 39.578579, 26.987249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524435, 39.777069, 27.285522>,  <26.417717, 39.896164, 27.464485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524435, 39.777069, 27.285522>,  <26.702297, 39.578579, 26.987249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524435, 39.777069, 27.285522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895638, 0.236468, 0.376716,
		0.010606, 0.835370, -0.549585,
		-0.444657, 0.496225, 0.745682,
		26.391039, 39.925938, 27.509228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.959997, 38.907436, 26.715759>,  <26.702297, 39.578579, 26.987249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.959997, 38.907436, 26.715759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138065, 38.891151, 27.073566>,  <27.244905, 38.881382, 27.288252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138065, 38.891151, 27.073566>,  <26.959997, 38.907436, 26.715759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138065, 38.891151, 27.073566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175221, -0.983614, 0.042437,
		0.878135, -0.175630, -0.445010,
		0.445171, -0.040710, 0.894520,
		27.271616, 38.878937, 27.341923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443169, 38.450993, 26.670591>,  <26.959997, 38.907436, 26.715759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443169, 38.450993, 26.670591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345253, 38.469582, 27.057976>,  <27.286503, 38.480736, 27.290407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345253, 38.469582, 27.057976>,  <27.443169, 38.450993, 26.670591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345253, 38.469582, 27.057976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021020, -0.998870, 0.042622,
		0.969348, -0.009924, 0.245491,
		-0.244790, 0.046476, 0.968461,
		27.271816, 38.483524, 27.348515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955782, 37.909508, 27.099615>,  <27.443169, 38.450993, 26.670591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955782, 37.909508, 27.099615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602106, 37.989136, 27.268648>,  <27.389900, 38.036911, 27.370068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602106, 37.989136, 27.268648>,  <27.955782, 37.909508, 27.099615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602106, 37.989136, 27.268648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072826, -0.952332, 0.296242,
		0.461413, 0.231160, 0.856542,
		-0.884191, 0.199069, 0.422584,
		27.336849, 38.048855, 27.395424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701719, 37.801884, 26.940323>,  <27.955782, 37.909508, 27.099615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701719, 37.801884, 26.940323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048479, 37.944458, 27.079716>,  <29.256535, 38.030003, 27.163351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048479, 37.944458, 27.079716>,  <28.701719, 37.801884, 26.940323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048479, 37.944458, 27.079716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231564, -0.331124, 0.914732,
		0.441434, -0.873676, -0.204514,
		0.866899, 0.356436, 0.348482,
		29.308548, 38.051388, 27.184259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895248, 37.380863, 27.397335>,  <28.701719, 37.801884, 26.940323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895248, 37.380863, 27.397335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115294, 37.705894, 27.474369>,  <29.247320, 37.900913, 27.520590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115294, 37.705894, 27.474369>,  <28.895248, 37.380863, 27.397335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.115294, 37.705894, 27.474369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023119, -0.245349, 0.969159,
		0.834770, -0.528696, -0.153756,
		0.550114, 0.812579, 0.192587,
		29.280327, 37.949669, 27.532145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538408, 37.184219, 27.651264>,  <28.895248, 37.380863, 27.397335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538408, 37.184219, 27.651264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459745, 37.555965, 27.776236>,  <29.412548, 37.779011, 27.851219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459745, 37.555965, 27.776236>,  <29.538408, 37.184219, 27.651264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459745, 37.555965, 27.776236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212471, -0.270686, 0.938928,
		0.957174, 0.251030, -0.144230,
		-0.196658, 0.929361, 0.312431,
		29.400747, 37.834774, 27.869965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111723, 37.458000, 28.107534>,  <29.538408, 37.184219, 27.651264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111723, 37.458000, 28.107534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769211, 37.639240, 28.206717>,  <29.563704, 37.747986, 28.266226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769211, 37.639240, 28.206717>,  <30.111723, 37.458000, 28.107534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769211, 37.639240, 28.206717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081341, -0.355776, 0.931025,
		0.510065, 0.817388, 0.267789,
		-0.856281, 0.453100, 0.247956,
		29.512327, 37.775169, 28.281103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259869, 37.527424, 28.802097>,  <30.111723, 37.458000, 28.107534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259869, 37.527424, 28.802097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875521, 37.634987, 28.775494>,  <29.644913, 37.699524, 28.759531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875521, 37.634987, 28.775494>,  <30.259869, 37.527424, 28.802097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875521, 37.634987, 28.775494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121895, -0.194851, 0.973229,
		0.248746, 0.943252, 0.220004,
		-0.960868, 0.268904, -0.066509,
		29.587261, 37.715656, 28.755541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077436, 37.978771, 29.303795>,  <30.259869, 37.527424, 28.802097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077436, 37.978771, 29.303795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753113, 37.768486, 29.200872>,  <29.558517, 37.642315, 29.139118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753113, 37.768486, 29.200872>,  <30.077436, 37.978771, 29.303795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753113, 37.768486, 29.200872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137078, -0.256827, 0.956687,
		-0.569030, 0.810963, 0.136174,
		-0.810811, -0.525717, -0.257307,
		29.509869, 37.610771, 29.123680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613811, 38.031303, 29.854300>,  <30.077436, 37.978771, 29.303795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613811, 38.031303, 29.854300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467628, 37.728073, 29.638239>,  <29.379919, 37.546135, 29.508602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467628, 37.728073, 29.638239>,  <29.613811, 38.031303, 29.854300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467628, 37.728073, 29.638239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396107, -0.398471, 0.827236,
		-0.842343, 0.516276, -0.154656,
		-0.365456, -0.758077, -0.540150,
		29.357992, 37.500648, 29.476194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876581, 37.964172, 30.016340>,  <29.613811, 38.031303, 29.854300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876581, 37.964172, 30.016340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965219, 37.597271, 29.883957>,  <29.018402, 37.377129, 29.804527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965219, 37.597271, 29.883957>,  <28.876581, 37.964172, 30.016340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965219, 37.597271, 29.883957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405656, -0.395347, 0.824102,
		-0.886758, -0.048361, -0.459698,
		0.221595, -0.917258, -0.330959,
		29.031698, 37.322094, 29.784670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404207, 37.621479, 30.353695>,  <28.876581, 37.964172, 30.016340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404207, 37.621479, 30.353695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647856, 37.324577, 30.241957>,  <28.794044, 37.146439, 30.174913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647856, 37.324577, 30.241957>,  <28.404207, 37.621479, 30.353695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647856, 37.324577, 30.241957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303263, -0.543456, 0.782743,
		-0.732804, -0.392071, -0.556128,
		0.609122, -0.742250, -0.279346,
		28.830593, 37.101902, 30.158154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.011354, 37.033440, 30.491367>,  <28.404207, 37.621479, 30.353695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.011354, 37.033440, 30.491367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392748, 36.913475, 30.479250>,  <28.621584, 36.841496, 30.471979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392748, 36.913475, 30.479250>,  <28.011354, 37.033440, 30.491367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392748, 36.913475, 30.479250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151721, -0.564320, 0.811495,
		-0.260473, -0.769152, -0.583574,
		0.953486, -0.299913, -0.030293,
		28.678793, 36.823502, 30.470161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014748, 36.297699, 30.690739>,  <28.011354, 37.033440, 30.491367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014748, 36.297699, 30.690739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393448, 36.416180, 30.741217>,  <28.620668, 36.487267, 30.771503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393448, 36.416180, 30.741217>,  <28.014748, 36.297699, 30.690739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393448, 36.416180, 30.741217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062518, -0.553627, 0.830415,
		0.315835, -0.778307, -0.542665,
		0.946752, 0.296200, 0.126197,
		28.677473, 36.505039, 30.779076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399355, 35.724293, 31.099272>,  <28.014748, 36.297699, 30.690739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399355, 35.724293, 31.099272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656338, 36.030621, 31.110409>,  <28.810528, 36.214417, 31.117090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656338, 36.030621, 31.110409>,  <28.399355, 35.724293, 31.099272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656338, 36.030621, 31.110409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315898, -0.297765, 0.900858,
		0.698181, -0.569967, -0.433221,
		0.642457, 0.765816, 0.027842,
		28.849075, 36.260365, 31.118761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035021, 35.511604, 31.309145>,  <28.399355, 35.724293, 31.099272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035021, 35.511604, 31.309145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019262, 35.891788, 31.432478>,  <29.009808, 36.119900, 31.506477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019262, 35.891788, 31.432478>,  <29.035021, 35.511604, 31.309145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019262, 35.891788, 31.432478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272498, -0.286658, 0.918462,
		0.961350, 0.120203, -0.247706,
		-0.039395, 0.950462, 0.308334,
		29.007444, 36.176926, 31.524979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579556, 35.557270, 31.833755>,  <29.035021, 35.511604, 31.309145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579556, 35.557270, 31.833755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353922, 35.882103, 31.893539>,  <29.218542, 36.077003, 31.929409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353922, 35.882103, 31.893539>,  <29.579556, 35.557270, 31.833755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353922, 35.882103, 31.893539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189373, -0.048947, 0.980685,
		0.803708, 0.581493, -0.126175,
		-0.564085, 0.812078, 0.149458,
		29.184696, 36.125725, 31.938377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915457, 35.970921, 32.379337>,  <29.579556, 35.557270, 31.833755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915457, 35.970921, 32.379337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528517, 36.072258, 32.376507>,  <29.296352, 36.133060, 32.374809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528517, 36.072258, 32.376507>,  <29.915457, 35.970921, 32.379337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528517, 36.072258, 32.376507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002803, 0.017207, 0.999848,
		0.253429, 0.967223, -0.015935,
		-0.967350, 0.253346, -0.007072,
		29.238312, 36.148262, 32.374386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804155, 36.526051, 32.892620>,  <29.915457, 35.970921, 32.379337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804155, 36.526051, 32.892620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438276, 36.372253, 32.842823>,  <29.218750, 36.279976, 32.812946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438276, 36.372253, 32.842823>,  <29.804155, 36.526051, 32.892620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438276, 36.372253, 32.842823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135751, 0.002168, 0.990741,
		-0.380660, 0.923127, -0.054178,
		-0.914696, -0.384490, -0.124491,
		29.163868, 36.256905, 32.805477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377775, 36.788582, 33.428104>,  <29.804155, 36.526051, 32.892620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377775, 36.788582, 33.428104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.151905, 36.478577, 33.314617>,  <29.016382, 36.292572, 33.246525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.151905, 36.478577, 33.314617>,  <29.377775, 36.788582, 33.428104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.151905, 36.478577, 33.314617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251082, -0.166158, 0.953598,
		-0.786193, 0.609710, -0.100767,
		-0.564675, -0.775013, -0.283720,
		28.982502, 36.246071, 33.229500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702875, 36.843102, 33.795628>,  <29.377775, 36.788582, 33.428104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702875, 36.843102, 33.795628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706427, 36.453041, 33.707085>,  <28.708557, 36.219006, 33.653957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706427, 36.453041, 33.707085>,  <28.702875, 36.843102, 33.795628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706427, 36.453041, 33.707085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215597, -0.218029, 0.951831,
		-0.976442, 0.039274, -0.212175,
		0.008878, -0.975152, -0.221360,
		28.709089, 36.160496, 33.640678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.103418, 36.554916, 34.083256>,  <28.702875, 36.843102, 33.795628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.103418, 36.554916, 34.083256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314438, 36.220753, 34.021564>,  <28.441050, 36.020256, 33.984550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314438, 36.220753, 34.021564>,  <28.103418, 36.554916, 34.083256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314438, 36.220753, 34.021564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321842, -0.364549, 0.873798,
		-0.786200, -0.411335, -0.461186,
		0.527548, -0.835409, -0.154224,
		28.472702, 35.970131, 33.975296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542627, 35.979397, 34.069382>,  <28.103418, 36.554916, 34.083256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542627, 35.979397, 34.069382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892448, 35.803650, 34.151466>,  <28.102341, 35.698200, 34.200718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892448, 35.803650, 34.151466>,  <27.542627, 35.979397, 34.069382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892448, 35.803650, 34.151466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443831, -0.554741, 0.703758,
		-0.195368, -0.706555, -0.680156,
		0.874554, -0.439366, 0.205213,
		28.154814, 35.671841, 34.213032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481901, 35.344696, 33.988266>,  <27.542627, 35.979397, 34.069382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481901, 35.344696, 33.988266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.801849, 35.323826, 34.227428>,  <27.993818, 35.311306, 34.370926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.801849, 35.323826, 34.227428>,  <27.481901, 35.344696, 33.988266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801849, 35.323826, 34.227428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504517, -0.598029, 0.622756,
		0.325072, -0.799775, -0.504667,
		0.799870, -0.052172, 0.597902,
		28.041811, 35.308174, 34.406799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.601322, 34.652916, 34.259842>,  <27.481901, 35.344696, 33.988266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.601322, 34.652916, 34.259842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783537, 34.911186, 34.504982>,  <27.892866, 35.066151, 34.652065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783537, 34.911186, 34.504982>,  <27.601322, 34.652916, 34.259842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783537, 34.911186, 34.504982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433471, -0.440419, 0.786215,
		0.777552, -0.623804, 0.079255,
		0.455539, 0.645678, 0.612850,
		27.920198, 35.104889, 34.688835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993618, 34.178947, 34.835621>,  <27.601322, 34.652916, 34.259842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.993618, 34.178947, 34.835621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967434, 34.542274, 35.000874>,  <27.951723, 34.760269, 35.100025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967434, 34.542274, 35.000874>,  <27.993618, 34.178947, 34.835621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967434, 34.542274, 35.000874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475788, -0.392337, 0.787209,
		0.877121, -0.145032, 0.457848,
		-0.065460, 0.908316, 0.413131,
		27.947796, 34.814770, 35.124813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344379, 34.132851, 35.484150>,  <27.993618, 34.178947, 34.835621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344379, 34.132851, 35.484150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083496, 34.435009, 35.509457>,  <27.926966, 34.616302, 35.524639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083496, 34.435009, 35.509457>,  <28.344379, 34.132851, 35.484150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083496, 34.435009, 35.509457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427077, -0.435126, 0.792635,
		0.626281, 0.489944, 0.606405,
		-0.652210, 0.755394, 0.063267,
		27.887833, 34.661629, 35.528439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996506, 34.430050, 35.171917>,  <28.344379, 34.132851, 35.484150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996506, 34.430050, 35.171917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.051018, 34.704800, 35.457470>,  <29.083725, 34.869648, 35.628803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.051018, 34.704800, 35.457470>,  <28.996506, 34.430050, 35.171917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051018, 34.704800, 35.457470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964688, 0.255965, -0.062123,
		-0.225400, -0.680211, 0.697501,
		0.136279, 0.686873, 0.713886,
		29.091902, 34.910862, 35.671635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745909, 34.353264, 35.094826>,  <28.996506, 34.430050, 35.171917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745909, 34.353264, 35.094826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141333, 34.356441, 35.034580>,  <30.378588, 34.358349, 34.998432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141333, 34.356441, 35.034580>,  <29.745909, 34.353264, 35.094826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141333, 34.356441, 35.034580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150816, -0.060933, 0.986682,
		-0.001339, -0.998110, -0.061434,
		0.988561, 0.007944, -0.150613,
		30.437901, 34.358826, 34.989395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235760, 34.998333, 34.989361>,  <29.745909, 34.353264, 35.094826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235760, 34.998333, 34.989361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009035, 34.853294, 35.285267>,  <29.873001, 34.766273, 35.462811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009035, 34.853294, 35.285267>,  <30.235760, 34.998333, 34.989361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009035, 34.853294, 35.285267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746256, 0.154458, 0.647491,
		-0.349040, 0.919058, 0.183040,
		-0.566810, -0.362595, 0.739765,
		29.838993, 34.744514, 35.507195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509256, 35.389645, 35.538345>,  <30.235760, 34.998333, 34.989361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509256, 35.389645, 35.538345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269594, 35.114273, 35.701847>,  <30.125797, 34.949051, 35.799946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269594, 35.114273, 35.701847>,  <30.509256, 35.389645, 35.538345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269594, 35.114273, 35.701847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493984, 0.083908, 0.865413,
		-0.630072, 0.720435, 0.289798,
		-0.599157, -0.688428, 0.408751,
		30.089848, 34.907745, 35.824474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052126, 35.600941, 36.110535>,  <30.509256, 35.389645, 35.538345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052126, 35.600941, 36.110535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178787, 35.224167, 36.155251>,  <30.254784, 34.998104, 36.182079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178787, 35.224167, 36.155251>,  <30.052126, 35.600941, 36.110535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178787, 35.224167, 36.155251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560977, 0.281004, 0.778680,
		-0.764877, -0.183857, 0.617382,
		0.316652, -0.941931, 0.111794,
		30.273783, 34.941589, 36.188789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181545, 35.396008, 36.848209>,  <30.052126, 35.600941, 36.110535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181545, 35.396008, 36.848209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394922, 35.126324, 36.643902>,  <30.522949, 34.964512, 36.521317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394922, 35.126324, 36.643902>,  <30.181545, 35.396008, 36.848209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394922, 35.126324, 36.643902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666243, -0.037111, 0.744811,
		-0.521114, -0.737606, 0.429391,
		0.533442, -0.674211, -0.510764,
		30.554955, 34.924061, 36.490673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230227, 34.820766, 37.305363>,  <30.181545, 35.396008, 36.848209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230227, 34.820766, 37.305363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.531605, 34.783726, 37.044979>,  <30.712431, 34.761501, 36.888748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.531605, 34.783726, 37.044979>,  <30.230227, 34.820766, 37.305363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531605, 34.783726, 37.044979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642682, -0.105361, 0.758854,
		-0.138858, -0.990113, -0.019870,
		0.753445, -0.092603, -0.650958,
		30.757639, 34.755947, 36.849693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570858, 34.161831, 37.474964>,  <30.230227, 34.820766, 37.305363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570858, 34.161831, 37.474964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850864, 34.360119, 37.269344>,  <31.018869, 34.479092, 37.145973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850864, 34.360119, 37.269344>,  <30.570858, 34.161831, 37.474964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850864, 34.360119, 37.269344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655265, -0.159696, 0.738326,
		0.283909, -0.853676, -0.436615,
		0.700017, 0.495716, -0.514045,
		31.060869, 34.508835, 37.115131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208393, 33.810261, 37.565819>,  <30.570858, 34.161831, 37.474964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208393, 33.810261, 37.565819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311049, 34.166569, 37.415794>,  <31.372643, 34.380352, 37.325779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311049, 34.166569, 37.415794>,  <31.208393, 33.810261, 37.565819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311049, 34.166569, 37.415794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683928, 0.106821, 0.721687,
		0.682919, -0.441729, -0.581805,
		0.256641, 0.890766, -0.375061,
		31.388041, 34.433800, 37.303276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901468, 33.795090, 37.418106>,  <31.208393, 33.810261, 37.565819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901468, 33.795090, 37.418106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811989, 34.182732, 37.459663>,  <31.758301, 34.415318, 37.484600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811989, 34.182732, 37.459663>,  <31.901468, 33.795090, 37.418106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811989, 34.182732, 37.459663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680507, 0.078982, 0.728473,
		0.697761, 0.233660, -0.677150,
		-0.223698, 0.969105, 0.103897,
		31.744879, 34.473465, 37.490833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589405, 34.217297, 37.574177>,  <31.901468, 33.795090, 37.418106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589405, 34.217297, 37.574177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302971, 34.460758, 37.710861>,  <32.131111, 34.606834, 37.792873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302971, 34.460758, 37.710861>,  <32.589405, 34.217297, 37.574177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302971, 34.460758, 37.710861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578658, 0.243870, 0.778256,
		0.390352, 0.755032, -0.526832,
		-0.716087, 0.608650, 0.341710,
		32.088146, 34.643353, 37.813374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902523, 34.776001, 37.878384>,  <32.589405, 34.217297, 37.574177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902523, 34.776001, 37.878384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531242, 34.807659, 38.023808>,  <32.308472, 34.826653, 38.111061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531242, 34.807659, 38.023808>,  <32.902523, 34.776001, 37.878384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531242, 34.807659, 38.023808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371748, 0.238133, 0.897272,
		-0.015561, 0.968002, -0.250458,
		-0.928203, 0.079145, 0.363558,
		32.252781, 34.831402, 38.132874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780258, 35.480888, 38.343124>,  <32.902523, 34.776001, 37.878384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780258, 35.480888, 38.343124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490864, 35.237812, 38.474140>,  <32.317226, 35.091965, 38.552750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490864, 35.237812, 38.474140>,  <32.780258, 35.480888, 38.343124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490864, 35.237812, 38.474140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153221, 0.321281, 0.934506,
		-0.673124, 0.726286, -0.139330,
		-0.723483, -0.607690, 0.327544,
		32.273819, 35.055504, 38.572403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465340, 35.867489, 38.884106>,  <32.780258, 35.480888, 38.343124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465340, 35.867489, 38.884106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359936, 35.489197, 38.960167>,  <32.296692, 35.262222, 39.005802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359936, 35.489197, 38.960167>,  <32.465340, 35.867489, 38.884106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359936, 35.489197, 38.960167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114555, 0.165046, 0.979610,
		-0.957830, 0.279924, 0.064846,
		-0.263514, -0.945728, 0.190153,
		32.280880, 35.205479, 39.017212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037952, 35.951012, 39.445244>,  <32.465340, 35.867489, 38.884106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037952, 35.951012, 39.445244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159893, 35.570232, 39.433434>,  <32.233055, 35.341766, 39.426346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159893, 35.570232, 39.433434>,  <32.037952, 35.951012, 39.445244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159893, 35.570232, 39.433434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066608, -0.009616, 0.997733,
		-0.950069, -0.306122, 0.060476,
		0.304847, -0.951944, -0.029526,
		32.251347, 35.284649, 39.424576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694939, 35.756298, 39.961411>,  <32.037952, 35.951012, 39.445244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694939, 35.756298, 39.961411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956257, 35.456875, 39.916046>,  <32.113049, 35.277222, 39.888828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956257, 35.456875, 39.916046>,  <31.694939, 35.756298, 39.961411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956257, 35.456875, 39.916046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028969, -0.174399, 0.984249,
		-0.756550, -0.639718, -0.135618,
		0.653294, -0.748562, -0.113410,
		32.152245, 35.232307, 39.882023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405764, 35.104988, 40.224457>,  <31.694939, 35.756298, 39.961411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405764, 35.104988, 40.224457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803085, 35.060852, 40.238155>,  <32.041477, 35.034370, 40.246376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803085, 35.060852, 40.238155>,  <31.405764, 35.104988, 40.224457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803085, 35.060852, 40.238155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049934, -0.142693, 0.988506,
		-0.104174, -0.983599, -0.147247,
		0.993305, -0.110329, 0.034250,
		32.101078, 35.027752, 40.248428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489227, 34.610783, 40.607666>,  <31.405764, 35.104988, 40.224457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489227, 34.610783, 40.607666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862738, 34.753426, 40.619614>,  <32.086845, 34.839012, 40.626781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862738, 34.753426, 40.619614>,  <31.489227, 34.610783, 40.607666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862738, 34.753426, 40.619614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120704, -0.392428, 0.911828,
		0.336889, -0.847837, -0.409484,
		0.933775, 0.356611, 0.029868,
		32.142872, 34.860409, 40.628574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947214, 34.033054, 41.063763>,  <31.489227, 34.610783, 40.607666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947214, 34.033054, 41.063763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146492, 34.379414, 41.081760>,  <32.266060, 34.587227, 41.092560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146492, 34.379414, 41.081760>,  <31.947214, 34.033054, 41.063763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146492, 34.379414, 41.081760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203657, -0.167296, 0.964643,
		0.842807, -0.471420, -0.259692,
		0.498197, 0.865896, 0.044990,
		32.295952, 34.639183, 41.095257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403923, 33.866623, 41.551403>,  <31.947214, 34.033054, 41.063763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403923, 33.866623, 41.551403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379349, 34.265865, 41.550808>,  <32.364605, 34.505413, 41.550453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379349, 34.265865, 41.550808>,  <32.403923, 33.866623, 41.551403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379349, 34.265865, 41.550808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087368, 0.006860, 0.996153,
		0.994280, 0.061073, -0.087624,
		-0.061440, 0.998110, -0.001484,
		32.360916, 34.565300, 41.550362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901363, 34.003487, 41.972485>,  <32.403923, 33.866623, 41.551403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901363, 34.003487, 41.972485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705875, 34.352291, 41.961536>,  <32.588581, 34.561573, 41.954967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705875, 34.352291, 41.961536>,  <32.901363, 34.003487, 41.972485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705875, 34.352291, 41.961536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049859, 0.059241, 0.996998,
		0.871013, 0.485892, -0.072430,
		-0.488724, 0.872009, -0.027373,
		32.559258, 34.613895, 41.953323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289219, 34.478115, 42.399387>,  <32.901363, 34.003487, 41.972485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289219, 34.478115, 42.399387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916431, 34.620914, 42.374138>,  <32.692760, 34.706596, 42.358990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916431, 34.620914, 42.374138>,  <33.289219, 34.478115, 42.399387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916431, 34.620914, 42.374138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054047, 0.035345, 0.997913,
		0.358486, 0.933435, -0.013645,
		-0.931969, 0.357001, -0.063120,
		32.636841, 34.728016, 42.355202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335579, 34.929146, 42.878284>,  <33.289219, 34.478115, 42.399387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335579, 34.929146, 42.878284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947372, 34.857498, 42.813759>,  <32.714451, 34.814510, 42.775043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947372, 34.857498, 42.813759>,  <33.335579, 34.929146, 42.878284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947372, 34.857498, 42.813759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158257, -0.031315, 0.986901,
		-0.181829, 0.983328, 0.002044,
		-0.970512, -0.179124, -0.161312,
		32.656219, 34.803761, 42.765366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970699, 35.533035, 43.197811>,  <33.335579, 34.929146, 42.878284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970699, 35.533035, 43.197811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721722, 35.221176, 43.170334>,  <32.572334, 35.034061, 43.153847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721722, 35.221176, 43.170334>,  <32.970699, 35.533035, 43.197811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721722, 35.221176, 43.170334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132531, 0.018488, 0.991006,
		-0.771362, 0.625950, -0.114835,
		-0.622444, -0.779644, -0.068697,
		32.534988, 34.987282, 43.149723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395988, 35.701305, 43.642181>,  <32.970699, 35.533035, 43.197811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395988, 35.701305, 43.642181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371132, 35.303463, 43.608940>,  <32.356216, 35.064758, 43.588997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371132, 35.303463, 43.608940>,  <32.395988, 35.701305, 43.642181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371132, 35.303463, 43.608940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054504, -0.086522, 0.994758,
		-0.996578, 0.057290, 0.059587,
		-0.062145, -0.994601, -0.083103,
		32.352489, 35.005081, 43.584011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922466, 35.613438, 44.134644>,  <32.395988, 35.701305, 43.642181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922466, 35.613438, 44.134644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082413, 35.251308, 44.077370>,  <32.178383, 35.034031, 44.043003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082413, 35.251308, 44.077370>,  <31.922466, 35.613438, 44.134644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082413, 35.251308, 44.077370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134637, -0.212542, 0.967832,
		-0.906630, -0.367727, -0.206879,
		0.399868, -0.905319, -0.143187,
		32.202374, 34.979713, 44.034412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532604, 35.098785, 44.506248>,  <31.922466, 35.613438, 44.134644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532604, 35.098785, 44.506248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890230, 34.936840, 44.429585>,  <32.104805, 34.839672, 44.383587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890230, 34.936840, 44.429585>,  <31.532604, 35.098785, 44.506248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890230, 34.936840, 44.429585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029097, -0.479456, 0.877084,
		-0.446986, -0.778595, -0.440446,
		0.894068, -0.404859, -0.191655,
		32.158451, 34.815380, 44.372086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406879, 34.404350, 44.702454>,  <31.532604, 35.098785, 44.506248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406879, 34.404350, 44.702454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802454, 34.461761, 44.717449>,  <32.039799, 34.496208, 44.726444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802454, 34.461761, 44.717449>,  <31.406879, 34.404350, 44.702454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802454, 34.461761, 44.717449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038396, -0.491764, 0.869882,
		0.143283, -0.858818, -0.491834,
		0.988937, 0.143524, 0.037486,
		32.099136, 34.504818, 44.728695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669682, 33.753944, 45.072189>,  <31.406879, 34.404350, 44.702454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669682, 33.753944, 45.072189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979959, 34.006107, 45.084091>,  <32.166126, 34.157406, 45.091232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979959, 34.006107, 45.084091>,  <31.669682, 33.753944, 45.072189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979959, 34.006107, 45.084091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325161, -0.439624, 0.837259,
		0.540895, -0.639782, -0.545997,
		0.775696, 0.630405, 0.029758,
		32.212669, 34.195229, 45.093018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273899, 33.288578, 45.117130>,  <31.669682, 33.753944, 45.072189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273899, 33.288578, 45.117130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393719, 33.636024, 45.275005>,  <32.465611, 33.844490, 45.369732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393719, 33.636024, 45.275005>,  <32.273899, 33.288578, 45.117130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393719, 33.636024, 45.275005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022946, -0.420126, 0.907176,
		0.953806, -0.262685, -0.145779,
		0.299547, 0.868614, 0.394691,
		32.483582, 33.896610, 45.393414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925861, 33.195126, 45.538120>,  <32.273899, 33.288578, 45.117130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925861, 33.195126, 45.538120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759819, 33.531631, 45.676659>,  <32.660194, 33.733536, 45.759781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759819, 33.531631, 45.676659>,  <32.925861, 33.195126, 45.538120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759819, 33.531631, 45.676659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192911, -0.290648, 0.937182,
		0.889084, 0.455846, -0.041639,
		-0.415108, 0.841266, 0.346348,
		32.635288, 33.784012, 45.780563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301231, 33.373005, 46.030319>,  <32.925861, 33.195126, 45.538120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301231, 33.373005, 46.030319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978867, 33.594887, 46.113075>,  <32.785446, 33.728016, 46.162727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978867, 33.594887, 46.113075>,  <33.301231, 33.373005, 46.030319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978867, 33.594887, 46.113075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033542, -0.306113, 0.951404,
		0.591083, 0.773689, 0.228094,
		-0.805913, 0.554708, 0.206889,
		32.737091, 33.761299, 46.175140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443890, 33.891285, 46.692982>,  <33.301231, 33.373005, 46.030319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443890, 33.891285, 46.692982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051125, 33.824020, 46.658165>,  <32.815468, 33.783661, 46.637276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051125, 33.824020, 46.658165>,  <33.443890, 33.891285, 46.692982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051125, 33.824020, 46.658165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038191, -0.274350, 0.960871,
		-0.185462, 0.946812, 0.262964,
		-0.981909, -0.168162, -0.087041,
		32.756554, 33.773571, 46.632053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055859, 34.300278, 47.154274>,  <33.443890, 33.891285, 46.692982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055859, 34.300278, 47.154274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818810, 33.985828, 47.084072>,  <32.676579, 33.797157, 47.041950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818810, 33.985828, 47.084072>,  <33.055859, 34.300278, 47.154274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818810, 33.985828, 47.084072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047210, -0.183612, 0.981865,
		-0.804093, 0.590163, 0.071700,
		-0.592625, -0.786126, -0.175503,
		32.641022, 33.749992, 47.031422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769749, 34.231899, 47.820644>,  <33.055859, 34.300278, 47.154274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769749, 34.231899, 47.820644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601391, 33.920841, 47.633831>,  <32.500378, 33.734207, 47.521744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601391, 33.920841, 47.633831>,  <32.769749, 34.231899, 47.820644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601391, 33.920841, 47.633831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130970, -0.457363, 0.879583,
		-0.897605, 0.431378, 0.090653,
		-0.420894, -0.777645, -0.467029,
		32.475124, 33.687546, 47.493721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150543, 34.023220, 48.189327>,  <32.769749, 34.231899, 47.820644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150543, 34.023220, 48.189327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248398, 33.690098, 47.990696>,  <32.307110, 33.490223, 47.871517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248398, 33.690098, 47.990696>,  <32.150543, 34.023220, 48.189327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248398, 33.690098, 47.990696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056248, -0.523463, 0.850189,
		-0.967982, -0.180058, -0.174903,
		0.244639, -0.832806, -0.496575,
		32.321789, 33.440258, 47.841724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624046, 33.573654, 48.344597>,  <32.150543, 34.023220, 48.189327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624046, 33.573654, 48.344597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953939, 33.380550, 48.226780>,  <32.151875, 33.264687, 48.156090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953939, 33.380550, 48.226780>,  <31.624046, 33.573654, 48.344597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953939, 33.380550, 48.226780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059243, -0.591723, 0.803962,
		-0.562406, -0.645607, -0.516615,
		0.824736, -0.482759, -0.294541,
		32.201359, 33.235722, 48.138416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521746, 33.030941, 48.626747>,  <31.624046, 33.573654, 48.344597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521746, 33.030941, 48.626747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906876, 33.009537, 48.520836>,  <32.137955, 32.996696, 48.457291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906876, 33.009537, 48.520836>,  <31.521746, 33.030941, 48.626747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906876, 33.009537, 48.520836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207929, -0.478923, 0.852877,
		-0.172443, -0.876225, -0.449993,
		0.962823, -0.053506, -0.264779,
		32.195724, 32.993484, 48.441402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586452, 32.335991, 48.565544>,  <31.521746, 33.030941, 48.626747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586452, 32.335991, 48.565544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946091, 32.493923, 48.641159>,  <32.161873, 32.588680, 48.686527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946091, 32.493923, 48.641159>,  <31.586452, 32.335991, 48.565544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946091, 32.493923, 48.641159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152455, -0.687237, 0.710256,
		0.410345, -0.609768, -0.678085,
		0.899096, 0.394827, 0.189042,
		32.215820, 32.612370, 48.697872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923958, 31.789328, 48.783882>,  <31.586452, 32.335991, 48.565544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923958, 31.789328, 48.783882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198078, 32.049923, 48.914070>,  <32.362549, 32.206280, 48.992184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198078, 32.049923, 48.914070>,  <31.923958, 31.789328, 48.783882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198078, 32.049923, 48.914070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137265, -0.554450, 0.820819,
		0.715207, -0.517833, -0.469392,
		0.685301, 0.651486, 0.325466,
		32.403667, 32.245369, 49.011711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583801, 31.511812, 48.866505>,  <31.923958, 31.789328, 48.783882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583801, 31.511812, 48.866505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544098, 31.813921, 49.125648>,  <32.520275, 31.995186, 49.281136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544098, 31.813921, 49.125648>,  <32.583801, 31.511812, 48.866505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544098, 31.813921, 49.125648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222928, -0.617643, 0.754202,
		0.969769, 0.219284, -0.107066,
		-0.099255, 0.755270, 0.647855,
		32.514320, 32.040501, 49.320004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300781, 31.487659, 49.158867>,  <32.583801, 31.511812, 48.866505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300781, 31.487659, 49.158867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070572, 31.690342, 49.415623>,  <32.932446, 31.811951, 49.569675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070572, 31.690342, 49.415623>,  <33.300781, 31.487659, 49.158867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070572, 31.690342, 49.415623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242025, -0.644214, 0.725543,
		0.781152, 0.572919, 0.248124,
		-0.575523, 0.506707, 0.641890,
		32.897915, 31.842354, 49.608189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642887, 31.408131, 49.771099>,  <33.300781, 31.487659, 49.158867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642887, 31.408131, 49.771099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303776, 31.532223, 49.943161>,  <33.100307, 31.606678, 50.046398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303776, 31.532223, 49.943161>,  <33.642887, 31.408131, 49.771099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303776, 31.532223, 49.943161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217910, -0.535684, 0.815817,
		0.483516, 0.785366, 0.386539,
		-0.847778, 0.310230, 0.430151,
		33.049442, 31.625292, 50.072205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858475, 31.606606, 50.475677>,  <33.642887, 31.408131, 49.771099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858475, 31.606606, 50.475677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465908, 31.531174, 50.489845>,  <33.230366, 31.485914, 50.498348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465908, 31.531174, 50.489845>,  <33.858475, 31.606606, 50.475677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465908, 31.531174, 50.489845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122284, -0.472444, 0.872836,
		-0.147863, 0.860950, 0.486726,
		-0.981419, -0.188579, 0.035423,
		33.171482, 31.474600, 50.500473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658165, 31.872128, 51.070900>,  <33.858475, 31.606606, 50.475677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658165, 31.872128, 51.070900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370792, 31.603811, 50.997265>,  <33.198368, 31.442822, 50.953083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370792, 31.603811, 50.997265>,  <33.658165, 31.872128, 51.070900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370792, 31.603811, 50.997265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149832, -0.407676, 0.900750,
		-0.679265, 0.619548, 0.393395,
		-0.718435, -0.670791, -0.184092,
		33.155262, 31.402575, 50.942036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187752, 31.874941, 51.609978>,  <33.658165, 31.872128, 51.070900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187752, 31.874941, 51.609978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160339, 31.513927, 51.439926>,  <33.143890, 31.297319, 51.337894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160339, 31.513927, 51.439926>,  <33.187752, 31.874941, 51.609978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160339, 31.513927, 51.439926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104749, -0.430286, 0.896595,
		-0.992135, 0.016912, 0.124028,
		-0.068530, -0.902534, -0.425130,
		33.139782, 31.243168, 51.312386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703815, 31.556080, 52.171379>,  <33.187752, 31.874941, 51.609978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703815, 31.556080, 52.171379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877666, 31.300919, 51.917080>,  <32.981976, 31.147821, 51.764500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877666, 31.300919, 51.917080>,  <32.703815, 31.556080, 52.171379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877666, 31.300919, 51.917080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402304, -0.494052, 0.770756,
		-0.805760, -0.590758, 0.041901,
		0.434629, -0.637901, -0.635752,
		33.008057, 31.109549, 51.726353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365124, 30.840538, 51.943539>,  <32.703815, 31.556080, 52.171379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365124, 30.840538, 51.943539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761890, 30.867996, 51.986237>,  <32.999950, 30.884470, 52.011856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761890, 30.867996, 51.986237>,  <32.365124, 30.840538, 51.943539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761890, 30.867996, 51.986237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055319, -0.523144, 0.850447,
		0.114223, -0.849475, -0.515116,
		0.991914, 0.068644, 0.106747,
		33.059464, 30.888590, 52.018261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701450, 30.082294, 52.064026>,  <32.365124, 30.840538, 51.943539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701450, 30.082294, 52.064026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942291, 30.361013, 52.219948>,  <33.086796, 30.528244, 52.313499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942291, 30.361013, 52.219948>,  <32.701450, 30.082294, 52.064026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942291, 30.361013, 52.219948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033136, -0.465992, 0.884168,
		0.797731, -0.545276, -0.257486,
		0.602103, 0.696796, 0.389804,
		33.122921, 30.570053, 52.336887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442932, 29.986734, 52.193512>,  <32.701450, 30.082294, 52.064026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442932, 29.986734, 52.193512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758709, 29.759972, 52.287663>,  <33.948174, 29.623915, 52.344154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758709, 29.759972, 52.287663>,  <33.442932, 29.986734, 52.193512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758709, 29.759972, 52.287663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540040, -0.459167, 0.705353,
		-0.291791, -0.683947, -0.668637,
		0.789439, -0.566907, 0.235378,
		33.995541, 29.589899, 52.358276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140404, 29.381737, 52.151066>,  <33.442932, 29.986734, 52.193512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140404, 29.381737, 52.151066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447975, 29.415876, 52.404510>,  <33.632519, 29.436361, 52.556576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447975, 29.415876, 52.404510>,  <33.140404, 29.381737, 52.151066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447975, 29.415876, 52.404510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593841, -0.271796, 0.757285,
		0.236847, -0.958562, -0.158308,
		0.768932, 0.085351, 0.633608,
		33.678654, 29.441483, 52.594593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543575, 28.955799, 52.682323>,  <33.140404, 29.381737, 52.151066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543575, 28.955799, 52.682323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916256, 29.058737, 52.784863>,  <34.139862, 29.120499, 52.846386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916256, 29.058737, 52.784863>,  <33.543575, 28.955799, 52.682323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916256, 29.058737, 52.784863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351630, 0.815962, 0.458870,
		-0.091085, -0.517669, 0.850719,
		0.931697, 0.257342, 0.256350,
		34.195766, 29.135939, 52.861767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594936, 28.203955, 52.888901>,  <33.543575, 28.955799, 52.682323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594936, 28.203955, 52.888901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596024, 28.285208, 53.280560>,  <33.596676, 28.333960, 53.515556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596024, 28.285208, 53.280560>,  <33.594936, 28.203955, 52.888901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596024, 28.285208, 53.280560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863326, -0.494597, 0.100213,
		0.504640, 0.845051, -0.176714,
		0.002717, 0.203133, 0.979147,
		33.596840, 28.346148, 53.574303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264633, 28.484102, 52.998138>,  <33.594936, 28.203955, 52.888901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264633, 28.484102, 52.998138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123775, 28.394520, 53.361641>,  <34.039261, 28.340771, 53.579742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123775, 28.394520, 53.361641>,  <34.264633, 28.484102, 52.998138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123775, 28.394520, 53.361641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902885, -0.337070, 0.266799,
		0.246564, 0.914455, 0.320903,
		-0.352142, -0.223955, 0.908757,
		34.018131, 28.327333, 53.634270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125633, 28.661707, 52.259766>,  <34.264633, 28.484102, 52.998138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125633, 28.661707, 52.259766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737247, 28.583672, 52.315140>,  <33.504215, 28.536850, 52.348366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737247, 28.583672, 52.315140>,  <34.125633, 28.661707, 52.259766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737247, 28.583672, 52.315140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044868, -0.419907, -0.906457,
		0.234969, -0.886351, 0.398963,
		-0.970967, -0.195088, 0.138434,
		33.445957, 28.525145, 52.356670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044785, 27.923935, 52.090065>,  <34.125633, 28.661707, 52.259766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044785, 27.923935, 52.090065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733608, 28.164518, 52.017334>,  <33.546902, 28.308868, 51.973694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733608, 28.164518, 52.017334>,  <34.044785, 27.923935, 52.090065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733608, 28.164518, 52.017334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049247, -0.230124, -0.971914,
		-0.626408, -0.765044, 0.149402,
		-0.777938, 0.601458, -0.181827,
		33.500225, 28.344955, 51.962788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809616, 27.662664, 51.512093>,  <34.044785, 27.923935, 52.090065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809616, 27.662664, 51.512093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602036, 28.004513, 51.504959>,  <33.477489, 28.209621, 51.500679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602036, 28.004513, 51.504959>,  <33.809616, 27.662664, 51.512093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602036, 28.004513, 51.504959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200914, -0.142229, -0.969229,
		-0.830858, -0.499397, 0.245515,
		-0.518949, 0.854620, -0.017836,
		33.446350, 28.260899, 51.499607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169693, 27.542717, 51.158894>,  <33.809616, 27.662664, 51.512093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169693, 27.542717, 51.158894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224663, 27.938553, 51.141800>,  <33.257645, 28.176054, 51.131546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224663, 27.938553, 51.141800>,  <33.169693, 27.542717, 51.158894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224663, 27.938553, 51.141800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267871, -0.004401, -0.963445,
		-0.953603, 0.143851, 0.264477,
		0.137428, 0.989589, -0.042731,
		33.265892, 28.235430, 51.128983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559208, 27.840168, 50.854519>,  <33.169693, 27.542717, 51.158894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559208, 27.840168, 50.854519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863609, 28.090944, 50.787811>,  <33.046249, 28.241409, 50.747787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863609, 28.090944, 50.787811>,  <32.559208, 27.840168, 50.854519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863609, 28.090944, 50.787811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233177, 0.024450, -0.972127,
		-0.605389, 0.778683, 0.164795,
		0.761008, 0.626941, -0.166769,
		33.091911, 28.279026, 50.737782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301048, 28.286375, 50.410545>,  <32.559208, 27.840168, 50.854519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301048, 28.286375, 50.410545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687454, 28.370058, 50.349831>,  <32.919300, 28.420267, 50.313400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687454, 28.370058, 50.349831>,  <32.301048, 28.286375, 50.410545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687454, 28.370058, 50.349831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192879, 0.192545, -0.962146,
		-0.172061, 0.958728, 0.226354,
		0.966019, 0.209207, -0.151789,
		32.977261, 28.432819, 50.304295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322922, 28.854790, 50.075905>,  <32.301048, 28.286375, 50.410545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322922, 28.854790, 50.075905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654404, 28.647703, 49.990852>,  <32.853294, 28.523451, 49.939823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654404, 28.647703, 49.990852>,  <32.322922, 28.854790, 50.075905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654404, 28.647703, 49.990852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140162, 0.175825, -0.974392,
		0.541846, 0.837289, 0.073143,
		0.828708, -0.517719, -0.212627,
		32.903015, 28.492388, 49.927063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548553, 29.131844, 49.487144>,  <32.322922, 28.854790, 50.075905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548553, 29.131844, 49.487144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778461, 28.805016, 49.469105>,  <32.916405, 28.608919, 49.458282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778461, 28.805016, 49.469105>,  <32.548553, 29.131844, 49.487144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778461, 28.805016, 49.469105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086584, 0.115525, -0.989524,
		0.813721, 0.564844, 0.137146,
		0.574770, -0.817071, -0.045098,
		32.950893, 28.559895, 49.455574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085846, 29.294306, 49.021206>,  <32.548553, 29.131844, 49.487144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085846, 29.294306, 49.021206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073963, 28.894829, 49.037834>,  <33.066833, 28.655142, 49.047810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073963, 28.894829, 49.037834>,  <33.085846, 29.294306, 49.021206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073963, 28.894829, 49.037834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139586, -0.045327, -0.989172,
		0.989764, -0.023584, 0.140750,
		-0.029709, -0.998694, 0.041571,
		33.065052, 28.595221, 49.050304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815601, 29.019558, 48.878284>,  <33.085846, 29.294306, 49.021206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815601, 29.019558, 48.878284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504421, 28.789440, 48.777222>,  <33.317715, 28.651369, 48.716583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504421, 28.789440, 48.777222>,  <33.815601, 29.019558, 48.878284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504421, 28.789440, 48.777222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356336, -0.072756, -0.931521,
		0.517518, -0.814703, 0.261599,
		-0.777946, -0.575296, -0.252655,
		33.271038, 28.616852, 48.701424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085983, 28.675234, 48.259659>,  <33.815601, 29.019558, 48.878284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085983, 28.675234, 48.259659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704449, 28.555315, 48.252487>,  <33.475529, 28.483364, 48.248184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704449, 28.555315, 48.252487>,  <34.085983, 28.675234, 48.259659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704449, 28.555315, 48.252487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044684, -0.082618, -0.995579,
		0.296990, -0.950419, 0.092200,
		-0.953834, -0.299797, -0.017932,
		33.418297, 28.465376, 48.247108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095455, 28.142616, 47.807209>,  <34.085983, 28.675234, 48.259659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095455, 28.142616, 47.807209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707348, 28.239124, 47.814941>,  <33.474483, 28.297029, 47.819580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707348, 28.239124, 47.814941>,  <34.095455, 28.142616, 47.807209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707348, 28.239124, 47.814941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000759, 0.076824, -0.997044,
		-0.242043, -0.967412, -0.074357,
		-0.970265, 0.241271, 0.019329,
		33.416267, 28.311506, 47.820740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751736, 27.724314, 47.303352>,  <34.095455, 28.142616, 47.807209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751736, 27.724314, 47.303352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560871, 28.069296, 47.370861>,  <33.446350, 28.276285, 47.411366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560871, 28.069296, 47.370861>,  <33.751736, 27.724314, 47.303352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560871, 28.069296, 47.370861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011616, 0.185844, -0.982511,
		-0.878737, -0.470781, -0.078660,
		-0.477165, 0.862454, 0.168777,
		33.417721, 28.328032, 47.421494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306023, 27.816429, 46.767681>,  <33.751736, 27.724314, 47.303352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306023, 27.816429, 46.767681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311474, 28.188341, 46.914825>,  <33.314743, 28.411489, 47.003113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311474, 28.188341, 46.914825>,  <33.306023, 27.816429, 46.767681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311474, 28.188341, 46.914825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051237, 0.368058, -0.928390,
		-0.998594, -0.006194, 0.052655,
		0.013630, 0.929782, 0.367858,
		33.315563, 28.467276, 47.025181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841206, 28.072678, 46.380615>,  <33.306023, 27.816429, 46.767681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841206, 28.072678, 46.380615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042648, 28.380962, 46.536762>,  <33.163513, 28.565933, 46.630451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042648, 28.380962, 46.536762>,  <32.841206, 28.072678, 46.380615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042648, 28.380962, 46.536762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105336, 0.503253, -0.857695,
		-0.857486, 0.390824, 0.334626,
		0.503609, 0.770710, 0.390365,
		33.193729, 28.612175, 46.653873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527443, 28.802164, 46.197079>,  <32.841206, 28.072678, 46.380615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527443, 28.802164, 46.197079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892471, 28.920700, 46.309784>,  <33.111488, 28.991821, 46.377407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892471, 28.920700, 46.309784>,  <32.527443, 28.802164, 46.197079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892471, 28.920700, 46.309784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012978, 0.667726, -0.744294,
		-0.408705, 0.682881, 0.605503,
		0.912574, 0.296338, 0.281765,
		33.166245, 29.009602, 46.394314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437542, 29.602297, 46.227741>,  <32.527443, 28.802164, 46.197079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437542, 29.602297, 46.227741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816147, 29.479141, 46.189125>,  <33.043308, 29.405249, 46.165955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816147, 29.479141, 46.189125>,  <32.437542, 29.602297, 46.227741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816147, 29.479141, 46.189125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143536, 0.669727, -0.728604,
		0.288988, 0.675774, 0.678097,
		0.946511, -0.307889, -0.096545,
		33.100101, 29.386774, 46.160160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860451, 30.216898, 46.347176>,  <32.437542, 29.602297, 46.227741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860451, 30.216898, 46.347176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052528, 29.940180, 46.131462>,  <33.167774, 29.774149, 46.002033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052528, 29.940180, 46.131462>,  <32.860451, 30.216898, 46.347176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052528, 29.940180, 46.131462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089785, 0.650343, -0.754316,
		0.872554, 0.313800, 0.374406,
		0.480197, -0.691797, -0.539285,
		33.196587, 29.732641, 45.969677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409515, 30.614128, 46.035198>,  <32.860451, 30.216898, 46.347176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409515, 30.614128, 46.035198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412251, 30.292173, 45.797844>,  <33.413891, 30.099001, 45.655430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412251, 30.292173, 45.797844>,  <33.409515, 30.614128, 46.035198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412251, 30.292173, 45.797844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012320, 0.593426, -0.804794,
		0.999901, -0.001809, 0.013973,
		0.006837, -0.804887, -0.593389,
		33.414303, 30.050707, 45.619827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046558, 30.632715, 45.564987>,  <33.409515, 30.614128, 46.035198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046558, 30.632715, 45.564987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808769, 30.363007, 45.389732>,  <33.666096, 30.201181, 45.284580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808769, 30.363007, 45.389732>,  <34.046558, 30.632715, 45.564987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808769, 30.363007, 45.389732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236616, 0.374063, -0.896710,
		0.768517, -0.636737, -0.062827,
		-0.594470, -0.674272, -0.438136,
		33.630428, 30.160725, 45.258293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391365, 30.276880, 45.055519>,  <34.046558, 30.632715, 45.564987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391365, 30.276880, 45.055519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006588, 30.267500, 44.946621>,  <33.775723, 30.261871, 44.881283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006588, 30.267500, 44.946621>,  <34.391365, 30.276880, 45.055519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006588, 30.267500, 44.946621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246591, 0.354735, -0.901863,
		0.117723, -0.934673, -0.335452,
		-0.961943, -0.023450, -0.272243,
		33.718006, 30.260464, 44.864948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502602, 30.484890, 44.479465>,  <34.391365, 30.276880, 45.055519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502602, 30.484890, 44.479465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106773, 30.437038, 44.447357>,  <33.869278, 30.408327, 44.428093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106773, 30.437038, 44.447357>,  <34.502602, 30.484890, 44.479465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106773, 30.437038, 44.447357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066188, 0.117381, -0.990879,
		0.127973, -0.985854, -0.108237,
		-0.989567, -0.119642, -0.080273,
		33.809902, 30.401150, 44.423275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334442, 30.062956, 43.969028>,  <34.502602, 30.484890, 44.479465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334442, 30.062956, 43.969028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020416, 30.309378, 43.994808>,  <33.832001, 30.457232, 44.010277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020416, 30.309378, 43.994808>,  <34.334442, 30.062956, 43.969028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020416, 30.309378, 43.994808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048931, 0.042037, -0.997917,
		-0.617483, -0.786579, -0.002857,
		-0.785061, 0.616057, 0.064445,
		33.784897, 30.494194, 44.014141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042580, 30.066475, 43.268784>,  <34.334442, 30.062956, 43.969028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042580, 30.066475, 43.268784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828674, 30.365726, 43.425926>,  <33.700333, 30.545277, 43.520210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828674, 30.365726, 43.425926>,  <34.042580, 30.066475, 43.268784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828674, 30.365726, 43.425926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226152, 0.321242, -0.919597,
		-0.814179, -0.580608, -0.002596,
		-0.534759, 0.748130, 0.392855,
		33.668247, 30.590166, 43.543781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418861, 30.011978, 42.974876>,  <34.042580, 30.066475, 43.268784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418861, 30.011978, 42.974876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443474, 30.391243, 43.099583>,  <33.458241, 30.618803, 43.174408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443474, 30.391243, 43.099583>,  <33.418861, 30.011978, 42.974876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443474, 30.391243, 43.099583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250287, 0.317039, -0.914791,
		-0.966214, -0.021745, 0.256821,
		0.061531, 0.948163, 0.311770,
		33.461933, 30.675692, 43.193115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924404, 30.324923, 42.641464>,  <33.418861, 30.011978, 42.974876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924404, 30.324923, 42.641464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143826, 30.649479, 42.722191>,  <33.275478, 30.844213, 42.770626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143826, 30.649479, 42.722191>,  <32.924404, 30.324923, 42.641464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143826, 30.649479, 42.722191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286751, 0.409307, -0.866165,
		-0.785405, 0.417268, 0.457195,
		0.548556, 0.811391, 0.201820,
		33.308392, 30.892897, 42.782738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474865, 30.866907, 42.401630>,  <32.924404, 30.324923, 42.641464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474865, 30.866907, 42.401630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849644, 31.005283, 42.421432>,  <33.074512, 31.088310, 42.433315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849644, 31.005283, 42.421432>,  <32.474865, 30.866907, 42.401630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849644, 31.005283, 42.421432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150327, 0.526859, -0.836553,
		-0.315480, 0.776366, 0.545645,
		0.936949, 0.345941, 0.049505,
		33.130730, 31.109066, 42.436283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494591, 31.573576, 42.372940>,  <32.474865, 30.866907, 42.401630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494591, 31.573576, 42.372940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862476, 31.477345, 42.248848>,  <33.083210, 31.419605, 42.174393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862476, 31.477345, 42.248848>,  <32.494591, 31.573576, 42.372940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862476, 31.477345, 42.248848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102147, 0.616363, -0.780809,
		0.379062, 0.749812, 0.542304,
		0.919717, -0.240580, -0.310230,
		33.138390, 31.405170, 42.155781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704678, 32.110226, 42.213165>,  <32.494591, 31.573576, 42.372940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704678, 32.110226, 42.213165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949276, 31.855564, 42.025230>,  <33.096035, 31.702768, 41.912472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949276, 31.855564, 42.025230>,  <32.704678, 32.110226, 42.213165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949276, 31.855564, 42.025230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031364, 0.573820, -0.818380,
		0.790623, 0.515175, 0.330923,
		0.611500, -0.636651, -0.469833,
		33.132725, 31.664568, 41.884281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077713, 32.537766, 41.798115>,  <32.704678, 32.110226, 42.213165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077713, 32.537766, 41.798115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236477, 32.198284, 41.658310>,  <33.331734, 31.994595, 41.574425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236477, 32.198284, 41.658310>,  <33.077713, 32.537766, 41.798115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236477, 32.198284, 41.658310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175083, 0.443807, -0.878852,
		0.901005, 0.287629, 0.324745,
		0.396907, -0.848708, -0.349514,
		33.355549, 31.943672, 41.553455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860535, 32.618073, 41.466660>,  <33.077713, 32.537766, 41.798115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860535, 32.618073, 41.466660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632992, 32.322670, 41.321873>,  <33.496468, 32.145428, 41.235001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632992, 32.322670, 41.321873>,  <33.860535, 32.618073, 41.466660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632992, 32.322670, 41.321873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073622, 0.392620, -0.916749,
		0.819137, -0.548145, -0.168973,
		-0.568854, -0.738503, -0.361965,
		33.462334, 32.101120, 41.213284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178406, 32.405182, 40.802059>,  <33.860535, 32.618073, 41.466660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178406, 32.405182, 40.802059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810898, 32.253048, 40.759697>,  <33.590393, 32.161766, 40.734280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810898, 32.253048, 40.759697>,  <34.178406, 32.405182, 40.802059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810898, 32.253048, 40.759697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060187, 0.400054, -0.914513,
		0.390197, -0.833846, -0.390446,
		-0.918762, -0.380340, -0.105913,
		33.535267, 32.138947, 40.727924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174114, 31.974823, 40.197208>,  <34.178406, 32.405182, 40.802059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174114, 31.974823, 40.197208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783752, 32.025330, 40.268398>,  <33.549538, 32.055634, 40.311111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783752, 32.025330, 40.268398>,  <34.174114, 31.974823, 40.197208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783752, 32.025330, 40.268398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147670, 0.218360, -0.964631,
		-0.160663, -0.967665, -0.194451,
		-0.975900, 0.126266, 0.177978,
		33.490982, 32.063210, 40.321793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927353, 31.646505, 39.652462>,  <34.174114, 31.974823, 40.197208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927353, 31.646505, 39.652462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661247, 31.911491, 39.790192>,  <33.501583, 32.070484, 39.872829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661247, 31.911491, 39.790192>,  <33.927353, 31.646505, 39.652462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661247, 31.911491, 39.790192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256955, 0.229858, -0.938690,
		-0.700995, -0.712956, 0.017306,
		-0.665267, 0.662465, 0.344327,
		33.461666, 32.110229, 39.893490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357914, 31.294401, 39.364075>,  <33.927353, 31.646505, 39.652462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357914, 31.294401, 39.364075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312725, 31.686256, 39.430458>,  <33.285610, 31.921370, 39.470287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312725, 31.686256, 39.430458>,  <33.357914, 31.294401, 39.364075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312725, 31.686256, 39.430458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028067, 0.163817, -0.986091,
		-0.993201, -0.116060, 0.008988,
		-0.112973, 0.979640, 0.165961,
		33.278831, 31.980148, 39.480247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841022, 31.434587, 38.850777>,  <33.357914, 31.294401, 39.364075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841022, 31.434587, 38.850777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980335, 31.793394, 38.959633>,  <33.063923, 32.008678, 39.024948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980335, 31.793394, 38.959633>,  <32.841022, 31.434587, 38.850777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980335, 31.793394, 38.959633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182328, 0.349598, -0.918988,
		-0.919486, 0.270452, 0.285311,
		0.348286, 0.897016, 0.272139,
		33.084820, 32.062500, 39.041275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305546, 31.952610, 38.516575>,  <32.841022, 31.434587, 38.850777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305546, 31.952610, 38.516575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619488, 32.189789, 38.588600>,  <32.807854, 32.332096, 38.631817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619488, 32.189789, 38.588600>,  <32.305546, 31.952610, 38.516575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619488, 32.189789, 38.588600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116886, 0.427015, -0.896658,
		-0.608562, 0.682695, 0.404450,
		0.784850, 0.592947, 0.180068,
		32.854942, 32.367672, 38.642620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156860, 32.699139, 38.458557>,  <32.305546, 31.952610, 38.516575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156860, 32.699139, 38.458557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551556, 32.665012, 38.403309>,  <32.788372, 32.644539, 38.370159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551556, 32.665012, 38.403309>,  <32.156860, 32.699139, 38.458557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551556, 32.665012, 38.403309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091957, 0.407437, -0.908592,
		0.133791, 0.909239, 0.394187,
		0.986734, -0.085313, -0.138123,
		32.847576, 32.639420, 38.361874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396008, 33.222202, 38.029636>,  <32.156860, 32.699139, 38.458557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396008, 33.222202, 38.029636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716480, 32.984600, 38.000610>,  <32.908764, 32.842041, 37.983192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716480, 32.984600, 38.000610>,  <32.396008, 33.222202, 38.029636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716480, 32.984600, 38.000610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109471, 0.264703, -0.958096,
		0.588320, 0.759667, 0.277102,
		0.801184, -0.594002, -0.072568,
		32.956837, 32.806400, 37.978840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970318, 33.608341, 37.709911>,  <32.396008, 33.222202, 38.029636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970318, 33.608341, 37.709911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012894, 33.216656, 37.640858>,  <33.038441, 32.981644, 37.599426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012894, 33.216656, 37.640858>,  <32.970318, 33.608341, 37.709911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012894, 33.216656, 37.640858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085270, 0.181974, -0.979599,
		0.990656, 0.089552, 0.102868,
		0.106444, -0.979217, -0.172638,
		33.044827, 32.922890, 37.589066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490597, 33.555565, 37.143185>,  <32.970318, 33.608341, 37.709911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490597, 33.555565, 37.143185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314735, 33.196629, 37.158573>,  <33.209221, 32.981266, 37.167805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314735, 33.196629, 37.158573>,  <33.490597, 33.555565, 37.143185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314735, 33.196629, 37.158573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124670, -0.103387, -0.986797,
		0.889474, -0.429050, 0.157326,
		-0.439651, -0.897345, 0.038471,
		33.182838, 32.927425, 37.170113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998192, 33.035294, 36.813442>,  <33.490597, 33.555565, 37.143185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998192, 33.035294, 36.813442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630573, 32.878078, 36.825317>,  <33.410004, 32.783749, 36.832443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630573, 32.878078, 36.825317>,  <33.998192, 33.035294, 36.813442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630573, 32.878078, 36.825317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069607, -0.235976, -0.969263,
		0.387963, -0.888727, 0.244230,
		-0.919043, -0.393039, 0.029689,
		33.354862, 32.760166, 36.834225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156513, 32.494583, 36.451275>,  <33.998192, 33.035294, 36.813442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156513, 32.494583, 36.451275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760220, 32.537018, 36.417339>,  <33.522446, 32.562477, 36.396980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760220, 32.537018, 36.417339>,  <34.156513, 32.494583, 36.451275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760220, 32.537018, 36.417339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049785, -0.297489, -0.953426,
		-0.126385, -0.948813, 0.289450,
		-0.990731, 0.106088, -0.084835,
		33.463001, 32.568844, 36.391888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932804, 31.807981, 36.157307>,  <34.156513, 32.494583, 36.451275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932804, 31.807981, 36.157307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666370, 32.103600, 36.117027>,  <33.506508, 32.280972, 36.092857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666370, 32.103600, 36.117027>,  <33.932804, 31.807981, 36.157307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666370, 32.103600, 36.117027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182480, -0.292379, -0.938731,
		-0.723206, -0.606902, 0.329611,
		-0.666089, 0.739043, -0.100703,
		33.466545, 32.325314, 36.086815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685875, 31.609539, 36.015232>,  <33.932804, 31.807981, 36.157307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685875, 31.609539, 36.015232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048664, 31.761452, 36.088074>,  <35.266338, 31.852600, 36.131779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048664, 31.761452, 36.088074>,  <34.685875, 31.609539, 36.015232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048664, 31.761452, 36.088074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191737, -0.757264, 0.624330,
		0.375012, -0.531334, -0.759638,
		0.906974, 0.379782, 0.182107,
		35.320755, 31.875387, 36.142704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164761, 31.088978, 35.910183>,  <34.685875, 31.609539, 36.015232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164761, 31.088978, 35.910183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348686, 31.336531, 36.164917>,  <35.459042, 31.485062, 36.317757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348686, 31.336531, 36.164917>,  <35.164761, 31.088978, 35.910183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348686, 31.336531, 36.164917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208586, -0.772351, 0.599972,
		0.863168, -0.143044, -0.484231,
		0.459818, 0.618880, 0.636832,
		35.486633, 31.522194, 36.355965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502407, 30.629749, 36.287022>,  <35.164761, 31.088978, 35.910183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502407, 30.629749, 36.287022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563107, 30.961672, 36.501831>,  <35.599525, 31.160826, 36.630718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563107, 30.961672, 36.501831>,  <35.502407, 30.629749, 36.287022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563107, 30.961672, 36.501831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282503, -0.557063, 0.780943,
		0.947187, 0.033201, -0.318958,
		0.151752, 0.829806, 0.537023,
		35.608631, 31.210613, 36.662937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217712, 30.613001, 36.579334>,  <35.502407, 30.629749, 36.287022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217712, 30.613001, 36.579334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022465, 30.867758, 36.818035>,  <35.905315, 31.020613, 36.961254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022465, 30.867758, 36.818035>,  <36.217712, 30.613001, 36.579334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022465, 30.867758, 36.818035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237759, -0.560844, 0.793048,
		0.839769, 0.528983, 0.122331,
		-0.488117, 0.636891, 0.596750,
		35.876030, 31.058825, 36.997059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587475, 30.687834, 37.257778>,  <36.217712, 30.613001, 36.579334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587475, 30.687834, 37.257778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223614, 30.833416, 37.337852>,  <36.005299, 30.920765, 37.385899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223614, 30.833416, 37.337852>,  <36.587475, 30.687834, 37.257778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223614, 30.833416, 37.337852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142754, -0.178670, 0.973498,
		0.390076, 0.914120, 0.110571,
		-0.909650, 0.363953, 0.200188,
		35.950718, 30.942602, 37.397907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708000, 31.003859, 37.792805>,  <36.587475, 30.687834, 37.257778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708000, 31.003859, 37.792805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314861, 30.930210, 37.788475>,  <36.078979, 30.886021, 37.785877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314861, 30.930210, 37.788475>,  <36.708000, 31.003859, 37.792805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314861, 30.930210, 37.788475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085376, -0.506206, 0.858177,
		-0.163489, 0.842529, 0.513241,
		-0.982844, -0.184121, -0.010827,
		36.020008, 30.874973, 37.785229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469582, 31.221313, 38.384846>,  <36.708000, 31.003859, 37.792805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469582, 31.221313, 38.384846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195766, 30.963511, 38.248604>,  <36.031475, 30.808828, 38.166859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195766, 30.963511, 38.248604>,  <36.469582, 31.221313, 38.384846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195766, 30.963511, 38.248604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006134, -0.472320, 0.881405,
		-0.728948, 0.601269, 0.327277,
		-0.684541, -0.644507, -0.340609,
		35.990402, 30.770159, 38.146420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144012, 31.046022, 38.956917>,  <36.469582, 31.221313, 38.384846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144012, 31.046022, 38.956917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029022, 30.736444, 38.731220>,  <35.960030, 30.550697, 38.595802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029022, 30.736444, 38.731220>,  <36.144012, 31.046022, 38.956917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029022, 30.736444, 38.731220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002661, -0.588461, 0.808521,
		-0.957784, 0.233932, 0.167109,
		-0.287476, -0.773944, -0.564241,
		35.942780, 30.504261, 38.561947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583656, 30.660543, 39.358433>,  <36.144012, 31.046022, 38.956917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583656, 30.660543, 39.358433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791428, 30.441559, 39.095989>,  <35.916092, 30.310167, 38.938522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791428, 30.441559, 39.095989>,  <35.583656, 30.660543, 39.358433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791428, 30.441559, 39.095989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173858, -0.684048, 0.708415,
		-0.836642, -0.482040, -0.260132,
		0.519427, -0.547463, -0.656110,
		35.947254, 30.277321, 38.899155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287979, 30.086512, 39.491989>,  <35.583656, 30.660543, 39.358433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287979, 30.086512, 39.491989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627781, 29.984724, 39.307125>,  <35.831661, 29.923651, 39.196209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627781, 29.984724, 39.307125>,  <35.287979, 30.086512, 39.491989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627781, 29.984724, 39.307125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268050, -0.546324, 0.793523,
		-0.454414, -0.797982, -0.395894,
		0.849504, -0.254469, -0.462157,
		35.882633, 29.908382, 39.168480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370304, 29.334019, 39.544563>,  <35.287979, 30.086512, 39.491989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370304, 29.334019, 39.544563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756668, 29.421732, 39.489513>,  <35.988487, 29.474360, 39.456482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756668, 29.421732, 39.489513>,  <35.370304, 29.334019, 39.544563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756668, 29.421732, 39.489513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236571, -0.531625, 0.813271,
		0.105171, -0.818101, -0.565375,
		0.965905, 0.219284, -0.137628,
		36.046440, 29.487516, 39.448227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672081, 28.708378, 39.668083>,  <35.370304, 29.334019, 39.544563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672081, 28.708378, 39.668083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949493, 28.984997, 39.748852>,  <36.115940, 29.150969, 39.797314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949493, 28.984997, 39.748852>,  <35.672081, 28.708378, 39.668083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949493, 28.984997, 39.748852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143836, -0.407554, 0.901782,
		0.705919, -0.596373, -0.382122,
		0.693534, 0.691548, 0.201920,
		36.157555, 29.192461, 39.809429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201248, 28.350182, 40.058060>,  <35.672081, 28.708378, 39.668083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201248, 28.350182, 40.058060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226612, 28.739164, 40.147774>,  <36.241833, 28.972555, 40.201603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226612, 28.739164, 40.147774>,  <36.201248, 28.350182, 40.058060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226612, 28.739164, 40.147774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218989, -0.232820, 0.947544,
		0.973665, -0.010971, -0.227721,
		0.063413, 0.972458, 0.224287,
		36.245636, 29.030901, 40.215061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743378, 28.409849, 40.553555>,  <36.201248, 28.350182, 40.058060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743378, 28.409849, 40.553555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563694, 28.763857, 40.602470>,  <36.455883, 28.976261, 40.631821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563694, 28.763857, 40.602470>,  <36.743378, 28.409849, 40.553555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563694, 28.763857, 40.602470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129634, -0.070864, 0.989027,
		0.883973, 0.460131, -0.082896,
		-0.449207, 0.885019, 0.122290,
		36.428932, 29.029362, 40.639156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005806, 28.637489, 41.145962>,  <36.743378, 28.409849, 40.553555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005806, 28.637489, 41.145962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693424, 28.886982, 41.132885>,  <36.505997, 29.036678, 41.125038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693424, 28.886982, 41.132885>,  <37.005806, 28.637489, 41.145962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693424, 28.886982, 41.132885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131480, -0.112996, 0.984858,
		0.610592, 0.773428, 0.170253,
		-0.780954, 0.623731, -0.032696,
		36.459137, 29.074100, 41.123077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132267, 29.146719, 41.753544>,  <37.005806, 28.637489, 41.145962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132267, 29.146719, 41.753544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747505, 29.188950, 41.652672>,  <36.516647, 29.214289, 41.592148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747505, 29.188950, 41.652672>,  <37.132267, 29.146719, 41.753544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747505, 29.188950, 41.652672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255504, -0.019068, 0.966620,
		0.097245, 0.994228, 0.045317,
		-0.961905, 0.105578, -0.252176,
		36.458935, 29.220623, 41.577019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808483, 29.735682, 42.184444>,  <37.132267, 29.146719, 41.753544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808483, 29.735682, 42.184444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494869, 29.509571, 42.081882>,  <36.306702, 29.373905, 42.020344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494869, 29.509571, 42.081882>,  <36.808483, 29.735682, 42.184444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494869, 29.509571, 42.081882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374501, 0.101373, 0.921668,
		-0.495006, 0.818648, -0.291178,
		-0.784039, -0.565278, -0.256404,
		36.259659, 29.339987, 42.004963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220345, 30.017939, 42.491711>,  <36.808483, 29.735682, 42.184444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220345, 30.017939, 42.491711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085270, 29.651791, 42.404015>,  <36.004227, 29.432102, 42.351398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085270, 29.651791, 42.404015>,  <36.220345, 30.017939, 42.491711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085270, 29.651791, 42.404015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317477, -0.108508, 0.942037,
		-0.886103, 0.387714, -0.253968,
		-0.337683, -0.915371, -0.219240,
		35.983963, 29.377180, 42.338242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514545, 29.898792, 42.812935>,  <36.220345, 30.017939, 42.491711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514545, 29.898792, 42.812935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657177, 29.532154, 42.740604>,  <35.742756, 29.312170, 42.697205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657177, 29.532154, 42.740604>,  <35.514545, 29.898792, 42.812935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657177, 29.532154, 42.740604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246112, -0.278872, 0.928256,
		-0.901265, -0.286496, -0.325027,
		0.356583, -0.916597, -0.180828,
		35.764153, 29.257175, 42.686356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031055, 29.498976, 43.040245>,  <35.514545, 29.898792, 42.812935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031055, 29.498976, 43.040245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337849, 29.244299, 43.008339>,  <35.521923, 29.091494, 42.989197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337849, 29.244299, 43.008339>,  <35.031055, 29.498976, 43.040245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337849, 29.244299, 43.008339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258586, -0.420452, 0.869686,
		-0.587258, -0.646408, -0.487119,
		0.766982, -0.636692, -0.079761,
		35.567944, 29.053291, 42.984409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772003, 28.854418, 43.228550>,  <35.031055, 29.498976, 43.040245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772003, 28.854418, 43.228550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166725, 28.847391, 43.292938>,  <35.403557, 28.843176, 43.331573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166725, 28.847391, 43.292938>,  <34.772003, 28.854418, 43.228550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166725, 28.847391, 43.292938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154823, -0.393612, 0.906145,
		0.047443, -0.919109, -0.391137,
		0.986802, -0.017567, 0.160974,
		35.462765, 28.842121, 43.341228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868214, 28.218143, 43.534275>,  <34.772003, 28.854418, 43.228550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868214, 28.218143, 43.534275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178364, 28.439953, 43.655136>,  <35.364452, 28.573038, 43.727654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178364, 28.439953, 43.655136>,  <34.868214, 28.218143, 43.534275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178364, 28.439953, 43.655136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177011, -0.268443, 0.946892,
		0.606184, -0.787683, -0.109988,
		0.775376, 0.554522, 0.302155,
		35.410976, 28.606310, 43.745781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291630, 27.801394, 44.063263>,  <34.868214, 28.218143, 43.534275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291630, 27.801394, 44.063263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404518, 28.178082, 44.136490>,  <35.472252, 28.404095, 44.180428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404518, 28.178082, 44.136490>,  <35.291630, 27.801394, 44.063263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404518, 28.178082, 44.136490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086900, -0.164945, 0.982467,
		0.955407, -0.293178, 0.035285,
		0.282218, 0.941722, 0.183067,
		35.489185, 28.460598, 44.191410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729630, 27.763952, 44.642197>,  <35.291630, 27.801394, 44.063263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729630, 27.763952, 44.642197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634747, 28.151192, 44.609913>,  <35.577816, 28.383535, 44.590542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634747, 28.151192, 44.609913>,  <35.729630, 27.763952, 44.642197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634747, 28.151192, 44.609913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068194, 0.099472, 0.992701,
		0.969062, 0.229974, -0.089614,
		-0.237210, 0.968100, -0.080712,
		35.563583, 28.441622, 44.585701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271294, 28.083828, 44.901855>,  <35.729630, 27.763952, 44.642197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271294, 28.083828, 44.901855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968628, 28.342468, 44.940578>,  <35.787029, 28.497652, 44.963810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968628, 28.342468, 44.940578>,  <36.271294, 28.083828, 44.901855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968628, 28.342468, 44.940578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070722, -0.066249, 0.995294,
		0.649970, 0.759947, 0.004399,
		-0.756662, 0.646600, 0.096805,
		35.741631, 28.536448, 44.969620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516167, 28.733078, 45.355129>,  <36.271294, 28.083828, 44.901855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516167, 28.733078, 45.355129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122208, 28.687153, 45.406975>,  <35.885834, 28.659597, 45.438084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122208, 28.687153, 45.406975>,  <36.516167, 28.733078, 45.355129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122208, 28.687153, 45.406975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122543, 0.066688, 0.990220,
		-0.122333, 0.991146, -0.051611,
		-0.984895, -0.114812, 0.129616,
		35.826740, 28.652710, 45.445858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364838, 29.257818, 45.752388>,  <36.516167, 28.733078, 45.355129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364838, 29.257818, 45.752388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071651, 28.990852, 45.805042>,  <35.895741, 28.830673, 45.836636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071651, 28.990852, 45.805042>,  <36.364838, 29.257818, 45.752388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071651, 28.990852, 45.805042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237034, -0.069186, 0.969035,
		-0.637639, 0.741467, 0.208910,
		-0.732961, -0.667413, 0.131637,
		35.851765, 28.790628, 45.844532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187672, 29.391710, 46.394192>,  <36.364838, 29.257818, 45.752388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187672, 29.391710, 46.394192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992245, 29.048161, 46.332695>,  <35.874989, 28.842030, 46.295795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992245, 29.048161, 46.332695>,  <36.187672, 29.391710, 46.394192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992245, 29.048161, 46.332695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138701, -0.097511, 0.985522,
		-0.861432, 0.502817, -0.071486,
		-0.488567, -0.858875, -0.153740,
		35.845676, 28.790499, 46.286572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733517, 29.384144, 46.830204>,  <36.187672, 29.391710, 46.394192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733517, 29.384144, 46.830204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741982, 28.987362, 46.780277>,  <35.747063, 28.749292, 46.750320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741982, 28.987362, 46.780277>,  <35.733517, 29.384144, 46.830204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741982, 28.987362, 46.780277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055958, -0.123473, 0.990769,
		-0.998209, -0.027954, 0.052895,
		0.021165, -0.991954, -0.124816,
		35.748333, 28.689775, 46.742832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229862, 29.086432, 47.275043>,  <35.733517, 29.384144, 46.830204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229862, 29.086432, 47.275043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463470, 28.772974, 47.190353>,  <35.603634, 28.584900, 47.139542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463470, 28.772974, 47.190353>,  <35.229862, 29.086432, 47.275043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463470, 28.772974, 47.190353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102740, -0.187367, 0.976903,
		-0.805212, -0.592282, -0.028915,
		0.584020, -0.783643, -0.211721,
		35.638676, 28.537882, 47.126839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970638, 28.608559, 47.709499>,  <35.229862, 29.086432, 47.275043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970638, 28.608559, 47.709499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324989, 28.463392, 47.593899>,  <35.537598, 28.376293, 47.524540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324989, 28.463392, 47.593899>,  <34.970638, 28.608559, 47.709499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324989, 28.463392, 47.593899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095198, -0.467482, 0.878862,
		-0.454045, -0.806076, -0.379584,
		0.885879, -0.362907, -0.288995,
		35.590752, 28.354519, 47.507198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959969, 27.908791, 47.793064>,  <34.970638, 28.608559, 47.709499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959969, 27.908791, 47.793064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348957, 28.001156, 47.805527>,  <35.582352, 28.056576, 47.813004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348957, 28.001156, 47.805527>,  <34.959969, 27.908791, 47.793064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348957, 28.001156, 47.805527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075680, -0.439479, 0.895059,
		0.220375, -0.868065, -0.444858,
		0.972475, 0.230915, 0.031155,
		35.640701, 28.070431, 47.814873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278297, 27.265059, 47.991180>,  <34.959969, 27.908791, 47.793064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278297, 27.265059, 47.991180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533546, 27.560421, 48.078407>,  <35.686695, 27.737638, 48.130745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533546, 27.560421, 48.078407>,  <35.278297, 27.265059, 47.991180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533546, 27.560421, 48.078407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285315, -0.489853, 0.823796,
		0.715120, -0.463463, -0.523264,
		0.638122, 0.738407, 0.218071,
		35.724983, 27.781942, 48.143829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913685, 26.891838, 48.218166>,  <35.278297, 27.265059, 47.991180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913685, 26.891838, 48.218166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914818, 27.267811, 48.354706>,  <35.915497, 27.493395, 48.436630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914818, 27.267811, 48.354706>,  <35.913685, 26.891838, 48.218166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914818, 27.267811, 48.354706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331696, -0.322904, 0.886403,
		0.943382, 0.110712, -0.312687,
		0.002832, 0.939934, 0.341344,
		35.915668, 27.549791, 48.457108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524731, 26.995256, 48.496956>,  <35.913685, 26.891838, 48.218166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524731, 26.995256, 48.496956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291946, 27.277231, 48.659134>,  <36.152275, 27.446417, 48.756439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291946, 27.277231, 48.659134>,  <36.524731, 26.995256, 48.496956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291946, 27.277231, 48.659134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471769, -0.113433, 0.874395,
		0.662384, 0.700140, -0.266555,
		-0.581963, 0.704938, 0.405441,
		36.117359, 27.488712, 48.780766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963272, 27.447592, 48.880512>,  <36.524731, 26.995256, 48.496956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963272, 27.447592, 48.880512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593243, 27.478228, 49.029305>,  <36.371223, 27.496609, 49.118580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593243, 27.478228, 49.029305>,  <36.963272, 27.447592, 48.880512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593243, 27.478228, 49.029305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352974, -0.188090, 0.916532,
		0.140164, 0.979161, 0.146963,
		-0.925075, 0.076590, 0.371982,
		36.315720, 27.501205, 49.140900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045849, 27.893869, 49.377090>,  <36.963272, 27.447592, 48.880512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045849, 27.893869, 49.377090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686287, 27.754061, 49.482765>,  <36.470551, 27.670176, 49.546169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686287, 27.754061, 49.482765>,  <37.045849, 27.893869, 49.377090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686287, 27.754061, 49.482765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368087, -0.275403, 0.888068,
		-0.237642, 0.895537, 0.376218,
		-0.898909, -0.349523, 0.264188,
		36.416615, 27.649204, 49.562023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555367, 28.327021, 49.651245>,  <37.045849, 27.893869, 49.377090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555367, 28.327021, 49.651245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754837, 28.657553, 49.755932>,  <37.874519, 28.855873, 49.818745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754837, 28.657553, 49.755932>,  <37.555367, 28.327021, 49.651245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754837, 28.657553, 49.755932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270419, 0.435186, -0.858770,
		-0.823526, 0.357475, 0.440473,
		0.498676, 0.826332, 0.261719,
		37.904442, 28.905453, 49.834446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109615, 28.850269, 49.479172>,  <37.555367, 28.327021, 49.651245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109615, 28.850269, 49.479172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457340, 29.046263, 49.505150>,  <37.665974, 29.163858, 49.520737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457340, 29.046263, 49.505150>,  <37.109615, 28.850269, 49.479172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457340, 29.046263, 49.505150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292691, 0.616195, -0.731188,
		-0.398291, 0.616618, 0.679077,
		0.869308, 0.489985, 0.064947,
		37.718132, 29.193258, 49.524635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015167, 29.653036, 49.428829>,  <37.109615, 28.850269, 49.479172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015167, 29.653036, 49.428829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405464, 29.628933, 49.344635>,  <37.639641, 29.614471, 49.294121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405464, 29.628933, 49.344635>,  <37.015167, 29.653036, 49.428829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405464, 29.628933, 49.344635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163503, 0.438816, -0.883576,
		0.145606, 0.896554, 0.418318,
		0.975739, -0.060258, -0.210483,
		37.698185, 29.610855, 49.281490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284489, 30.364697, 49.217655>,  <37.015167, 29.653036, 49.428829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284489, 30.364697, 49.217655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523682, 30.088631, 49.054642>,  <37.667198, 29.922991, 48.956833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523682, 30.088631, 49.054642>,  <37.284489, 30.364697, 49.217655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523682, 30.088631, 49.054642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117690, 0.427342, -0.896397,
		0.792820, 0.583994, 0.174319,
		0.597985, -0.690166, -0.407535,
		37.703075, 29.881580, 48.932381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558678, 30.601175, 48.634285>,  <37.284489, 30.364697, 49.217655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558678, 30.601175, 48.634285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675877, 30.229279, 48.545082>,  <37.746197, 30.006140, 48.491562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675877, 30.229279, 48.545082>,  <37.558678, 30.601175, 48.634285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675877, 30.229279, 48.545082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110898, 0.198618, -0.973783,
		0.949659, 0.310050, -0.044911,
		0.293001, -0.929742, -0.223003,
		37.763779, 29.950356, 48.478180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018978, 30.733503, 48.120403>,  <37.558678, 30.601175, 48.634285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018978, 30.733503, 48.120403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953300, 30.340601, 48.084160>,  <37.913895, 30.104858, 48.062412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953300, 30.340601, 48.084160>,  <38.018978, 30.733503, 48.120403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953300, 30.340601, 48.084160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111567, 0.072774, -0.991089,
		0.980099, -0.172839, 0.097638,
		-0.164193, -0.982258, -0.090608,
		37.904041, 30.045923, 48.056976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579792, 30.496817, 47.662567>,  <38.018978, 30.733503, 48.120403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579792, 30.496817, 47.662567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263752, 30.257399, 47.609680>,  <38.074127, 30.113749, 47.577946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263752, 30.257399, 47.609680>,  <38.579792, 30.496817, 47.662567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263752, 30.257399, 47.609680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103567, 0.082253, -0.991216,
		0.604162, -0.796856, -0.002999,
		-0.790103, -0.598544, -0.132222,
		38.026722, 30.077835, 47.570015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874317, 29.874086, 47.303215>,  <38.579792, 30.496817, 47.662567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874317, 29.874086, 47.303215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483521, 29.905308, 47.223831>,  <38.249043, 29.924040, 47.176201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483521, 29.905308, 47.223831>,  <38.874317, 29.874086, 47.303215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483521, 29.905308, 47.223831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187925, -0.124818, -0.974220,
		-0.100808, -0.989105, 0.107279,
		-0.976996, 0.078049, -0.198460,
		38.190422, 29.928724, 47.164291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800144, 29.400661, 46.791370>,  <38.874317, 29.874086, 47.303215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800144, 29.400661, 46.791370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461887, 29.614159, 46.790581>,  <38.258934, 29.742256, 46.790108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461887, 29.614159, 46.790581>,  <38.800144, 29.400661, 46.791370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461887, 29.614159, 46.790581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038964, -0.065429, -0.997096,
		-0.532321, -0.843113, 0.076126,
		-0.845646, 0.533741, -0.001979,
		38.208195, 29.774281, 46.789986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400772, 28.984570, 46.324104>,  <38.800144, 29.400661, 46.791370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400772, 28.984570, 46.324104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230976, 29.345491, 46.354176>,  <38.129101, 29.562046, 46.372219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230976, 29.345491, 46.354176>,  <38.400772, 28.984570, 46.324104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230976, 29.345491, 46.354176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219641, -0.022064, -0.975331,
		-0.878390, -0.430529, 0.207549,
		-0.424487, 0.902307, 0.075181,
		38.103630, 29.616184, 46.376728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697662, 28.996645, 45.983730>,  <38.400772, 28.984570, 46.324104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697662, 28.996645, 45.983730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841995, 29.369669, 45.979198>,  <37.928596, 29.593483, 45.976479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841995, 29.369669, 45.979198>,  <37.697662, 28.996645, 45.983730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841995, 29.369669, 45.979198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285854, 0.099026, -0.953143,
		-0.887742, 0.347166, 0.302309,
		0.360836, 0.932561, -0.011330,
		37.950245, 29.649437, 45.975800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267853, 29.349722, 45.610229>,  <37.697662, 28.996645, 45.983730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267853, 29.349722, 45.610229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578213, 29.601522, 45.593693>,  <37.764427, 29.752604, 45.583771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578213, 29.601522, 45.593693>,  <37.267853, 29.349722, 45.610229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578213, 29.601522, 45.593693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125159, 0.089370, -0.988103,
		-0.618318, 0.771842, 0.148129,
		0.775898, 0.629502, -0.041344,
		37.810982, 29.790373, 45.581291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082684, 29.873533, 45.063923>,  <37.267853, 29.349722, 45.610229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082684, 29.873533, 45.063923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479725, 29.913868, 45.090965>,  <37.717949, 29.938068, 45.107189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479725, 29.913868, 45.090965>,  <37.082684, 29.873533, 45.063923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479725, 29.913868, 45.090965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046955, 0.194656, -0.979747,
		-0.111956, 0.975674, 0.188481,
		0.992603, 0.100838, 0.067606,
		37.777504, 29.944118, 45.111248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177895, 30.421669, 44.644215>,  <37.082684, 29.873533, 45.063923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177895, 30.421669, 44.644215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555733, 30.302559, 44.699448>,  <37.782436, 30.231092, 44.732586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555733, 30.302559, 44.699448>,  <37.177895, 30.421669, 44.644215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555733, 30.302559, 44.699448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224564, 0.279467, -0.933525,
		0.239393, 0.912813, 0.330854,
		0.944596, -0.297777, 0.138082,
		37.839111, 30.213226, 44.740871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662010, 31.008587, 44.677258>,  <37.177895, 30.421669, 44.644215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662010, 31.008587, 44.677258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855484, 30.681133, 44.553394>,  <37.971569, 30.484661, 44.479076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855484, 30.681133, 44.553394>,  <37.662010, 31.008587, 44.677258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855484, 30.681133, 44.553394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008291, 0.358065, -0.933660,
		0.875203, 0.449029, 0.179978,
		0.483684, -0.818635, -0.309656,
		38.000587, 30.435543, 44.460499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206219, 31.258968, 44.275093>,  <37.662010, 31.008587, 44.677258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206219, 31.258968, 44.275093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150940, 30.888586, 44.134518>,  <38.117771, 30.666357, 44.050171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150940, 30.888586, 44.134518>,  <38.206219, 31.258968, 44.275093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150940, 30.888586, 44.134518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287936, 0.301958, -0.908799,
		0.947626, -0.226786, 0.224886,
		-0.138196, -0.925954, -0.351443,
		38.109482, 30.610800, 44.029083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680946, 31.199814, 43.823368>,  <38.206219, 31.258968, 44.275093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680946, 31.199814, 43.823368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434303, 30.900597, 43.725201>,  <38.286316, 30.721066, 43.666302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434303, 30.900597, 43.725201>,  <38.680946, 31.199814, 43.823368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434303, 30.900597, 43.725201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133107, 0.208183, -0.968990,
		0.775937, -0.630152, -0.028797,
		-0.616607, -0.748043, -0.245415,
		38.249321, 30.676184, 43.651577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919571, 30.999214, 43.192131>,  <38.680946, 31.199814, 43.823368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919571, 30.999214, 43.192131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548527, 30.849852, 43.196339>,  <38.325901, 30.760235, 43.198864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548527, 30.849852, 43.196339>,  <38.919571, 30.999214, 43.192131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548527, 30.849852, 43.196339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105607, 0.235117, -0.966213,
		0.358316, -0.897378, -0.257531,
		-0.927608, -0.373407, 0.010523,
		38.270245, 30.737829, 43.199497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880463, 30.531401, 42.625301>,  <38.919571, 30.999214, 43.192131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880463, 30.531401, 42.625301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501274, 30.642628, 42.687298>,  <38.273762, 30.709364, 42.724495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501274, 30.642628, 42.687298>,  <38.880463, 30.531401, 42.625301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501274, 30.642628, 42.687298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151032, 0.035740, -0.987883,
		-0.280239, -0.959896, 0.008117,
		-0.947974, 0.278069, 0.154990,
		38.216881, 30.726048, 42.733795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559780, 30.345776, 42.123573>,  <38.880463, 30.531401, 42.625301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559780, 30.345776, 42.123573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277473, 30.593288, 42.261562>,  <38.108089, 30.741796, 42.344357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277473, 30.593288, 42.261562>,  <38.559780, 30.345776, 42.123573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277473, 30.593288, 42.261562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241791, 0.247318, -0.938281,
		-0.665910, -0.745615, -0.024932,
		-0.705762, 0.618782, 0.344975,
		38.065746, 30.778923, 42.365055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876282, 30.152437, 41.815758>,  <38.559780, 30.345776, 42.123573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876282, 30.152437, 41.815758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845470, 30.536535, 41.923088>,  <37.826984, 30.766994, 41.987488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845470, 30.536535, 41.923088>,  <37.876282, 30.152437, 41.815758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845470, 30.536535, 41.923088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289098, 0.236055, -0.927740,
		-0.954196, -0.149031, 0.259422,
		-0.077025, 0.960244, 0.268327,
		37.822365, 30.824608, 42.003586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246475, 30.297680, 41.489021>,  <37.876282, 30.152437, 41.815758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246475, 30.297680, 41.489021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444420, 30.632248, 41.583267>,  <37.563187, 30.832989, 41.639816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444420, 30.632248, 41.583267>,  <37.246475, 30.297680, 41.489021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444420, 30.632248, 41.583267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222636, 0.384133, -0.896033,
		-0.839966, 0.390956, 0.376310,
		0.494863, 0.836418, 0.235618,
		37.592880, 30.883173, 41.653954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785099, 30.832195, 41.172798>,  <37.246475, 30.297680, 41.489021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785099, 30.832195, 41.172798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142273, 31.006035, 41.219776>,  <37.356579, 31.110338, 41.247963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142273, 31.006035, 41.219776>,  <36.785099, 30.832195, 41.172798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142273, 31.006035, 41.219776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110614, 0.464686, -0.878539,
		-0.436387, 0.771486, 0.463007,
		0.892934, 0.434598, 0.117446,
		37.410152, 31.136414, 41.255009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743988, 31.509079, 41.013298>,  <36.785099, 30.832195, 41.172798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743988, 31.509079, 41.013298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120811, 31.396730, 40.939941>,  <37.346905, 31.329321, 40.895927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120811, 31.396730, 40.939941>,  <36.743988, 31.509079, 41.013298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120811, 31.396730, 40.939941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061393, 0.393114, -0.917438,
		0.329776, 0.875541, 0.353093,
		0.942061, -0.280872, -0.183392,
		37.403431, 31.312469, 40.884922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048820, 32.138321, 40.623600>,  <36.743988, 31.509079, 41.013298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048820, 32.138321, 40.623600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286938, 31.822138, 40.565914>,  <37.429810, 31.632427, 40.531303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286938, 31.822138, 40.565914>,  <37.048820, 32.138321, 40.623600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286938, 31.822138, 40.565914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181183, 0.306914, -0.934332,
		0.782812, 0.530075, 0.325922,
		0.595296, -0.790458, -0.144216,
		37.465527, 31.585001, 40.522648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670967, 32.369579, 40.311409>,  <37.048820, 32.138321, 40.623600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670967, 32.369579, 40.311409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667198, 31.982185, 40.211849>,  <37.664936, 31.749750, 40.152111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667198, 31.982185, 40.211849>,  <37.670967, 32.369579, 40.311409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667198, 31.982185, 40.211849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323056, 0.232615, -0.917347,
		0.946333, -0.089056, 0.310682,
		-0.009426, -0.968483, -0.248901,
		37.664371, 31.691641, 40.137180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302250, 32.099457, 40.005100>,  <37.670967, 32.369579, 40.311409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302250, 32.099457, 40.005100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030220, 31.826969, 39.896702>,  <37.867004, 31.663475, 39.831665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030220, 31.826969, 39.896702>,  <38.302250, 32.099457, 40.005100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030220, 31.826969, 39.896702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332984, 0.042302, -0.941983,
		0.653164, -0.730853, 0.198068,
		-0.680072, -0.681223, -0.270993,
		37.826199, 31.622602, 39.815403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704193, 31.628599, 39.580647>,  <38.302250, 32.099457, 40.005100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704193, 31.628599, 39.580647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314964, 31.605129, 39.491478>,  <38.081429, 31.591047, 39.437977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314964, 31.605129, 39.491478>,  <38.704193, 31.628599, 39.580647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314964, 31.605129, 39.491478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199088, 0.273570, -0.941023,
		0.116199, -0.960061, -0.254521,
		-0.973068, -0.058674, -0.222925,
		38.023045, 31.587526, 39.424599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628460, 31.195095, 38.949821>,  <38.704193, 31.628599, 39.580647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628460, 31.195095, 38.949821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295483, 31.413836, 38.985600>,  <38.095695, 31.545080, 39.007065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295483, 31.413836, 38.985600>,  <38.628460, 31.195095, 38.949821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295483, 31.413836, 38.985600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072224, 0.267115, -0.960955,
		-0.549390, -0.793476, -0.261853,
		-0.832439, 0.546851, 0.089442,
		38.045750, 31.577890, 39.012432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372169, 31.166805, 38.186871>,  <38.628460, 31.195095, 38.949821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372169, 31.166805, 38.186871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125061, 31.433048, 38.354359>,  <37.976795, 31.592794, 38.454849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125061, 31.433048, 38.354359>,  <38.372169, 31.166805, 38.186871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125061, 31.433048, 38.354359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015450, 0.522098, -0.852745,
		-0.786205, -0.533272, -0.312254,
		-0.617772, 0.665608, 0.418716,
		37.939728, 31.632730, 38.479973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916241, 31.207779, 37.715836>,  <38.372169, 31.166805, 38.186871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916241, 31.207779, 37.715836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872364, 31.538446, 37.936592>,  <37.846039, 31.736847, 38.069046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872364, 31.538446, 37.936592>,  <37.916241, 31.207779, 37.715836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872364, 31.538446, 37.936592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137376, 0.537309, -0.832122,
		-0.984426, -0.167094, 0.054626,
		-0.109692, 0.826667, 0.551896,
		37.839455, 31.786446, 38.102161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317337, 31.585928, 37.560780>,  <37.916241, 31.207779, 37.715836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317337, 31.585928, 37.560780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570885, 31.864218, 37.695938>,  <37.723015, 32.031193, 37.777031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570885, 31.864218, 37.695938>,  <37.317337, 31.585928, 37.560780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570885, 31.864218, 37.695938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179297, 0.557150, -0.810825,
		-0.752370, 0.453375, 0.477903,
		0.633871, 0.695727, 0.337894,
		37.761047, 32.072937, 37.797306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972580, 32.235435, 37.571075>,  <37.317337, 31.585928, 37.560780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972580, 32.235435, 37.571075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361446, 32.328735, 37.562313>,  <37.594769, 32.384716, 37.557056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361446, 32.328735, 37.562313>,  <36.972580, 32.235435, 37.571075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361446, 32.328735, 37.562313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156817, 0.578430, -0.800517,
		-0.174052, 0.781673, 0.598910,
		0.972170, 0.233251, -0.021902,
		37.653099, 32.398712, 37.555744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988533, 32.948639, 37.393990>,  <36.972580, 32.235435, 37.571075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988533, 32.948639, 37.393990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375034, 32.858650, 37.343792>,  <37.606934, 32.804657, 37.313675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375034, 32.858650, 37.343792>,  <36.988533, 32.948639, 37.393990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375034, 32.858650, 37.343792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102607, 0.782951, -0.613563,
		0.236288, 0.579980, 0.779610,
		0.966250, -0.224971, -0.125492,
		37.664909, 32.791161, 37.306145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247383, 33.591358, 37.416294>,  <36.988533, 32.948639, 37.393990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247383, 33.591358, 37.416294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527088, 33.383236, 37.220207>,  <37.694912, 33.258362, 37.102554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527088, 33.383236, 37.220207>,  <37.247383, 33.591358, 37.416294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527088, 33.383236, 37.220207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092498, 0.745837, -0.659675,
		0.708856, 0.415941, 0.569663,
		0.699261, -0.520308, -0.490218,
		37.736866, 33.227142, 37.073143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647743, 34.082058, 37.213482>,  <37.247383, 33.591358, 37.416294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647743, 34.082058, 37.213482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744278, 33.776897, 36.973572>,  <37.802200, 33.593800, 36.829624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744278, 33.776897, 36.973572>,  <37.647743, 34.082058, 37.213482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744278, 33.776897, 36.973572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154543, 0.640373, -0.752356,
		0.958056, 0.088881, 0.272449,
		0.241339, -0.762904, -0.599777,
		37.816681, 33.548027, 36.793640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294964, 34.213055, 36.853565>,  <37.647743, 34.082058, 37.213482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294964, 34.213055, 36.853565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093731, 33.946369, 36.633602>,  <37.972992, 33.786358, 36.501625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093731, 33.946369, 36.633602>,  <38.294964, 34.213055, 36.853565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093731, 33.946369, 36.633602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096876, 0.588774, -0.802471,
		0.858790, -0.456984, -0.231615,
		-0.503085, -0.666717, -0.549904,
		37.942806, 33.746353, 36.468632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664860, 34.173103, 36.184231>,  <38.294964, 34.213055, 36.853565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664860, 34.173103, 36.184231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301704, 34.030014, 36.096806>,  <38.083809, 33.944160, 36.044350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301704, 34.030014, 36.096806>,  <38.664860, 34.173103, 36.184231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301704, 34.030014, 36.096806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051954, 0.613377, -0.788080,
		0.415975, -0.704135, -0.575464,
		-0.907891, -0.357719, -0.218567,
		38.029339, 33.922699, 36.031235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443420, 34.475105, 35.599289>,  <38.664860, 34.173103, 36.184231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443420, 34.475105, 35.599289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088177, 34.304962, 35.668949>,  <37.875031, 34.202877, 35.710743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088177, 34.304962, 35.668949>,  <38.443420, 34.475105, 35.599289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088177, 34.304962, 35.668949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385439, 0.482825, -0.786331,
		0.250392, -0.765473, -0.592753,
		-0.888111, -0.425361, 0.174148,
		37.821743, 34.177353, 35.721191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189972, 34.117531, 34.961716>,  <38.443420, 34.475105, 35.599289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189972, 34.117531, 34.961716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886436, 34.236835, 35.193302>,  <37.704315, 34.308418, 35.332256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886436, 34.236835, 35.193302>,  <38.189972, 34.117531, 34.961716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886436, 34.236835, 35.193302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473980, 0.356766, -0.805022,
		-0.446663, -0.885301, -0.129359,
		-0.758838, 0.298260, 0.578970,
		37.658787, 34.326313, 35.366993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732727, 33.877357, 34.517643>,  <38.189972, 34.117531, 34.961716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732727, 33.877357, 34.517643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817184, 33.583290, 34.775311>,  <38.867859, 33.406849, 34.929909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817184, 33.583290, 34.775311>,  <38.732727, 33.877357, 34.517643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817184, 33.583290, 34.775311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839336, -0.201372, -0.504940,
		0.500932, 0.647286, 0.574533,
		0.211145, -0.735167, 0.644164,
		38.880527, 33.362740, 34.968559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411400, 33.907436, 34.568199>,  <38.732727, 33.877357, 34.517643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411400, 33.907436, 34.568199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332462, 33.541817, 34.709946>,  <39.285099, 33.322445, 34.794994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332462, 33.541817, 34.709946>,  <39.411400, 33.907436, 34.568199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332462, 33.541817, 34.709946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871224, -0.329250, -0.364091,
		0.449472, 0.236884, 0.861314,
		-0.197340, -0.914046, 0.354368,
		39.273262, 33.267601, 34.816257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877827, 33.699829, 35.181561>,  <39.411400, 33.907436, 34.568199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877827, 33.699829, 35.181561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762756, 33.348534, 35.028755>,  <39.693714, 33.137756, 34.937073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762756, 33.348534, 35.028755>,  <39.877827, 33.699829, 35.181561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762756, 33.348534, 35.028755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956776, -0.281309, -0.073790,
		-0.042657, -0.386726, 0.921208,
		-0.287680, -0.878242, -0.382010,
		39.676453, 33.085060, 34.914154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480648, 33.244869, 35.276459>,  <39.877827, 33.699829, 35.181561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480648, 33.244869, 35.276459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247993, 33.045937, 35.018974>,  <40.108402, 32.926575, 34.864483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247993, 33.045937, 35.018974>,  <40.480648, 33.244869, 35.276459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247993, 33.045937, 35.018974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774013, -0.581769, -0.249897,
		-0.250206, -0.643587, 0.723321,
		-0.581636, -0.497334, -0.643707,
		40.073502, 32.896736, 34.825863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002720, 33.266811, 34.756760>,  <40.480648, 33.244869, 35.276459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002720, 33.266811, 34.756760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848724, 33.307178, 34.389805>,  <40.756329, 33.331398, 34.169632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848724, 33.307178, 34.389805>,  <41.002720, 33.266811, 34.756760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848724, 33.307178, 34.389805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894950, 0.283691, -0.344361,
		0.225504, -0.953591, -0.199531,
		-0.384985, 0.100915, -0.917389,
		40.733231, 33.337452, 34.114590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713718, 33.352058, 35.039413>,  <41.002720, 33.266811, 34.756760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713718, 33.352058, 35.039413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778095, 32.967457, 35.128502>,  <41.816723, 32.736694, 35.181953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778095, 32.967457, 35.128502>,  <41.713718, 33.352058, 35.039413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778095, 32.967457, 35.128502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631868, -0.072970, -0.771634,
		0.758182, 0.264921, 0.595800,
		0.160946, -0.961505, 0.222719,
		41.826378, 32.679005, 35.195316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.445610, 33.211185, 35.056465>,  <41.713718, 33.352058, 35.039413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.445610, 33.211185, 35.056465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224045, 32.898766, 34.941135>,  <42.091106, 32.711311, 34.871937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224045, 32.898766, 34.941135>,  <42.445610, 33.211185, 35.056465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224045, 32.898766, 34.941135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449925, 0.010573, -0.893004,
		0.700532, -0.624374, 0.345560,
		-0.553915, -0.781054, -0.288328,
		42.057869, 32.664448, 34.854637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771755, 32.717884, 34.677380>,  <42.445610, 33.211185, 35.056465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771755, 32.717884, 34.677380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408230, 32.690323, 34.512787>,  <42.190117, 32.673786, 34.414032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408230, 32.690323, 34.512787>,  <42.771755, 32.717884, 34.677380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408230, 32.690323, 34.512787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417006, -0.119470, -0.901018,
		0.012925, -0.990444, 0.137309,
		-0.908812, -0.068904, -0.411477,
		42.135586, 32.669651, 34.389343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.217793, 33.177132, 34.460670>,  <42.771755, 32.717884, 34.677380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.217793, 33.177132, 34.460670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550045, 33.363102, 34.338104>,  <43.749397, 33.474686, 34.264565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550045, 33.363102, 34.338104>,  <43.217793, 33.177132, 34.460670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550045, 33.363102, 34.338104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281529, -0.124111, -0.951492,
		-0.480406, 0.876606, 0.027801,
		0.830633, 0.464929, -0.306414,
		43.799236, 33.502583, 34.246181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074028, 33.841049, 34.032688>,  <43.217793, 33.177132, 34.460670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.074028, 33.841049, 34.032688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.438568, 33.727463, 33.913494>,  <43.657291, 33.659309, 33.841980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.438568, 33.727463, 33.913494>,  <43.074028, 33.841049, 34.032688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.438568, 33.727463, 33.913494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267246, 0.142397, -0.953049,
		0.313068, 0.948201, 0.053884,
		0.911355, -0.283969, -0.297983,
		43.711975, 33.642273, 33.824100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306435, 34.353939, 33.501976>,  <43.074028, 33.841049, 34.032688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306435, 34.353939, 33.501976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.522774, 34.019535, 33.464947>,  <43.652576, 33.818893, 33.442730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.522774, 34.019535, 33.464947>,  <43.306435, 34.353939, 33.501976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.522774, 34.019535, 33.464947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175654, -0.004626, -0.984441,
		0.822574, 0.548695, -0.149351,
		0.540849, -0.836010, -0.092576,
		43.685028, 33.768730, 33.437176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.486130, 34.354160, 32.767365>,  <43.306435, 34.353939, 33.501976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.486130, 34.354160, 32.767365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.569038, 33.985092, 32.897423>,  <43.618782, 33.763653, 32.975460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.569038, 33.985092, 32.897423>,  <43.486130, 34.354160, 32.767365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.569038, 33.985092, 32.897423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352539, -0.380482, -0.854956,
		0.912554, 0.062580, -0.404140,
		0.207271, -0.922669, 0.325149,
		43.631218, 33.708290, 32.994968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765293, 34.117485, 32.215260>,  <43.486130, 34.354160, 32.767365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765293, 34.117485, 32.215260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641495, 33.790916, 32.410263>,  <43.567215, 33.594975, 32.527267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641495, 33.790916, 32.410263>,  <43.765293, 34.117485, 32.215260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641495, 33.790916, 32.410263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215311, -0.439202, -0.872206,
		0.926205, -0.374909, -0.039855,
		-0.309493, -0.816422, 0.487513,
		43.548645, 33.545990, 32.556519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.168034, 33.577621, 31.901323>,  <43.765293, 34.117485, 32.215260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.168034, 33.577621, 31.901323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.836025, 33.427635, 32.066471>,  <43.636818, 33.337643, 32.165558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.836025, 33.427635, 32.066471>,  <44.168034, 33.577621, 31.901323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.836025, 33.427635, 32.066471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236950, -0.433057, -0.869664,
		0.504894, -0.819670, 0.270598,
		-0.830022, -0.374970, 0.412869,
		43.587017, 33.315144, 32.190331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.242165, 32.824680, 31.913439>,  <44.168034, 33.577621, 31.901323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.242165, 32.824680, 31.913439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.851631, 32.902157, 31.951935>,  <43.617313, 32.948643, 31.975033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.851631, 32.902157, 31.951935>,  <44.242165, 32.824680, 31.913439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.851631, 32.902157, 31.951935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202626, -0.663494, -0.720222,
		-0.075648, -0.722675, 0.687036,
		-0.976330, 0.193695, 0.096240,
		43.558731, 32.960266, 31.980806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.884232, 32.250874, 31.818127>,  <44.242165, 32.824680, 31.913439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.884232, 32.250874, 31.818127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.578476, 32.502041, 31.759573>,  <43.395023, 32.652740, 31.724440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.578476, 32.502041, 31.759573>,  <43.884232, 32.250874, 31.818127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.578476, 32.502041, 31.759573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298872, -0.546252, -0.782486,
		-0.571301, -0.554372, 0.605216,
		-0.764389, 0.627917, -0.146388,
		43.349159, 32.690414, 31.715656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.208427, 31.905714, 31.921112>,  <43.884232, 32.250874, 31.818127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.208427, 31.905714, 31.921112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081814, 32.229671, 31.723577>,  <43.005844, 32.424046, 31.605057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081814, 32.229671, 31.723577>,  <43.208427, 31.905714, 31.921112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.081814, 32.229671, 31.723577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487042, -0.585506, -0.648053,
		-0.814000, 0.035389, 0.579786,
		-0.316534, 0.809895, -0.493838,
		42.986855, 32.472641, 31.575426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498997, 31.874075, 31.914740>,  <43.208427, 31.905714, 31.921112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498997, 31.874075, 31.914740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604794, 32.105453, 31.606079>,  <42.668270, 32.244282, 31.420883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604794, 32.105453, 31.606079>,  <42.498997, 31.874075, 31.914740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604794, 32.105453, 31.606079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719035, -0.414941, -0.557506,
		-0.642676, 0.702300, 0.306173,
		0.264493, 0.578445, -0.771651,
		42.684143, 32.278988, 31.374584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880947, 32.010578, 31.683325>,  <42.498997, 31.874075, 31.914740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880947, 32.010578, 31.683325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119705, 32.140987, 31.390089>,  <42.262959, 32.219234, 31.214148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119705, 32.140987, 31.390089>,  <41.880947, 32.010578, 31.683325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119705, 32.140987, 31.390089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636508, -0.363831, -0.680062,
		-0.488440, 0.872544, -0.009650,
		0.596895, 0.326027, -0.733091,
		42.298775, 32.238796, 31.170162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423615, 32.327839, 31.139387>,  <41.880947, 32.010578, 31.683325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423615, 32.327839, 31.139387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760807, 32.228485, 30.948521>,  <41.963123, 32.168873, 30.834002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760807, 32.228485, 30.948521>,  <41.423615, 32.327839, 31.139387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760807, 32.228485, 30.948521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536901, -0.333300, -0.775015,
		0.033466, 0.909513, -0.414326,
		0.842981, -0.248388, -0.477164,
		42.013702, 32.153969, 30.805372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413677, 32.576580, 30.536783>,  <41.423615, 32.327839, 31.139387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413677, 32.576580, 30.536783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692646, 32.294281, 30.486958>,  <41.860027, 32.124901, 30.457062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692646, 32.294281, 30.486958>,  <41.413677, 32.576580, 30.536783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692646, 32.294281, 30.486958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501180, -0.356065, -0.788693,
		0.512265, 0.612485, -0.602035,
		0.697426, -0.705748, -0.124565,
		41.901875, 32.082558, 30.449589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519798, 32.471451, 29.857056>,  <41.413677, 32.576580, 30.536783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519798, 32.471451, 29.857056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678246, 32.135456, 30.005388>,  <41.773315, 31.933861, 30.094387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678246, 32.135456, 30.005388>,  <41.519798, 32.471451, 29.857056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678246, 32.135456, 30.005388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467772, -0.532142, -0.705702,
		0.790112, 0.106081, -0.603714,
		0.396123, -0.839983, 0.370830,
		41.797081, 31.883461, 30.116636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396065, 32.026493, 29.243408>,  <41.519798, 32.471451, 29.857056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396065, 32.026493, 29.243408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514507, 31.773045, 29.529303>,  <41.585575, 31.620975, 29.700840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514507, 31.773045, 29.529303>,  <41.396065, 32.026493, 29.243408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514507, 31.773045, 29.529303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182370, -0.772032, -0.608858,
		0.937582, 0.049941, -0.344159,
		0.296109, -0.633619, 0.714736,
		41.603340, 31.582958, 29.743723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919811, 31.477386, 29.028465>,  <41.396065, 32.026493, 29.243408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919811, 31.477386, 29.028465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.727203, 31.301214, 29.331558>,  <41.611637, 31.195511, 29.513414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.727203, 31.301214, 29.331558>,  <41.919811, 31.477386, 29.028465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727203, 31.301214, 29.331558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271236, -0.747232, -0.606692,
		0.833406, -0.497661, 0.240350,
		-0.481524, -0.440430, 0.757731,
		41.582745, 31.169085, 29.558878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172363, 30.822586, 29.097246>,  <41.919811, 31.477386, 29.028465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.172363, 30.822586, 29.097246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810860, 30.829723, 29.268314>,  <41.593956, 30.834005, 29.370956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810860, 30.829723, 29.268314>,  <42.172363, 30.822586, 29.097246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810860, 30.829723, 29.268314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282438, -0.775615, -0.564491,
		0.321638, -0.630954, 0.706007,
		-0.903758, 0.017841, 0.427672,
		41.539734, 30.835075, 29.396616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003490, 30.106564, 29.227451>,  <42.172363, 30.822586, 29.097246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003490, 30.106564, 29.227451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646702, 30.287106, 29.237759>,  <41.432629, 30.395430, 29.243944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646702, 30.287106, 29.237759>,  <42.003490, 30.106564, 29.227451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646702, 30.287106, 29.237759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432466, -0.835260, -0.339579,
		-0.131745, -0.314040, 0.940224,
		-0.891973, 0.451353, 0.025771,
		41.379108, 30.422512, 29.245489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614460, 29.654192, 29.444836>,  <42.003490, 30.106564, 29.227451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614460, 29.654192, 29.444836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360447, 29.889853, 29.244982>,  <41.208038, 30.031248, 29.125069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360447, 29.889853, 29.244982>,  <41.614460, 29.654192, 29.444836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360447, 29.889853, 29.244982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440228, -0.807488, -0.392635,
		-0.634770, -0.029383, 0.772142,
		-0.635032, 0.589152, -0.499634,
		41.169937, 30.066599, 29.095091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979973, 29.287983, 29.441898>,  <41.614460, 29.654192, 29.444836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979973, 29.287983, 29.441898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975433, 29.551855, 29.141314>,  <40.972710, 29.710178, 28.960962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975433, 29.551855, 29.141314>,  <40.979973, 29.287983, 29.441898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975433, 29.551855, 29.141314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385847, -0.696197, -0.605335,
		-0.922493, 0.283080, 0.262437,
		-0.011350, 0.659678, -0.751463,
		40.972027, 29.749758, 28.915874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362782, 29.206953, 29.167900>,  <40.979973, 29.287983, 29.441898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362782, 29.206953, 29.167900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567505, 29.378593, 28.870197>,  <40.690338, 29.481579, 28.691576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567505, 29.378593, 28.870197>,  <40.362782, 29.206953, 29.167900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567505, 29.378593, 28.870197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563777, -0.485923, -0.667858,
		-0.648232, 0.761413, -0.006783,
		0.511811, 0.429103, -0.744258,
		40.721046, 29.507324, 28.646919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136791, 28.669193, 29.577198>,  <40.362782, 29.206953, 29.167900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136791, 28.669193, 29.577198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888264, 28.973143, 29.500717>,  <39.739147, 29.155512, 29.454828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888264, 28.973143, 29.500717>,  <40.136791, 28.669193, 29.577198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888264, 28.973143, 29.500717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372347, -0.071615, 0.925326,
		0.689438, 0.646115, 0.327432,
		-0.621316, 0.759873, -0.191204,
		39.701870, 29.201105, 29.443356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180099, 29.090313, 30.198221>,  <40.136791, 28.669193, 29.577198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180099, 29.090313, 30.198221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825321, 29.190218, 30.042810>,  <39.612453, 29.250160, 29.949564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825321, 29.190218, 30.042810>,  <40.180099, 29.090313, 30.198221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825321, 29.190218, 30.042810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385226, 0.064063, 0.920596,
		0.254819, 0.966186, 0.039394,
		-0.886943, 0.249761, -0.388525,
		39.559238, 29.265146, 29.926252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645054, 28.506828, 30.401703>,  <40.180099, 29.090313, 30.198221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645054, 28.506828, 30.401703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647720, 28.138653, 30.558035>,  <40.649319, 27.917747, 30.651834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647720, 28.138653, 30.558035>,  <40.645054, 28.506828, 30.401703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647720, 28.138653, 30.558035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206264, 0.381169, 0.901202,
		-0.978473, -0.086621, -0.187313,
		0.006664, -0.920438, 0.390831,
		40.649719, 27.862522, 30.675283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057018, 28.357046, 30.708883>,  <40.645054, 28.506828, 30.401703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057018, 28.357046, 30.708883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359222, 28.160852, 30.882612>,  <40.540543, 28.043137, 30.986851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359222, 28.160852, 30.882612>,  <40.057018, 28.357046, 30.708883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359222, 28.160852, 30.882612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140068, 0.526688, 0.838440,
		-0.639993, -0.694281, 0.329215,
		0.755506, -0.490483, 0.434323,
		40.585873, 28.013708, 31.012909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860218, 28.107132, 31.445562>,  <40.057018, 28.357046, 30.708883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860218, 28.107132, 31.445562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242317, 28.215599, 31.398298>,  <40.471577, 28.280680, 31.369940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242317, 28.215599, 31.398298>,  <39.860218, 28.107132, 31.445562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242317, 28.215599, 31.398298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034701, 0.499443, 0.865651,
		0.293749, -0.822815, 0.486504,
		0.955253, 0.271166, -0.118158,
		40.528893, 28.296949, 31.362850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213718, 28.796692, 31.450468>,  <39.860218, 28.107132, 31.445562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213718, 28.796692, 31.450468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329479, 28.516239, 31.711134>,  <40.398937, 28.347967, 31.867533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329479, 28.516239, 31.711134>,  <40.213718, 28.796692, 31.450468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329479, 28.516239, 31.711134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957071, 0.200467, -0.209349,
		0.016144, 0.684274, 0.729046,
		0.289402, -0.701129, 0.651663,
		40.416298, 28.305901, 31.906633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835171, 29.025681, 31.638096>,  <40.213718, 28.796692, 31.450468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835171, 29.025681, 31.638096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848690, 28.646721, 31.765406>,  <40.856800, 28.419346, 31.841791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848690, 28.646721, 31.765406>,  <40.835171, 29.025681, 31.638096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848690, 28.646721, 31.765406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999233, 0.025719, -0.029542,
		0.019802, 0.319026, 0.947539,
		0.033795, -0.947397, 0.318272,
		40.858829, 28.362501, 31.860888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253468, 29.010881, 32.318188>,  <40.835171, 29.025681, 31.638096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253468, 29.010881, 32.318188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251717, 28.677416, 32.097286>,  <41.250668, 28.477337, 31.964745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251717, 28.677416, 32.097286>,  <41.253468, 29.010881, 32.318188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251717, 28.677416, 32.097286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998321, 0.028262, -0.050569,
		0.057766, -0.551552, 0.832138,
		-0.004373, -0.833662, -0.552258,
		41.250404, 28.427317, 31.931608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596386, 28.486057, 32.600792>,  <41.253468, 29.010881, 32.318188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596386, 28.486057, 32.600792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607716, 28.432138, 32.204605>,  <41.614513, 28.399788, 31.966892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607716, 28.432138, 32.204605>,  <41.596386, 28.486057, 32.600792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607716, 28.432138, 32.204605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983361, 0.181628, 0.003402,
		0.179438, -0.974085, 0.137698,
		0.028324, -0.134796, -0.990468,
		41.616211, 28.391699, 31.907465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155605, 28.072355, 32.423828>,  <41.596386, 28.486057, 32.600792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155605, 28.072355, 32.423828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099262, 28.282272, 32.088032>,  <42.065456, 28.408222, 31.886553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099262, 28.282272, 32.088032>,  <42.155605, 28.072355, 32.423828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099262, 28.282272, 32.088032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986357, 0.147364, -0.073380,
		0.085202, -0.838377, -0.538391,
		-0.140860, 0.524793, -0.839494,
		42.057003, 28.439711, 31.836184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516335, 27.827385, 31.845757>,  <42.155605, 28.072355, 32.423828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516335, 27.827385, 31.845757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473289, 28.216808, 31.765154>,  <42.447460, 28.450462, 31.716793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473289, 28.216808, 31.765154>,  <42.516335, 27.827385, 31.845757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473289, 28.216808, 31.765154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993846, 0.110696, 0.004039,
		0.026238, -0.199832, -0.979479,
		-0.107617, 0.973557, -0.201507,
		42.441006, 28.508875, 31.704702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074875, 28.044840, 31.499809>,  <42.516335, 27.827385, 31.845757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.074875, 28.044840, 31.499809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.964912, 28.409286, 31.622641>,  <42.898937, 28.627954, 31.696339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.964912, 28.409286, 31.622641>,  <43.074875, 28.044840, 31.499809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.964912, 28.409286, 31.622641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956183, 0.225619, 0.186577,
		0.100711, 0.344912, -0.933217,
		-0.274904, 0.911116, 0.307077,
		42.882442, 28.682621, 31.714764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.692242, 28.468613, 31.463552>,  <43.074875, 28.044840, 31.499809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.692242, 28.468613, 31.463552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.438156, 28.686960, 31.682106>,  <43.285706, 28.817968, 31.813238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.438156, 28.686960, 31.682106>,  <43.692242, 28.468613, 31.463552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.438156, 28.686960, 31.682106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755702, 0.585320, 0.293794,
		-0.159435, 0.599523, -0.784316,
		-0.635212, 0.545868, 0.546382,
		43.247593, 28.850721, 31.846020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.792263, 29.197323, 31.306522>,  <43.692242, 28.468613, 31.463552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.792263, 29.197323, 31.306522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.644829, 29.157064, 31.676174>,  <43.556370, 29.132910, 31.897964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.644829, 29.157064, 31.676174>,  <43.792263, 29.197323, 31.306522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.644829, 29.157064, 31.676174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818922, 0.435281, 0.374029,
		-0.439901, 0.894651, -0.078016,
		-0.368584, -0.100647, 0.924130,
		43.534252, 29.126871, 31.953413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.751343, 29.859446, 31.506727>,  <43.792263, 29.197323, 31.306522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.751343, 29.859446, 31.506727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.766468, 29.621397, 31.827826>,  <43.775543, 29.478569, 32.020485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.766468, 29.621397, 31.827826>,  <43.751343, 29.859446, 31.506727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.766468, 29.621397, 31.827826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663972, 0.615315, 0.424887,
		-0.746801, 0.516933, 0.418413,
		0.037818, -0.595120, 0.802747,
		43.777813, 29.442862, 32.068649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.717514, 30.293938, 32.085835>,  <43.751343, 29.859446, 31.506727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.717514, 30.293938, 32.085835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877464, 29.957327, 32.231129>,  <43.973434, 29.755362, 32.318306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877464, 29.957327, 32.231129>,  <43.717514, 30.293938, 32.085835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877464, 29.957327, 32.231129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683276, 0.537832, 0.493833,
		-0.610931, 0.050717, 0.790058,
		0.399872, -0.841525, 0.363232,
		43.997425, 29.704870, 32.340099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.817146, 30.376240, 32.798355>,  <43.717514, 30.293938, 32.085835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.817146, 30.376240, 32.798355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.076859, 30.094011, 32.684795>,  <44.232685, 29.924675, 32.616657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.076859, 30.094011, 32.684795>,  <43.817146, 30.376240, 32.798355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.076859, 30.094011, 32.684795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720963, 0.452147, 0.525142,
		-0.242160, -0.545649, 0.802263,
		0.649284, -0.705571, -0.283901,
		44.271645, 29.882339, 32.599625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.135704, 30.109909, 33.419365>,  <43.817146, 30.376240, 32.798355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.135704, 30.109909, 33.419365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.362377, 30.020271, 33.102215>,  <44.498379, 29.966488, 32.911922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.362377, 30.020271, 33.102215>,  <44.135704, 30.109909, 33.419365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.362377, 30.020271, 33.102215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799955, 0.380126, 0.464302,
		0.197346, -0.897377, 0.394675,
		0.566680, -0.224094, -0.792878,
		44.532383, 29.953043, 32.864353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.736809, 29.846298, 33.763489>,  <44.135704, 30.109909, 33.419365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.736809, 29.846298, 33.763489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.831257, 29.944895, 33.387512>,  <44.887928, 30.004053, 33.161926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.831257, 29.944895, 33.387512>,  <44.736809, 29.846298, 33.763489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.831257, 29.944895, 33.387512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842171, 0.430640, 0.324495,
		0.484761, -0.868211, -0.105906,
		0.236123, 0.246493, -0.939940,
		44.902092, 30.018843, 33.105530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.391388, 29.575979, 33.636456>,  <44.736809, 29.846298, 33.763489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.391388, 29.575979, 33.636456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305328, 29.892487, 33.407509>,  <45.253693, 30.082390, 33.270142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305328, 29.892487, 33.407509>,  <45.391388, 29.575979, 33.636456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.305328, 29.892487, 33.407509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850969, 0.439449, 0.287641,
		0.479128, -0.425183, -0.767890,
		-0.215148, 0.791267, -0.572370,
		45.240784, 30.129868, 33.235798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.094360, 29.875429, 33.574245>,  <45.391388, 29.575979, 33.636456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.094360, 29.875429, 33.574245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849628, 30.154345, 33.424873>,  <45.702789, 30.321693, 33.335251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849628, 30.154345, 33.424873>,  <46.094360, 29.875429, 33.574245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.849628, 30.154345, 33.424873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615623, 0.716210, 0.328711,
		0.496659, -0.028774, -0.867469,
		-0.611832, 0.697291, -0.373426,
		45.666080, 30.363531, 33.312847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.508633, 30.362968, 33.297897>,  <46.094360, 29.875429, 33.574245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.508633, 30.362968, 33.297897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.158657, 30.554230, 33.328472>,  <45.948669, 30.668987, 33.346817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.158657, 30.554230, 33.328472>,  <46.508633, 30.362968, 33.297897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.158657, 30.554230, 33.328472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481165, 0.840795, 0.248080,
		0.054356, 0.253833, -0.965719,
		-0.874943, 0.478155, 0.076433,
		45.896175, 30.697676, 33.351402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.559036, 31.085278, 33.006721>,  <46.508633, 30.362968, 33.297897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.559036, 31.085278, 33.006721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.253277, 31.109791, 33.263451>,  <46.069820, 31.124498, 33.417488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.253277, 31.109791, 33.263451>,  <46.559036, 31.085278, 33.006721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.253277, 31.109791, 33.263451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406628, 0.818350, 0.406148,
		-0.500349, 0.571443, -0.650464,
		-0.764398, 0.061281, 0.641826,
		46.023956, 31.128176, 33.455997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.371490, 31.731636, 32.966778>,  <46.559036, 31.085278, 33.006721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.371490, 31.731636, 32.966778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.179722, 31.629860, 33.302734>,  <46.064663, 31.568794, 33.504307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.179722, 31.629860, 33.302734>,  <46.371490, 31.731636, 32.966778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.179722, 31.629860, 33.302734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207181, 0.897179, 0.390058,
		-0.852781, 0.361011, -0.377407,
		-0.479417, -0.254442, 0.839892,
		46.035896, 31.553528, 33.554703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983669, 32.279503, 33.084602>,  <46.371490, 31.731636, 32.966778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.983669, 32.279503, 33.084602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.020870, 32.108150, 33.444122>,  <46.043190, 32.005337, 33.659832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.020870, 32.108150, 33.444122>,  <45.983669, 32.279503, 33.084602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.020870, 32.108150, 33.444122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039005, 0.903585, 0.426629,
		-0.994901, -0.004620, 0.100747,
		0.093004, -0.428383, 0.898798,
		46.048771, 31.979635, 33.713760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.468369, 32.603275, 33.515186>,  <45.983669, 32.279503, 33.084602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.468369, 32.603275, 33.515186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.727337, 32.431007, 33.766701>,  <45.882717, 32.327648, 33.917610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.727337, 32.431007, 33.766701>,  <45.468369, 32.603275, 33.515186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.727337, 32.431007, 33.766701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101899, 0.866539, 0.488596,
		-0.755291, -0.252255, 0.604900,
		0.647420, -0.430671, 0.628785,
		45.921562, 32.301807, 33.955338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.340912, 32.980743, 34.128746>,  <45.468369, 32.603275, 33.515186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.340912, 32.980743, 34.128746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.683937, 32.794941, 34.217129>,  <45.889751, 32.683460, 34.270157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.683937, 32.794941, 34.217129>,  <45.340912, 32.980743, 34.128746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.683937, 32.794941, 34.217129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277497, 0.779469, 0.561625,
		-0.433106, -0.420314, 0.797342,
		0.857563, -0.464504, 0.220957,
		45.941204, 32.655590, 34.283417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.412476, 32.934345, 34.863392>,  <45.340912, 32.980743, 34.128746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.412476, 32.934345, 34.863392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.778122, 32.908451, 34.703293>,  <45.997509, 32.892914, 34.607235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.778122, 32.908451, 34.703293>,  <45.412476, 32.934345, 34.863392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.778122, 32.908451, 34.703293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244437, 0.875583, 0.416659,
		0.323478, -0.478710, 0.816210,
		0.914118, -0.064732, -0.400247,
		46.052357, 32.889030, 34.583218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.911018, 32.981831, 35.448856>,  <45.412476, 32.934345, 34.863392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.911018, 32.981831, 35.448856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107441, 33.075050, 35.113106>,  <46.225292, 33.130981, 34.911655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107441, 33.075050, 35.113106>,  <45.911018, 32.981831, 35.448856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.107441, 33.075050, 35.113106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342403, 0.834363, 0.431970,
		0.801017, -0.499525, 0.329918,
		0.491051, 0.233051, -0.839378,
		46.254757, 33.144966, 34.861294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.551201, 33.208809, 35.626457>,  <45.911018, 32.981831, 35.448856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.551201, 33.208809, 35.626457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.510162, 33.373390, 35.264202>,  <46.485538, 33.472141, 35.046848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.510162, 33.373390, 35.264202>,  <46.551201, 33.208809, 35.626457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.510162, 33.373390, 35.264202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384249, 0.856164, 0.345449,
		0.917511, -0.312548, -0.245942,
		-0.102597, 0.411457, -0.905636,
		46.479382, 33.496826, 34.992512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.680405, 33.904739, 35.734722>,  <46.551201, 33.208809, 35.626457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.680405, 33.904739, 35.734722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.683178, 33.951790, 35.337509>,  <46.684841, 33.980019, 35.099182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.683178, 33.951790, 35.337509>,  <46.680405, 33.904739, 35.734722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.683178, 33.951790, 35.337509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316130, 0.941869, 0.113770,
		0.948690, -0.314718, -0.030650,
		0.006937, 0.117622, -0.993034,
		46.685261, 33.987076, 35.039600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.322472, 34.077168, 35.509438>,  <46.680405, 33.904739, 35.734722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.322472, 34.077168, 35.509438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.079567, 34.224995, 35.228111>,  <46.933823, 34.313690, 35.059315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.079567, 34.224995, 35.228111>,  <47.322472, 34.077168, 35.509438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.079567, 34.224995, 35.228111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336403, 0.921564, 0.193787,
		0.719766, -0.118917, -0.683956,
		-0.607264, 0.369566, -0.703315,
		46.897388, 34.335865, 35.017117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.647099, 34.264595, 34.895565>,  <47.322472, 34.077168, 35.509438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.647099, 34.264595, 34.895565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.327267, 34.470085, 35.019993>,  <47.135368, 34.593380, 35.094650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.327267, 34.470085, 35.019993>,  <47.647099, 34.264595, 34.895565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.327267, 34.470085, 35.019993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598847, 0.721160, 0.348295,
		-0.045405, 0.464773, -0.884265,
		-0.799575, 0.513726, 0.311072,
		47.087395, 34.624203, 35.113316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.778030, 34.844238, 35.382252>,  <47.647099, 34.264595, 34.895565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.778030, 34.844238, 35.382252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.757607, 34.929111, 34.991894>,  <47.745354, 34.980038, 34.757679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.757607, 34.929111, 34.991894>,  <47.778030, 34.844238, 35.382252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.757607, 34.929111, 34.991894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321605, 0.928609, 0.185081,
		0.945496, -0.304403, -0.115652,
		-0.051056, 0.212187, -0.975894,
		47.742290, 34.992767, 34.699127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.107605, 34.889206, 45.341846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.840210, 35.179539, 45.406704>,  <34.679771, 35.353741, 45.445618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.840210, 35.179539, 45.406704>,  <35.107605, 34.889206, 45.341846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840210, 35.179539, 45.406704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327011, -0.091049, -0.940624,
		-0.667974, -0.681817, 0.298221,
		-0.668486, 0.725834, 0.162143,
		34.639664, 35.397289, 45.455345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643513, 34.787727, 44.924599>,  <35.107605, 34.889206, 45.341846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643513, 34.787727, 44.924599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.554279, 35.174171, 44.976555>,  <34.500740, 35.406036, 45.007729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.554279, 35.174171, 44.976555>,  <34.643513, 34.787727, 44.924599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554279, 35.174171, 44.976555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511441, -0.002564, -0.859315,
		-0.829857, -0.258130, 0.494679,
		-0.223083, 0.966107, 0.129890,
		34.487354, 35.464005, 45.015522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219742, 34.838562, 44.338993>,  <34.643513, 34.787727, 44.924599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219742, 34.838562, 44.338993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.255768, 35.223629, 44.441105>,  <34.277386, 35.454670, 44.502373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.255768, 35.223629, 44.441105>,  <34.219742, 34.838562, 44.338993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255768, 35.223629, 44.441105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224594, 0.269352, -0.936487,
		-0.970281, 0.027013, 0.240468,
		0.090068, 0.962663, 0.255280,
		34.282787, 35.512428, 44.517689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556095, 35.111641, 44.221233>,  <34.219742, 34.838562, 44.338993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556095, 35.111641, 44.221233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.838287, 35.394943, 44.210968>,  <34.007603, 35.564926, 44.204807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.838287, 35.394943, 44.210968>,  <33.556095, 35.111641, 44.221233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838287, 35.394943, 44.210968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250175, 0.214989, -0.944030,
		-0.663101, 0.672419, 0.328861,
		0.705485, 0.708260, -0.025663,
		34.049934, 35.607422, 44.203270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168232, 35.699944, 44.009880>,  <33.556095, 35.111641, 44.221233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168232, 35.699944, 44.009880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.550220, 35.796524, 43.940914>,  <33.779415, 35.854473, 43.899536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.550220, 35.796524, 43.940914>,  <33.168232, 35.699944, 44.009880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550220, 35.796524, 43.940914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239567, 0.284717, -0.928194,
		-0.175025, 0.927705, 0.329741,
		0.954973, 0.241453, -0.172415,
		33.836712, 35.868961, 43.889191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183002, 36.280045, 43.715988>,  <33.168232, 35.699944, 44.009880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183002, 36.280045, 43.715988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.548199, 36.170269, 43.595238>,  <33.767319, 36.104404, 43.522789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.548199, 36.170269, 43.595238>,  <33.183002, 36.280045, 43.715988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548199, 36.170269, 43.595238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175444, 0.403915, -0.897815,
		0.368323, 0.872662, 0.320624,
		0.912994, -0.274435, -0.301874,
		33.822098, 36.087940, 43.504677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414070, 36.845272, 43.364346>,  <33.183002, 36.280045, 43.715988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414070, 36.845272, 43.364346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.664169, 36.566341, 43.224174>,  <33.814228, 36.398983, 43.140072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.664169, 36.566341, 43.224174>,  <33.414070, 36.845272, 43.364346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664169, 36.566341, 43.224174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306065, 0.193950, -0.932045,
		0.717904, 0.690015, -0.092159,
		0.625251, -0.697325, -0.350427,
		33.851746, 36.357143, 43.119045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529392, 37.064617, 42.719616>,  <33.414070, 36.845272, 43.364346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529392, 37.064617, 42.719616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.673637, 36.694000, 42.676769>,  <33.760185, 36.471630, 42.651062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.673637, 36.694000, 42.676769>,  <33.529392, 37.064617, 42.719616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673637, 36.694000, 42.676769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086398, 0.081163, -0.992949,
		0.928706, 0.367322, -0.050783,
		0.360610, -0.926546, -0.107113,
		33.781822, 36.416035, 42.644634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169682, 37.050758, 42.281860>,  <33.529392, 37.064617, 42.719616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169682, 37.050758, 42.281860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.018261, 36.681465, 42.255508>,  <33.927410, 36.459888, 42.239697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.018261, 36.681465, 42.255508>,  <34.169682, 37.050758, 42.281860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018261, 36.681465, 42.255508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135099, 0.125527, -0.982848,
		0.915667, -0.363159, -0.172247,
		-0.378552, -0.923232, -0.065879,
		33.904694, 36.404495, 42.235744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636192, 36.738136, 41.905121>,  <34.169682, 37.050758, 42.281860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636192, 36.738136, 41.905121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.309807, 36.513348, 41.850876>,  <34.113976, 36.378475, 41.818329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.309807, 36.513348, 41.850876>,  <34.636192, 36.738136, 41.905121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309807, 36.513348, 41.850876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007831, 0.223824, -0.974598,
		0.578048, -0.796300, -0.178232,
		-0.815965, -0.561969, -0.135617,
		34.065018, 36.344757, 41.810192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825264, 36.230968, 41.416656>,  <34.636192, 36.738136, 41.905121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825264, 36.230968, 41.416656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.425495, 36.217812, 41.413055>,  <34.185635, 36.209919, 41.410896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.425495, 36.217812, 41.413055>,  <34.825264, 36.230968, 41.416656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425495, 36.217812, 41.413055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000939, 0.290456, -0.956888,
		0.034089, -0.956323, -0.290318,
		-0.999418, -0.032892, -0.009003,
		34.125671, 36.207943, 41.410355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606182, 35.822472, 40.838802>,  <34.825264, 36.230968, 41.416656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606182, 35.822472, 40.838802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.275612, 36.037781, 40.904877>,  <34.077271, 36.166965, 40.944523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.275612, 36.037781, 40.904877>,  <34.606182, 35.822472, 40.838802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275612, 36.037781, 40.904877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125647, 0.109681, -0.985993,
		-0.548851, -0.835603, -0.023010,
		-0.826423, 0.538273, 0.165190,
		34.027683, 36.199261, 40.954433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084553, 35.534134, 40.465553>,  <34.606182, 35.822472, 40.838802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084553, 35.534134, 40.465553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.983047, 35.916992, 40.521374>,  <33.922142, 36.146706, 40.554867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.983047, 35.916992, 40.521374>,  <34.084553, 35.534134, 40.465553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983047, 35.916992, 40.521374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198480, 0.089673, -0.975994,
		-0.946683, -0.275372, 0.167218,
		-0.253767, 0.957146, 0.139548,
		33.906918, 36.204136, 40.563240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579636, 35.674259, 39.884933>,  <34.084553, 35.534134, 40.465553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579636, 35.674259, 39.884933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.669987, 36.027157, 40.050159>,  <33.724197, 36.238895, 40.149296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.669987, 36.027157, 40.050159>,  <33.579636, 35.674259, 39.884933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669987, 36.027157, 40.050159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154425, 0.451092, -0.879016,
		-0.961838, 0.134762, 0.238132,
		0.225877, 0.882245, 0.413067,
		33.737751, 36.291832, 40.174080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034412, 36.142822, 39.730522>,  <33.579636, 35.674259, 39.884933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034412, 36.142822, 39.730522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.362373, 36.365875, 39.782383>,  <33.559151, 36.499706, 39.813499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.362373, 36.365875, 39.782383>,  <33.034412, 36.142822, 39.730522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362373, 36.365875, 39.782383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140699, 0.415775, -0.898518,
		-0.554948, 0.718454, 0.419353,
		0.819900, 0.557633, 0.129648,
		33.608345, 36.533165, 39.821278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856834, 36.890053, 39.501804>,  <33.034412, 36.142822, 39.730522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856834, 36.890053, 39.501804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.250900, 36.834904, 39.460930>,  <33.487339, 36.801815, 39.436405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.250900, 36.834904, 39.460930>,  <32.856834, 36.890053, 39.501804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250900, 36.834904, 39.460930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054009, 0.316117, -0.947182,
		0.162896, 0.938648, 0.303981,
		0.985164, -0.137874, -0.102189,
		33.546448, 36.793541, 39.430275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146893, 37.533012, 39.204109>,  <32.856834, 36.890053, 39.501804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146893, 37.533012, 39.204109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.380493, 37.219162, 39.120869>,  <33.520653, 37.030853, 39.070923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.380493, 37.219162, 39.120869>,  <33.146893, 37.533012, 39.204109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380493, 37.219162, 39.120869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142858, 0.153016, -0.977843,
		0.799080, 0.600795, -0.022727,
		0.584005, -0.784622, -0.208100,
		33.555695, 36.983776, 39.058437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506752, 37.742283, 38.622234>,  <33.146893, 37.533012, 39.204109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506752, 37.742283, 38.622234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.581688, 37.350647, 38.590500>,  <33.626648, 37.115665, 38.571461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.581688, 37.350647, 38.590500>,  <33.506752, 37.742283, 38.622234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581688, 37.350647, 38.590500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103683, 0.100025, -0.989568,
		0.976808, 0.177160, 0.120254,
		0.187340, -0.979086, -0.079337,
		33.637890, 37.056923, 38.566700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934719, 37.781425, 38.052494>,  <33.506752, 37.742283, 38.622234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934719, 37.781425, 38.052494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.872101, 37.387318, 38.080009>,  <33.834530, 37.150852, 38.096519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.872101, 37.387318, 38.080009>,  <33.934719, 37.781425, 38.052494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872101, 37.387318, 38.080009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024302, -0.073469, -0.997001,
		0.987372, -0.154403, 0.035446,
		-0.156544, -0.985272, 0.068789,
		33.825138, 37.091736, 38.100647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404964, 37.419132, 37.633999>,  <33.934719, 37.781425, 38.052494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404964, 37.419132, 37.633999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.106800, 37.156612, 37.680702>,  <33.927902, 36.999100, 37.708725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.106800, 37.156612, 37.680702>,  <34.404964, 37.419132, 37.633999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106800, 37.156612, 37.680702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004793, -0.180428, -0.983576,
		0.666584, -0.732613, 0.137639,
		-0.745415, -0.656296, 0.116759,
		33.883175, 36.959724, 37.715729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585655, 36.812122, 37.381729>,  <34.404964, 37.419132, 37.633999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585655, 36.812122, 37.381729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.189373, 36.763592, 37.357124>,  <33.951603, 36.734474, 37.342361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.189373, 36.763592, 37.357124>,  <34.585655, 36.812122, 37.381729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189373, 36.763592, 37.357124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084499, -0.194563, -0.977244,
		0.106597, -0.973358, 0.203007,
		-0.990705, -0.121325, -0.061508,
		33.892162, 36.727196, 37.338673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449623, 36.117439, 37.060223>,  <34.585655, 36.812122, 37.381729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449623, 36.117439, 37.060223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.133904, 36.355949, 37.001614>,  <33.944473, 36.499054, 36.966450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.133904, 36.355949, 37.001614>,  <34.449623, 36.117439, 37.060223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133904, 36.355949, 37.001614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045602, -0.181041, -0.982418,
		-0.612319, -0.782099, 0.115703,
		-0.789295, 0.596277, -0.146521,
		33.897114, 36.534832, 36.957657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910301, 35.607315, 36.851471>,  <34.449623, 36.117439, 37.060223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910301, 35.607315, 36.851471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.292038, 35.682823, 36.758869>,  <35.521080, 35.728127, 36.703308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.292038, 35.682823, 36.758869>,  <34.910301, 35.607315, 36.851471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292038, 35.682823, 36.758869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208815, 0.132594, 0.968925,
		0.213596, -0.973029, 0.087123,
		0.954344, 0.188766, -0.231505,
		35.578342, 35.739452, 36.689419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302254, 35.216763, 37.314217>,  <34.910301, 35.607315, 36.851471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302254, 35.216763, 37.314217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.606388, 35.454765, 37.210022>,  <35.788868, 35.597569, 37.147503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.606388, 35.454765, 37.210022>,  <35.302254, 35.216763, 37.314217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606388, 35.454765, 37.210022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287984, 0.050657, 0.956294,
		0.582202, -0.802119, -0.132837,
		0.760333, 0.595011, -0.260491,
		35.834488, 35.633270, 37.131874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926723, 34.914684, 37.578728>,  <35.302254, 35.216763, 37.314217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926723, 34.914684, 37.578728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.991844, 35.307350, 37.539062>,  <36.030918, 35.542950, 37.515263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.991844, 35.307350, 37.539062>,  <35.926723, 34.914684, 37.578728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991844, 35.307350, 37.539062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473843, 0.010362, 0.880548,
		0.865429, -0.190341, -0.463468,
		0.162802, 0.981663, -0.099159,
		36.040684, 35.601849, 37.509315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597492, 34.921680, 37.678097>,  <35.926723, 34.914684, 37.578728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597492, 34.921680, 37.678097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.477543, 35.298424, 37.738731>,  <36.405575, 35.524471, 37.775112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.477543, 35.298424, 37.738731>,  <36.597492, 34.921680, 37.678097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477543, 35.298424, 37.738731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358708, -0.035916, 0.932759,
		0.883972, 0.334082, -0.327082,
		-0.299870, 0.941859, 0.151587,
		36.387581, 35.580982, 37.784206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048721, 35.236141, 38.063999>,  <36.597492, 34.921680, 37.678097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048721, 35.236141, 38.063999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.751549, 35.494263, 38.135143>,  <36.573246, 35.649136, 38.177830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.751549, 35.494263, 38.135143>,  <37.048721, 35.236141, 38.063999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751549, 35.494263, 38.135143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136115, -0.114522, 0.984052,
		0.655384, 0.755291, -0.002753,
		-0.742930, 0.645306, 0.177862,
		36.528671, 35.687855, 38.188503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323719, 35.784306, 38.493397>,  <37.048721, 35.236141, 38.063999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323719, 35.784306, 38.493397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.931789, 35.837997, 38.552639>,  <36.696632, 35.870213, 38.588184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.931789, 35.837997, 38.552639>,  <37.323719, 35.784306, 38.493397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931789, 35.837997, 38.552639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121385, -0.189079, 0.974431,
		0.158804, 0.972744, 0.168969,
		-0.979820, 0.134233, 0.148103,
		36.637844, 35.878269, 38.597069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232723, 36.356590, 38.998283>,  <37.323719, 35.784306, 38.493397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232723, 36.356590, 38.998283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.885468, 36.159492, 39.022038>,  <36.677113, 36.041233, 39.036289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.885468, 36.159492, 39.022038>,  <37.232723, 36.356590, 38.998283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885468, 36.159492, 39.022038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047238, 0.037071, 0.998196,
		-0.494061, 0.869382, -0.008906,
		-0.868143, -0.492748, 0.059383,
		36.625023, 36.011669, 39.039852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908138, 36.688721, 39.393303>,  <37.232723, 36.356590, 38.998283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908138, 36.688721, 39.393303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.729095, 36.331985, 39.419430>,  <36.621670, 36.117943, 39.435104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.729095, 36.331985, 39.419430>,  <36.908138, 36.688721, 39.393303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729095, 36.331985, 39.419430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079876, 0.112626, 0.990422,
		-0.890654, 0.438106, -0.121650,
		-0.447611, -0.891840, 0.065317,
		36.594810, 36.064434, 39.439026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293537, 36.842518, 39.816566>,  <36.908138, 36.688721, 39.393303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293537, 36.842518, 39.816566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.356014, 36.448215, 39.841484>,  <36.393501, 36.211632, 39.856434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.356014, 36.448215, 39.841484>,  <36.293537, 36.842518, 39.816566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356014, 36.448215, 39.841484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167112, 0.035783, 0.985288,
		-0.973487, -0.164306, -0.159144,
		0.156194, -0.985760, 0.062292,
		36.402874, 36.152489, 39.860172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853451, 36.608070, 40.326935>,  <36.293537, 36.842518, 39.816566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853451, 36.608070, 40.326935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.140629, 36.330574, 40.304047>,  <36.312935, 36.164078, 40.290314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.140629, 36.330574, 40.304047>,  <35.853451, 36.608070, 40.326935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140629, 36.330574, 40.304047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037645, -0.043391, 0.998349,
		-0.695078, -0.718917, -0.005036,
		0.717949, -0.693740, -0.057224,
		36.356014, 36.122452, 40.286880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729893, 36.111290, 40.947445>,  <35.853451, 36.608070, 40.326935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729893, 36.111290, 40.947445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.106590, 36.014828, 40.853672>,  <36.332611, 35.956951, 40.797409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.106590, 36.014828, 40.853672>,  <35.729893, 36.111290, 40.947445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106590, 36.014828, 40.853672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085055, -0.503624, 0.859726,
		-0.325390, -0.829584, -0.453775,
		0.941747, -0.241150, -0.234434,
		36.389114, 35.942482, 40.783340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710258, 35.491726, 41.162296>,  <35.729893, 36.111290, 40.947445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710258, 35.491726, 41.162296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.100842, 35.573452, 41.134624>,  <36.335190, 35.622486, 41.118023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.100842, 35.573452, 41.134624>,  <35.710258, 35.491726, 41.162296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100842, 35.573452, 41.134624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130188, -0.302481, 0.944223,
		0.171991, -0.931000, -0.321959,
		0.976458, 0.204313, -0.069181,
		36.393780, 35.634747, 41.113869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025475, 34.953903, 41.432953>,  <35.710258, 35.491726, 41.162296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025475, 34.953903, 41.432953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.275608, 35.264805, 41.460781>,  <36.425686, 35.451344, 41.477478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.275608, 35.264805, 41.460781>,  <36.025475, 34.953903, 41.432953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275608, 35.264805, 41.460781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211030, -0.254263, 0.943831,
		0.751283, -0.575526, -0.323023,
		0.625332, 0.777252, 0.069571,
		36.463207, 35.497982, 41.481651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635136, 34.654606, 41.731121>,  <36.025475, 34.953903, 41.432953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635136, 34.654606, 41.731121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.667091, 35.046494, 41.804630>,  <36.686264, 35.281628, 41.848736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.667091, 35.046494, 41.804630>,  <36.635136, 34.654606, 41.731121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667091, 35.046494, 41.804630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251600, -0.198208, 0.947318,
		0.964529, -0.029443, -0.262331,
		0.079888, 0.979718, 0.183769,
		36.691059, 35.340408, 41.859760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310375, 34.796558, 42.101849>,  <36.635136, 34.654606, 41.731121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310375, 34.796558, 42.101849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.072979, 35.111202, 42.169991>,  <36.930542, 35.299988, 42.210876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.072979, 35.111202, 42.169991>,  <37.310375, 34.796558, 42.101849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072979, 35.111202, 42.169991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209171, -0.053636, 0.976407,
		0.777184, 0.615122, -0.132703,
		-0.593492, 0.786605, 0.170351,
		36.894932, 35.347183, 42.221096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659279, 35.260159, 42.617344>,  <37.310375, 34.796558, 42.101849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659279, 35.260159, 42.617344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.274494, 35.368694, 42.630043>,  <37.043625, 35.433815, 42.637661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.274494, 35.368694, 42.630043>,  <37.659279, 35.260159, 42.617344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274494, 35.368694, 42.630043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012111, -0.073726, 0.997205,
		0.272925, 0.959655, 0.067636,
		-0.961959, 0.271343, 0.031744,
		36.985905, 35.450096, 42.639565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635151, 35.802471, 43.139336>,  <37.659279, 35.260159, 42.617344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635151, 35.802471, 43.139336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.256924, 35.675770, 43.109482>,  <37.029987, 35.599747, 43.091572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.256924, 35.675770, 43.109482>,  <37.635151, 35.802471, 43.139336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256924, 35.675770, 43.109482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049376, -0.087037, 0.994981,
		-0.321663, 0.944505, 0.066659,
		-0.945566, -0.316757, -0.074632,
		36.973255, 35.580742, 43.087093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201622, 36.203503, 43.704285>,  <37.635151, 35.802471, 43.139336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201622, 36.203503, 43.704285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.034286, 35.849525, 43.622437>,  <36.933884, 35.637138, 43.573326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.034286, 35.849525, 43.622437>,  <37.201622, 36.203503, 43.704285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034286, 35.849525, 43.622437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038519, -0.207793, 0.977414,
		-0.907474, 0.416771, 0.052840,
		-0.418338, -0.884943, -0.204620,
		36.908787, 35.584042, 43.561050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.446533, 36.163822, 44.144657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.521732, 35.789024, 44.026882>,  <36.566853, 35.564144, 43.956219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.521732, 35.789024, 44.026882>,  <36.446533, 36.163822, 44.144657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521732, 35.789024, 44.026882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127844, -0.320573, 0.938557,
		-0.973814, -0.138805, -0.180057,
		0.187997, -0.936998, -0.294433,
		36.578133, 35.507923, 43.938553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839596, 35.592865, 44.270458>,  <36.446533, 36.163822, 44.144657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839596, 35.592865, 44.270458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.176628, 35.378696, 44.247185>,  <36.378845, 35.250195, 44.233219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.176628, 35.378696, 44.247185>,  <35.839596, 35.592865, 44.270458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176628, 35.378696, 44.247185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185929, -0.390573, 0.901600,
		-0.505466, -0.748848, -0.428639,
		0.842576, -0.535425, -0.058189,
		36.429401, 35.218071, 44.229729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633568, 34.967396, 44.570145>,  <35.839596, 35.592865, 44.270458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633568, 34.967396, 44.570145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033188, 34.978024, 44.583969>,  <36.272961, 34.984398, 44.592262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033188, 34.978024, 44.583969>,  <35.633568, 34.967396, 44.570145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033188, 34.978024, 44.583969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018351, -0.462777, 0.886285,
		0.039540, -0.886076, -0.461850,
		0.999049, 0.026568, 0.034559,
		36.332901, 34.985992, 44.594337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810402, 34.364113, 44.772396>,  <35.633568, 34.967396, 44.570145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810402, 34.364113, 44.772396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.144611, 34.565010, 44.861523>,  <36.345139, 34.685551, 44.915001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.144611, 34.565010, 44.861523>,  <35.810402, 34.364113, 44.772396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144611, 34.565010, 44.861523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050339, -0.473793, 0.879196,
		0.547143, -0.723373, -0.421148,
		0.835524, 0.502246, 0.222819,
		36.395267, 34.715683, 44.928368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210529, 33.852421, 44.968578>,  <35.810402, 34.364113, 44.772396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210529, 33.852421, 44.968578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.363129, 34.179878, 45.140285>,  <36.454689, 34.376354, 45.243309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.363129, 34.179878, 45.140285>,  <36.210529, 33.852421, 44.968578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363129, 34.179878, 45.140285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091132, -0.495439, 0.863849,
		0.919865, -0.290441, -0.263616,
		0.381503, 0.818648, 0.429268,
		36.477581, 34.425472, 45.269066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776680, 33.612015, 45.463184>,  <36.210529, 33.852421, 44.968578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776680, 33.612015, 45.463184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.659855, 33.977032, 45.577702>,  <36.589760, 34.196041, 45.646412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.659855, 33.977032, 45.577702>,  <36.776680, 33.612015, 45.463184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659855, 33.977032, 45.577702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051802, -0.283816, 0.957478,
		0.954995, 0.294475, 0.035621,
		-0.292063, 0.912542, 0.286298,
		36.572235, 34.250793, 45.663589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256321, 33.873123, 45.926357>,  <36.776680, 33.612015, 45.463184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256321, 33.873123, 45.926357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.955994, 34.120296, 46.019672>,  <36.775795, 34.268600, 46.075661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.955994, 34.120296, 46.019672>,  <37.256321, 33.873123, 45.926357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955994, 34.120296, 46.019672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148017, -0.186800, 0.971183,
		0.643707, 0.763715, 0.048788,
		-0.750821, 0.617936, 0.233287,
		36.730747, 34.305676, 46.089657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479164, 34.254990, 46.493626>,  <37.256321, 33.873123, 45.926357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479164, 34.254990, 46.493626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.083485, 34.292175, 46.538944>,  <36.846077, 34.314487, 46.566135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.083485, 34.292175, 46.538944>,  <37.479164, 34.254990, 46.493626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083485, 34.292175, 46.538944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103206, -0.106977, 0.988891,
		0.104056, 0.989906, 0.096227,
		-0.989202, 0.092968, 0.113296,
		36.786724, 34.320065, 46.572933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386234, 34.746738, 47.052563>,  <37.479164, 34.254990, 46.493626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386234, 34.746738, 47.052563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.036388, 34.555405, 47.020966>,  <36.826481, 34.440605, 47.002007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.036388, 34.555405, 47.020966>,  <37.386234, 34.746738, 47.052563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036388, 34.555405, 47.020966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059279, -0.056208, 0.996658,
		-0.481176, 0.876377, 0.020805,
		-0.874617, -0.478335, -0.078997,
		36.774002, 34.411903, 46.997265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847492, 35.091919, 47.523445>,  <37.386234, 34.746738, 47.052563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847492, 35.091919, 47.523445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.769768, 34.707012, 47.447247>,  <36.723133, 34.476067, 47.401527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.769768, 34.707012, 47.447247>,  <36.847492, 35.091919, 47.523445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769768, 34.707012, 47.447247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157364, -0.161105, 0.974311,
		-0.968236, 0.219292, -0.120123,
		-0.194307, -0.962266, -0.190497,
		36.711475, 34.418331, 47.390099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476925, 34.988594, 48.063824>,  <36.847492, 35.091919, 47.523445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476925, 34.988594, 48.063824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.531727, 34.615231, 47.931171>,  <36.564606, 34.391212, 47.851582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.531727, 34.615231, 47.931171>,  <36.476925, 34.988594, 48.063824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531727, 34.615231, 47.931171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164166, -0.351551, 0.921663,
		-0.976873, -0.071826, -0.201396,
		0.137000, -0.933409, -0.331629,
		36.572826, 34.335209, 47.831684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943115, 34.565990, 48.311211>,  <36.476925, 34.988594, 48.063824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943115, 34.565990, 48.311211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.232777, 34.296024, 48.254501>,  <36.406574, 34.134045, 48.220474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.232777, 34.296024, 48.254501>,  <35.943115, 34.565990, 48.311211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232777, 34.296024, 48.254501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170840, -0.374728, 0.911259,
		-0.668146, -0.635668, -0.386661,
		0.724151, -0.674911, -0.141775,
		36.450024, 34.093552, 48.211967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720646, 34.023888, 48.588333>,  <35.943115, 34.565990, 48.311211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720646, 34.023888, 48.588333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.104958, 33.915661, 48.564037>,  <36.335545, 33.850727, 48.549458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.104958, 33.915661, 48.564037>,  <35.720646, 34.023888, 48.588333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104958, 33.915661, 48.564037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072215, -0.455630, 0.887235,
		-0.267731, -0.848054, -0.457301,
		0.960784, -0.270564, -0.060744,
		36.393192, 33.834492, 48.545815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741371, 33.322422, 48.697193>,  <35.720646, 34.023888, 48.588333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741371, 33.322422, 48.697193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.112698, 33.443371, 48.783722>,  <36.335495, 33.515938, 48.835640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.112698, 33.443371, 48.783722>,  <35.741371, 33.322422, 48.697193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112698, 33.443371, 48.783722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020633, -0.622854, 0.782066,
		0.371211, -0.721544, -0.584446,
		0.928320, 0.302370, 0.216323,
		36.391193, 33.534081, 48.848618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033173, 32.691635, 48.904427>,  <35.741371, 33.322422, 48.697193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033173, 32.691635, 48.904427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.311943, 32.944466, 49.039940>,  <36.479206, 33.096165, 49.121246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.311943, 32.944466, 49.039940>,  <36.033173, 32.691635, 48.904427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311943, 32.944466, 49.039940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241699, -0.651791, 0.718853,
		0.675182, -0.419108, -0.607024,
		0.696930, 0.632074, 0.338779,
		36.521023, 33.134087, 49.141575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578384, 32.306652, 49.037277>,  <36.033173, 32.691635, 48.904427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578384, 32.306652, 49.037277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.650982, 32.630615, 49.260384>,  <36.694542, 32.824993, 49.394249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.650982, 32.630615, 49.260384>,  <36.578384, 32.306652, 49.037277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650982, 32.630615, 49.260384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165950, -0.584278, 0.794405,
		0.969288, -0.051619, -0.240449,
		0.181495, 0.809910, 0.557768,
		36.705429, 32.873589, 49.427715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195911, 32.092358, 49.413544>,  <36.578384, 32.306652, 49.037277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195911, 32.092358, 49.413544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.052460, 32.393490, 49.634315>,  <36.966389, 32.574169, 49.766781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.052460, 32.393490, 49.634315>,  <37.195911, 32.092358, 49.413544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052460, 32.393490, 49.634315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297612, -0.468198, 0.831996,
		0.884766, 0.462641, -0.056142,
		-0.358630, 0.752831, 0.551933,
		36.944870, 32.619339, 49.799896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742619, 32.134682, 49.816902>,  <37.195911, 32.092358, 49.413544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742619, 32.134682, 49.816902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.414539, 32.294777, 49.980404>,  <37.217693, 32.390835, 50.078506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.414539, 32.294777, 49.980404>,  <37.742619, 32.134682, 49.816902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414539, 32.294777, 49.980404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153006, -0.535009, 0.830876,
		0.551237, 0.744026, 0.377575,
		-0.820199, 0.400238, 0.408757,
		37.168480, 32.414848, 50.103031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965984, 32.081959, 50.469734>,  <37.742619, 32.134682, 49.816902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965984, 32.081959, 50.469734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.574566, 32.153843, 50.510033>,  <37.339714, 32.196972, 50.534210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.574566, 32.153843, 50.510033>,  <37.965984, 32.081959, 50.469734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574566, 32.153843, 50.510033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047093, -0.671177, 0.739800,
		0.200564, 0.719185, 0.665242,
		-0.978548, 0.179706, 0.100746,
		37.281002, 32.207756, 50.540257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837414, 32.209244, 51.204128>,  <37.965984, 32.081959, 50.469734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837414, 32.209244, 51.204128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.492485, 32.086895, 51.042713>,  <37.285526, 32.013485, 50.945866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.492485, 32.086895, 51.042713>,  <37.837414, 32.209244, 51.204128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492485, 32.086895, 51.042713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059110, -0.730683, 0.680153,
		-0.502896, 0.610365, 0.612005,
		-0.862323, -0.305871, -0.403536,
		37.233788, 31.995134, 50.921654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336811, 31.971319, 51.739632>,  <37.837414, 32.209244, 51.204128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336811, 31.971319, 51.739632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.176369, 31.802042, 51.414665>,  <37.080105, 31.700476, 51.219685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.176369, 31.802042, 51.414665>,  <37.336811, 31.971319, 51.739632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176369, 31.802042, 51.414665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329022, -0.761146, 0.558929,
		-0.854904, 0.491492, 0.166059,
		-0.401104, -0.423193, -0.812418,
		37.056038, 31.675083, 51.170940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665501, 31.796865, 51.903694>,  <37.336811, 31.971319, 51.739632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665501, 31.796865, 51.903694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.754887, 31.569889, 51.586689>,  <36.808517, 31.433702, 51.396488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.754887, 31.569889, 51.586689>,  <36.665501, 31.796865, 51.903694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754887, 31.569889, 51.586689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317628, -0.811084, 0.491178,
		-0.921508, 0.141963, -0.361483,
		0.223464, -0.567442, -0.792511,
		36.821926, 31.399656, 51.348934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133808, 31.309635, 51.719440>,  <36.665501, 31.796865, 51.903694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133808, 31.309635, 51.719440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.486507, 31.151672, 51.616238>,  <36.698128, 31.056894, 51.554314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.486507, 31.151672, 51.616238>,  <36.133808, 31.309635, 51.719440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486507, 31.151672, 51.616238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152531, -0.756258, 0.636245,
		-0.446379, -0.521654, -0.727065,
		0.881748, -0.394906, -0.258010,
		36.751034, 31.033201, 51.538834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932564, 31.875710, 52.261036>,  <36.133808, 31.309635, 51.719440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932564, 31.875710, 52.261036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.553558, 31.801640, 52.365288>,  <35.326157, 31.757196, 52.427837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.553558, 31.801640, 52.365288>,  <35.932564, 31.875710, 52.261036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553558, 31.801640, 52.365288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283603, 0.863156, -0.417768,
		-0.147601, -0.469756, -0.870370,
		-0.947514, -0.185176, 0.260627,
		35.269302, 31.746086, 52.443478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404526, 31.789064, 51.702919>,  <35.932564, 31.875710, 52.261036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404526, 31.789064, 51.702919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.278477, 31.960646, 52.041550>,  <35.202847, 32.063595, 52.244728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.278477, 31.960646, 52.041550>,  <35.404526, 31.789064, 51.702919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278477, 31.960646, 52.041550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422056, 0.735622, -0.529838,
		-0.850037, -0.524270, -0.050772,
		-0.315127, 0.428954, 0.846578,
		35.183937, 32.089333, 52.295525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839474, 31.821428, 51.622032>,  <35.404526, 31.789064, 51.702919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839474, 31.821428, 51.622032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.840908, 32.094353, 51.914455>,  <34.841770, 32.258106, 52.089909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.840908, 32.094353, 51.914455>,  <34.839474, 31.821428, 51.622032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840908, 32.094353, 51.914455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462625, 0.649255, -0.603694,
		-0.886547, -0.336039, 0.317982,
		0.003587, 0.682309, 0.731055,
		34.841984, 32.299046, 52.133774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089466, 32.063904, 51.918377>,  <34.839474, 31.821428, 51.622032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089466, 32.063904, 51.918377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.347130, 32.358826, 51.999802>,  <34.501728, 32.535778, 52.048656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.347130, 32.358826, 51.999802>,  <34.089466, 32.063904, 51.918377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347130, 32.358826, 51.999802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632271, 0.663043, -0.400758,
		-0.430452, 0.129447, 0.893283,
		0.644162, 0.737304, 0.203563,
		34.540379, 32.580017, 52.060871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660606, 32.522335, 52.023624>,  <34.089466, 32.063904, 51.918377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660606, 32.522335, 52.023624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.004803, 32.712166, 51.949516>,  <34.211319, 32.826065, 51.905052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.004803, 32.712166, 51.949516>,  <33.660606, 32.522335, 52.023624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004803, 32.712166, 51.949516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472089, 0.606052, -0.640182,
		-0.191534, 0.638336, 0.745547,
		0.860492, 0.474581, -0.185272,
		34.262951, 32.854542, 51.893936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430687, 33.128334, 51.789768>,  <33.660606, 32.522335, 52.023624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430687, 33.128334, 51.789768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.814041, 33.127159, 51.675591>,  <34.044056, 33.126453, 51.607082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.814041, 33.127159, 51.675591>,  <33.430687, 33.128334, 51.789768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814041, 33.127159, 51.675591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266355, 0.350472, -0.897900,
		0.102681, 0.936569, 0.335106,
		0.958390, -0.002940, -0.285447,
		34.101559, 33.126278, 51.589958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480869, 33.766132, 51.389683>,  <33.430687, 33.128334, 51.789768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480869, 33.766132, 51.389683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.799759, 33.548271, 51.285538>,  <33.991093, 33.417553, 51.223049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.799759, 33.548271, 51.285538>,  <33.480869, 33.766132, 51.389683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799759, 33.548271, 51.285538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044988, 0.376489, -0.925328,
		0.602007, 0.749406, 0.275643,
		0.797223, -0.544653, -0.260363,
		34.038925, 33.384876, 51.207428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034615, 34.241062, 51.018532>,  <33.480869, 33.766132, 51.389683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034615, 34.241062, 51.018532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.050903, 33.860222, 50.897301>,  <34.060677, 33.631718, 50.824562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.050903, 33.860222, 50.897301>,  <34.034615, 34.241062, 51.018532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050903, 33.860222, 50.897301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239483, 0.303786, -0.922151,
		0.970046, -0.035025, 0.240383,
		0.040727, -0.952096, -0.303074,
		34.063122, 33.574593, 50.806377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648392, 34.305550, 50.592091>,  <34.034615, 34.241062, 51.018532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648392, 34.305550, 50.592091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.485970, 33.968300, 50.451084>,  <34.388515, 33.765949, 50.366482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.485970, 33.968300, 50.451084>,  <34.648392, 34.305550, 50.592091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485970, 33.968300, 50.451084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256040, 0.265336, -0.929538,
		0.877247, -0.467701, 0.108132,
		-0.406055, -0.843121, -0.352516,
		34.364155, 33.715363, 50.345329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210526, 33.968475, 50.203369>,  <34.648392, 34.305550, 50.592091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210526, 33.968475, 50.203369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.851402, 33.833885, 50.089722>,  <34.635929, 33.753132, 50.021534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.851402, 33.833885, 50.089722>,  <35.210526, 33.968475, 50.203369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851402, 33.833885, 50.089722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229810, 0.192371, -0.954034,
		0.375669, -0.921832, -0.095386,
		-0.897808, -0.336480, -0.284114,
		34.582058, 33.732941, 50.004486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345512, 33.767601, 49.508312>,  <35.210526, 33.968475, 50.203369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345512, 33.767601, 49.508312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.947289, 33.788601, 49.539555>,  <34.708355, 33.801201, 49.558300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.947289, 33.788601, 49.539555>,  <35.345512, 33.767601, 49.508312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947289, 33.788601, 49.539555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059013, 0.298274, -0.952654,
		-0.073310, -0.953036, -0.293852,
		-0.995562, 0.052498, 0.078108,
		34.648621, 33.804352, 49.562988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066940, 33.476082, 48.881947>,  <35.345512, 33.767601, 49.508312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066940, 33.476082, 48.881947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.779408, 33.721333, 49.013004>,  <34.606888, 33.868484, 49.091637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.779408, 33.721333, 49.013004>,  <35.066940, 33.476082, 48.881947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779408, 33.721333, 49.013004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128112, 0.346396, -0.929299,
		-0.683273, -0.709989, -0.170453,
		-0.718836, 0.613128, 0.327641,
		34.563755, 33.905270, 49.111298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580666, 33.415451, 48.415100>,  <35.066940, 33.476082, 48.881947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580666, 33.415451, 48.415100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.491047, 33.766415, 48.584782>,  <34.437275, 33.976994, 48.686592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.491047, 33.766415, 48.584782>,  <34.580666, 33.415451, 48.415100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491047, 33.766415, 48.584782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063097, 0.421302, -0.904723,
		-0.972533, -0.229470, -0.039031,
		-0.224051, 0.877410, 0.424209,
		34.423832, 34.029636, 48.712044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851704, 33.683811, 48.082890>,  <34.580666, 33.415451, 48.415100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851704, 33.683811, 48.082890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.056572, 33.985081, 48.248013>,  <34.179493, 34.165844, 48.347088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.056572, 33.985081, 48.248013>,  <33.851704, 33.683811, 48.082890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056572, 33.985081, 48.248013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099148, 0.529266, -0.842643,
		-0.853140, 0.390650, 0.345752,
		0.512173, 0.753173, 0.412806,
		34.210224, 34.211033, 48.371853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470329, 34.306301, 47.906548>,  <33.851704, 33.683811, 48.082890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470329, 34.306301, 47.906548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.816517, 34.473328, 48.017262>,  <34.024231, 34.573544, 48.083691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.816517, 34.473328, 48.017262>,  <33.470329, 34.306301, 47.906548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816517, 34.473328, 48.017262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078814, 0.659105, -0.747909,
		-0.494727, 0.625477, 0.603344,
		0.865467, 0.417563, 0.276780,
		34.076157, 34.598595, 48.100296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417049, 35.048389, 47.839279>,  <33.470329, 34.306301, 47.906548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417049, 35.048389, 47.839279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.810692, 34.977573, 47.833786>,  <34.046879, 34.935085, 47.830490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.810692, 34.977573, 47.833786>,  <33.417049, 35.048389, 47.839279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810692, 34.977573, 47.833786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108743, 0.662003, -0.741570,
		0.140378, 0.728292, 0.670735,
		0.984108, -0.177038, -0.013734,
		34.105923, 34.924461, 47.829666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720997, 35.703548, 47.691521>,  <33.417049, 35.048389, 47.839279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720997, 35.703548, 47.691521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.013538, 35.442505, 47.612305>,  <34.189064, 35.285877, 47.564774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.013538, 35.442505, 47.612305>,  <33.720997, 35.703548, 47.691521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013538, 35.442505, 47.612305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142009, 0.429741, -0.891715,
		0.667050, 0.624036, 0.406969,
		0.731353, -0.652612, -0.198040,
		34.232944, 35.246719, 47.552895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091618, 36.111614, 47.302116>,  <33.720997, 35.703548, 47.691521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091618, 36.111614, 47.302116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.230038, 35.745335, 47.220387>,  <34.313087, 35.525566, 47.171349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.230038, 35.745335, 47.220387>,  <34.091618, 36.111614, 47.302116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230038, 35.745335, 47.220387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215773, 0.289619, -0.932503,
		0.913068, 0.278603, 0.297805,
		0.346048, -0.915697, -0.204327,
		34.333851, 35.470627, 47.159088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694412, 36.293934, 46.901375>,  <34.091618, 36.111614, 47.302116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694412, 36.293934, 46.901375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.638336, 35.905872, 46.822224>,  <34.604691, 35.673035, 46.774731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.638336, 35.905872, 46.822224>,  <34.694412, 36.293934, 46.901375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638336, 35.905872, 46.822224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179639, 0.171617, -0.968647,
		0.973693, -0.171340, 0.150218,
		-0.140188, -0.970150, -0.197882,
		34.596279, 35.614826, 46.762859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293789, 36.147404, 46.332588>,  <34.694412, 36.293934, 46.901375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293789, 36.147404, 46.332588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.007088, 35.869061, 46.314529>,  <34.835068, 35.702053, 46.303696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.007088, 35.869061, 46.314529>,  <35.293789, 36.147404, 46.332588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007088, 35.869061, 46.314529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058710, 0.004292, -0.998266,
		0.694849, -0.718162, 0.037778,
		-0.716755, -0.695862, -0.045145,
		34.792061, 35.660301, 46.300987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430626, 35.510872, 45.754131>,  <35.293789, 36.147404, 46.332588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430626, 35.510872, 45.754131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.034721, 35.527588, 45.808712>,  <34.797176, 35.537617, 45.841461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.034721, 35.527588, 45.808712>,  <35.430626, 35.510872, 45.754131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034721, 35.527588, 45.808712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131829, 0.098381, -0.986378,
		-0.054648, -0.994271, -0.091865,
		-0.989765, 0.041794, 0.136450,
		34.737793, 35.540127, 45.849648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.759796, 30.710785, 28.105515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.722858, 30.436310, 28.394131>,  <40.700695, 30.271626, 28.567301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.722858, 30.436310, 28.394131>,  <40.759796, 30.710785, 28.105515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722858, 30.436310, 28.394131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354592, 0.654471, 0.667782,
		-0.930450, 0.317517, 0.182880,
		-0.092343, -0.686186, 0.721542,
		40.695156, 30.230453, 28.610594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399666, 30.986317, 28.639307>,  <40.759796, 30.710785, 28.105515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399666, 30.986317, 28.639307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.630238, 30.691723, 28.780910>,  <40.768581, 30.514967, 28.865871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.630238, 30.691723, 28.780910>,  <40.399666, 30.986317, 28.639307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630238, 30.691723, 28.780910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343649, 0.611534, 0.712694,
		-0.741377, -0.289161, 0.605596,
		0.576426, -0.736487, 0.354007,
		40.803165, 30.470778, 28.887112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204193, 31.022402, 29.303263>,  <40.399666, 30.986317, 28.639307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204193, 31.022402, 29.303263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.555401, 30.831024, 29.297905>,  <40.766125, 30.716198, 29.294689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.555401, 30.831024, 29.297905>,  <40.204193, 31.022402, 29.303263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555401, 30.831024, 29.297905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357465, 0.636877, 0.683086,
		-0.318286, -0.604549, 0.730215,
		0.878016, -0.478443, -0.013396,
		40.818806, 30.687490, 29.293886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444008, 30.749386, 30.008768>,  <40.204193, 31.022402, 29.303263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444008, 30.749386, 30.008768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.786568, 30.785484, 29.805420>,  <40.992104, 30.807142, 29.683411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.786568, 30.785484, 29.805420>,  <40.444008, 30.749386, 30.008768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786568, 30.785484, 29.805420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358136, 0.605412, 0.710785,
		0.371919, -0.790779, 0.486153,
		0.856397, 0.090245, -0.508371,
		41.043488, 30.812557, 29.652908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935623, 30.713343, 30.561285>,  <40.444008, 30.749386, 30.008768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935623, 30.713343, 30.561285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.142326, 30.846819, 30.245914>,  <41.266346, 30.926905, 30.056692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.142326, 30.846819, 30.245914>,  <40.935623, 30.713343, 30.561285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142326, 30.846819, 30.245914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481348, 0.648336, 0.589886,
		0.708004, -0.684333, 0.174409,
		0.516754, 0.333690, -0.788427,
		41.297352, 30.946926, 30.009386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609375, 30.857914, 30.849722>,  <40.935623, 30.713343, 30.561285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609375, 30.857914, 30.849722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.620972, 31.068464, 30.509819>,  <41.627930, 31.194794, 30.305878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.620972, 31.068464, 30.509819>,  <41.609375, 30.857914, 30.849722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620972, 31.068464, 30.509819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577814, 0.684864, 0.443951,
		0.815653, -0.503874, -0.284290,
		0.028995, 0.526376, -0.849757,
		41.629669, 31.226377, 30.254892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335011, 30.873926, 30.659582>,  <41.609375, 30.857914, 30.849722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335011, 30.873926, 30.659582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.128750, 31.179794, 30.504984>,  <42.004993, 31.363316, 30.412224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.128750, 31.179794, 30.504984>,  <42.335011, 30.873926, 30.659582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128750, 31.179794, 30.504984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625339, 0.644254, 0.440327,
		0.585708, -0.014636, -0.810390,
		-0.515652, 0.764672, -0.386497,
		41.974052, 31.409195, 30.389034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849983, 31.234943, 30.279179>,  <42.335011, 30.873926, 30.659582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.849983, 31.234943, 30.279179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.553493, 31.494572, 30.347649>,  <42.375599, 31.650349, 30.388731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.553493, 31.494572, 30.347649>,  <42.849983, 31.234943, 30.279179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553493, 31.494572, 30.347649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657783, 0.651479, 0.378018,
		0.133843, 0.392790, -0.909836,
		-0.741220, 0.649070, 0.171175,
		42.331127, 31.689293, 30.399000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174698, 31.832872, 30.293804>,  <42.849983, 31.234943, 30.279179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174698, 31.832872, 30.293804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.814541, 31.919939, 30.444489>,  <42.598446, 31.972179, 30.534899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.814541, 31.919939, 30.444489>,  <43.174698, 31.832872, 30.293804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814541, 31.919939, 30.444489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407798, 0.723981, 0.556374,
		-0.151625, 0.654578, -0.740633,
		-0.900395, 0.217668, 0.376709,
		42.544422, 31.985239, 30.557501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092876, 32.486092, 30.146324>,  <43.174698, 31.832872, 30.293804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092876, 32.486092, 30.146324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.863400, 32.394779, 30.460970>,  <42.725712, 32.339993, 30.649757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.863400, 32.394779, 30.460970>,  <43.092876, 32.486092, 30.146324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863400, 32.394779, 30.460970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483657, 0.680645, 0.550272,
		-0.661023, 0.696139, -0.280070,
		-0.573694, -0.228284, 0.786614,
		42.691292, 32.326294, 30.696955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059273, 33.058098, 30.440950>,  <43.092876, 32.486092, 30.146324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059273, 33.058098, 30.440950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.927620, 32.807125, 30.723227>,  <42.848629, 32.656540, 30.892591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.927620, 32.807125, 30.723227>,  <43.059273, 33.058098, 30.440950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927620, 32.807125, 30.723227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461589, 0.545053, 0.699894,
		-0.823777, 0.556095, 0.110224,
		-0.329130, -0.627435, 0.705690,
		42.828880, 32.618893, 30.934933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640656, 33.459648, 30.842287>,  <43.059273, 33.058098, 30.440950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640656, 33.459648, 30.842287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.773323, 33.152580, 31.061626>,  <42.852924, 32.968342, 31.193230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.773323, 33.152580, 31.061626>,  <42.640656, 33.459648, 30.842287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773323, 33.152580, 31.061626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264017, 0.633553, 0.727259,
		-0.905701, -0.096433, 0.412804,
		0.331665, -0.767666, 0.548349,
		42.872822, 32.922279, 31.226131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283173, 33.358025, 31.579546>,  <42.640656, 33.459648, 30.842287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283173, 33.358025, 31.579546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.642536, 33.183292, 31.597647>,  <42.858154, 33.078453, 31.608507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.642536, 33.183292, 31.597647>,  <42.283173, 33.358025, 31.579546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642536, 33.183292, 31.597647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174986, 0.450571, 0.875423,
		-0.402800, -0.778566, 0.481235,
		0.898405, -0.436829, 0.045252,
		42.912056, 33.052242, 31.611223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338985, 32.993553, 32.209232>,  <42.283173, 33.358025, 31.579546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338985, 32.993553, 32.209232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.728466, 33.034592, 32.127872>,  <42.962154, 33.059216, 32.079056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.728466, 33.034592, 32.127872>,  <42.338985, 32.993553, 32.209232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728466, 33.034592, 32.127872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165222, 0.296670, 0.940579,
		0.156838, -0.949453, 0.271919,
		0.973706, 0.102591, -0.203399,
		43.020576, 33.065369, 32.066853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519768, 32.855141, 32.822399>,  <42.338985, 32.993553, 32.209232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519768, 32.855141, 32.822399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.848667, 32.976944, 32.630074>,  <43.046005, 33.050026, 32.514679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.848667, 32.976944, 32.630074>,  <42.519768, 32.855141, 32.822399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848667, 32.976944, 32.630074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422558, 0.239304, 0.874173,
		0.381256, -0.921958, 0.068094,
		0.822246, 0.304510, -0.480817,
		43.095341, 33.068295, 32.485828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143742, 32.484810, 33.140884>,  <42.519768, 32.855141, 32.822399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143742, 32.484810, 33.140884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.254101, 32.823181, 32.958332>,  <43.320316, 33.026203, 32.848801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.254101, 32.823181, 32.958332>,  <43.143742, 32.484810, 33.140884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254101, 32.823181, 32.958332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415302, 0.323290, 0.850299,
		0.866836, -0.424132, -0.262122,
		0.275897, 0.845929, -0.456382,
		43.336868, 33.076962, 32.821419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.863548, 32.477936, 33.265305>,  <43.143742, 32.484810, 33.140884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.863548, 32.477936, 33.265305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.801105, 32.861126, 33.169037>,  <43.763641, 33.091038, 33.111275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.801105, 32.861126, 33.169037>,  <43.863548, 32.477936, 33.265305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.801105, 32.861126, 33.169037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663185, 0.282220, 0.693209,
		0.731996, -0.051395, -0.679368,
		-0.156104, 0.957972, -0.240668,
		43.754272, 33.148518, 33.096836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500065, 32.773624, 33.285580>,  <43.863548, 32.477936, 33.265305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500065, 32.773624, 33.285580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.245316, 33.079254, 33.326725>,  <44.092464, 33.262630, 33.351414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.245316, 33.079254, 33.326725>,  <44.500065, 32.773624, 33.285580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.245316, 33.079254, 33.326725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485868, 0.294183, 0.823036,
		0.598598, 0.574151, -0.558597,
		-0.636877, 0.764072, 0.102864,
		44.054253, 33.308475, 33.357586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.888813, 33.338551, 33.374264>,  <44.500065, 32.773624, 33.285580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.888813, 33.338551, 33.374264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.531242, 33.417358, 33.535297>,  <44.316700, 33.464642, 33.631916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.531242, 33.417358, 33.535297>,  <44.888813, 33.338551, 33.374264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531242, 33.417358, 33.535297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429474, 0.119571, 0.895128,
		0.128220, 0.973081, -0.191503,
		-0.893930, 0.197019, 0.402582,
		44.263062, 33.476463, 33.656071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.049427, 33.893276, 33.945370>,  <44.888813, 33.338551, 33.374264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.049427, 33.893276, 33.945370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.683537, 33.751938, 34.023769>,  <44.464001, 33.667137, 34.070808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.683537, 33.751938, 34.023769>,  <45.049427, 33.893276, 33.945370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.683537, 33.751938, 34.023769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200339, 0.024648, 0.979417,
		-0.350901, 0.935169, 0.048242,
		-0.914731, -0.353343, 0.196000,
		44.409119, 33.645935, 34.082569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.742874, 34.039009, 34.132156>,  <45.049427, 33.893276, 33.945370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.742874, 34.039009, 34.132156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.080727, 34.043926, 34.346241>,  <46.283436, 34.046875, 34.474693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.080727, 34.043926, 34.346241>,  <45.742874, 34.039009, 34.132156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.080727, 34.043926, 34.346241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210465, -0.926864, -0.310851,
		0.492248, 0.375197, -0.785442,
		0.844628, 0.012292, 0.535212,
		46.334114, 34.047615, 34.506805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.430695, 33.918655, 33.756863>,  <45.742874, 34.039009, 34.132156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.430695, 33.918655, 33.756863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.466553, 33.777519, 34.129414>,  <46.488068, 33.692837, 34.352943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.466553, 33.777519, 34.129414>,  <46.430695, 33.918655, 33.756863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.466553, 33.777519, 34.129414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207806, -0.907937, -0.363960,
		0.974054, 0.226173, -0.008067,
		0.089642, -0.352840, 0.931380,
		46.493446, 33.671669, 34.408829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.963116, 33.439651, 33.746525>,  <46.430695, 33.918655, 33.756863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.963116, 33.439651, 33.746525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.752613, 33.344662, 34.073124>,  <46.626312, 33.287670, 34.269081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.752613, 33.344662, 34.073124>,  <46.963116, 33.439651, 33.746525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.752613, 33.344662, 34.073124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050108, -0.949884, -0.308562,
		0.848851, -0.203294, 0.487979,
		-0.526252, -0.237471, 0.816496,
		46.594738, 33.273422, 34.318073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.183456, 32.688866, 34.009125>,  <46.963116, 33.439651, 33.746525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.183456, 32.688866, 34.009125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.856728, 32.755451, 34.230064>,  <46.660690, 32.795403, 34.362629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.856728, 32.755451, 34.230064>,  <47.183456, 32.688866, 34.009125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.856728, 32.755451, 34.230064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296273, -0.942597, -0.154057,
		0.494999, -0.289484, 0.819253,
		-0.816822, 0.166465, 0.552351,
		46.611679, 32.805389, 34.395771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.085503, 32.135509, 34.510227>,  <47.183456, 32.688866, 34.009125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.085503, 32.135509, 34.510227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.717659, 32.287594, 34.470707>,  <46.496952, 32.378845, 34.446995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.717659, 32.287594, 34.470707>,  <47.085503, 32.135509, 34.510227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.717659, 32.287594, 34.470707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332493, -0.887260, -0.319716,
		-0.209220, -0.261163, 0.942349,
		-0.919606, 0.380215, -0.098797,
		46.441776, 32.401657, 34.441067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.679848, 31.697010, 34.814693>,  <47.085503, 32.135509, 34.510227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.679848, 31.697010, 34.814693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.436890, 31.903860, 34.573479>,  <46.291115, 32.027969, 34.428749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.436890, 31.903860, 34.573479>,  <46.679848, 31.697010, 34.814693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.436890, 31.903860, 34.573479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278073, -0.849488, -0.448381,
		-0.744143, -0.104655, 0.659772,
		-0.607393, 0.517124, -0.603038,
		46.254673, 32.058998, 34.392567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.102978, 31.289692, 34.836422>,  <46.679848, 31.697010, 34.814693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.102978, 31.289692, 34.836422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.086056, 31.505754, 34.500221>,  <46.075901, 31.635391, 34.298500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.086056, 31.505754, 34.500221>,  <46.102978, 31.289692, 34.836422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.086056, 31.505754, 34.500221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403394, -0.778871, -0.480242,
		-0.914048, 0.318736, 0.250847,
		-0.042308, 0.540155, -0.840502,
		46.073364, 31.667801, 34.248070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.387272, 31.173519, 34.615978>,  <46.102978, 31.289692, 34.836422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.387272, 31.173519, 34.615978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.570965, 31.303877, 34.285427>,  <45.681183, 31.382092, 34.087097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.570965, 31.303877, 34.285427>,  <45.387272, 31.173519, 34.615978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.570965, 31.303877, 34.285427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329891, -0.801179, -0.499284,
		-0.824788, 0.501903, -0.260420,
		0.459235, 0.325893, -0.826376,
		45.708736, 31.401644, 34.037514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.905834, 31.129007, 34.094219>,  <45.387272, 31.173519, 34.615978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.905834, 31.129007, 34.094219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.248417, 31.149454, 33.888748>,  <45.453968, 31.161722, 33.765465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.248417, 31.149454, 33.888748>,  <44.905834, 31.129007, 34.094219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.248417, 31.149454, 33.888748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407923, -0.542805, -0.734140,
		-0.316354, 0.838302, -0.444039,
		0.856457, 0.051115, -0.513681,
		45.505356, 31.164789, 33.734642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.815266, 31.437073, 33.434021>,  <44.905834, 31.129007, 34.094219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.815266, 31.437073, 33.434021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.124466, 31.184078, 33.414303>,  <45.309986, 31.032282, 33.402473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.124466, 31.184078, 33.414303>,  <44.815266, 31.437073, 33.434021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.124466, 31.184078, 33.414303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435005, -0.471878, -0.766878,
		0.461779, 0.614241, -0.639897,
		0.773001, -0.632486, -0.049295,
		45.356365, 30.994331, 33.399513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.940376, 31.278803, 32.736622>,  <44.815266, 31.437073, 33.434021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.940376, 31.278803, 32.736622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.164822, 30.987715, 32.894394>,  <45.299488, 30.813063, 32.989056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.164822, 30.987715, 32.894394>,  <44.940376, 31.278803, 32.736622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.164822, 30.987715, 32.894394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421713, -0.661363, -0.620288,
		0.712255, 0.181719, -0.677990,
		0.561115, -0.727721, 0.394426,
		45.333157, 30.769398, 33.012722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.223915, 30.940536, 32.162540>,  <44.940376, 31.278803, 32.736622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.223915, 30.940536, 32.162540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.239185, 30.697487, 32.479862>,  <45.248348, 30.551657, 32.670258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.239185, 30.697487, 32.479862>,  <45.223915, 30.940536, 32.162540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.239185, 30.697487, 32.479862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553943, -0.673606, -0.489287,
		0.831679, -0.420770, -0.362302,
		0.038172, -0.607624, 0.793307,
		45.250637, 30.515200, 32.717854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.356514, 30.283831, 31.929132>,  <45.223915, 30.940536, 32.162540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.356514, 30.283831, 31.929132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.212955, 30.191813, 32.290966>,  <45.126820, 30.136602, 32.508064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.212955, 30.191813, 32.290966>,  <45.356514, 30.283831, 31.929132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212955, 30.191813, 32.290966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631025, -0.654307, -0.416761,
		0.687749, -0.720390, 0.089667,
		-0.358900, -0.230045, 0.904583,
		45.105286, 30.122799, 32.562340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.216969, 29.633871, 31.813715>,  <45.356514, 30.283831, 31.929132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.216969, 29.633871, 31.813715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.032101, 29.703886, 32.161453>,  <44.921181, 29.745895, 32.370098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.032101, 29.703886, 32.161453>,  <45.216969, 29.633871, 31.813715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.032101, 29.703886, 32.161453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786390, -0.533995, -0.310549,
		0.409869, -0.827171, 0.384443,
		-0.462168, 0.175037, 0.869346,
		44.893452, 29.756397, 32.422256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.104042, 28.936878, 32.293716>,  <45.216969, 29.633871, 31.813715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.104042, 28.936878, 32.293716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.838047, 29.221395, 32.384804>,  <44.678452, 29.392105, 32.439457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.838047, 29.221395, 32.384804>,  <45.104042, 28.936878, 32.293716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.838047, 29.221395, 32.384804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746148, -0.619444, -0.244034,
		-0.032518, -0.332194, 0.942650,
		-0.664985, 0.711293, 0.227723,
		44.638550, 29.434784, 32.453121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.586693, 28.703257, 32.780010>,  <45.104042, 28.936878, 32.293716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.586693, 28.703257, 32.780010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.397793, 29.008894, 32.604218>,  <44.284454, 29.192276, 32.498741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.397793, 29.008894, 32.604218>,  <44.586693, 28.703257, 32.780010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397793, 29.008894, 32.604218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843663, -0.536254, -0.025786,
		-0.255377, 0.358597, 0.897881,
		-0.472245, 0.764094, -0.439482,
		44.256119, 29.238123, 32.472374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.898571, 28.669949, 33.109871>,  <44.586693, 28.703257, 32.780010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.898571, 28.669949, 33.109871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.877399, 28.912624, 32.792603>,  <43.864697, 29.058229, 32.602242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.877399, 28.912624, 32.792603>,  <43.898571, 28.669949, 33.109871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877399, 28.912624, 32.792603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887660, -0.392440, -0.240936,
		-0.457447, 0.691317, 0.559306,
		-0.052931, 0.606689, -0.793175,
		43.861519, 29.094631, 32.554649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.200420, 28.964355, 33.145153>,  <43.898571, 28.669949, 33.109871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.200420, 28.964355, 33.145153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.289715, 29.012995, 32.758293>,  <43.343292, 29.042179, 32.526176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.289715, 29.012995, 32.758293>,  <43.200420, 28.964355, 33.145153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289715, 29.012995, 32.758293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933718, -0.258213, -0.247985,
		-0.279886, 0.958404, 0.055897,
		0.223236, 0.121599, -0.967150,
		43.356686, 29.049475, 32.468147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796482, 29.562752, 32.778099>,  <43.200420, 28.964355, 33.145153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796482, 29.562752, 32.778099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.895020, 29.272133, 32.521523>,  <42.954140, 29.097761, 32.367577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.895020, 29.272133, 32.521523>,  <42.796482, 29.562752, 32.778099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.895020, 29.272133, 32.521523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921943, 0.028439, -0.386281,
		0.298894, 0.686526, -0.662831,
		0.246342, -0.726549, -0.641438,
		42.968922, 29.054169, 32.329090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464844, 29.798164, 32.106773>,  <42.796482, 29.562752, 32.778099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.464844, 29.798164, 32.106773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.606232, 29.459188, 31.948332>,  <42.691063, 29.255802, 31.853266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.606232, 29.459188, 31.948332>,  <42.464844, 29.798164, 32.106773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606232, 29.459188, 31.948332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915631, -0.226742, -0.331978,
		0.191518, 0.480032, -0.856090,
		0.353471, -0.847442, -0.396107,
		42.712273, 29.204956, 31.829500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231682, 29.768267, 31.421856>,  <42.464844, 29.798164, 32.106773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231682, 29.768267, 31.421856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.296555, 29.381598, 31.501093>,  <42.335476, 29.149595, 31.548635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.296555, 29.381598, 31.501093>,  <42.231682, 29.768267, 31.421856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296555, 29.381598, 31.501093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919000, -0.221075, -0.326443,
		0.359357, -0.129104, -0.924226,
		0.162179, -0.966673, 0.198091,
		42.345207, 29.091595, 31.560520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113655, 29.336437, 30.833193>,  <42.231682, 29.768267, 31.421856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113655, 29.336437, 30.833193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.069782, 29.070885, 31.129093>,  <42.043457, 28.911552, 31.306633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.069782, 29.070885, 31.129093>,  <42.113655, 29.336437, 30.833193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069782, 29.070885, 31.129093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896264, -0.255714, -0.362382,
		0.429743, -0.702759, -0.566966,
		-0.109686, -0.663883, 0.739749,
		42.036877, 28.871719, 31.351017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.600224, 36.107716, 40.989559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249638, 35.918159, 41.023602>,  <37.039288, 35.804424, 41.044025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249638, 35.918159, 41.023602>,  <37.600224, 36.107716, 40.989559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249638, 35.918159, 41.023602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172501, 0.144054, -0.974419,
		0.449512, -0.868719, -0.208005,
		-0.876460, -0.473894, 0.085101,
		36.986698, 35.775993, 41.049133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515114, 35.506138, 40.455875>,  <37.600224, 36.107716, 40.989559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515114, 35.506138, 40.455875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159771, 35.659451, 40.556995>,  <36.946564, 35.751438, 40.617668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159771, 35.659451, 40.556995>,  <37.515114, 35.506138, 40.455875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159771, 35.659451, 40.556995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237358, 0.087949, -0.967433,
		-0.393035, -0.919434, 0.012845,
		-0.888361, 0.383283, 0.252803,
		36.893261, 35.774437, 40.632835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172207, 35.186111, 40.030468>,  <37.515114, 35.506138, 40.455875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172207, 35.186111, 40.030468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910599, 35.466827, 40.143433>,  <36.753635, 35.635258, 40.211212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910599, 35.466827, 40.143433>,  <37.172207, 35.186111, 40.030468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910599, 35.466827, 40.143433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394461, 0.002182, -0.918910,
		-0.645495, -0.712384, 0.275401,
		-0.654016, 0.701787, 0.282416,
		36.714394, 35.677364, 40.228157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614994, 34.818672, 39.945312>,  <37.172207, 35.186111, 40.030468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614994, 34.818672, 39.945312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558643, 35.212360, 39.902496>,  <36.524834, 35.448574, 39.876808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558643, 35.212360, 39.902496>,  <36.614994, 34.818672, 39.945312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558643, 35.212360, 39.902496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316856, -0.147252, -0.936973,
		-0.937953, -0.098086, 0.332602,
		-0.140880, 0.984224, -0.107037,
		36.516380, 35.507626, 39.870384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045212, 34.922817, 39.611851>,  <36.614994, 34.818672, 39.945312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045212, 34.922817, 39.611851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167473, 35.300453, 39.562428>,  <36.240829, 35.527035, 39.532772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167473, 35.300453, 39.562428>,  <36.045212, 34.922817, 39.611851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167473, 35.300453, 39.562428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255021, -0.043855, -0.965940,
		-0.917355, 0.326752, 0.227359,
		0.305652, 0.944092, -0.123559,
		36.259167, 35.583679, 39.525360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603363, 35.209507, 39.076015>,  <36.045212, 34.922817, 39.611851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603363, 35.209507, 39.076015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887150, 35.491276, 39.067509>,  <36.057419, 35.660336, 39.062405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887150, 35.491276, 39.067509>,  <35.603363, 35.209507, 39.076015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887150, 35.491276, 39.067509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205536, 0.177948, -0.962335,
		-0.674105, 0.687112, 0.271032,
		0.709462, 0.704422, -0.021271,
		36.099987, 35.702602, 39.061127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332661, 35.912823, 38.877460>,  <35.603363, 35.209507, 39.076015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332661, 35.912823, 38.877460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722130, 35.888710, 38.789524>,  <35.955811, 35.874245, 38.736763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722130, 35.888710, 38.789524>,  <35.332661, 35.912823, 38.877460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722130, 35.888710, 38.789524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217362, 0.045115, -0.975048,
		0.068693, 0.997162, 0.030825,
		0.973671, -0.060279, -0.219845,
		36.014233, 35.870625, 38.723572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499157, 36.419792, 38.366161>,  <35.332661, 35.912823, 38.877460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499157, 36.419792, 38.366161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821728, 36.187988, 38.319084>,  <36.015270, 36.048908, 38.290836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821728, 36.187988, 38.319084>,  <35.499157, 36.419792, 38.366161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821728, 36.187988, 38.319084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029975, 0.158713, -0.986870,
		0.590578, 0.799363, 0.110619,
		0.806424, -0.579508, -0.117693,
		36.063656, 36.014137, 38.283775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910469, 36.777355, 37.795109>,  <35.499157, 36.419792, 38.366161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910469, 36.777355, 37.795109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030865, 36.396202, 37.810219>,  <36.103100, 36.167511, 37.819286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030865, 36.396202, 37.810219>,  <35.910469, 36.777355, 37.795109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030865, 36.396202, 37.810219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021369, -0.032867, -0.999231,
		0.953389, 0.301562, 0.010470,
		0.300986, -0.952880, 0.037779,
		36.121162, 36.110336, 37.821552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459740, 36.794704, 37.268944>,  <35.910469, 36.777355, 37.795109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459740, 36.794704, 37.268944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295490, 36.437355, 37.341911>,  <36.196941, 36.222946, 37.385693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295490, 36.437355, 37.341911>,  <36.459740, 36.794704, 37.268944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295490, 36.437355, 37.341911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108566, -0.150737, -0.982594,
		0.905317, -0.423285, -0.035093,
		-0.410628, -0.893369, 0.182419,
		36.172302, 36.169346, 37.396637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857098, 36.320660, 36.910301>,  <36.459740, 36.794704, 37.268944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857098, 36.320660, 36.910301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517769, 36.114346, 36.958168>,  <36.314171, 35.990555, 36.986889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517769, 36.114346, 36.958168>,  <36.857098, 36.320660, 36.910301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517769, 36.114346, 36.958168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017595, -0.198428, -0.979958,
		0.529196, -0.833421, 0.159255,
		-0.848317, -0.515787, 0.119671,
		36.263275, 35.959610, 36.994068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831902, 35.884026, 36.338810>,  <36.857098, 36.320660, 36.910301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831902, 35.884026, 36.338810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449173, 35.853443, 36.450981>,  <36.219536, 35.835094, 36.518284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449173, 35.853443, 36.450981>,  <36.831902, 35.884026, 36.338810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449173, 35.853443, 36.450981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234498, -0.367027, -0.900168,
		0.171751, -0.927063, 0.333251,
		-0.956824, -0.076458, 0.280431,
		36.162125, 35.830505, 36.535110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299400, 35.636772, 35.764790>,  <36.831902, 35.884026, 36.338810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299400, 35.636772, 35.764790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173855, 35.379086, 35.485798>,  <37.098530, 35.224472, 35.318405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173855, 35.379086, 35.485798>,  <37.299400, 35.636772, 35.764790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173855, 35.379086, 35.485798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170453, -0.760892, 0.626091,
		-0.934044, 0.077618, 0.348623,
		-0.313860, -0.644220, -0.697476,
		37.079697, 35.185818, 35.276554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869011, 35.167137, 36.014042>,  <37.299400, 35.636772, 35.764790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869011, 35.167137, 36.014042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060913, 34.986984, 35.712849>,  <37.176056, 34.878891, 35.532131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060913, 34.986984, 35.712849>,  <36.869011, 35.167137, 36.014042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060913, 34.986984, 35.712849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266839, -0.742654, 0.614217,
		-0.835839, -0.495603, -0.236116,
		0.479760, -0.450382, -0.752985,
		37.204842, 34.851871, 35.486954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584225, 34.558517, 35.938007>,  <36.869011, 35.167137, 36.014042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584225, 34.558517, 35.938007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960617, 34.545719, 35.803230>,  <37.186451, 34.538040, 35.722363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960617, 34.545719, 35.803230>,  <36.584225, 34.558517, 35.938007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960617, 34.545719, 35.803230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206730, -0.733907, 0.647027,
		-0.267986, -0.678496, -0.683978,
		0.940982, -0.031995, -0.336942,
		37.242912, 34.536121, 35.702148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686844, 33.950115, 36.266396>,  <36.584225, 34.558517, 35.938007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686844, 33.950115, 36.266396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019917, 33.992416, 36.048973>,  <37.219761, 34.017799, 35.918518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019917, 33.992416, 36.048973>,  <36.686844, 33.950115, 36.266396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019917, 33.992416, 36.048973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437561, -0.727253, 0.528813,
		-0.339377, -0.678173, -0.651847,
		0.832685, 0.105756, -0.543555,
		37.269722, 34.024143, 35.885906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920406, 33.413544, 35.738434>,  <36.686844, 33.950115, 36.266396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920406, 33.413544, 35.738434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261848, 33.587864, 35.852585>,  <37.466713, 33.692455, 35.921074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261848, 33.587864, 35.852585>,  <36.920406, 33.413544, 35.738434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261848, 33.587864, 35.852585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290699, -0.853103, 0.433255,
		0.432268, -0.286869, -0.854898,
		0.853603, 0.435800, 0.285376,
		37.517929, 33.718605, 35.938198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315311, 32.816853, 35.854527>,  <36.920406, 33.413544, 35.738434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315311, 32.816853, 35.854527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503941, 33.117340, 36.039257>,  <37.617119, 33.297634, 36.150097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503941, 33.117340, 36.039257>,  <37.315311, 32.816853, 35.854527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503941, 33.117340, 36.039257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413449, -0.650943, 0.636658,
		0.778895, -0.109288, -0.617558,
		0.471574, 0.751219, 0.461831,
		37.645412, 33.342705, 36.177807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963257, 32.611362, 35.920959>,  <37.315311, 32.816853, 35.854527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963257, 32.611362, 35.920959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907391, 32.875435, 36.216164>,  <37.873871, 33.033878, 36.393288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907391, 32.875435, 36.216164>,  <37.963257, 32.611362, 35.920959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907391, 32.875435, 36.216164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489088, -0.602060, 0.631123,
		0.860980, 0.449096, -0.238801,
		-0.139662, 0.660179, 0.738009,
		37.865494, 33.073490, 36.437565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552345, 32.484364, 36.408581>,  <37.963257, 32.611362, 35.920959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552345, 32.484364, 36.408581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325092, 32.731956, 36.625504>,  <38.188740, 32.880512, 36.755657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325092, 32.731956, 36.625504>,  <38.552345, 32.484364, 36.408581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325092, 32.731956, 36.625504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210527, -0.527737, 0.822904,
		0.795555, 0.581685, 0.169511,
		-0.568129, 0.618979, 0.542305,
		38.154655, 32.917648, 36.788197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868618, 32.540863, 37.033707>,  <38.552345, 32.484364, 36.408581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868618, 32.540863, 37.033707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487164, 32.624821, 37.119976>,  <38.258289, 32.675194, 37.171738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487164, 32.624821, 37.119976>,  <38.868618, 32.540863, 37.033707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487164, 32.624821, 37.119976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071178, -0.539016, 0.839282,
		0.292409, 0.815725, 0.499088,
		-0.953641, 0.209889, 0.215675,
		38.201073, 32.687786, 37.184677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879246, 32.773880, 37.667980>,  <38.868618, 32.540863, 37.033707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879246, 32.773880, 37.667980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512100, 32.628716, 37.603703>,  <38.291813, 32.541618, 37.565136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512100, 32.628716, 37.603703>,  <38.879246, 32.773880, 37.667980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512100, 32.628716, 37.603703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025840, -0.458658, 0.888237,
		-0.396052, 0.811129, 0.430363,
		-0.917865, -0.362908, -0.160693,
		38.236740, 32.519844, 37.555496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618855, 32.884743, 38.284916>,  <38.879246, 32.773880, 37.667980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618855, 32.884743, 38.284916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330257, 32.645851, 38.144760>,  <38.157101, 32.502518, 38.060669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330257, 32.645851, 38.144760>,  <38.618855, 32.884743, 38.284916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330257, 32.645851, 38.144760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004176, -0.502266, 0.864703,
		-0.692409, 0.625340, 0.359888,
		-0.721493, -0.597225, -0.350385,
		38.113808, 32.466682, 38.039646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960018, 32.861824, 38.788841>,  <38.618855, 32.884743, 38.284916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960018, 32.861824, 38.788841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946999, 32.522530, 38.577393>,  <37.939186, 32.318954, 38.450523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946999, 32.522530, 38.577393>,  <37.960018, 32.861824, 38.788841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946999, 32.522530, 38.577393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315865, -0.493061, 0.810630,
		-0.948246, 0.193359, -0.251878,
		-0.032551, -0.848236, -0.528618,
		37.937233, 32.268059, 38.418808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259804, 32.580536, 38.998043>,  <37.960018, 32.861824, 38.788841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259804, 32.580536, 38.998043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462280, 32.279770, 38.829098>,  <37.583767, 32.099308, 38.727730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462280, 32.279770, 38.829098>,  <37.259804, 32.580536, 38.998043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462280, 32.279770, 38.829098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150651, -0.559305, 0.815158,
		-0.849162, -0.348995, -0.396392,
		0.506190, -0.751918, -0.422364,
		37.614136, 32.054195, 38.702389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835838, 32.069523, 39.072914>,  <37.259804, 32.580536, 38.998043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835838, 32.069523, 39.072914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211163, 31.932781, 39.052078>,  <37.436356, 31.850737, 39.039577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211163, 31.932781, 39.052078>,  <36.835838, 32.069523, 39.072914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211163, 31.932781, 39.052078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196188, -0.650311, 0.733897,
		-0.284761, -0.678402, -0.677260,
		0.938308, -0.341856, -0.052089,
		37.492657, 31.830225, 39.036453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793209, 31.328962, 39.072147>,  <36.835838, 32.069523, 39.072914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793209, 31.328962, 39.072147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162022, 31.409826, 39.204205>,  <37.383308, 31.458345, 39.283440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162022, 31.409826, 39.204205>,  <36.793209, 31.328962, 39.072147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162022, 31.409826, 39.204205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129130, -0.643369, 0.754587,
		0.364953, -0.738382, -0.567099,
		0.922027, 0.202160, 0.330147,
		37.438629, 31.470474, 39.303249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222374, 30.661835, 39.281143>,  <36.793209, 31.328962, 39.072147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222374, 30.661835, 39.281143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409454, 30.970289, 39.453934>,  <37.521702, 31.155361, 39.557610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409454, 30.970289, 39.453934>,  <37.222374, 30.661835, 39.281143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409454, 30.970289, 39.453934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049472, -0.510798, 0.858276,
		0.882499, -0.380049, -0.277052,
		0.467704, 0.771135, 0.431977,
		37.549767, 31.201630, 39.583527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257145, 29.838877, 39.225204>,  <37.222374, 30.661835, 39.281143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257145, 29.838877, 39.225204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884583, 29.708164, 39.289326>,  <36.661045, 29.629736, 39.327801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884583, 29.708164, 39.289326>,  <37.257145, 29.838877, 39.225204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884583, 29.708164, 39.289326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276435, 0.348568, -0.895591,
		0.236782, -0.878474, -0.414991,
		-0.931407, -0.326778, 0.160307,
		36.605160, 29.610130, 39.337418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970482, 29.692831, 38.498772>,  <37.257145, 29.838877, 39.225204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970482, 29.692831, 38.498772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627708, 29.713329, 38.703922>,  <36.422043, 29.725628, 38.827011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627708, 29.713329, 38.703922>,  <36.970482, 29.692831, 38.498772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627708, 29.713329, 38.703922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447579, 0.419487, -0.789749,
		-0.255615, -0.906314, -0.336536,
		-0.856933, 0.051245, 0.512874,
		36.370628, 29.728703, 38.857784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373398, 29.306684, 38.175747>,  <36.970482, 29.692831, 38.498772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373398, 29.306684, 38.175747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223572, 29.618050, 38.377251>,  <36.133675, 29.804869, 38.498154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223572, 29.618050, 38.377251>,  <36.373398, 29.306684, 38.175747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223572, 29.618050, 38.377251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338244, 0.391156, -0.855913,
		-0.863303, -0.490989, 0.116780,
		-0.374565, 0.778413, 0.503761,
		36.111202, 29.851574, 38.528378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777119, 29.551918, 37.737751>,  <36.373398, 29.306684, 38.175747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777119, 29.551918, 37.737751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814159, 29.856504, 37.994373>,  <35.836384, 30.039257, 38.148346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814159, 29.856504, 37.994373>,  <35.777119, 29.551918, 37.737751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814159, 29.856504, 37.994373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344400, 0.629048, -0.696913,
		-0.934245, -0.156418, 0.320499,
		0.092600, 0.761467, 0.641555,
		35.841938, 30.084944, 38.186840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160461, 29.931156, 37.656898>,  <35.777119, 29.551918, 37.737751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160461, 29.931156, 37.656898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412476, 30.191917, 37.825691>,  <35.563686, 30.348375, 37.926968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412476, 30.191917, 37.825691>,  <35.160461, 29.931156, 37.656898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412476, 30.191917, 37.825691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353567, 0.724618, -0.591540,
		-0.691405, 0.223493, 0.687029,
		0.630039, 0.651904, 0.421985,
		35.601486, 30.387489, 37.952286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799679, 30.570372, 37.938934>,  <35.160461, 29.931156, 37.656898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799679, 30.570372, 37.938934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177868, 30.679157, 37.867241>,  <35.404781, 30.744429, 37.824226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177868, 30.679157, 37.867241>,  <34.799679, 30.570372, 37.938934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177868, 30.679157, 37.867241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325710, 0.791085, -0.517782,
		0.000969, 0.547924, 0.836527,
		0.945469, 0.271964, -0.179231,
		35.461510, 30.760746, 37.813473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694637, 31.189617, 37.579388>,  <34.799679, 30.570372, 37.938934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694637, 31.189617, 37.579388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086189, 31.122946, 37.532032>,  <35.321121, 31.082943, 37.503620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086189, 31.122946, 37.532032>,  <34.694637, 31.189617, 37.579388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086189, 31.122946, 37.532032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022957, 0.665011, -0.746480,
		0.203151, 0.727996, 0.654792,
		0.978878, -0.166680, -0.118385,
		35.379852, 31.072941, 37.496517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058659, 31.770554, 37.634205>,  <34.694637, 31.189617, 37.579388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058659, 31.770554, 37.634205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306667, 31.533205, 37.428883>,  <35.455475, 31.390797, 37.305691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306667, 31.533205, 37.428883>,  <35.058659, 31.770554, 37.634205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306667, 31.533205, 37.428883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202600, 0.753138, -0.625889,
		0.757973, 0.284071, 0.587181,
		0.620025, -0.593370, -0.513305,
		35.492676, 31.355194, 37.274891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527462, 32.259117, 37.466400>,  <35.058659, 31.770554, 37.634205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527462, 32.259117, 37.466400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549618, 31.947145, 37.217037>,  <35.562912, 31.759962, 37.067417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549618, 31.947145, 37.217037>,  <35.527462, 32.259117, 37.466400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549618, 31.947145, 37.217037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025013, 0.625259, -0.780017,
		0.998151, 0.027613, 0.054142,
		0.055392, -0.779929, -0.623412,
		35.566235, 31.713167, 37.030014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117622, 32.349041, 37.142643>,  <35.527462, 32.259117, 37.466400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117622, 32.349041, 37.142643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924080, 32.088104, 36.909290>,  <35.807957, 31.931541, 36.769279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924080, 32.088104, 36.909290>,  <36.117622, 32.349041, 37.142643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924080, 32.088104, 36.909290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048216, 0.645725, -0.762046,
		0.873821, -0.396845, -0.280982,
		-0.483851, -0.652344, -0.583383,
		35.778923, 31.892401, 36.734276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523163, 32.424534, 36.478046>,  <36.117622, 32.349041, 37.142643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523163, 32.424534, 36.478046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163250, 32.262028, 36.414364>,  <35.947304, 32.164524, 36.376156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163250, 32.262028, 36.414364>,  <36.523163, 32.424534, 36.478046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163250, 32.262028, 36.414364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094166, 0.537049, -0.838279,
		0.426065, -0.739274, -0.521482,
		-0.899779, -0.406267, -0.159203,
		35.893318, 32.140148, 36.366604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511742, 32.202168, 35.813618>,  <36.523163, 32.424534, 36.478046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511742, 32.202168, 35.813618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126167, 32.242638, 35.912075>,  <35.894821, 32.266922, 35.971149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126167, 32.242638, 35.912075>,  <36.511742, 32.202168, 35.813618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126167, 32.242638, 35.912075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189910, 0.386441, -0.902551,
		-0.186440, -0.916748, -0.353290,
		-0.963937, 0.101178, 0.246148,
		35.836987, 32.272991, 35.985920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.636925, 28.273857, 43.001965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.333530, 28.534241, 43.014301>,  <36.151493, 28.690472, 43.021702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.333530, 28.534241, 43.014301>,  <36.636925, 28.273857, 43.001965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333530, 28.534241, 43.014301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067598, 0.125653, -0.989768,
		-0.648174, -0.748641, -0.139310,
		-0.758486, 0.650959, 0.030838,
		36.105984, 28.729528, 43.023552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179848, 28.027456, 42.476406>,  <36.636925, 28.273857, 43.001965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179848, 28.027456, 42.476406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.069496, 28.406776, 42.539165>,  <36.003284, 28.634369, 42.576820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.069496, 28.406776, 42.539165>,  <36.179848, 28.027456, 42.476406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069496, 28.406776, 42.539165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036366, 0.173410, -0.984178,
		-0.960505, -0.265806, -0.082326,
		-0.275877, 0.948301, 0.156895,
		35.986732, 28.691267, 42.586235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701923, 28.157589, 41.961082>,  <36.179848, 28.027456, 42.476406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701923, 28.157589, 41.961082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.803040, 28.525772, 42.080318>,  <35.863708, 28.746681, 42.151859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.803040, 28.525772, 42.080318>,  <35.701923, 28.157589, 41.961082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803040, 28.525772, 42.080318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025876, 0.301555, -0.953098,
		-0.967176, 0.248645, 0.052411,
		0.252788, 0.920457, 0.298090,
		35.878876, 28.801908, 42.169746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261684, 28.612440, 41.596519>,  <35.701923, 28.157589, 41.961082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261684, 28.612440, 41.596519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.572495, 28.838737, 41.706913>,  <35.758980, 28.974516, 41.773151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.572495, 28.838737, 41.706913>,  <35.261684, 28.612440, 41.596519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572495, 28.838737, 41.706913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082835, 0.342729, -0.935775,
		-0.623996, 0.749982, 0.219446,
		0.777025, 0.565742, 0.275986,
		35.805603, 29.008461, 41.789707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193710, 29.309898, 41.277409>,  <35.261684, 28.612440, 41.596519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193710, 29.309898, 41.277409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.585201, 29.269033, 41.348568>,  <35.820095, 29.244514, 41.391262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.585201, 29.269033, 41.348568>,  <35.193710, 29.309898, 41.277409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585201, 29.269033, 41.348568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199837, 0.278811, -0.939324,
		0.046366, 0.954896, 0.293298,
		0.978732, -0.102164, 0.177897,
		35.878822, 29.238384, 41.401936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432953, 29.863214, 41.062504>,  <35.193710, 29.309898, 41.277409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432953, 29.863214, 41.062504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.748531, 29.617712, 41.074284>,  <35.937878, 29.470409, 41.081352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.748531, 29.617712, 41.074284>,  <35.432953, 29.863214, 41.062504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748531, 29.617712, 41.074284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313048, 0.360238, -0.878766,
		0.528741, 0.702516, 0.476344,
		0.788945, -0.613758, 0.029449,
		35.985214, 29.433584, 41.083118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978497, 30.192268, 40.783833>,  <35.432953, 29.863214, 41.062504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978497, 30.192268, 40.783833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.107101, 29.815336, 40.746658>,  <36.184265, 29.589176, 40.724354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.107101, 29.815336, 40.746658>,  <35.978497, 30.192268, 40.783833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107101, 29.815336, 40.746658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388517, 0.220789, -0.894599,
		0.863529, 0.251519, 0.437099,
		0.321516, -0.942332, -0.092938,
		36.203556, 29.532637, 40.718777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583519, 30.270895, 40.511860>,  <35.978497, 30.192268, 40.783833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583519, 30.270895, 40.511860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.461700, 29.899662, 40.426151>,  <36.388611, 29.676922, 40.374725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.461700, 29.899662, 40.426151>,  <36.583519, 30.270895, 40.511860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461700, 29.899662, 40.426151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240979, 0.142567, -0.960002,
		0.921510, -0.344001, 0.180230,
		-0.304547, -0.928083, -0.214274,
		36.370335, 29.621237, 40.361870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080505, 30.014612, 40.086906>,  <36.583519, 30.270895, 40.511860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080505, 30.014612, 40.086906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.762608, 29.783703, 40.011925>,  <36.571869, 29.645157, 39.966934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.762608, 29.783703, 40.011925>,  <37.080505, 30.014612, 40.086906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762608, 29.783703, 40.011925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079740, 0.206867, -0.975114,
		0.601688, -0.789911, -0.118374,
		-0.794741, -0.577275, -0.187457,
		36.524185, 29.610519, 39.955688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736256, 30.456499, 39.861088>,  <37.080505, 30.014612, 40.086906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736256, 30.456499, 39.861088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.716053, 30.845879, 39.950394>,  <37.703934, 31.079506, 40.003979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.716053, 30.845879, 39.950394>,  <37.736256, 30.456499, 39.861088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716053, 30.845879, 39.950394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051252, -0.220731, 0.973987,
		0.997408, 0.060634, -0.038743,
		-0.050505, 0.973448, 0.223267,
		37.700901, 31.137913, 40.017372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296211, 30.506083, 40.369717>,  <37.736256, 30.456499, 39.861088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296211, 30.506083, 40.369717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.060272, 30.826542, 40.410194>,  <37.918709, 31.018818, 40.434483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.060272, 30.826542, 40.410194>,  <38.296211, 30.506083, 40.369717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060272, 30.826542, 40.410194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099375, -0.052353, 0.993672,
		0.801377, 0.596171, -0.048734,
		-0.589847, 0.801149, 0.101199,
		37.883320, 31.066887, 40.440556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663345, 30.988979, 40.869713>,  <38.296211, 30.506083, 40.369717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663345, 30.988979, 40.869713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.274300, 31.081631, 40.877354>,  <38.040871, 31.137222, 40.881939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.274300, 31.081631, 40.877354>,  <38.663345, 30.988979, 40.869713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274300, 31.081631, 40.877354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025653, 0.025287, 0.999351,
		0.230996, 0.972476, -0.030537,
		-0.972617, 0.231629, 0.019106,
		37.982513, 31.151119, 40.883087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618450, 31.572603, 41.378723>,  <38.663345, 30.988979, 40.869713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618450, 31.572603, 41.378723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.246342, 31.431957, 41.336834>,  <38.023079, 31.347570, 41.311699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.246342, 31.431957, 41.336834>,  <38.618450, 31.572603, 41.378723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246342, 31.431957, 41.336834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039053, -0.188926, 0.981214,
		-0.364796, 0.916883, 0.162021,
		-0.930268, -0.351615, -0.104726,
		37.967262, 31.326473, 41.305416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231533, 31.952496, 41.915379>,  <38.618450, 31.572603, 41.378723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231533, 31.952496, 41.915379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.034576, 31.613047, 41.838032>,  <37.916401, 31.409378, 41.791622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.034576, 31.613047, 41.838032>,  <38.231533, 31.952496, 41.915379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034576, 31.613047, 41.838032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099292, -0.165945, 0.981123,
		-0.864689, 0.502301, -0.002551,
		-0.492396, -0.848620, -0.193366,
		37.886856, 31.358461, 41.780022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594639, 32.019444, 42.280392>,  <38.231533, 31.952496, 41.915379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594639, 32.019444, 42.280392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.636982, 31.627728, 42.211369>,  <37.662388, 31.392696, 42.169952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.636982, 31.627728, 42.211369>,  <37.594639, 32.019444, 42.280392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636982, 31.627728, 42.211369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096899, -0.182868, 0.978350,
		-0.989649, -0.086842, -0.114251,
		0.105855, -0.979294, -0.172560,
		37.668739, 31.333939, 42.159599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222950, 31.675493, 42.841263>,  <37.594639, 32.019444, 42.280392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222950, 31.675493, 42.841263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.446899, 31.387308, 42.677567>,  <37.581268, 31.214397, 42.579350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.446899, 31.387308, 42.677567>,  <37.222950, 31.675493, 42.841263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446899, 31.387308, 42.677567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027619, -0.477400, 0.878252,
		-0.828120, -0.503010, -0.247383,
		0.559870, -0.720465, -0.409238,
		37.614861, 31.171169, 42.554794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952305, 30.927561, 42.991714>,  <37.222950, 31.675493, 42.841263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952305, 30.927561, 42.991714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.336140, 30.883627, 42.888084>,  <37.566441, 30.857265, 42.825905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.336140, 30.883627, 42.888084>,  <36.952305, 30.927561, 42.991714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336140, 30.883627, 42.888084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141692, -0.606842, 0.782091,
		-0.243120, -0.787197, -0.566758,
		0.959591, -0.109837, -0.259075,
		37.624016, 30.850676, 42.810360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026363, 30.322422, 43.169460>,  <36.952305, 30.927561, 42.991714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026363, 30.322422, 43.169460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.408718, 30.439919, 43.169025>,  <37.638130, 30.510416, 43.168766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.408718, 30.439919, 43.169025>,  <37.026363, 30.322422, 43.169460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408718, 30.439919, 43.169025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179742, -0.581979, 0.793091,
		0.232331, -0.758299, -0.609102,
		0.955884, 0.293741, -0.001086,
		37.695484, 30.528040, 43.168701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477745, 29.719898, 43.286232>,  <37.026363, 30.322422, 43.169460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477745, 29.719898, 43.286232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.709095, 30.017836, 43.419315>,  <37.847904, 30.196598, 43.499165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.709095, 30.017836, 43.419315>,  <37.477745, 29.719898, 43.286232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709095, 30.017836, 43.419315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198883, -0.524286, 0.827991,
		0.791158, -0.412716, -0.451369,
		0.578372, 0.744842, 0.332711,
		37.882607, 30.241287, 43.519127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080940, 29.347605, 43.647324>,  <37.477745, 29.719898, 43.286232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080940, 29.347605, 43.647324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.090652, 29.732323, 43.756397>,  <38.096478, 29.963154, 43.821842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.090652, 29.732323, 43.756397>,  <38.080940, 29.347605, 43.647324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090652, 29.732323, 43.756397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223570, -0.271082, 0.936232,
		0.974385, 0.038236, -0.221610,
		0.024277, 0.961797, 0.272687,
		38.097935, 30.020863, 43.838203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760242, 29.497328, 44.105713>,  <38.080940, 29.347605, 43.647324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760242, 29.497328, 44.105713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.496628, 29.778257, 44.213352>,  <38.338459, 29.946815, 44.277935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.496628, 29.778257, 44.213352>,  <38.760242, 29.497328, 44.105713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496628, 29.778257, 44.213352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162694, -0.216199, 0.962699,
		0.734304, 0.678235, 0.028219,
		-0.659036, 0.702322, 0.269101,
		38.298916, 29.988955, 44.294083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062393, 29.754427, 44.760521>,  <38.760242, 29.497328, 44.105713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062393, 29.754427, 44.760521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.690205, 29.900318, 44.746658>,  <38.466892, 29.987852, 44.738338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.690205, 29.900318, 44.746658>,  <39.062393, 29.754427, 44.760521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690205, 29.900318, 44.746658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039559, -0.005967, 0.999199,
		0.364230, 0.931095, 0.019980,
		-0.930469, 0.364729, -0.034660,
		38.411064, 30.009737, 44.736259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049088, 30.319248, 45.198524>,  <39.062393, 29.754427, 44.760521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049088, 30.319248, 45.198524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.671482, 30.189728, 45.173260>,  <38.444920, 30.112015, 45.158100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.671482, 30.189728, 45.173260>,  <39.049088, 30.319248, 45.198524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671482, 30.189728, 45.173260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038924, -0.080787, 0.995971,
		-0.327598, 0.942670, 0.063661,
		-0.944015, -0.323800, -0.063158,
		38.388279, 30.092588, 45.154312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.436590, 33.657665, 46.576382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.833555, 33.705261, 46.588772>,  <32.071735, 33.733818, 46.596207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.833555, 33.705261, 46.588772>,  <31.436590, 33.657665, 46.576382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833555, 33.705261, 46.588772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026602, 0.453778, -0.890718,
		-0.120043, 0.883135, 0.453500,
		0.992412, 0.118988, 0.030980,
		32.131279, 33.740959, 46.598064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622078, 34.379463, 46.495529>,  <31.436590, 33.657665, 46.576382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622078, 34.379463, 46.495529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.960081, 34.193268, 46.390244>,  <32.162884, 34.081551, 46.327072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.960081, 34.193268, 46.390244>,  <31.622078, 34.379463, 46.495529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960081, 34.193268, 46.390244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003089, 0.487952, -0.872865,
		0.534747, 0.738390, 0.410885,
		0.845007, -0.465493, -0.263211,
		32.213585, 34.053619, 46.311279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077541, 34.920319, 46.185337>,  <31.622078, 34.379463, 46.495529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077541, 34.920319, 46.185337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.248928, 34.580727, 46.061626>,  <32.351761, 34.376972, 45.987400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.248928, 34.580727, 46.061626>,  <32.077541, 34.920319, 46.185337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248928, 34.580727, 46.061626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193276, 0.420475, -0.886479,
		0.882645, 0.320050, 0.344247,
		0.428465, -0.848981, -0.309273,
		32.377468, 34.326031, 45.968845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622074, 35.123219, 45.794674>,  <32.077541, 34.920319, 46.185337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622074, 35.123219, 45.794674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.574986, 34.746696, 45.668129>,  <32.546730, 34.520782, 45.592201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.574986, 34.746696, 45.668129>,  <32.622074, 35.123219, 45.794674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574986, 34.746696, 45.668129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086323, 0.307674, -0.947568,
		0.989287, -0.138861, 0.045035,
		-0.117724, -0.941304, -0.316365,
		32.539669, 34.464306, 45.573219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193226, 34.896263, 45.345985>,  <32.622074, 35.123219, 45.794674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193226, 34.896263, 45.345985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.871265, 34.676292, 45.256805>,  <32.678089, 34.544308, 45.203297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.871265, 34.676292, 45.256805>,  <33.193226, 34.896263, 45.345985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871265, 34.676292, 45.256805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016694, 0.354571, -0.934880,
		0.593169, -0.756211, -0.276215,
		-0.804905, -0.549931, -0.222945,
		32.629795, 34.511314, 45.189922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476040, 34.571682, 44.757599>,  <33.193226, 34.896263, 45.345985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476040, 34.571682, 44.757599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.076130, 34.565994, 44.751305>,  <32.836185, 34.562580, 44.747528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.076130, 34.565994, 44.751305>,  <33.476040, 34.571682, 44.757599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076130, 34.565994, 44.751305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011742, 0.246853, -0.968982,
		0.017665, -0.968948, -0.246631,
		-0.999775, -0.014221, -0.015739,
		32.776196, 34.561729, 44.746582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324215, 34.260197, 44.147575>,  <33.476040, 34.571682, 44.757599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324215, 34.260197, 44.147575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.967518, 34.428474, 44.214279>,  <32.753498, 34.529442, 44.254303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.967518, 34.428474, 44.214279>,  <33.324215, 34.260197, 44.147575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967518, 34.428474, 44.214279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164828, 0.041240, -0.985460,
		-0.421451, -0.906266, 0.032566,
		-0.891746, 0.420691, 0.166759,
		32.699993, 34.554680, 44.264305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842941, 33.852203, 43.851849>,  <33.324215, 34.260197, 44.147575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842941, 33.852203, 43.851849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.635765, 34.191910, 43.892818>,  <32.511459, 34.395733, 43.917400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.635765, 34.191910, 43.892818>,  <32.842941, 33.852203, 43.851849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635765, 34.191910, 43.892818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278939, -0.054484, -0.958762,
		-0.808660, -0.525151, 0.265112,
		-0.517939, 0.849263, 0.102426,
		32.480385, 34.446690, 43.923546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202820, 33.712185, 43.482914>,  <32.842941, 33.852203, 43.851849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202820, 33.712185, 43.482914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.255753, 34.107563, 43.512497>,  <32.287514, 34.344788, 43.530247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.255753, 34.107563, 43.512497>,  <32.202820, 33.712185, 43.482914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255753, 34.107563, 43.512497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299156, 0.110960, -0.947731,
		-0.944983, 0.103291, 0.310383,
		0.132332, 0.988442, 0.073955,
		32.295452, 34.404095, 43.534683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688381, 33.994324, 43.132778>,  <32.202820, 33.712185, 43.482914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688381, 33.994324, 43.132778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.901081, 34.332142, 43.158024>,  <32.028702, 34.534832, 43.173172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.901081, 34.332142, 43.158024>,  <31.688381, 33.994324, 43.132778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901081, 34.332142, 43.158024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139011, 0.160556, -0.977189,
		-0.835414, 0.510846, 0.202777,
		0.531750, 0.844546, 0.063118,
		32.060608, 34.585506, 43.176960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378170, 34.496609, 42.717541>,  <31.688381, 33.994324, 43.132778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378170, 34.496609, 42.717541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.760891, 34.611073, 42.738083>,  <31.990524, 34.679752, 42.750408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.760891, 34.611073, 42.738083>,  <31.378170, 34.496609, 42.717541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760891, 34.611073, 42.738083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018523, 0.236295, -0.971505,
		-0.290145, 0.928588, 0.231388,
		0.956804, 0.286163, 0.051359,
		32.047932, 34.696922, 42.753490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417992, 35.110725, 42.350304>,  <31.378170, 34.496609, 42.717541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417992, 35.110725, 42.350304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.802597, 35.001190, 42.359344>,  <32.033360, 34.935471, 42.364769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.802597, 35.001190, 42.359344>,  <31.417992, 35.110725, 42.350304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802597, 35.001190, 42.359344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120725, 0.347150, -0.930007,
		0.246821, 0.896941, 0.366847,
		0.961512, -0.273833, 0.022599,
		32.091049, 34.919041, 42.366123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703663, 35.642143, 41.942242>,  <31.417992, 35.110725, 42.350304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703663, 35.642143, 41.942242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.959021, 35.334927, 41.962486>,  <32.112236, 35.150597, 41.974632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.959021, 35.334927, 41.962486>,  <31.703663, 35.642143, 41.942242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959021, 35.334927, 41.962486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274330, 0.165598, -0.947270,
		0.719162, 0.618618, 0.316414,
		0.638395, -0.768043, 0.050614,
		32.150539, 35.104515, 41.977669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278522, 35.875584, 41.566666>,  <31.703663, 35.642143, 41.942242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278522, 35.875584, 41.566666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.313152, 35.477428, 41.550098>,  <32.333931, 35.238537, 41.540157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.313152, 35.477428, 41.550098>,  <32.278522, 35.875584, 41.566666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313152, 35.477428, 41.550098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242380, 0.061366, -0.968239,
		0.966311, 0.073786, 0.246574,
		0.086574, -0.995384, -0.041414,
		32.339123, 35.178814, 41.537674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021931, 35.586067, 41.787323>,  <32.278522, 35.875584, 41.566666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021931, 35.586067, 41.787323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.347939, 35.817841, 41.787453>,  <33.543541, 35.956905, 41.787533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.347939, 35.817841, 41.787453>,  <33.021931, 35.586067, 41.787323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347939, 35.817841, 41.787453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077350, -0.109360, 0.990988,
		0.574250, -0.807648, -0.133950,
		0.815018, 0.579436, 0.000328,
		33.592445, 35.991673, 41.787552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344994, 35.280464, 42.266682>,  <33.021931, 35.586067, 41.787323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344994, 35.280464, 42.266682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.553814, 35.619831, 42.231701>,  <33.679104, 35.823452, 42.210712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.553814, 35.619831, 42.231701>,  <33.344994, 35.280464, 42.266682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553814, 35.619831, 42.231701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266607, -0.064933, 0.961616,
		0.810177, -0.525323, -0.260093,
		0.522048, 0.848422, -0.087448,
		33.710430, 35.874359, 42.205467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092178, 35.214924, 42.339535>,  <33.344994, 35.280464, 42.266682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092178, 35.214924, 42.339535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.002666, 35.589596, 42.447285>,  <33.948959, 35.814400, 42.511932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.002666, 35.589596, 42.447285>,  <34.092178, 35.214924, 42.339535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002666, 35.589596, 42.447285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525229, -0.116920, 0.842890,
		0.821011, 0.330099, -0.465806,
		-0.223775, 0.936677, 0.269370,
		33.935535, 35.870598, 42.528095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551281, 35.323524, 42.802292>,  <34.092178, 35.214924, 42.339535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551281, 35.323524, 42.802292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.312950, 35.635231, 42.879986>,  <34.169952, 35.822254, 42.926601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.312950, 35.635231, 42.879986>,  <34.551281, 35.323524, 42.802292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312950, 35.635231, 42.879986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319121, 0.007787, 0.947682,
		0.736986, 0.626642, -0.253320,
		-0.595830, 0.779268, 0.194235,
		34.134201, 35.869011, 42.938255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988956, 35.772816, 43.102394>,  <34.551281, 35.323524, 42.802292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988956, 35.772816, 43.102394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.619587, 35.860779, 43.228207>,  <34.397964, 35.913555, 43.303696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.619587, 35.860779, 43.228207>,  <34.988956, 35.772816, 43.102394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619587, 35.860779, 43.228207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331543, 0.044295, 0.942400,
		0.193305, 0.974515, -0.113810,
		-0.923424, 0.219904, 0.314531,
		34.342560, 35.926750, 43.322567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157204, 36.171482, 43.676361>,  <34.988956, 35.772816, 43.102394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157204, 36.171482, 43.676361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.769852, 36.104504, 43.750336>,  <34.537441, 36.064316, 43.794720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.769852, 36.104504, 43.750336>,  <35.157204, 36.171482, 43.676361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769852, 36.104504, 43.750336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197449, -0.061292, 0.978395,
		-0.152497, 0.983974, 0.092417,
		-0.968379, -0.167450, 0.184938,
		34.479340, 36.054268, 43.805817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897266, 36.615700, 44.216831>,  <35.157204, 36.171482, 43.676361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897266, 36.615700, 44.216831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.634834, 36.313824, 44.217628>,  <34.477375, 36.132698, 44.218105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.634834, 36.313824, 44.217628>,  <34.897266, 36.615700, 44.216831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634834, 36.313824, 44.217628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112325, -0.095036, 0.989116,
		-0.746289, 0.649160, 0.147121,
		-0.656076, -0.754692, 0.001993,
		34.438011, 36.087418, 44.218227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294342, 36.768826, 44.677063>,  <34.897266, 36.615700, 44.216831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294342, 36.768826, 44.677063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.341942, 36.372250, 44.655571>,  <34.370502, 36.134304, 44.642677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.341942, 36.372250, 44.655571>,  <34.294342, 36.768826, 44.677063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341942, 36.372250, 44.655571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140077, -0.070338, 0.987639,
		-0.982964, -0.110002, -0.147248,
		0.119000, -0.991440, -0.053731,
		34.377644, 36.074818, 44.639450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944592, 36.610909, 45.275932>,  <34.294342, 36.768826, 44.677063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944592, 36.610909, 45.275932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.112877, 36.257423, 45.193909>,  <34.213848, 36.045330, 45.144695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.112877, 36.257423, 45.193909>,  <33.944592, 36.610909, 45.275932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112877, 36.257423, 45.193909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113826, -0.172825, 0.978353,
		-0.900025, -0.434945, 0.027881,
		0.420711, -0.883716, -0.205055,
		34.239090, 35.992310, 45.132393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660954, 36.216953, 45.807701>,  <33.944592, 36.610909, 45.275932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660954, 36.216953, 45.807701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.956985, 35.979362, 45.681545>,  <34.134605, 35.836807, 45.605850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.956985, 35.979362, 45.681545>,  <33.660954, 36.216953, 45.807701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956985, 35.979362, 45.681545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082317, -0.385439, 0.919054,
		-0.667460, -0.706137, -0.236363,
		0.740082, -0.593975, -0.315392,
		34.179008, 35.801170, 45.586929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502651, 35.508171, 45.999241>,  <33.660954, 36.216953, 45.807701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502651, 35.508171, 45.999241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.899021, 35.520035, 45.946796>,  <34.136845, 35.527153, 45.915329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.899021, 35.520035, 45.946796>,  <33.502651, 35.508171, 45.999241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899021, 35.520035, 45.946796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133017, -0.357142, 0.924530,
		-0.019408, -0.933579, -0.357845,
		0.990924, 0.029656, -0.131114,
		34.196297, 35.528931, 45.907463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791092, 34.776035, 46.082333>,  <33.502651, 35.508171, 45.999241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791092, 34.776035, 46.082333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.057476, 35.060680, 46.171871>,  <34.217304, 35.231468, 46.225594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.057476, 35.060680, 46.171871>,  <33.791092, 34.776035, 46.082333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057476, 35.060680, 46.171871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227826, -0.479745, 0.847314,
		0.710349, -0.513277, -0.481613,
		0.665958, 0.711612, 0.223848,
		34.257263, 35.274162, 46.239025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206417, 34.421181, 46.446571>,  <33.791092, 34.776035, 46.082333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206417, 34.421181, 46.446571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.333576, 34.790302, 46.533638>,  <34.409870, 35.011776, 46.585876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.333576, 34.790302, 46.533638>,  <34.206417, 34.421181, 46.446571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333576, 34.790302, 46.533638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122413, -0.267602, 0.955722,
		0.940191, -0.277173, -0.198032,
		0.317894, 0.922802, 0.217667,
		34.428944, 35.067142, 46.598938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830795, 34.315121, 46.788498>,  <34.206417, 34.421181, 46.446571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830795, 34.315121, 46.788498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.703651, 34.679096, 46.895069>,  <34.627365, 34.897480, 46.959011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.703651, 34.679096, 46.895069>,  <34.830795, 34.315121, 46.788498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703651, 34.679096, 46.895069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178246, -0.218645, 0.959387,
		0.931233, 0.352440, -0.092695,
		-0.317859, 0.909934, 0.266430,
		34.608295, 34.952076, 46.974998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500210, 34.477341, 46.607128>,  <34.830795, 34.315121, 46.788498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500210, 34.477341, 46.607128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.898788, 34.444721, 46.615585>,  <36.137936, 34.425148, 46.620659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.898788, 34.444721, 46.615585>,  <35.500210, 34.477341, 46.607128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898788, 34.444721, 46.615585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043383, 0.281632, -0.958541,
		0.072214, 0.956051, 0.284168,
		0.996445, -0.081548, 0.021138,
		36.197723, 34.420258, 46.621925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766850, 35.110710, 46.326401>,  <35.500210, 34.477341, 46.607128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766850, 35.110710, 46.326401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.062378, 34.846096, 46.275002>,  <36.239697, 34.687328, 46.244164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.062378, 34.846096, 46.275002>,  <35.766850, 35.110710, 46.326401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062378, 34.846096, 46.275002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127305, 0.324253, -0.937365,
		0.661767, 0.676188, 0.323782,
		0.738822, -0.661536, -0.128497,
		36.284023, 34.647636, 46.236454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232250, 35.509945, 46.000153>,  <35.766850, 35.110710, 46.326401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232250, 35.509945, 46.000153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.347778, 35.137180, 45.912403>,  <36.417095, 34.913521, 45.859753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.347778, 35.137180, 45.912403>,  <36.232250, 35.509945, 46.000153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347778, 35.137180, 45.912403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241206, 0.292578, -0.925321,
		0.926501, 0.214334, 0.309284,
		0.288817, -0.931912, -0.219375,
		36.434422, 34.857605, 45.846592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894371, 35.589863, 45.718719>,  <36.232250, 35.509945, 46.000153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894371, 35.589863, 45.718719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.793205, 35.227798, 45.582062>,  <36.732506, 35.010559, 45.500065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.793205, 35.227798, 45.582062>,  <36.894371, 35.589863, 45.718719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793205, 35.227798, 45.582062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232441, 0.285936, -0.929630,
		0.939150, -0.314534, 0.138077,
		-0.252919, -0.905157, -0.341648,
		36.717331, 34.956253, 45.479568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480759, 35.290752, 45.308025>,  <36.894371, 35.589863, 45.718719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480759, 35.290752, 45.308025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.152843, 35.093773, 45.191105>,  <36.956093, 34.975586, 45.120953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.152843, 35.093773, 45.191105>,  <37.480759, 35.290752, 45.308025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152843, 35.093773, 45.191105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204775, 0.224603, -0.952691,
		0.534806, -0.840860, -0.083285,
		-0.819786, -0.492451, -0.292306,
		36.906906, 34.946037, 45.103413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634640, 34.864777, 44.639736>,  <37.480759, 35.290752, 45.308025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634640, 34.864777, 44.639736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.235493, 34.885704, 44.624096>,  <36.996006, 34.898258, 44.614712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.235493, 34.885704, 44.624096>,  <37.634640, 34.864777, 44.639736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235493, 34.885704, 44.624096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050576, 0.240055, -0.969441,
		-0.041329, -0.969349, -0.242188,
		-0.997864, 0.052315, -0.039105,
		36.936134, 34.901398, 44.612366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406494, 34.413586, 43.995789>,  <37.634640, 34.864777, 44.639736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406494, 34.413586, 43.995789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.116798, 34.674961, 44.083870>,  <36.942982, 34.831787, 44.136719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.116798, 34.674961, 44.083870>,  <37.406494, 34.413586, 43.995789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116798, 34.674961, 44.083870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130365, 0.183825, -0.974276,
		-0.677110, -0.734318, -0.047948,
		-0.724242, 0.653442, 0.220199,
		36.899525, 34.870995, 44.149929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731750, 34.266335, 43.714088>,  <37.406494, 34.413586, 43.995789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731750, 34.266335, 43.714088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.719166, 34.661354, 43.775749>,  <36.711617, 34.898365, 43.812748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.719166, 34.661354, 43.775749>,  <36.731750, 34.266335, 43.714088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719166, 34.661354, 43.775749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176446, 0.146322, -0.973374,
		-0.983808, -0.057823, 0.169645,
		-0.031461, 0.987546, 0.154155,
		36.709728, 34.957619, 43.821995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173306, 34.517612, 43.294460>,  <36.731750, 34.266335, 43.714088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173306, 34.517612, 43.294460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.396255, 34.842346, 43.364029>,  <36.530025, 35.037186, 43.405769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.396255, 34.842346, 43.364029>,  <36.173306, 34.517612, 43.294460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396255, 34.842346, 43.364029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128135, 0.291079, -0.948079,
		-0.820311, 0.506155, 0.266267,
		0.557379, 0.811838, 0.173919,
		36.563469, 35.085899, 43.416206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823864, 35.081707, 43.150139>,  <36.173306, 34.517612, 43.294460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823864, 35.081707, 43.150139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.197739, 35.216236, 43.104103>,  <36.422062, 35.296955, 43.076481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.197739, 35.216236, 43.104103>,  <35.823864, 35.081707, 43.150139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197739, 35.216236, 43.104103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235064, 0.341924, -0.909853,
		-0.266657, 0.877480, 0.398650,
		0.934687, 0.336327, -0.115087,
		36.478146, 35.317135, 43.069576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716663, 35.693039, 42.743275>,  <35.823864, 35.081707, 43.150139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716663, 35.693039, 42.743275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.108845, 35.619595, 42.715023>,  <36.344154, 35.575527, 42.698071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.108845, 35.619595, 42.715023>,  <35.716663, 35.693039, 42.743275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108845, 35.619595, 42.715023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020279, 0.451451, -0.892065,
		0.195680, 0.873200, 0.446352,
		0.980458, -0.183611, -0.070632,
		36.402981, 35.564510, 42.693832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063385, 36.363247, 42.525654>,  <35.716663, 35.693039, 42.743275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063385, 36.363247, 42.525654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.318619, 36.070343, 42.430450>,  <36.471760, 35.894600, 42.373329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.318619, 36.070343, 42.430450>,  <36.063385, 36.363247, 42.525654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318619, 36.070343, 42.430450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066469, 0.360352, -0.930445,
		0.767094, 0.577880, 0.278607,
		0.638082, -0.732258, -0.238013,
		36.510044, 35.850666, 42.359047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752361, 36.611629, 42.165035>,  <36.063385, 36.363247, 42.525654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752361, 36.611629, 42.165035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.736843, 36.229321, 42.048424>,  <36.727531, 35.999935, 41.978458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.736843, 36.229321, 42.048424>,  <36.752361, 36.611629, 42.165035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736843, 36.229321, 42.048424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142821, 0.283447, -0.948293,
		0.988988, -0.078424, 0.125508,
		-0.038794, -0.955776, -0.291527,
		36.725204, 35.942589, 41.960964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252583, 36.514736, 41.744106>,  <36.752361, 36.611629, 42.165035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252583, 36.514736, 41.744106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.038441, 36.190498, 41.649170>,  <36.909954, 35.995956, 41.592209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.038441, 36.190498, 41.649170>,  <37.252583, 36.514736, 41.744106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038441, 36.190498, 41.649170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083883, 0.228588, -0.969903,
		0.840452, -0.539150, -0.054380,
		-0.535354, -0.810595, -0.237343,
		36.877834, 35.947319, 41.577969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.544254, 39.787689, 29.458786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.264400, 39.578419, 29.264137>,  <25.096489, 39.452858, 29.147348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.264400, 39.578419, 29.264137>,  <25.544254, 39.787689, 29.458786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.264400, 39.578419, 29.264137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336637, -0.359369, 0.870362,
		-0.630228, 0.772749, 0.075307,
		-0.699634, -0.523175, -0.486621,
		25.054510, 39.421467, 29.118151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.935907, 39.793259, 29.842922>,  <25.544254, 39.787689, 29.458786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.935907, 39.793259, 29.842922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.887365, 39.462311, 29.623568>,  <24.858240, 39.263741, 29.491955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.887365, 39.462311, 29.623568>,  <24.935907, 39.793259, 29.842922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.887365, 39.462311, 29.623568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384663, -0.470099, 0.794381,
		-0.915045, 0.307345, -0.261212,
		-0.121353, -0.827373, -0.548386,
		24.850960, 39.214100, 29.459051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.311981, 39.592396, 30.074713>,  <24.935907, 39.793259, 29.842922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.311981, 39.592396, 30.074713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.494967, 39.283508, 29.898344>,  <24.604757, 39.098175, 29.792522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.494967, 39.283508, 29.898344>,  <24.311981, 39.592396, 30.074713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.494967, 39.283508, 29.898344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255297, -0.589026, 0.766728,
		-0.851792, -0.238185, -0.466603,
		0.457464, -0.772215, -0.440920,
		24.632206, 39.051846, 29.766068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.941183, 39.017563, 30.251621>,  <24.311981, 39.592396, 30.074713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.941183, 39.017563, 30.251621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.287041, 38.847481, 30.144596>,  <24.494555, 38.745430, 30.080381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.287041, 38.847481, 30.144596>,  <23.941183, 39.017563, 30.251621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.287041, 38.847481, 30.144596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138621, -0.713834, 0.686458,
		-0.482884, -0.556451, -0.676155,
		0.864643, -0.425209, -0.267563,
		24.546434, 38.719917, 30.064327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.818804, 38.293606, 30.477217>,  <23.941183, 39.017563, 30.251621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.818804, 38.293606, 30.477217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.212898, 38.341286, 30.428070>,  <24.449356, 38.369896, 30.398582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.212898, 38.341286, 30.428070>,  <23.818804, 38.293606, 30.477217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.212898, 38.341286, 30.428070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169078, -0.565251, 0.807406,
		0.026795, -0.816261, -0.577061,
		0.985238, 0.119202, -0.122866,
		24.508471, 38.377045, 30.391211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.155293, 37.573841, 30.493876>,  <23.818804, 38.293606, 30.477217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.155293, 37.573841, 30.493876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.413368, 37.856518, 30.610020>,  <24.568214, 38.026123, 30.679707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.413368, 37.856518, 30.610020>,  <24.155293, 37.573841, 30.493876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.413368, 37.856518, 30.610020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309649, -0.589300, 0.746219,
		0.698461, -0.391543, -0.599038,
		0.645190, 0.706696, 0.290362,
		24.606926, 38.068527, 30.697128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.732382, 37.196255, 30.653431>,  <24.155293, 37.573841, 30.493876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.732382, 37.196255, 30.653431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.800625, 37.549545, 30.828154>,  <24.841572, 37.761520, 30.932987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.800625, 37.549545, 30.828154>,  <24.732382, 37.196255, 30.653431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.800625, 37.549545, 30.828154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210148, -0.465721, 0.859617,
		0.962668, -0.054865, -0.265066,
		0.170610, 0.883229, 0.436805,
		24.851809, 37.814514, 30.959196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.371704, 37.100418, 30.931358>,  <24.732382, 37.196255, 30.653431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.371704, 37.100418, 30.931358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.196566, 37.415039, 31.105543>,  <25.091482, 37.603809, 31.210054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.196566, 37.415039, 31.105543>,  <25.371704, 37.100418, 30.931358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.196566, 37.415039, 31.105543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115509, -0.431131, 0.894865,
		0.891599, 0.442113, 0.097916,
		-0.437846, 0.786550, 0.435464,
		25.065212, 37.651005, 31.236183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.876640, 37.388252, 31.465700>,  <25.371704, 37.100418, 30.931358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.876640, 37.388252, 31.465700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.504501, 37.488861, 31.572424>,  <25.281218, 37.549225, 31.636457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.504501, 37.488861, 31.572424>,  <25.876640, 37.388252, 31.465700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.504501, 37.488861, 31.572424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159970, -0.376324, 0.912573,
		0.329938, 0.891693, 0.309877,
		-0.930350, 0.251522, 0.266808,
		25.225397, 37.564316, 31.652466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.988857, 37.689972, 32.121998>,  <25.876640, 37.388252, 31.465700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.988857, 37.689972, 32.121998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.596792, 37.613091, 32.102634>,  <25.361553, 37.566963, 32.091015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.596792, 37.613091, 32.102634>,  <25.988857, 37.689972, 32.121998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.596792, 37.613091, 32.102634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036164, -0.066731, 0.997115,
		-0.194876, 0.979084, 0.058456,
		-0.980161, -0.192200, -0.048412,
		25.302744, 37.555431, 32.088112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.704172, 38.270847, 32.547909>,  <25.988857, 37.689972, 32.121998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.704172, 38.270847, 32.547909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.442820, 37.969933, 32.514050>,  <25.286009, 37.789383, 32.493736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.442820, 37.969933, 32.514050>,  <25.704172, 38.270847, 32.547909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.442820, 37.969933, 32.514050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035940, -0.080862, 0.996077,
		-0.756176, 0.653859, 0.025797,
		-0.653380, -0.752283, -0.084646,
		25.246805, 37.744247, 32.488655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.309225, 38.372402, 33.149284>,  <25.704172, 38.270847, 32.547909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.309225, 38.372402, 33.149284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.240248, 37.994022, 33.039421>,  <25.198862, 37.766994, 32.973503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.240248, 37.994022, 33.039421>,  <25.309225, 38.372402, 33.149284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.240248, 37.994022, 33.039421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049218, -0.270212, 0.961542,
		-0.983789, 0.179328, 0.000038,
		-0.172441, -0.945953, -0.274658,
		25.188515, 37.710236, 32.957024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.796135, 38.124874, 33.611839>,  <25.309225, 38.372402, 33.149284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.796135, 38.124874, 33.611839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.938688, 37.777771, 33.473278>,  <25.024220, 37.569511, 33.390141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.938688, 37.777771, 33.473278>,  <24.796135, 38.124874, 33.611839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.938688, 37.777771, 33.473278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094363, -0.335424, 0.937329,
		-0.929563, -0.366735, -0.037656,
		0.356382, -0.867754, -0.346404,
		25.045603, 37.517445, 33.369358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.394024, 37.487537, 33.974220>,  <24.796135, 38.124874, 33.611839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.394024, 37.487537, 33.974220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.755081, 37.378750, 33.840794>,  <24.971716, 37.313477, 33.760738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.755081, 37.378750, 33.840794>,  <24.394024, 37.487537, 33.974220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.755081, 37.378750, 33.840794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210023, -0.398145, 0.892956,
		-0.375656, -0.876081, -0.302267,
		0.902648, -0.271961, -0.333563,
		25.025875, 37.297157, 33.740723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.392439, 36.823380, 34.168491>,  <24.394024, 37.487537, 33.974220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.392439, 36.823380, 34.168491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.770882, 36.946930, 34.129551>,  <24.997948, 37.021061, 34.106186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.770882, 36.946930, 34.129551>,  <24.392439, 36.823380, 34.168491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.770882, 36.946930, 34.129551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263389, -0.558975, 0.786240,
		0.188437, -0.769507, -0.610205,
		0.946107, 0.308878, -0.097348,
		25.054714, 37.039593, 34.100346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.941841, 36.174927, 34.140354>,  <24.392439, 36.823380, 34.168491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.941841, 36.174927, 34.140354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.135015, 36.499840, 34.271175>,  <25.250919, 36.694790, 34.349667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.135015, 36.499840, 34.271175>,  <24.941841, 36.174927, 34.140354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.135015, 36.499840, 34.271175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355582, -0.523229, 0.774463,
		0.800209, -0.257723, -0.541521,
		0.482936, 0.812287, 0.327050,
		25.279896, 36.743526, 34.369289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.465826, 35.751671, 34.426193>,  <24.941841, 36.174927, 34.140354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.465826, 35.751671, 34.426193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.521212, 36.122681, 34.565063>,  <25.554443, 36.345287, 34.648384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.521212, 36.122681, 34.565063>,  <25.465826, 35.751671, 34.426193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.521212, 36.122681, 34.565063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478523, -0.369574, 0.796512,
		0.867089, 0.055846, -0.495013,
		0.138462, 0.927522, 0.347177,
		25.562750, 36.400936, 34.669216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.179144, 35.705166, 34.791237>,  <25.465826, 35.751671, 34.426193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.179144, 35.705166, 34.791237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.993799, 36.030331, 34.932362>,  <25.882593, 36.225430, 35.017036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.993799, 36.030331, 34.932362>,  <26.179144, 35.705166, 34.791237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.993799, 36.030331, 34.932362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250064, -0.262005, 0.932106,
		0.850156, 0.520126, -0.081876,
		-0.463361, 0.812910, 0.352810,
		25.854792, 36.274204, 35.038204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.631563, 35.982632, 35.276062>,  <26.179144, 35.705166, 34.791237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.631563, 35.982632, 35.276062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.258095, 36.099159, 35.359386>,  <26.034014, 36.169075, 35.409382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.258095, 36.099159, 35.359386>,  <26.631563, 35.982632, 35.276062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.258095, 36.099159, 35.359386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047681, -0.475359, 0.878499,
		0.354946, 0.830160, 0.429938,
		-0.933670, 0.291320, 0.208310,
		25.977993, 36.186554, 35.421879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135365, 35.683712, 35.755798>,  <26.631563, 35.982632, 35.276062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135365, 35.683712, 35.755798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.354967, 35.363567, 35.659451>,  <27.486729, 35.171482, 35.601643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.354967, 35.363567, 35.659451>,  <27.135365, 35.683712, 35.755798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354967, 35.363567, 35.659451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650973, 0.590200, -0.477386,
		0.524239, 0.105291, 0.845037,
		0.549005, -0.800361, -0.240865,
		27.519669, 35.123459, 35.587193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702070, 36.024269, 35.522682>,  <27.135365, 35.683712, 35.755798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.702070, 36.024269, 35.522682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.773268, 35.649681, 35.401794>,  <27.815987, 35.424927, 35.329262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.773268, 35.649681, 35.401794>,  <27.702070, 36.024269, 35.522682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773268, 35.649681, 35.401794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761927, 0.325515, -0.559918,
		0.622725, -0.130606, 0.771463,
		0.177994, -0.936473, -0.302219,
		27.826666, 35.368740, 35.311131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472851, 35.873974, 35.558811>,  <27.702070, 36.024269, 35.522682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472851, 35.873974, 35.558811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.285194, 35.649902, 35.285725>,  <28.172600, 35.515457, 35.121872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.285194, 35.649902, 35.285725>,  <28.472851, 35.873974, 35.558811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285194, 35.649902, 35.285725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705450, 0.227350, -0.671307,
		0.531269, -0.796561, 0.288520,
		-0.469142, -0.560181, -0.682718,
		28.144451, 35.481850, 35.080910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021015, 35.467163, 35.191540>,  <28.472851, 35.873974, 35.558811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021015, 35.467163, 35.191540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.706995, 35.432724, 34.946171>,  <28.518583, 35.412060, 34.798950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.706995, 35.432724, 34.946171>,  <29.021015, 35.467163, 35.191540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706995, 35.432724, 34.946171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578592, 0.251712, -0.775805,
		0.221199, -0.963965, -0.147793,
		-0.785049, -0.086096, -0.613421,
		28.471481, 35.406895, 34.762146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318491, 35.285049, 34.573082>,  <29.021015, 35.467163, 35.191540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318491, 35.285049, 34.573082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.959114, 35.404697, 34.444500>,  <28.743488, 35.476486, 34.367352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.959114, 35.404697, 34.444500>,  <29.318491, 35.285049, 34.573082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959114, 35.404697, 34.444500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382117, 0.171972, -0.907971,
		-0.216314, -0.938590, -0.268807,
		-0.898440, 0.299122, -0.321451,
		28.689583, 35.494434, 34.348064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222527, 34.924179, 33.911839>,  <29.318491, 35.285049, 34.573082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222527, 34.924179, 33.911839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.972401, 35.235733, 33.931099>,  <28.822325, 35.422665, 33.942654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.972401, 35.235733, 33.931099>,  <29.222527, 34.924179, 33.911839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972401, 35.235733, 33.931099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224037, 0.238284, -0.945002,
		-0.747524, -0.580134, -0.323502,
		-0.625313, 0.778887, 0.048152,
		28.784807, 35.469398, 33.945545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819345, 34.932793, 33.299297>,  <29.222527, 34.924179, 33.911839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819345, 34.932793, 33.299297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.783815, 35.317551, 33.402733>,  <28.762497, 35.548405, 33.464794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.783815, 35.317551, 33.402733>,  <28.819345, 34.932793, 33.299297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783815, 35.317551, 33.402733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026895, 0.261837, -0.964737,
		-0.995684, -0.078740, -0.049128,
		-0.088827, 0.961895, 0.258589,
		28.757168, 35.606117, 33.480309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302399, 35.188972, 32.937859>,  <28.819345, 34.932793, 33.299297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302399, 35.188972, 32.937859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.511366, 35.516193, 33.034077>,  <28.636747, 35.712528, 33.091808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.511366, 35.516193, 33.034077>,  <28.302399, 35.188972, 32.937859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511366, 35.516193, 33.034077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061021, 0.317244, -0.946379,
		-0.850502, 0.479729, 0.215654,
		0.522420, 0.818057, 0.240543,
		28.668093, 35.761612, 33.106239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.987339, 35.817314, 32.602940>,  <28.302399, 35.188972, 32.937859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.987339, 35.817314, 32.602940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.360437, 35.945477, 32.669067>,  <28.584295, 36.022373, 32.708744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.360437, 35.945477, 32.669067>,  <27.987339, 35.817314, 32.602940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360437, 35.945477, 32.669067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003939, 0.449457, -0.893293,
		-0.360518, 0.833865, 0.417966,
		0.932744, 0.320402, 0.165322,
		28.640261, 36.041595, 32.718662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032928, 36.573666, 32.435997>,  <27.987339, 35.817314, 32.602940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032928, 36.573666, 32.435997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.407324, 36.434460, 32.414806>,  <28.631962, 36.350937, 32.402092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.407324, 36.434460, 32.414806>,  <28.032928, 36.573666, 32.435997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407324, 36.434460, 32.414806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193963, 0.635435, -0.747396,
		0.293770, 0.689280, 0.662263,
		0.935990, -0.348017, -0.052977,
		28.688122, 36.330055, 32.398914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419867, 37.136276, 32.240944>,  <28.032928, 36.573666, 32.435997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419867, 37.136276, 32.240944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.633816, 36.813862, 32.139576>,  <28.762184, 36.620415, 32.078754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.633816, 36.813862, 32.139576>,  <28.419867, 37.136276, 32.240944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633816, 36.813862, 32.139576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124453, 0.371817, -0.919926,
		0.835718, 0.460503, 0.299187,
		0.534871, -0.806033, -0.253423,
		28.794277, 36.572052, 32.063549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908768, 37.412212, 31.812193>,  <28.419867, 37.136276, 32.240944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908768, 37.412212, 31.812193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.920992, 37.022705, 31.722000>,  <28.928328, 36.789001, 31.667885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.920992, 37.022705, 31.722000>,  <28.908768, 37.412212, 31.812193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920992, 37.022705, 31.722000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170184, 0.227364, -0.958823,
		0.984938, -0.009069, 0.172669,
		0.030563, -0.973767, -0.225483,
		28.930161, 36.730576, 31.654356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497198, 37.396637, 31.307226>,  <28.908768, 37.412212, 31.812193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497198, 37.396637, 31.307226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.297703, 37.053871, 31.255127>,  <29.178005, 36.848213, 31.223867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.297703, 37.053871, 31.255127>,  <29.497198, 37.396637, 31.307226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297703, 37.053871, 31.255127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090649, 0.097880, -0.991061,
		0.861999, -0.506088, 0.028861,
		-0.498739, -0.856910, -0.130249,
		29.148081, 36.796799, 31.216053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887236, 36.967754, 30.840643>,  <29.497198, 37.396637, 31.307226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887236, 36.967754, 30.840643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.517323, 36.815708, 30.833893>,  <29.295374, 36.724480, 30.829844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.517323, 36.815708, 30.833893>,  <29.887236, 36.967754, 30.840643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517323, 36.815708, 30.833893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057165, -0.094958, -0.993839,
		0.376173, -0.920051, 0.109545,
		-0.924784, -0.380117, -0.016874,
		29.239887, 36.701672, 30.828831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905684, 36.497124, 30.387083>,  <29.887236, 36.967754, 30.840643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905684, 36.497124, 30.387083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.513985, 36.576473, 30.403664>,  <29.278965, 36.624084, 30.413612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.513985, 36.576473, 30.403664>,  <29.905684, 36.497124, 30.387083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513985, 36.576473, 30.403664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032143, 0.049920, -0.998236,
		-0.200094, -0.978854, -0.042508,
		-0.979249, 0.198374, 0.041452,
		29.220209, 36.635986, 30.416100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628878, 36.126957, 29.795069>,  <29.905684, 36.497124, 30.387083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628878, 36.126957, 29.795069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.369442, 36.413170, 29.898874>,  <29.213781, 36.584896, 29.961157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.369442, 36.413170, 29.898874>,  <29.628878, 36.126957, 29.795069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369442, 36.413170, 29.898874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053449, 0.382928, -0.922230,
		-0.759260, -0.584278, -0.286608,
		-0.648589, 0.715532, 0.259513,
		29.174866, 36.627831, 29.976728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194052, 36.192333, 29.231770>,  <29.628878, 36.126957, 29.795069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.194052, 36.192333, 29.231770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.143072, 36.545223, 29.413073>,  <29.112484, 36.756958, 29.521854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.143072, 36.545223, 29.413073>,  <29.194052, 36.192333, 29.231770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143072, 36.545223, 29.413073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026591, 0.459858, -0.887594,
		-0.991488, -0.101072, -0.082068,
		-0.127450, 0.882222, 0.453257,
		29.104837, 36.809891, 29.549049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663805, 36.525864, 28.913054>,  <29.194052, 36.192333, 29.231770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663805, 36.525864, 28.913054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.889786, 36.814819, 29.072542>,  <29.025373, 36.988194, 29.168236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.889786, 36.814819, 29.072542>,  <28.663805, 36.525864, 28.913054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889786, 36.814819, 29.072542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002065, 0.484460, -0.874811,
		-0.825122, 0.493402, 0.275188,
		0.564951, 0.722394, 0.398720,
		29.059271, 37.031536, 29.192158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462326, 37.012859, 28.580660>,  <28.663805, 36.525864, 28.913054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462326, 37.012859, 28.580660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.777708, 37.197880, 28.742836>,  <28.966938, 37.308891, 28.840141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.777708, 37.197880, 28.742836>,  <28.462326, 37.012859, 28.580660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777708, 37.197880, 28.742836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119308, 0.531632, -0.838530,
		-0.603408, 0.709517, 0.363984,
		0.788457, 0.462549, 0.405442,
		29.014246, 37.336643, 28.864470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261763, 37.740273, 28.586212>,  <28.462326, 37.012859, 28.580660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261763, 37.740273, 28.586212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.660278, 37.735661, 28.620337>,  <28.899387, 37.732895, 28.640812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.660278, 37.735661, 28.620337>,  <28.261763, 37.740273, 28.586212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660278, 37.735661, 28.620337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073564, 0.628723, -0.774142,
		-0.044713, 0.777544, 0.627237,
		0.996288, -0.011527, 0.085311,
		28.959164, 37.732201, 28.645929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445494, 38.476582, 28.428421>,  <28.261763, 37.740273, 28.586212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.445494, 38.476582, 28.428421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.761946, 38.236603, 28.380795>,  <28.951817, 38.092617, 28.352219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.761946, 38.236603, 28.380795>,  <28.445494, 38.476582, 28.428421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.761946, 38.236603, 28.380795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318037, 0.569777, -0.757765,
		0.522458, 0.561624, 0.641573,
		0.791132, -0.599945, -0.119067,
		28.999285, 38.056618, 28.345074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040144, 38.938030, 28.453276>,  <28.445494, 38.476582, 28.428421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040144, 38.938030, 28.453276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.138783, 38.603142, 28.258030>,  <29.197966, 38.402210, 28.140882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.138783, 38.603142, 28.258030>,  <29.040144, 38.938030, 28.453276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138783, 38.603142, 28.258030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411019, 0.546480, -0.729674,
		0.877641, -0.020689, 0.478873,
		0.246598, -0.837217, -0.488117,
		29.212763, 38.351978, 28.111595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574837, 39.128586, 28.025293>,  <29.040144, 38.938030, 28.453276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574837, 39.128586, 28.025293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.506107, 38.768112, 27.866121>,  <29.464870, 38.551830, 27.770618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.506107, 38.768112, 27.866121>,  <29.574837, 39.128586, 28.025293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506107, 38.768112, 27.866121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243113, 0.352654, -0.903621,
		0.954659, -0.252005, 0.158495,
		-0.171823, -0.901182, -0.397930,
		29.454561, 38.497757, 27.746742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.788700, 30.628428, 45.793259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.487583, 30.380852, 45.703625>,  <38.306911, 30.232306, 45.649845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.487583, 30.380852, 45.703625>,  <38.788700, 30.628428, 45.793259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487583, 30.380852, 45.703625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064032, -0.269950, 0.960743,
		-0.655135, 0.737589, 0.163585,
		-0.752793, -0.618942, -0.224083,
		38.261745, 30.195169, 45.636398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207211, 30.913689, 46.079189>,  <38.788700, 30.628428, 45.793259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207211, 30.913689, 46.079189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.144386, 30.520412, 46.041946>,  <38.106693, 30.284447, 46.019600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.144386, 30.520412, 46.041946>,  <38.207211, 30.913689, 46.079189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144386, 30.520412, 46.041946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308365, -0.040740, 0.950395,
		-0.938212, 0.177981, -0.296782,
		-0.157062, -0.983190, -0.093106,
		38.097267, 30.225456, 46.014015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660511, 30.855856, 46.445442>,  <38.207211, 30.913689, 46.079189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660511, 30.855856, 46.445442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.795887, 30.480268, 46.420792>,  <37.877113, 30.254915, 46.406002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.795887, 30.480268, 46.420792>,  <37.660511, 30.855856, 46.445442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795887, 30.480268, 46.420792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232419, -0.146872, 0.961462,
		-0.911834, -0.311072, -0.267941,
		0.338437, -0.938969, -0.061624,
		37.897419, 30.198578, 46.402306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072178, 30.443165, 46.783218>,  <37.660511, 30.855856, 46.445442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072178, 30.443165, 46.783218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.427090, 30.259575, 46.764965>,  <37.640038, 30.149422, 46.754013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.427090, 30.259575, 46.764965>,  <37.072178, 30.443165, 46.783218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427090, 30.259575, 46.764965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103498, -0.294527, 0.950022,
		-0.449477, -0.838209, -0.308830,
		0.887276, -0.458977, -0.045631,
		37.693272, 30.121883, 46.751278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878704, 29.823431, 47.072239>,  <37.072178, 30.443165, 46.783218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878704, 29.823431, 47.072239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.278465, 29.823442, 47.086075>,  <37.518322, 29.823448, 47.094376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.278465, 29.823442, 47.086075>,  <36.878704, 29.823431, 47.072239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278465, 29.823442, 47.086075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032944, -0.304332, 0.951996,
		0.010554, -0.952566, -0.304149,
		0.999402, 0.000028, 0.034593,
		37.578285, 29.823450, 47.096451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103607, 29.158663, 47.421898>,  <36.878704, 29.823431, 47.072239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103607, 29.158663, 47.421898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.385315, 29.440302, 47.458244>,  <37.554340, 29.609285, 47.480053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.385315, 29.440302, 47.458244>,  <37.103607, 29.158663, 47.421898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385315, 29.440302, 47.458244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101022, -0.226075, 0.968858,
		0.702711, -0.673155, -0.230346,
		0.704267, 0.704097, 0.090861,
		37.596596, 29.651531, 47.485504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626041, 28.800644, 47.819424>,  <37.103607, 29.158663, 47.421898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626041, 28.800644, 47.819424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.688156, 29.188295, 47.896030>,  <37.725426, 29.420885, 47.941994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.688156, 29.188295, 47.896030>,  <37.626041, 28.800644, 47.819424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688156, 29.188295, 47.896030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298683, -0.230855, 0.926010,
		0.941634, -0.086596, -0.325311,
		0.155288, 0.969127, 0.191516,
		37.734741, 29.479034, 47.953484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173901, 28.757479, 48.134575>,  <37.626041, 28.800644, 47.819424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173901, 28.757479, 48.134575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.040436, 29.115503, 48.252918>,  <37.960358, 29.330318, 48.323925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.040436, 29.115503, 48.252918>,  <38.173901, 28.757479, 48.134575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040436, 29.115503, 48.252918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296839, -0.198127, 0.934148,
		0.894738, 0.399514, -0.199582,
		-0.333663, 0.895061, 0.295863,
		37.940338, 29.384022, 48.341679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689812, 28.990929, 48.636238>,  <38.173901, 28.757479, 48.134575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689812, 28.990929, 48.636238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.392376, 29.245214, 48.719135>,  <38.213917, 29.397785, 48.768875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.392376, 29.245214, 48.719135>,  <38.689812, 28.990929, 48.636238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392376, 29.245214, 48.719135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225114, -0.053840, 0.972844,
		0.629607, 0.770046, -0.103073,
		-0.743585, 0.635713, 0.207246,
		38.169300, 29.435928, 48.781307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955559, 29.390594, 49.109249>,  <38.689812, 28.990929, 48.636238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955559, 29.390594, 49.109249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.565029, 29.469181, 49.145470>,  <38.330711, 29.516333, 49.167202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.565029, 29.469181, 49.145470>,  <38.955559, 29.390594, 49.109249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565029, 29.469181, 49.145470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082766, -0.047501, 0.995436,
		0.199869, 0.979360, 0.030116,
		-0.976321, 0.196464, 0.090552,
		38.272133, 29.528120, 49.172634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865208, 29.894194, 49.711586>,  <38.955559, 29.390594, 49.109249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865208, 29.894194, 49.711586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.555012, 29.647644, 49.656898>,  <38.368893, 29.499714, 49.624084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.555012, 29.647644, 49.656898>,  <38.865208, 29.894194, 49.711586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555012, 29.647644, 49.656898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020080, -0.192361, 0.981119,
		-0.631037, 0.763596, 0.136798,
		-0.775493, -0.616376, -0.136720,
		38.322365, 29.462730, 49.615883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300480, 30.051229, 50.293411>,  <38.865208, 29.894194, 49.711586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300480, 30.051229, 50.293411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.192844, 29.702805, 50.129047>,  <38.128262, 29.493750, 50.030430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.192844, 29.702805, 50.129047>,  <38.300480, 30.051229, 50.293411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192844, 29.702805, 50.129047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113468, -0.394998, 0.911647,
		-0.956407, 0.291942, 0.007454,
		-0.269092, -0.871060, -0.410905,
		38.112118, 29.441486, 50.005775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664543, 29.778543, 50.624928>,  <38.300480, 30.051229, 50.293411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664543, 29.778543, 50.624928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.849686, 29.456604, 50.476345>,  <37.960773, 29.263439, 50.387196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.849686, 29.456604, 50.476345>,  <37.664543, 29.778543, 50.624928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849686, 29.456604, 50.476345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028620, -0.432393, 0.901231,
		-0.885970, -0.406511, -0.223172,
		0.462858, -0.804851, -0.371453,
		37.988544, 29.215149, 50.364910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547985, 30.504944, 50.738533>,  <37.664543, 29.778543, 50.624928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547985, 30.504944, 50.738533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.208458, 30.608736, 50.922783>,  <37.004742, 30.671011, 51.033333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.208458, 30.608736, 50.922783>,  <37.547985, 30.504944, 50.738533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208458, 30.608736, 50.922783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050727, 0.827277, -0.559499,
		-0.526248, -0.498278, -0.689044,
		-0.848817, 0.259482, 0.460629,
		36.953812, 30.686581, 51.060970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967598, 30.615019, 50.338223>,  <37.547985, 30.504944, 50.738533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967598, 30.615019, 50.338223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.907116, 30.862480, 50.646614>,  <36.870827, 31.010958, 50.831650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.907116, 30.862480, 50.646614>,  <36.967598, 30.615019, 50.338223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907116, 30.862480, 50.646614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104692, 0.785580, -0.609838,
		-0.982944, -0.011493, -0.183548,
		-0.151201, 0.618653, 0.770978,
		36.861755, 31.048077, 50.877907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399227, 31.072662, 50.193539>,  <36.967598, 30.615019, 50.338223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399227, 31.072662, 50.193539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.611034, 31.259756, 50.476616>,  <36.738121, 31.372013, 50.646461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.611034, 31.259756, 50.476616>,  <36.399227, 31.072662, 50.193539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611034, 31.259756, 50.476616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035846, 0.821170, -0.569557,
		-0.847539, 0.326961, 0.418060,
		0.529521, 0.467736, 0.707694,
		36.769890, 31.400076, 50.688923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069836, 31.661102, 50.308327>,  <36.399227, 31.072662, 50.193539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069836, 31.661102, 50.308327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.419979, 31.754385, 50.477734>,  <36.630066, 31.810354, 50.579376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.419979, 31.754385, 50.477734>,  <36.069836, 31.661102, 50.308327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419979, 31.754385, 50.477734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008789, 0.868159, -0.496208,
		-0.483398, 0.438081, 0.757900,
		0.875357, 0.233205, 0.423516,
		36.682587, 31.824347, 50.604790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982880, 32.316212, 50.594528>,  <36.069836, 31.661102, 50.308327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982880, 32.316212, 50.594528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.380886, 32.293709, 50.561596>,  <36.619690, 32.280209, 50.541836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.380886, 32.293709, 50.561596>,  <35.982880, 32.316212, 50.594528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380886, 32.293709, 50.561596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017283, 0.910471, -0.413211,
		0.098207, 0.409729, 0.906906,
		0.995016, -0.056254, -0.082333,
		36.679390, 32.276833, 50.536896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120251, 32.953251, 50.580612>,  <35.982880, 32.316212, 50.594528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120251, 32.953251, 50.580612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.455612, 32.782070, 50.445591>,  <36.656830, 32.679363, 50.364578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.455612, 32.782070, 50.445591>,  <36.120251, 32.953251, 50.580612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455612, 32.782070, 50.445591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151870, 0.778189, -0.609391,
		0.523467, 0.459651, 0.717428,
		0.838402, -0.427952, -0.337549,
		36.707134, 32.653687, 50.344326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541210, 33.437489, 50.640278>,  <36.120251, 32.953251, 50.580612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541210, 33.437489, 50.640278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.649048, 33.184769, 50.349586>,  <36.713753, 33.033134, 50.175171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.649048, 33.184769, 50.349586>,  <36.541210, 33.437489, 50.640278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649048, 33.184769, 50.349586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142950, 0.720057, -0.679031,
		0.952303, 0.286952, 0.103810,
		0.269598, -0.631804, -0.726732,
		36.729927, 32.995228, 50.131565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939735, 33.854923, 50.256100>,  <36.541210, 33.437489, 50.640278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939735, 33.854923, 50.256100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.853054, 33.562153, 49.997696>,  <36.801044, 33.386490, 49.842655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.853054, 33.562153, 49.997696>,  <36.939735, 33.854923, 50.256100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853054, 33.562153, 49.997696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062436, 0.649989, -0.757374,
		0.974239, -0.204458, -0.095155,
		-0.216701, -0.731923, -0.646010,
		36.788044, 33.342575, 49.803894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405865, 33.955814, 49.658413>,  <36.939735, 33.854923, 50.256100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405865, 33.955814, 49.658413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.124939, 33.707581, 49.518913>,  <36.956383, 33.558640, 49.435211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.124939, 33.707581, 49.518913>,  <37.405865, 33.955814, 49.658413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124939, 33.707581, 49.518913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065238, 0.431744, -0.899634,
		0.708868, -0.654581, -0.262736,
		-0.702318, -0.620581, -0.348753,
		36.914242, 33.521408, 49.414288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661991, 33.794632, 49.042690>,  <37.405865, 33.955814, 49.658413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661991, 33.794632, 49.042690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.286083, 33.680698, 48.967106>,  <37.060539, 33.612339, 48.921757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.286083, 33.680698, 48.967106>,  <37.661991, 33.794632, 49.042690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286083, 33.680698, 48.967106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048225, 0.436799, -0.898265,
		0.338395, -0.853273, -0.396754,
		-0.939767, -0.284835, -0.188960,
		37.004154, 33.595245, 48.910419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616161, 33.407570, 48.425869>,  <37.661991, 33.794632, 49.042690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616161, 33.407570, 48.425869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.241772, 33.543896, 48.461193>,  <37.017139, 33.625690, 48.482388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.241772, 33.543896, 48.461193>,  <37.616161, 33.407570, 48.425869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241772, 33.543896, 48.461193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006662, 0.233640, -0.972300,
		-0.352008, -0.910636, -0.216410,
		-0.935973, 0.340816, 0.088309,
		36.960979, 33.646141, 48.487686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356766, 33.298153, 47.836727>,  <37.616161, 33.407570, 48.425869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356766, 33.298153, 47.836727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.056744, 33.533527, 47.957497>,  <36.876732, 33.674751, 48.029961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.056744, 33.533527, 47.957497>,  <37.356766, 33.298153, 47.836727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056744, 33.533527, 47.957497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231422, 0.194148, -0.953284,
		-0.619565, -0.784888, -0.009444,
		-0.750055, 0.588436, 0.301928,
		36.831726, 33.710060, 48.048077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753376, 33.106258, 47.393368>,  <37.356766, 33.298153, 47.836727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753376, 33.106258, 47.393368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.713699, 33.482662, 47.522778>,  <36.689892, 33.708504, 47.600422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.713699, 33.482662, 47.522778>,  <36.753376, 33.106258, 47.393368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713699, 33.482662, 47.522778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136809, 0.309139, -0.941125,
		-0.985619, -0.137615, 0.098073,
		-0.099195, 0.941007, 0.323520,
		36.683941, 33.764965, 47.619835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166538, 33.316540, 47.046749>,  <36.753376, 33.106258, 47.393368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166538, 33.316540, 47.046749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.366180, 33.638878, 47.174187>,  <36.485966, 33.832283, 47.250648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.366180, 33.638878, 47.174187>,  <36.166538, 33.316540, 47.046749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366180, 33.638878, 47.174187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150346, 0.442614, -0.884019,
		-0.853400, 0.393317, 0.342067,
		0.499103, 0.805850, 0.318593,
		36.515911, 33.880634, 47.269764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576405, 33.845280, 47.003445>,  <36.166538, 33.316540, 47.046749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576405, 33.845280, 47.003445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.949966, 33.987122, 46.985226>,  <36.174103, 34.072227, 46.974293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.949966, 33.987122, 46.985226>,  <35.576405, 33.845280, 47.003445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949966, 33.987122, 46.985226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205442, 0.428011, -0.880114,
		-0.292596, 0.831302, 0.472573,
		0.933907, 0.354604, -0.045550,
		36.230137, 34.093502, 46.971561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277172, 34.521500, 47.339203>,  <35.576405, 33.845280, 47.003445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277172, 34.521500, 47.339203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940681, 34.727467, 47.405155>,  <34.738785, 34.851048, 47.444729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940681, 34.727467, 47.405155>,  <35.277172, 34.521500, 47.339203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940681, 34.727467, 47.405155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035566, -0.251600, 0.967178,
		0.539505, 0.819484, 0.193340,
		-0.841231, 0.514921, 0.164885,
		34.688313, 34.881943, 47.454620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374668, 34.841167, 47.963375>,  <35.277172, 34.521500, 47.339203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374668, 34.841167, 47.963375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.978340, 34.877277, 47.923119>,  <34.740543, 34.898941, 47.898964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.978340, 34.877277, 47.923119>,  <35.374668, 34.841167, 47.963375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978340, 34.877277, 47.923119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123032, -0.293511, 0.948006,
		0.056040, 0.951684, 0.301923,
		-0.990819, 0.090272, -0.100639,
		34.681095, 34.904358, 47.892925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154087, 35.144276, 48.592079>,  <35.374668, 34.841167, 47.963375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154087, 35.144276, 48.592079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.830807, 34.972416, 48.430977>,  <34.636837, 34.869301, 48.334316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.830807, 34.972416, 48.430977>,  <35.154087, 35.144276, 48.592079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830807, 34.972416, 48.430977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290821, -0.303507, 0.907362,
		-0.512088, 0.850460, 0.120343,
		-0.808201, -0.429651, -0.402754,
		34.588348, 34.843521, 48.310150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667961, 35.269588, 49.015530>,  <35.154087, 35.144276, 48.592079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667961, 35.269588, 49.015530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.515686, 34.959156, 48.814423>,  <34.424320, 34.772896, 48.693760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.515686, 34.959156, 48.814423>,  <34.667961, 35.269588, 49.015530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515686, 34.959156, 48.814423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274527, -0.424339, 0.862885,
		-0.883014, 0.466511, -0.051517,
		-0.380685, -0.776083, -0.502767,
		34.401482, 34.726330, 48.663593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990784, 35.147076, 49.259323>,  <34.667961, 35.269588, 49.015530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990784, 35.147076, 49.259323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.121788, 34.811066, 49.086308>,  <34.200390, 34.609459, 48.982498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.121788, 34.811066, 49.086308>,  <33.990784, 35.147076, 49.259323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121788, 34.811066, 49.086308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297374, -0.526168, 0.796691,
		-0.896830, -0.132299, -0.422128,
		0.327512, -0.840026, -0.432541,
		34.220043, 34.559059, 48.956547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567314, 34.594299, 49.581020>,  <33.990784, 35.147076, 49.259323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567314, 34.594299, 49.581020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.873768, 34.390846, 49.423878>,  <34.057640, 34.268776, 49.329594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.873768, 34.390846, 49.423878>,  <33.567314, 34.594299, 49.581020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873768, 34.390846, 49.423878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002154, -0.613304, 0.789844,
		-0.642682, -0.604277, -0.470966,
		0.766130, -0.508633, -0.392858,
		34.103607, 34.238258, 49.306019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352352, 33.917759, 49.648262>,  <33.567314, 34.594299, 49.581020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352352, 33.917759, 49.648262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.750793, 33.888691, 49.628254>,  <33.989857, 33.871250, 49.616249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.750793, 33.888691, 49.628254>,  <33.352352, 33.917759, 49.648262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750793, 33.888691, 49.628254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001112, -0.577261, 0.816559,
		-0.088209, -0.813320, -0.575091,
		0.996101, -0.072668, -0.050015,
		34.049625, 33.866890, 49.613251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958294, 33.280239, 49.440987>,  <33.352352, 33.917759, 49.648262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958294, 33.280239, 49.440987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.796589, 32.936672, 49.315235>,  <32.699566, 32.730534, 49.239784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.796589, 32.936672, 49.315235>,  <32.958294, 33.280239, 49.440987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796589, 32.936672, 49.315235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164947, 0.406544, -0.898618,
		0.899647, -0.311420, -0.306026,
		-0.404260, -0.858918, -0.314378,
		32.675312, 32.678997, 49.220921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412407, 33.097645, 48.858158>,  <32.958294, 33.280239, 49.440987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412407, 33.097645, 48.858158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.036209, 32.963005, 48.839520>,  <32.810490, 32.882221, 48.828335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.036209, 32.963005, 48.839520>,  <33.412407, 33.097645, 48.858158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036209, 32.963005, 48.839520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046404, 0.263065, -0.963661,
		0.336630, -0.904154, -0.263031,
		-0.940492, -0.336603, -0.046600,
		32.754063, 32.862026, 48.825539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438358, 32.918613, 48.169727>,  <33.412407, 33.097645, 48.858158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438358, 32.918613, 48.169727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.057533, 32.973415, 48.279137>,  <32.829041, 33.006294, 48.344784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.057533, 32.973415, 48.279137>,  <33.438358, 32.918613, 48.169727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057533, 32.973415, 48.279137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193284, 0.423654, -0.884963,
		-0.237122, -0.895404, -0.376862,
		-0.952058, 0.137003, 0.273525,
		32.771915, 33.014515, 48.361195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165142, 32.495331, 47.642555>,  <33.438358, 32.918613, 48.169727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165142, 32.495331, 47.642555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.905300, 32.758514, 47.794930>,  <32.749397, 32.916424, 47.886353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.905300, 32.758514, 47.794930>,  <33.165142, 32.495331, 47.642555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905300, 32.758514, 47.794930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287065, 0.251690, -0.924254,
		-0.703995, -0.709751, 0.025378,
		-0.649603, 0.657956, 0.380934,
		32.710419, 32.955902, 47.909210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758202, 32.386497, 47.203243>,  <33.165142, 32.495331, 47.642555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758202, 32.386497, 47.203243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.635963, 32.713951, 47.397747>,  <32.562618, 32.910423, 47.514450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.635963, 32.713951, 47.397747>,  <32.758202, 32.386497, 47.203243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635963, 32.713951, 47.397747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298515, 0.402568, -0.865348,
		-0.904157, -0.409603, 0.121351,
		-0.305597, 0.818636, 0.486258,
		32.544285, 32.959541, 47.543625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247547, 32.588634, 46.823761>,  <32.758202, 32.386497, 47.203243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247547, 32.588634, 46.823761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.308620, 32.920704, 47.038235>,  <32.345264, 33.119946, 47.166920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.308620, 32.920704, 47.038235>,  <32.247547, 32.588634, 46.823761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308620, 32.920704, 47.038235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174464, 0.556670, -0.812208,
		-0.972754, 0.030464, 0.229829,
		0.152682, 0.830175, 0.536188,
		32.354424, 33.169758, 47.199093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696169, 32.989193, 46.768745>,  <32.247547, 32.588634, 46.823761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696169, 32.989193, 46.768745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.006058, 33.228371, 46.850979>,  <32.191990, 33.371880, 46.900318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.006058, 33.228371, 46.850979>,  <31.696169, 32.989193, 46.768745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006058, 33.228371, 46.850979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153994, 0.493770, -0.855849,
		-0.613261, 0.631389, 0.474615,
		0.774724, 0.597947, 0.205580,
		32.238476, 33.407753, 46.912651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.211742, 27.148418, 49.886787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.566216, 27.292208, 49.769855>,  <35.778900, 27.378481, 49.699696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.566216, 27.292208, 49.769855>,  <35.211742, 27.148418, 49.886787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566216, 27.292208, 49.769855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365900, 0.155890, -0.917505,
		-0.284246, 0.920042, 0.269678,
		0.886184, 0.359472, -0.292333,
		35.832069, 27.400049, 49.682156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174988, 27.909616, 49.648655>,  <35.211742, 27.148418, 49.886787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174988, 27.909616, 49.648655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.511208, 27.776190, 49.477909>,  <35.712940, 27.696135, 49.375462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.511208, 27.776190, 49.477909>,  <35.174988, 27.909616, 49.648655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511208, 27.776190, 49.477909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181599, 0.568876, -0.802123,
		0.510397, 0.751740, 0.417591,
		0.840545, -0.333567, -0.426868,
		35.763371, 27.676119, 49.349850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497902, 28.485458, 49.323326>,  <35.174988, 27.909616, 49.648655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497902, 28.485458, 49.323326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.675240, 28.168644, 49.155457>,  <35.781643, 27.978556, 49.054737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.675240, 28.168644, 49.155457>,  <35.497902, 28.485458, 49.323326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675240, 28.168644, 49.155457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041344, 0.485770, -0.873108,
		0.895399, 0.369734, 0.248108,
		0.443341, -0.792038, -0.419672,
		35.808243, 27.931032, 49.029556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065128, 28.775166, 48.899551>,  <35.497902, 28.485458, 49.323326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065128, 28.775166, 48.899551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.017033, 28.402725, 48.761799>,  <35.988174, 28.179262, 48.679150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.017033, 28.402725, 48.761799>,  <36.065128, 28.775166, 48.899551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017033, 28.402725, 48.761799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074876, 0.337401, -0.938378,
		0.989917, -0.138619, 0.029147,
		-0.120243, -0.931099, -0.344379,
		35.980961, 28.123396, 48.658485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505653, 28.765314, 48.284988>,  <36.065128, 28.775166, 48.899551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505653, 28.765314, 48.284988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.273724, 28.440168, 48.262863>,  <36.134567, 28.245081, 48.249588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.273724, 28.440168, 48.262863>,  <36.505653, 28.765314, 48.284988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273724, 28.440168, 48.262863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010038, 0.060754, -0.998102,
		0.814680, -0.579279, -0.027067,
		-0.579824, -0.812862, -0.055309,
		36.099777, 28.196310, 48.246269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884567, 28.173855, 47.970882>,  <36.505653, 28.765314, 48.284988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884567, 28.173855, 47.970882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.491135, 28.137079, 47.908760>,  <36.255077, 28.115013, 47.871487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.491135, 28.137079, 47.908760>,  <36.884567, 28.173855, 47.970882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491135, 28.137079, 47.908760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137218, 0.178006, -0.974415,
		0.117229, -0.979725, -0.162468,
		-0.983580, -0.091937, -0.155303,
		36.196060, 28.109497, 47.862167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783970, 27.892456, 47.312176>,  <36.884567, 28.173855, 47.970882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783970, 27.892456, 47.312176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.415291, 28.034870, 47.373768>,  <36.194084, 28.120319, 47.410721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.415291, 28.034870, 47.373768>,  <36.783970, 27.892456, 47.312176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415291, 28.034870, 47.373768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154990, 0.025866, -0.987577,
		-0.355594, -0.934115, 0.031341,
		-0.921700, 0.356034, 0.153976,
		36.138783, 28.141680, 47.419960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391197, 27.507183, 46.869522>,  <36.783970, 27.892456, 47.312176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391197, 27.507183, 46.869522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.160938, 27.826296, 46.941265>,  <36.022781, 28.017763, 46.984310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.160938, 27.826296, 46.941265>,  <36.391197, 27.507183, 46.869522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160938, 27.826296, 46.941265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222060, 0.058583, -0.973271,
		-0.786967, -0.600092, 0.143433,
		-0.575650, 0.797783, 0.179359,
		35.988243, 28.065630, 46.995071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765942, 27.394915, 46.576355>,  <36.391197, 27.507183, 46.869522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765942, 27.394915, 46.576355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.753555, 27.792677, 46.616749>,  <35.746124, 28.031334, 46.640984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.753555, 27.792677, 46.616749>,  <35.765942, 27.394915, 46.576355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753555, 27.792677, 46.616749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370469, 0.082415, -0.925181,
		-0.928328, -0.066063, 0.365844,
		-0.030969, 0.994406, 0.100983,
		35.744263, 28.091000, 46.647045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167690, 27.638542, 46.184883>,  <35.765942, 27.394915, 46.576355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167690, 27.638542, 46.184883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.364887, 27.986149, 46.201710>,  <35.483204, 28.194714, 46.211807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.364887, 27.986149, 46.201710>,  <35.167690, 27.638542, 46.184883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364887, 27.986149, 46.201710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390070, 0.263985, -0.882132,
		-0.777694, 0.418472, 0.469120,
		0.492988, 0.869018, 0.042066,
		35.512783, 28.246855, 46.214329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742668, 28.101807, 45.875713>,  <35.167690, 27.638542, 46.184883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742668, 28.101807, 45.875713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.079704, 28.317163, 45.881046>,  <35.281925, 28.446377, 45.884247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.079704, 28.317163, 45.881046>,  <34.742668, 28.101807, 45.875713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079704, 28.317163, 45.881046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180390, 0.305462, -0.934961,
		-0.507445, 0.785385, 0.354499,
		0.842591, 0.538390, 0.013330,
		35.332481, 28.478680, 45.885044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579433, 28.821205, 45.601692>,  <34.742668, 28.101807, 45.875713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579433, 28.821205, 45.601692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.970547, 28.792885, 45.522774>,  <35.205215, 28.775892, 45.475422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.970547, 28.792885, 45.522774>,  <34.579433, 28.821205, 45.601692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970547, 28.792885, 45.522774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171981, 0.267107, -0.948196,
		0.119831, 0.961063, 0.248997,
		0.977785, -0.070801, -0.197293,
		35.263882, 28.771645, 45.463585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320404, 29.172773, 46.034809>,  <34.579433, 28.821205, 45.601692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320404, 29.172773, 46.034809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.923187, 29.193361, 46.077190>,  <33.684856, 29.205713, 46.102619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.923187, 29.193361, 46.077190>,  <34.320404, 29.172773, 46.034809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923187, 29.193361, 46.077190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076159, -0.405615, 0.910865,
		0.089858, 0.912593, 0.398872,
		-0.993039, 0.051471, 0.105950,
		33.625275, 29.208803, 46.108974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305130, 29.390209, 46.702732>,  <34.320404, 29.172773, 46.034809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305130, 29.390209, 46.702732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.946049, 29.241302, 46.608459>,  <33.730598, 29.151958, 46.551895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.946049, 29.241302, 46.608459>,  <34.305130, 29.390209, 46.702732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946049, 29.241302, 46.608459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111201, -0.326175, 0.938746,
		-0.426338, 0.868923, 0.251411,
		-0.897703, -0.372266, -0.235686,
		33.676739, 29.129623, 46.537754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894608, 29.570183, 47.242168>,  <34.305130, 29.390209, 46.702732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894608, 29.570183, 47.242168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.665947, 29.301554, 47.053616>,  <33.528751, 29.140377, 46.940483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.665947, 29.301554, 47.053616>,  <33.894608, 29.570183, 47.242168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665947, 29.301554, 47.053616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392861, -0.280344, 0.875824,
		-0.720330, 0.685855, -0.103576,
		-0.571651, -0.671573, -0.471386,
		33.494453, 29.100082, 46.912201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212021, 29.648304, 47.591454>,  <33.894608, 29.570183, 47.242168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212021, 29.648304, 47.591454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.219219, 29.294699, 47.404610>,  <33.223537, 29.082535, 47.292503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.219219, 29.294699, 47.404610>,  <33.212021, 29.648304, 47.591454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219219, 29.294699, 47.404610> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405274, -0.433538, 0.804859,
		-0.914018, 0.174826, -0.366069,
		0.017994, -0.884014, -0.467114,
		33.224617, 29.029495, 47.264477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552490, 29.318224, 47.663387>,  <33.212021, 29.648304, 47.591454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552490, 29.318224, 47.663387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.809166, 29.020102, 47.591003>,  <32.963173, 28.841228, 47.547573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.809166, 29.020102, 47.591003>,  <32.552490, 29.318224, 47.663387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809166, 29.020102, 47.591003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279141, -0.446720, 0.850013,
		-0.714361, -0.494933, -0.494702,
		0.641693, -0.745308, -0.180963,
		33.001675, 28.796509, 47.536716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263023, 28.778223, 48.040970>,  <32.552490, 29.318224, 47.663387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263023, 28.778223, 48.040970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.620998, 28.618185, 47.961956>,  <32.835781, 28.522163, 47.914547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.620998, 28.618185, 47.961956>,  <32.263023, 28.778223, 48.040970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620998, 28.618185, 47.961956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007617, -0.428939, 0.903301,
		-0.446141, -0.809896, -0.380823,
		0.894930, -0.400099, -0.197536,
		32.889477, 28.498158, 47.902695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221420, 28.050432, 48.193012>,  <32.263023, 28.778223, 48.040970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221420, 28.050432, 48.193012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.597553, 28.183512, 48.221531>,  <32.823235, 28.263359, 48.238640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.597553, 28.183512, 48.221531>,  <32.221420, 28.050432, 48.193012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597553, 28.183512, 48.221531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008026, -0.231160, 0.972883,
		0.340159, -0.914262, -0.220038,
		0.940334, 0.332701, 0.071294,
		32.879654, 28.283321, 48.242920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667793, 27.494333, 48.447651>,  <32.221420, 28.050432, 48.193012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667793, 27.494333, 48.447651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.842346, 27.844267, 48.531784>,  <32.947079, 28.054226, 48.582264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.842346, 27.844267, 48.531784>,  <32.667793, 27.494333, 48.447651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842346, 27.844267, 48.531784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007755, -0.230102, 0.973136,
		0.899730, -0.426287, -0.093627,
		0.436379, 0.874833, 0.210336,
		32.973259, 28.106716, 48.594883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133499, 27.310884, 48.950878>,  <32.667793, 27.494333, 48.447651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133499, 27.310884, 48.950878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.082844, 27.704908, 48.997555>,  <33.052448, 27.941322, 49.025562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.082844, 27.704908, 48.997555>,  <33.133499, 27.310884, 48.950878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082844, 27.704908, 48.997555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358425, -0.064252, 0.931345,
		0.924929, 0.159774, -0.344933,
		-0.126642, 0.985060, 0.116695,
		33.044849, 28.000427, 49.032562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695423, 27.546230, 49.332973>,  <33.133499, 27.310884, 48.950878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695423, 27.546230, 49.332973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.456028, 27.864164, 49.373066>,  <33.312389, 28.054924, 49.397121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.456028, 27.864164, 49.373066>,  <33.695423, 27.546230, 49.332973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456028, 27.864164, 49.373066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395733, 0.184527, 0.899636,
		0.696565, 0.578091, -0.424980,
		-0.598491, 0.794834, 0.100235,
		33.276482, 28.102615, 49.403137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124321, 28.061115, 49.652370>,  <33.695423, 27.546230, 49.332973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124321, 28.061115, 49.652370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.740273, 28.140545, 49.731091>,  <33.509842, 28.188202, 49.778320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.740273, 28.140545, 49.731091>,  <34.124321, 28.061115, 49.652370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740273, 28.140545, 49.731091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224114, 0.125853, 0.966403,
		0.167136, 0.971972, -0.165338,
		-0.960124, 0.198575, 0.196798,
		33.452236, 28.200117, 49.790131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194633, 28.670359, 50.043575>,  <34.124321, 28.061115, 49.652370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194633, 28.670359, 50.043575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.812519, 28.578587, 50.118179>,  <33.583248, 28.523523, 50.162941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.812519, 28.578587, 50.118179>,  <34.194633, 28.670359, 50.043575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812519, 28.578587, 50.118179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156965, 0.141045, 0.977481,
		-0.250569, 0.963051, -0.098726,
		-0.955289, -0.229430, 0.186507,
		33.525932, 28.509758, 50.174133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936470, 29.200491, 50.468094>,  <34.194633, 28.670359, 50.043575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936470, 29.200491, 50.468094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.677891, 28.908272, 50.556099>,  <33.522743, 28.732941, 50.608902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.677891, 28.908272, 50.556099>,  <33.936470, 29.200491, 50.468094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677891, 28.908272, 50.556099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158855, 0.153166, 0.975349,
		-0.746237, 0.665463, 0.017037,
		-0.646449, -0.730548, 0.220010,
		33.483955, 28.689108, 50.622101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437580, 29.486214, 51.002434>,  <33.936470, 29.200491, 50.468094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437580, 29.486214, 51.002434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.424110, 29.087809, 51.035473>,  <33.416027, 28.848764, 51.055298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.424110, 29.087809, 51.035473>,  <33.437580, 29.486214, 51.002434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424110, 29.087809, 51.035473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107191, 0.078569, 0.991129,
		-0.993668, 0.042230, 0.104118,
		-0.033675, -0.996014, 0.082599,
		33.414009, 28.789005, 51.060253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620785, 30.204445, 50.918129>,  <33.437580, 29.486214, 51.002434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620785, 30.204445, 50.918129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.413128, 30.450705, 51.155270>,  <33.288532, 30.598459, 51.297554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.413128, 30.450705, 51.155270>,  <33.620785, 30.204445, 50.918129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413128, 30.450705, 51.155270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232561, 0.565719, -0.791125,
		-0.822439, -0.548580, -0.150514,
		-0.519144, 0.615648, 0.592847,
		33.257385, 30.635399, 51.333122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009560, 30.195251, 50.664497>,  <33.620785, 30.204445, 50.918129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009560, 30.195251, 50.664497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.985165, 30.522921, 50.892616>,  <32.970528, 30.719522, 51.029488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.985165, 30.522921, 50.892616>,  <33.009560, 30.195251, 50.664497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985165, 30.522921, 50.892616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382113, 0.508670, -0.771521,
		-0.922101, -0.264971, 0.281993,
		-0.060989, 0.819173, 0.570294,
		32.966869, 30.768673, 51.063705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227798, 30.587736, 50.535019>,  <33.009560, 30.195251, 50.664497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227798, 30.587736, 50.535019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.481522, 30.853573, 50.692993>,  <32.633755, 31.013075, 50.787777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.481522, 30.853573, 50.692993>,  <32.227798, 30.587736, 50.535019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481522, 30.853573, 50.692993> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292571, 0.679225, -0.673094,
		-0.715584, 0.311399, 0.625276,
		0.634304, 0.664593, 0.394936,
		32.671814, 31.052950, 50.811474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895269, 31.207043, 50.524090>,  <32.227798, 30.587736, 50.535019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895269, 31.207043, 50.524090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.280956, 31.311764, 50.540779>,  <32.512367, 31.374596, 50.550793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.280956, 31.311764, 50.540779>,  <31.895269, 31.207043, 50.524090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280956, 31.311764, 50.540779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174690, 0.745835, -0.642817,
		-0.199410, 0.612528, 0.764882,
		0.964219, 0.261802, 0.041725,
		32.570221, 31.390305, 50.553295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850697, 31.876974, 50.580086>,  <31.895269, 31.207043, 50.524090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850697, 31.876974, 50.580086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.214916, 31.793449, 50.437370>,  <32.433449, 31.743334, 50.351742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.214916, 31.793449, 50.437370>,  <31.850697, 31.876974, 50.580086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214916, 31.793449, 50.437370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116684, 0.698155, -0.706375,
		0.396595, 0.684820, 0.611338,
		0.910548, -0.208812, -0.356792,
		32.488079, 31.730806, 50.330334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223961, 32.604084, 50.441139>,  <31.850697, 31.876974, 50.580086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223961, 32.604084, 50.441139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.436520, 32.371132, 50.195068>,  <32.564056, 32.231361, 50.047424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.436520, 32.371132, 50.195068>,  <32.223961, 32.604084, 50.441139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436520, 32.371132, 50.195068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118234, 0.668103, -0.734616,
		0.838829, 0.463110, 0.286172,
		0.531400, -0.582382, -0.615179,
		32.595940, 32.196419, 50.010513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786343, 33.046848, 50.119244>,  <32.223961, 32.604084, 50.441139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786343, 33.046848, 50.119244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.683327, 32.733826, 49.892517>,  <32.621517, 32.546013, 49.756481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.683327, 32.733826, 49.892517>,  <32.786343, 33.046848, 50.119244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683327, 32.733826, 49.892517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316192, 0.622560, -0.715850,
		0.913069, -0.005138, -0.407772,
		-0.257541, -0.782555, -0.566816,
		32.606064, 32.499058, 49.722473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480373, 33.151741, 49.913002>,  <32.786343, 33.046848, 50.119244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480373, 33.151741, 49.913002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.839577, 33.326912, 49.896004>,  <34.055099, 33.432014, 49.885803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.839577, 33.326912, 49.896004>,  <33.480373, 33.151741, 49.913002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839577, 33.326912, 49.896004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325606, -0.596504, 0.733596,
		0.295911, -0.672611, -0.678256,
		0.898007, 0.437923, -0.042494,
		34.108978, 33.458290, 49.883255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991520, 32.592781, 49.827648>,  <33.480373, 33.151741, 49.913002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991520, 32.592781, 49.827648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.128963, 32.924526, 50.003872>,  <34.211430, 33.123573, 50.109608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.128963, 32.924526, 50.003872>,  <33.991520, 32.592781, 49.827648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128963, 32.924526, 50.003872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139670, -0.509036, 0.849338,
		0.928668, -0.230309, -0.290747,
		0.343611, 0.829361, 0.440558,
		34.232048, 33.173336, 50.136040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451145, 32.376118, 50.281452>,  <33.991520, 32.592781, 49.827648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451145, 32.376118, 50.281452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.359135, 32.733212, 50.436432>,  <34.303928, 32.947468, 50.529419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.359135, 32.733212, 50.436432>,  <34.451145, 32.376118, 50.281452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359135, 32.733212, 50.436432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096023, -0.375366, 0.921889,
		0.968435, 0.249263, 0.000622,
		-0.230027, 0.892731, 0.387453,
		34.290127, 33.001030, 50.552670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933784, 32.602173, 50.759113>,  <34.451145, 32.376118, 50.281452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933784, 32.602173, 50.759113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.673466, 32.861446, 50.917259>,  <34.517273, 33.017010, 51.012146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.673466, 32.861446, 50.917259>,  <34.933784, 32.602173, 50.759113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673466, 32.861446, 50.917259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421591, -0.124561, 0.898190,
		0.631442, 0.751224, -0.192206,
		-0.650801, 0.648188, 0.395362,
		34.478226, 33.055904, 51.035870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337212, 33.010208, 51.217625>,  <34.933784, 32.602173, 50.759113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337212, 33.010208, 51.217625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.961868, 33.080776, 51.336529>,  <34.736664, 33.123116, 51.407871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.961868, 33.080776, 51.336529>,  <35.337212, 33.010208, 51.217625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961868, 33.080776, 51.336529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257384, -0.217445, 0.941526,
		0.230741, 0.959997, 0.158633,
		-0.938356, 0.176419, 0.297262,
		34.680363, 33.133701, 51.425709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414227, 33.462029, 51.791229>,  <35.337212, 33.010208, 51.217625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414227, 33.462029, 51.791229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.060184, 33.276951, 51.811253>,  <34.847759, 33.165905, 51.823265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.060184, 33.276951, 51.811253>,  <35.414227, 33.462029, 51.791229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060184, 33.276951, 51.811253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257521, -0.397334, 0.880800,
		-0.387653, 0.792489, 0.470835,
		-0.885103, -0.462695, 0.050055,
		34.794655, 33.138142, 51.826267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380386, 33.483688, 52.472233>,  <35.414227, 33.462029, 51.791229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380386, 33.483688, 52.472233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.122387, 33.207352, 52.341560>,  <34.967587, 33.041550, 52.263157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.122387, 33.207352, 52.341560>,  <35.380386, 33.483688, 52.472233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122387, 33.207352, 52.341560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237705, -0.587650, 0.773410,
		-0.726276, 0.421193, 0.543249,
		-0.644996, -0.690842, -0.326677,
		34.928886, 33.000099, 52.243557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133415, 33.175415, 53.087364>,  <35.380386, 33.483688, 52.472233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133415, 33.175415, 53.087364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.043869, 32.927040, 52.786880>,  <34.990143, 32.778015, 52.606590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.043869, 32.927040, 52.786880>,  <35.133415, 33.175415, 53.087364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043869, 32.927040, 52.786880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154359, -0.783635, 0.601739,
		-0.962319, 0.018751, 0.271275,
		-0.223864, -0.620939, -0.751212,
		34.976711, 32.740757, 52.561516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648758, 32.704105, 53.362530>,  <35.133415, 33.175415, 53.087364>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648758, 32.704105, 53.362530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.843967, 32.537708, 53.055599>,  <34.961094, 32.437870, 52.871441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.843967, 32.537708, 53.055599>,  <34.648758, 32.704105, 53.362530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843967, 32.537708, 53.055599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090987, -0.850084, 0.518728,
		-0.868076, -0.322967, -0.377009,
		0.488022, -0.415993, -0.767323,
		34.990372, 32.412910, 52.825401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.635891, 36.905704, 36.912819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015240, 36.779728, 36.927784>,  <33.242851, 36.704144, 36.936764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015240, 36.779728, 36.927784>,  <32.635891, 36.905704, 36.912819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015240, 36.779728, 36.927784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072676, -0.100980, 0.992230,
		-0.308713, -0.943725, -0.118655,
		0.948375, -0.314938, 0.037413,
		33.299751, 36.685246, 36.939007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648724, 36.318077, 37.307556>,  <32.635891, 36.905704, 36.912819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648724, 36.318077, 37.307556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025928, 36.449444, 37.328972>,  <33.252251, 36.528263, 37.341820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025928, 36.449444, 37.328972>,  <32.648724, 36.318077, 37.307556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025928, 36.449444, 37.328972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006723, -0.142048, 0.989837,
		0.332688, -0.933789, -0.131745,
		0.943013, 0.328421, 0.053536,
		33.308834, 36.547970, 37.345032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870876, 36.198376, 37.924145>,  <32.648724, 36.318077, 37.307556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870876, 36.198376, 37.924145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204090, 36.409031, 37.856377>,  <33.404018, 36.535423, 37.815716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204090, 36.409031, 37.856377>,  <32.870876, 36.198376, 37.924145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204090, 36.409031, 37.856377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269290, -0.118505, 0.955740,
		0.483254, -0.841788, -0.240538,
		0.833036, 0.526639, -0.169417,
		33.454002, 36.567024, 37.805553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431770, 35.813686, 38.197834>,  <32.870876, 36.198376, 37.924145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431770, 35.813686, 38.197834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586811, 36.180500, 38.160297>,  <33.679836, 36.400589, 38.137775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586811, 36.180500, 38.160297>,  <33.431770, 35.813686, 38.197834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586811, 36.180500, 38.160297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300490, -0.029449, 0.953330,
		0.871474, -0.397716, -0.286975,
		0.387606, 0.917036, -0.093846,
		33.703094, 36.455612, 38.132145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951340, 35.813385, 38.716110>,  <33.431770, 35.813686, 38.197834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951340, 35.813385, 38.716110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896736, 36.203526, 38.646759>,  <33.863976, 36.437611, 38.605148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896736, 36.203526, 38.646759>,  <33.951340, 35.813385, 38.716110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896736, 36.203526, 38.646759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294071, 0.207024, 0.933093,
		0.945985, 0.076387, -0.315082,
		-0.136506, 0.975349, -0.173378,
		33.855785, 36.496132, 38.594746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594162, 36.167889, 38.951149>,  <33.951340, 35.813385, 38.716110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594162, 36.167889, 38.951149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299381, 36.438244, 38.954803>,  <34.122513, 36.600456, 38.956997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299381, 36.438244, 38.954803>,  <34.594162, 36.167889, 38.951149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299381, 36.438244, 38.954803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203609, 0.209071, 0.956469,
		0.644555, 0.706729, -0.291691,
		-0.736948, 0.675888, 0.009139,
		34.078297, 36.641010, 38.957546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796368, 36.739117, 39.363327>,  <34.594162, 36.167889, 38.951149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796368, 36.739117, 39.363327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397545, 36.712479, 39.378494>,  <34.158249, 36.696495, 39.387592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397545, 36.712479, 39.378494>,  <34.796368, 36.739117, 39.363327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397545, 36.712479, 39.378494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030712, 0.106024, 0.993889,
		-0.070208, 0.992131, -0.103667,
		-0.997059, -0.066595, 0.037914,
		34.098427, 36.692501, 39.389870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542385, 37.368740, 39.922470>,  <34.796368, 36.739117, 39.363327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542385, 37.368740, 39.922470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262028, 37.084965, 39.892933>,  <34.093815, 36.914700, 39.875210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262028, 37.084965, 39.892933>,  <34.542385, 37.368740, 39.922470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262028, 37.084965, 39.892933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042456, -0.061850, 0.997182,
		-0.712004, 0.702051, 0.013231,
		-0.700891, -0.709436, -0.073843,
		34.051762, 36.872135, 39.870781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174797, 37.437099, 40.554623>,  <34.542385, 37.368740, 39.922470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174797, 37.437099, 40.554623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014988, 37.089863, 40.436771>,  <33.919102, 36.881523, 40.366062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014988, 37.089863, 40.436771>,  <34.174797, 37.437099, 40.554623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014988, 37.089863, 40.436771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115943, -0.270961, 0.955582,
		-0.909361, 0.415939, 0.007607,
		-0.399525, -0.868087, -0.294626,
		33.895130, 36.829437, 40.348385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568657, 37.376957, 40.908718>,  <34.174797, 37.437099, 40.554623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568657, 37.376957, 40.908718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660969, 37.005627, 40.792130>,  <33.716358, 36.782829, 40.722176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660969, 37.005627, 40.792130>,  <33.568657, 37.376957, 40.908718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660969, 37.005627, 40.792130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155816, -0.330953, 0.930694,
		-0.960448, -0.169372, -0.221025,
		0.230782, -0.928323, -0.291472,
		33.730202, 36.727131, 40.704689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017891, 36.920204, 41.209614>,  <33.568657, 37.376957, 40.908718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017891, 36.920204, 41.209614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328602, 36.680511, 41.132111>,  <33.515026, 36.536694, 41.085609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328602, 36.680511, 41.132111>,  <33.017891, 36.920204, 41.209614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328602, 36.680511, 41.132111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008474, -0.317571, 0.948197,
		-0.629724, -0.734891, -0.251758,
		0.776773, -0.599236, -0.193754,
		33.561634, 36.500740, 41.073986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823654, 36.335182, 41.508690>,  <33.017891, 36.920204, 41.209614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823654, 36.335182, 41.508690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217907, 36.272350, 41.483833>,  <33.454456, 36.234650, 41.468922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217907, 36.272350, 41.483833>,  <32.823654, 36.335182, 41.508690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217907, 36.272350, 41.483833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007020, -0.405612, 0.914018,
		-0.168779, -0.900447, -0.400885,
		0.985629, -0.157081, -0.062138,
		33.513596, 36.225227, 41.465191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828487, 35.801296, 40.989468>,  <32.823654, 36.335182, 41.508690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828487, 35.801296, 40.989468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664249, 35.441525, 41.049389>,  <32.565708, 35.225662, 41.085342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664249, 35.441525, 41.049389>,  <32.828487, 35.801296, 40.989468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664249, 35.441525, 41.049389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068215, -0.194127, -0.978602,
		0.909264, -0.391587, 0.141061,
		-0.410591, -0.899430, 0.149800,
		32.541073, 35.171696, 41.094330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195141, 35.468338, 40.556969>,  <32.828487, 35.801296, 40.989468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195141, 35.468338, 40.556969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877151, 35.233669, 40.618717>,  <32.686356, 35.092869, 40.655766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877151, 35.233669, 40.618717>,  <33.195141, 35.468338, 40.556969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877151, 35.233669, 40.618717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059000, -0.328028, -0.942824,
		0.603764, -0.740415, 0.295388,
		-0.794976, -0.586671, 0.154367,
		32.638657, 35.057667, 40.665028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319859, 34.718330, 40.387501>,  <33.195141, 35.468338, 40.556969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319859, 34.718330, 40.387501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937836, 34.822201, 40.330330>,  <32.708622, 34.884525, 40.296028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937836, 34.822201, 40.330330>,  <33.319859, 34.718330, 40.387501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937836, 34.822201, 40.330330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046201, -0.345883, -0.937140,
		-0.292788, -0.901628, 0.318342,
		-0.955061, 0.259675, -0.142927,
		32.651318, 34.900105, 40.287453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034504, 34.287827, 39.817318>,  <33.319859, 34.718330, 40.387501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034504, 34.287827, 39.817318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755718, 34.574665, 39.819191>,  <32.588448, 34.746769, 39.820316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755718, 34.574665, 39.819191>,  <33.034504, 34.287827, 39.817318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755718, 34.574665, 39.819191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177477, -0.166159, -0.969997,
		-0.694799, -0.676882, 0.243074,
		-0.696962, 0.717092, 0.004684,
		32.546631, 34.789791, 39.820595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520260, 34.036827, 39.556465>,  <33.034504, 34.287827, 39.817318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520260, 34.036827, 39.556465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450886, 34.427689, 39.507313>,  <32.409264, 34.662205, 39.477821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450886, 34.427689, 39.507313>,  <32.520260, 34.036827, 39.556465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450886, 34.427689, 39.507313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379241, -0.181414, -0.907340,
		-0.908899, -0.110761, 0.402038,
		-0.173433, 0.977150, -0.122882,
		32.398857, 34.720833, 39.470448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937075, 33.974277, 39.206451>,  <32.520260, 34.036827, 39.556465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937075, 33.974277, 39.206451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047329, 34.354095, 39.146606>,  <32.113480, 34.581985, 39.110699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047329, 34.354095, 39.146606>,  <31.937075, 33.974277, 39.206451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047329, 34.354095, 39.146606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600417, 0.048522, -0.798214,
		-0.750683, 0.309845, 0.583499,
		0.275635, 0.949548, -0.149612,
		32.130020, 34.638962, 39.101723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391184, 34.292698, 39.097088>,  <31.937075, 33.974277, 39.206451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391184, 34.292698, 39.097088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664639, 34.529976, 38.927025>,  <31.828712, 34.672344, 38.824989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664639, 34.529976, 38.927025>,  <31.391184, 34.292698, 39.097088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664639, 34.529976, 38.927025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516302, -0.018634, -0.856204,
		-0.515820, 0.804842, 0.293530,
		0.683639, 0.593197, -0.425153,
		31.869730, 34.707935, 38.799480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026724, 34.819103, 38.694454>,  <31.391184, 34.292698, 39.097088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026724, 34.819103, 38.694454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395737, 34.809052, 38.540417>,  <31.617146, 34.803020, 38.447994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395737, 34.809052, 38.540417>,  <31.026724, 34.819103, 38.694454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395737, 34.809052, 38.540417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385817, -0.082745, -0.918857,
		-0.008772, 0.996254, -0.086031,
		0.922534, -0.025132, -0.385097,
		31.672497, 34.801514, 38.424889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110460, 35.406143, 38.170105>,  <31.026724, 34.819103, 38.694454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110460, 35.406143, 38.170105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405035, 35.154152, 38.071487>,  <31.581779, 35.002956, 38.012318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405035, 35.154152, 38.071487>,  <31.110460, 35.406143, 38.170105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405035, 35.154152, 38.071487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251375, 0.083511, -0.964280,
		0.628067, 0.772107, -0.096861,
		0.736439, -0.629981, -0.246539,
		31.625967, 34.965157, 37.997524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273590, 35.689640, 37.513363>,  <31.110460, 35.406143, 38.170105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273590, 35.689640, 37.513363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439777, 35.325798, 37.513123>,  <31.539490, 35.107491, 37.512978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439777, 35.325798, 37.513123>,  <31.273590, 35.689640, 37.513363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439777, 35.325798, 37.513123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227841, -0.103432, -0.968189,
		0.880611, 0.402388, -0.250219,
		0.415468, -0.909608, -0.000597,
		31.564417, 35.052917, 37.512943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758156, 35.611912, 36.889168>,  <31.273590, 35.689640, 37.513363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758156, 35.611912, 36.889168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613358, 35.262379, 37.019016>,  <31.526478, 35.052658, 37.096924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613358, 35.262379, 37.019016>,  <31.758156, 35.611912, 36.889168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613358, 35.262379, 37.019016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330312, -0.205401, -0.921252,
		0.871696, -0.440715, -0.214282,
		-0.361996, -0.873831, 0.324620,
		31.504759, 35.000229, 37.116402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939125, 35.147800, 36.398628>,  <31.758156, 35.611912, 36.889168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939125, 35.147800, 36.398628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650331, 34.983524, 36.621365>,  <31.477055, 34.884960, 36.755005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650331, 34.983524, 36.621365>,  <31.939125, 35.147800, 36.398628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650331, 34.983524, 36.621365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519083, -0.210621, -0.828367,
		0.457483, -0.887116, -0.061116,
		-0.721985, -0.410687, 0.556842,
		31.433737, 34.860317, 36.788418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787579, 34.568378, 36.083786>,  <31.939125, 35.147800, 36.398628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787579, 34.568378, 36.083786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458443, 34.590691, 36.309998>,  <31.260962, 34.604076, 36.445724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458443, 34.590691, 36.309998>,  <31.787579, 34.568378, 36.083786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458443, 34.590691, 36.309998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560711, -0.241537, -0.791999,
		0.092419, -0.968787, 0.230022,
		-0.822837, 0.055780, 0.565533,
		31.211592, 34.607426, 36.479656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283493, 34.035637, 35.904770>,  <31.787579, 34.568378, 36.083786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283493, 34.035637, 35.904770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078711, 34.340637, 36.063011>,  <30.955841, 34.523636, 36.157955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078711, 34.340637, 36.063011>,  <31.283493, 34.035637, 35.904770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078711, 34.340637, 36.063011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652645, -0.045829, -0.756277,
		-0.558528, -0.645367, 0.521102,
		-0.511958, 0.762496, 0.395599,
		30.925123, 34.569386, 36.181690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905010, 33.625046, 35.759205>,  <31.283493, 34.035637, 35.904770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905010, 33.625046, 35.759205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588890, 33.388817, 35.693905>,  <31.399218, 33.247078, 35.654724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588890, 33.388817, 35.693905>,  <31.905010, 33.625046, 35.759205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588890, 33.388817, 35.693905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558310, -0.584331, -0.588937,
		0.252418, -0.556581, 0.791520,
		-0.790301, -0.590572, -0.163249,
		31.351799, 33.211647, 35.644932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548195, 33.186417, 35.811028>,  <31.905010, 33.625046, 35.759205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548195, 33.186417, 35.811028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816299, 32.901543, 35.894489>,  <32.977161, 32.730618, 35.944565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816299, 32.901543, 35.894489>,  <32.548195, 33.186417, 35.811028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816299, 32.901543, 35.894489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256721, 0.041287, 0.965603,
		-0.696306, -0.700774, -0.155160,
		0.670263, -0.712188, 0.208652,
		33.017380, 32.687885, 35.957085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168373, 32.782093, 36.261078>,  <32.548195, 33.186417, 35.811028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168373, 32.782093, 36.261078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562119, 32.726925, 36.304913>,  <32.798367, 32.693825, 36.331215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562119, 32.726925, 36.304913>,  <32.168373, 32.782093, 36.261078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562119, 32.726925, 36.304913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108391, 0.016208, 0.993976,
		-0.138865, -0.990311, 0.001005,
		0.984362, -0.137920, 0.109591,
		32.857426, 32.685551, 36.337791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163834, 32.210163, 36.703949>,  <32.168373, 32.782093, 36.261078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163834, 32.210163, 36.703949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528893, 32.367935, 36.746857>,  <32.747929, 32.462597, 36.772602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528893, 32.367935, 36.746857>,  <32.163834, 32.210163, 36.703949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528893, 32.367935, 36.746857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067722, -0.112897, 0.991296,
		0.403106, -0.911965, -0.076323,
		0.912644, 0.394429, 0.107270,
		32.802685, 32.486263, 36.779037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556911, 31.825132, 37.248508>,  <32.163834, 32.210163, 36.703949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556911, 31.825132, 37.248508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791592, 32.146503, 37.207935>,  <32.932400, 32.339325, 37.183590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791592, 32.146503, 37.207935>,  <32.556911, 31.825132, 37.248508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791592, 32.146503, 37.207935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177936, -0.005704, 0.984025,
		0.790013, -0.595378, -0.146305,
		0.586702, 0.803426, -0.101433,
		32.967602, 32.387531, 37.177505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316048, 31.685518, 37.391781>,  <32.556911, 31.825132, 37.248508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316048, 31.685518, 37.391781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219872, 32.067497, 37.461372>,  <33.162167, 32.296684, 37.503128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219872, 32.067497, 37.461372>,  <33.316048, 31.685518, 37.391781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219872, 32.067497, 37.461372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301959, -0.096762, 0.948397,
		0.922502, 0.280565, -0.265090,
		-0.240437, 0.954945, 0.173982,
		33.147739, 32.353981, 37.513565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968445, 31.972389, 37.740074>,  <33.316048, 31.685518, 37.391781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968445, 31.972389, 37.740074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650997, 32.206516, 37.806488>,  <33.460529, 32.346992, 37.846336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650997, 32.206516, 37.806488>,  <33.968445, 31.972389, 37.740074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650997, 32.206516, 37.806488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237640, 0.046988, 0.970216,
		0.560083, 0.809441, -0.176386,
		-0.793621, 0.585318, 0.166039,
		33.412910, 32.382111, 37.856300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122562, 32.437286, 38.282917>,  <33.968445, 31.972389, 37.740074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122562, 32.437286, 38.282917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729935, 32.513725, 38.281845>,  <33.494358, 32.559589, 38.281204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729935, 32.513725, 38.281845>,  <34.122562, 32.437286, 38.282917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729935, 32.513725, 38.281845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013419, -0.054937, 0.998400,
		0.190645, 0.980032, 0.056489,
		-0.981567, 0.191098, -0.002677,
		33.435463, 32.571056, 38.281040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023182, 32.984413, 38.784595>,  <34.122562, 32.437286, 38.282917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023182, 32.984413, 38.784595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687897, 32.768661, 38.752441>,  <33.486725, 32.639210, 38.733150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687897, 32.768661, 38.752441>,  <34.023182, 32.984413, 38.784595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687897, 32.768661, 38.752441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007281, -0.136319, 0.990638,
		-0.545287, 0.830956, 0.110338,
		-0.838218, -0.539379, -0.080383,
		33.436432, 32.606846, 38.728325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542706, 33.237625, 39.338783>,  <34.023182, 32.984413, 38.784595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542706, 33.237625, 39.338783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417130, 32.869175, 39.246723>,  <33.341785, 32.648106, 39.191486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417130, 32.869175, 39.246723>,  <33.542706, 33.237625, 39.338783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417130, 32.869175, 39.246723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234514, -0.159660, 0.958912,
		-0.920024, 0.355014, -0.165893,
		-0.313940, -0.921126, -0.230147,
		33.322948, 32.592838, 39.177681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957947, 33.177841, 39.771309>,  <33.542706, 33.237625, 39.338783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957947, 33.177841, 39.771309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084930, 32.813995, 39.664108>,  <33.161121, 32.595688, 39.599789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084930, 32.813995, 39.664108>,  <32.957947, 33.177841, 39.771309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084930, 32.813995, 39.664108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125761, -0.320510, 0.938860,
		-0.939895, -0.264348, -0.216143,
		0.317462, -0.909612, -0.268001,
		33.180168, 32.541111, 39.583710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569199, 32.836441, 40.216827>,  <32.957947, 33.177841, 39.771309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569199, 32.836441, 40.216827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808582, 32.544739, 40.084141>,  <32.952213, 32.369717, 40.004528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808582, 32.544739, 40.084141>,  <32.569199, 32.836441, 40.216827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808582, 32.544739, 40.084141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106866, -0.483016, 0.869065,
		-0.793996, -0.484648, -0.366996,
		0.598456, -0.729254, -0.331721,
		32.988121, 32.325962, 39.984623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271965, 32.292088, 40.628323>,  <32.569199, 32.836441, 40.216827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271965, 32.292088, 40.628323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644688, 32.222088, 40.501129>,  <32.868320, 32.180088, 40.424812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644688, 32.222088, 40.501129>,  <32.271965, 32.292088, 40.628323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644688, 32.222088, 40.501129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181138, -0.534979, 0.825219,
		-0.314526, -0.826543, -0.466797,
		0.931806, -0.174998, -0.317983,
		32.924229, 32.169590, 40.405735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384796, 31.610672, 40.763111>,  <32.271965, 32.292088, 40.628323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384796, 31.610672, 40.763111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748081, 31.775732, 40.735203>,  <32.966053, 31.874769, 40.718456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748081, 31.775732, 40.735203>,  <32.384796, 31.610672, 40.763111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748081, 31.775732, 40.735203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308159, -0.546573, 0.778650,
		0.283175, -0.728681, -0.623567,
		0.908212, 0.412652, -0.069774,
		33.020546, 31.899529, 40.714272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887691, 31.023914, 40.759060>,  <32.384796, 31.610672, 40.763111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887691, 31.023914, 40.759060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056408, 31.361555, 40.891476>,  <33.157639, 31.564140, 40.970924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056408, 31.361555, 40.891476>,  <32.887691, 31.023914, 40.759060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056408, 31.361555, 40.891476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282717, -0.469339, 0.836536,
		0.861490, -0.259252, -0.436604,
		0.421788, 0.844103, 0.331036,
		33.182945, 31.614786, 40.990788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559116, 30.756145, 40.921722>,  <32.887691, 31.023914, 40.759060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559116, 30.756145, 40.921722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479015, 31.097601, 41.114056>,  <33.430954, 31.302475, 41.229454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479015, 31.097601, 41.114056>,  <33.559116, 30.756145, 40.921722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479015, 31.097601, 41.114056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337405, -0.400662, 0.851838,
		0.919813, 0.332819, -0.207788,
		-0.200255, 0.853640, 0.480829,
		33.418938, 31.353693, 41.258305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103043, 30.928179, 41.393684>,  <33.559116, 30.756145, 40.921722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103043, 30.928179, 41.393684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812992, 31.159189, 41.543705>,  <33.638962, 31.297796, 41.633717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812992, 31.159189, 41.543705>,  <34.103043, 30.928179, 41.393684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812992, 31.159189, 41.543705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300705, -0.224404, 0.926941,
		0.619495, 0.784924, -0.010945,
		-0.725122, 0.577527, 0.375048,
		33.595455, 31.332447, 41.656219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374989, 31.485344, 41.918514>,  <34.103043, 30.928179, 41.393684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374989, 31.485344, 41.918514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981003, 31.447960, 41.976643>,  <33.744614, 31.425529, 42.011520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981003, 31.447960, 41.976643>,  <34.374989, 31.485344, 41.918514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981003, 31.447960, 41.976643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158095, -0.148190, 0.976241,
		-0.069706, 0.984533, 0.160737,
		-0.984960, -0.093462, 0.145320,
		33.685516, 31.419922, 42.020237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297550, 31.709759, 42.601624>,  <34.374989, 31.485344, 41.918514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297550, 31.709759, 42.601624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952168, 31.514675, 42.550102>,  <33.744938, 31.397625, 42.519192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952168, 31.514675, 42.550102>,  <34.297550, 31.709759, 42.601624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952168, 31.514675, 42.550102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042024, -0.184904, 0.981858,
		-0.502677, 0.853200, 0.139160,
		-0.863452, -0.487709, -0.128801,
		33.693130, 31.368362, 42.511463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954170, 32.027912, 43.096001>,  <34.297550, 31.709759, 42.601624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954170, 32.027912, 43.096001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767662, 31.686588, 43.002666>,  <33.655758, 31.481792, 42.946667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767662, 31.686588, 43.002666>,  <33.954170, 32.027912, 43.096001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767662, 31.686588, 43.002666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099780, -0.211355, 0.972303,
		-0.878996, 0.476641, 0.013405,
		-0.466272, -0.853313, -0.233339,
		33.627781, 31.430593, 42.932663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714359, 31.887383, 43.686600>,  <33.954170, 32.027912, 43.096001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714359, 31.887383, 43.686600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636505, 31.530689, 43.523170>,  <33.589794, 31.316673, 43.425114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636505, 31.530689, 43.523170>,  <33.714359, 31.887383, 43.686600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636505, 31.530689, 43.523170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036421, -0.409677, 0.911503,
		-0.980199, 0.192291, 0.047260,
		-0.194635, -0.891734, -0.408569,
		33.578114, 31.263168, 43.400600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108154, 31.651037, 44.002777>,  <33.714359, 31.887383, 43.686600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108154, 31.651037, 44.002777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287853, 31.315804, 43.878979>,  <33.395672, 31.114664, 43.804699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287853, 31.315804, 43.878979>,  <33.108154, 31.651037, 44.002777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287853, 31.315804, 43.878979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107840, -0.394759, 0.912434,
		-0.886873, -0.376536, -0.267724,
		0.449251, -0.838085, -0.309495,
		33.422630, 31.064379, 43.786129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682381, 31.156635, 44.218708>,  <33.108154, 31.651037, 44.002777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682381, 31.156635, 44.218708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023331, 30.958817, 44.150738>,  <33.227901, 30.840126, 44.109955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023331, 30.958817, 44.150738>,  <32.682381, 31.156635, 44.218708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023331, 30.958817, 44.150738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074763, -0.436861, 0.896417,
		-0.517554, -0.751382, -0.409344,
		0.852378, -0.494548, -0.169924,
		33.279045, 30.810453, 44.099762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578815, 30.650526, 44.560673>,  <32.682381, 31.156635, 44.218708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578815, 30.650526, 44.560673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963181, 30.557699, 44.500290>,  <33.193802, 30.502003, 44.464062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963181, 30.557699, 44.500290>,  <32.578815, 30.650526, 44.560673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963181, 30.557699, 44.500290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012917, -0.507096, 0.861793,
		-0.276543, -0.830059, -0.484278,
		0.960915, -0.232067, -0.150955,
		33.251453, 30.488079, 44.455002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526936, 29.958790, 44.518772>,  <32.578815, 30.650526, 44.560673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526936, 29.958790, 44.518772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896843, 30.071882, 44.620651>,  <33.118786, 30.139738, 44.681778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896843, 30.071882, 44.620651>,  <32.526936, 29.958790, 44.518772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896843, 30.071882, 44.620651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071957, -0.527312, 0.846620,
		0.373671, -0.801252, -0.467295,
		0.924766, 0.282732, 0.254697,
		33.174274, 30.156702, 44.697060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883797, 29.233246, 44.710918>,  <32.526936, 29.958790, 44.518772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883797, 29.233246, 44.710918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088085, 29.542936, 44.860443>,  <33.210659, 29.728750, 44.950157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088085, 29.542936, 44.860443>,  <32.883797, 29.233246, 44.710918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088085, 29.542936, 44.860443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166580, -0.515668, 0.840439,
		0.843453, -0.366962, -0.392334,
		0.510723, 0.774226, 0.373813,
		33.241302, 29.775204, 44.972588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374020, 28.908657, 44.961960>,  <32.883797, 29.233246, 44.710918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374020, 28.908657, 44.961960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375168, 29.254181, 45.163483>,  <33.375858, 29.461494, 45.284397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375168, 29.254181, 45.163483>,  <33.374020, 28.908657, 44.961960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375168, 29.254181, 45.163483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284353, -0.483721, 0.827742,
		0.958715, 0.140883, -0.247016,
		0.002872, 0.863809, 0.503811,
		33.376030, 29.513323, 45.314625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953560, 29.000154, 45.305145>,  <33.374020, 28.908657, 44.961960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953560, 29.000154, 45.305145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694870, 29.207439, 45.529003>,  <33.539658, 29.331810, 45.663319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694870, 29.207439, 45.529003>,  <33.953560, 29.000154, 45.305145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694870, 29.207439, 45.529003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326194, -0.475339, 0.817099,
		0.689452, 0.710991, 0.138375,
		-0.646724, 0.518214, 0.559645,
		33.500854, 29.362904, 45.696896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677387, 29.300303, 45.029625>,  <33.953560, 29.000154, 45.305145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677387, 29.300303, 45.029625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004005, 29.070444, 45.007587>,  <35.199978, 28.932529, 44.994366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004005, 29.070444, 45.007587>,  <34.677387, 29.300303, 45.029625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004005, 29.070444, 45.007587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020249, 0.066862, -0.997557,
		0.576926, 0.815666, 0.042960,
		0.816546, -0.574646, -0.055091,
		35.248970, 28.898050, 44.991058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193295, 29.665506, 44.622742>,  <34.677387, 29.300303, 45.029625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193295, 29.665506, 44.622742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346104, 29.296371, 44.603054>,  <35.437790, 29.074890, 44.591244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346104, 29.296371, 44.603054>,  <35.193295, 29.665506, 44.622742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346104, 29.296371, 44.603054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170170, 0.122591, -0.977759,
		0.908349, 0.365156, 0.203873,
		0.382027, -0.922839, -0.049217,
		35.460712, 29.019520, 44.588287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947632, 29.628443, 44.329571>,  <35.193295, 29.665506, 44.622742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947632, 29.628443, 44.329571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792313, 29.262039, 44.289276>,  <35.699120, 29.042196, 44.265099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792313, 29.262039, 44.289276>,  <35.947632, 29.628443, 44.329571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792313, 29.262039, 44.289276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170214, 0.036137, -0.984744,
		0.905676, -0.399524, 0.141886,
		-0.388302, -0.916010, -0.100733,
		35.675823, 28.987236, 44.259056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528618, 29.206255, 43.991970>,  <35.947632, 29.628443, 44.329571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528618, 29.206255, 43.991970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183010, 29.021870, 43.910995>,  <35.975647, 28.911238, 43.862411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183010, 29.021870, 43.910995>,  <36.528618, 29.206255, 43.991970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183010, 29.021870, 43.910995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224878, 0.006389, -0.974366,
		0.450442, -0.887395, 0.098141,
		-0.864020, -0.460965, -0.202434,
		35.923805, 28.883579, 43.850266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713646, 28.712992, 43.577065>,  <36.528618, 29.206255, 43.991970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713646, 28.712992, 43.577065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323666, 28.756060, 43.499222>,  <36.089676, 28.781900, 43.452518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323666, 28.756060, 43.499222>,  <36.713646, 28.712992, 43.577065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323666, 28.756060, 43.499222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175356, -0.166054, -0.970400,
		-0.136792, -0.980221, 0.143015,
		-0.974956, 0.107665, -0.194602,
		36.031178, 28.788361, 43.440842>
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
