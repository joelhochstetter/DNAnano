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
	right 1.6 * <1, 0, 0>
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<23.303478, 17.090534, -2.021698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.475109, 16.731735, -2.064190>,  <23.578089, 16.516455, -2.089685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.475109, 16.731735, -2.064190>,  <23.303478, 17.090534, -2.021698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.475109, 16.731735, -2.064190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573904, 0.179912, 0.798915,
		-0.697514, -0.403764, 0.591988,
		0.429079, -0.896999, -0.106231,
		23.603832, 16.462635, -2.096059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.480246, 17.545403, -1.440490>,  <23.303478, 17.090534, -2.021698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.480246, 17.545403, -1.440490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.847584, 17.489494, -1.292382>,  <24.067987, 17.455950, -1.203516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.847584, 17.489494, -1.292382>,  <23.480246, 17.545403, -1.440490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.847584, 17.489494, -1.292382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185630, 0.674154, 0.714883,
		-0.349541, -0.725245, 0.593162,
		0.918348, -0.139772, 0.370272,
		24.123089, 17.447563, -1.181300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.334364, 17.625635, -0.801640>,  <23.480246, 17.545403, -1.440490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.334364, 17.625635, -0.801640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.722584, 17.720985, -0.815583>,  <23.955515, 17.778194, -0.823949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.722584, 17.720985, -0.815583>,  <23.334364, 17.625635, -0.801640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.722584, 17.720985, -0.815583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149846, 0.710628, 0.687425,
		0.188634, -0.661956, 0.725418,
		0.970548, 0.238373, -0.034857,
		24.013748, 17.792498, -0.826041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.660248, 17.673767, -0.093697>,  <23.334364, 17.625635, -0.801640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.660248, 17.673767, -0.093697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.875957, 17.909843, -0.333984>,  <24.005383, 18.051489, -0.478156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.875957, 17.909843, -0.333984>,  <23.660248, 17.673767, -0.093697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.875957, 17.909843, -0.333984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298480, 0.800975, 0.518989,
		0.787457, -0.100579, 0.608109,
		0.539279, 0.590189, -0.600712,
		24.037739, 18.086901, -0.514199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.408522, 17.973911, 0.132397>,  <23.660248, 17.673767, -0.093697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.408522, 17.973911, 0.132397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.224972, 18.233627, -0.110209>,  <24.114841, 18.389456, -0.255773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.224972, 18.233627, -0.110209>,  <24.408522, 17.973911, 0.132397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.224972, 18.233627, -0.110209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037214, 0.696072, 0.717007,
		0.887722, 0.306444, -0.343572,
		-0.458873, 0.649288, -0.606515,
		24.087311, 18.428413, -0.292164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.863514, 18.471830, 0.168880>,  <24.408522, 17.973911, 0.132397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.863514, 18.471830, 0.168880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.490440, 18.576477, 0.069559>,  <24.266596, 18.639265, 0.009966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.490440, 18.576477, 0.069559>,  <24.863514, 18.471830, 0.168880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.490440, 18.576477, 0.069559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041752, 0.605472, 0.794770,
		0.358267, 0.751638, -0.553792,
		-0.932685, 0.261618, -0.248303,
		24.210634, 18.654963, -0.004932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.840038, 19.264402, 0.230435>,  <24.863514, 18.471830, 0.168880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.840038, 19.264402, 0.230435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.491367, 19.076180, 0.285211>,  <24.282166, 18.963245, 0.318076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.491367, 19.076180, 0.285211>,  <24.840038, 19.264402, 0.230435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.491367, 19.076180, 0.285211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151238, 0.524070, 0.838139,
		-0.466160, 0.709877, -0.527987,
		-0.871678, -0.470559, 0.136940,
		24.229864, 18.935013, 0.326293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.416988, 19.801998, 0.376804>,  <24.840038, 19.264402, 0.230435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.416988, 19.801998, 0.376804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.287022, 19.453312, 0.523525>,  <24.209042, 19.244101, 0.611558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.287022, 19.453312, 0.523525>,  <24.416988, 19.801998, 0.376804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.287022, 19.453312, 0.523525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285678, 0.460192, 0.840602,
		-0.901564, 0.168338, -0.398553,
		-0.324916, -0.871714, 0.366802,
		24.189547, 19.191797, 0.633566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.647339, 19.734398, 0.518141>,  <24.416988, 19.801998, 0.376804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.647339, 19.734398, 0.518141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.896404, 19.534286, 0.758812>,  <24.045843, 19.414221, 0.903214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.896404, 19.534286, 0.758812>,  <23.647339, 19.734398, 0.518141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.896404, 19.534286, 0.758812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311036, 0.547330, 0.776973,
		-0.718017, -0.670934, 0.185197,
		0.622661, -0.500277, 0.601677,
		24.083202, 19.384203, 0.939315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.252462, 19.230951, 0.998621>,  <23.647339, 19.734398, 0.518141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.252462, 19.230951, 0.998621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.595829, 19.402611, 1.111014>,  <23.801849, 19.505606, 1.178451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.595829, 19.402611, 1.111014>,  <23.252462, 19.230951, 0.998621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.595829, 19.402611, 1.111014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512924, 0.723723, 0.461664,
		-0.005234, -0.540424, 0.841377,
		0.858418, 0.429146, 0.280985,
		23.853354, 19.531355, 1.195310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.334726, 19.332079, 1.805550>,  <23.252462, 19.230951, 0.998621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.334726, 19.332079, 1.805550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.505486, 19.606155, 1.569491>,  <23.607941, 19.770601, 1.427856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.505486, 19.606155, 1.569491>,  <23.334726, 19.332079, 1.805550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.505486, 19.606155, 1.569491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612636, 0.699157, 0.368588,
		0.665157, 0.204195, 0.718242,
		0.426900, 0.685190, -0.590146,
		23.633554, 19.811712, 1.392447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.285248, 19.934656, 2.103149>,  <23.334726, 19.332079, 1.805550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.285248, 19.934656, 2.103149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.388611, 20.066875, 1.740058>,  <23.450628, 20.146206, 1.522204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.388611, 20.066875, 1.740058>,  <23.285248, 19.934656, 2.103149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.388611, 20.066875, 1.740058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427669, 0.881687, 0.199318,
		0.866213, 0.336701, 0.369199,
		0.258407, 0.330547, -0.907725,
		23.466133, 20.166039, 1.467741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.172235, 20.283743, 2.894376>,  <23.285248, 19.934656, 2.103149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.172235, 20.283743, 2.894376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.947811, 20.139965, 2.596111>,  <22.813156, 20.053698, 2.417153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.947811, 20.139965, 2.596111>,  <23.172235, 20.283743, 2.894376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.947811, 20.139965, 2.596111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792866, 0.492195, 0.359316,
		0.237856, 0.792807, -0.561143,
		-0.561060, -0.359445, -0.745661,
		22.779493, 20.032131, 2.372413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.709398, 20.837019, 2.725912>,  <23.172235, 20.283743, 2.894376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.709398, 20.837019, 2.725912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.548183, 20.501453, 2.579605>,  <22.451454, 20.300114, 2.491820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.548183, 20.501453, 2.579605>,  <22.709398, 20.837019, 2.725912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.548183, 20.501453, 2.579605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902601, 0.298322, 0.310348,
		-0.151239, 0.455224, -0.877438,
		-0.403037, -0.838913, -0.365767,
		22.427273, 20.249779, 2.469874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.206270, 20.908779, 2.190015>,  <22.709398, 20.837019, 2.725912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.206270, 20.908779, 2.190015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.099224, 20.591686, 2.409089>,  <22.034996, 20.401430, 2.540533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.099224, 20.591686, 2.409089>,  <22.206270, 20.908779, 2.190015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.099224, 20.591686, 2.409089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638262, 0.571668, 0.515575,
		-0.721807, -0.211591, -0.658957,
		-0.267613, -0.792732, 0.547684,
		22.018940, 20.353867, 2.573394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.833132, 20.296003, 1.803272>,  <22.206270, 20.908779, 2.190015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.833132, 20.296003, 1.803272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.707558, 20.347027, 2.179607>,  <21.632214, 20.377642, 2.405408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.707558, 20.347027, 2.179607>,  <21.833132, 20.296003, 1.803272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.707558, 20.347027, 2.179607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858989, 0.383968, -0.338683,
		-0.404454, -0.914493, -0.010969,
		-0.313935, 0.127560, 0.940836,
		21.613377, 20.385294, 2.461858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.512638, 20.084986, 1.237158>,  <21.833132, 20.296003, 1.803272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.512638, 20.084986, 1.237158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.883392, 20.011078, 1.106471>,  <22.105844, 19.966734, 1.028059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.883392, 20.011078, 1.106471>,  <21.512638, 20.084986, 1.237158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.883392, 20.011078, 1.106471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034430, -0.824922, 0.564197,
		-0.373763, -0.534195, -0.758247,
		0.926885, -0.184769, -0.326717,
		22.161457, 19.955647, 1.008456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.603975, 19.403124, 0.991098>,  <21.512638, 20.084986, 1.237158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.603975, 19.403124, 0.991098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.964500, 19.522537, 1.116645>,  <22.180815, 19.594185, 1.191974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.964500, 19.522537, 1.116645>,  <21.603975, 19.403124, 0.991098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.964500, 19.522537, 1.116645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063016, -0.626514, 0.776859,
		0.428560, -0.719972, -0.545873,
		0.901313, 0.298532, 0.313869,
		22.234894, 19.612097, 1.210806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.017799, 18.790493, 1.118801>,  <21.603975, 19.403124, 0.991098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.017799, 18.790493, 1.118801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.146374, 19.113358, 1.316859>,  <22.223518, 19.307076, 1.435694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.146374, 19.113358, 1.316859>,  <22.017799, 18.790493, 1.118801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.146374, 19.113358, 1.316859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208767, -0.449624, 0.868478,
		0.923632, -0.382529, 0.023984,
		0.321435, 0.807161, 0.495146,
		22.242804, 19.355507, 1.465403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.419392, 18.633621, 1.732151>,  <22.017799, 18.790493, 1.118801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.419392, 18.633621, 1.732151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.265560, 18.993176, 1.816157>,  <22.173262, 19.208908, 1.866561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.265560, 18.993176, 1.816157>,  <22.419392, 18.633621, 1.732151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.265560, 18.993176, 1.816157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211280, -0.307189, 0.927899,
		0.898587, 0.312479, 0.308055,
		-0.384580, 0.898883, 0.210015,
		22.150187, 19.262840, 1.879162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.749968, 18.975086, 2.428901>,  <22.419392, 18.633621, 1.732151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.749968, 18.975086, 2.428901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.375980, 19.061012, 2.315985>,  <22.151588, 19.112568, 2.248235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.375980, 19.061012, 2.315985>,  <22.749968, 18.975086, 2.428901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.375980, 19.061012, 2.315985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330713, -0.240016, 0.912700,
		0.128309, 0.946703, 0.295450,
		-0.934968, 0.214817, -0.282290,
		22.095490, 19.125458, 2.231298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.603338, 19.434696, 2.849390>,  <22.749968, 18.975086, 2.428901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.603338, 19.434696, 2.849390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.280609, 19.230015, 2.731275>,  <22.086971, 19.107206, 2.660405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.280609, 19.230015, 2.731275>,  <22.603338, 19.434696, 2.849390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.280609, 19.230015, 2.731275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409851, 0.124806, 0.903574,
		-0.425506, 0.850050, -0.310418,
		-0.806825, -0.511702, -0.295288,
		22.038561, 19.076504, 2.642688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.837906, 19.793825, 2.805036>,  <22.603338, 19.434696, 2.849390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.837906, 19.793825, 2.805036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.857258, 19.410038, 2.916087>,  <21.868870, 19.179766, 2.982718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.857258, 19.410038, 2.916087>,  <21.837906, 19.793825, 2.805036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.857258, 19.410038, 2.916087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357845, 0.242853, 0.901648,
		-0.932527, -0.142972, -0.331592,
		0.048382, -0.959469, 0.277629,
		21.871773, 19.122198, 2.999376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.112297, 19.626390, 2.932961>,  <21.837906, 19.793825, 2.805036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.112297, 19.626390, 2.932961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.366055, 19.402790, 3.146526>,  <21.518309, 19.268629, 3.274665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.366055, 19.402790, 3.146526>,  <21.112297, 19.626390, 2.932961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.366055, 19.402790, 3.146526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478154, 0.258931, 0.839240,
		-0.607384, -0.787699, -0.103025,
		0.634392, -0.559003, 0.533912,
		21.556372, 19.235088, 3.306700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.661650, 19.165167, 3.318082>,  <21.112297, 19.626390, 2.932961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.661650, 19.165167, 3.318082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.009659, 19.277176, 3.480391>,  <21.218464, 19.344381, 3.577776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.009659, 19.277176, 3.480391>,  <20.661650, 19.165167, 3.318082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.009659, 19.277176, 3.480391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492784, 0.468827, 0.733052,
		0.015033, -0.837729, 0.545879,
		0.870022, 0.280020, 0.405771,
		21.270666, 19.361181, 3.602122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.790907, 19.029398, 4.102556>,  <20.661650, 19.165167, 3.318082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.790907, 19.029398, 4.102556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.092960, 19.289795, 4.071630>,  <21.274193, 19.446033, 4.053074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.092960, 19.289795, 4.071630>,  <20.790907, 19.029398, 4.102556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.092960, 19.289795, 4.071630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317724, 0.466586, 0.825439,
		0.573431, -0.598752, 0.559172,
		0.755135, 0.650994, -0.077317,
		21.319502, 19.485092, 4.048435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.961533, 19.040869, 4.754425>,  <20.790907, 19.029398, 4.102556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.961533, 19.040869, 4.754425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.014233, 19.371052, 4.534876>,  <21.045853, 19.569162, 4.403147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.014233, 19.371052, 4.534876>,  <20.961533, 19.040869, 4.754425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.014233, 19.371052, 4.534876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108188, 0.562363, 0.819782,
		0.985362, -0.048625, 0.163396,
		0.131749, 0.825459, -0.548871,
		21.053757, 19.618690, 4.370215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.506508, 19.315762, 5.128478>,  <20.961533, 19.040869, 4.754425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.506508, 19.315762, 5.128478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.263725, 19.560833, 4.926002>,  <21.118055, 19.707876, 4.804516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.263725, 19.560833, 4.926002>,  <21.506508, 19.315762, 5.128478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.263725, 19.560833, 4.926002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206997, 0.493073, 0.845004,
		0.767306, 0.617659, -0.172450,
		-0.606955, 0.612679, -0.506191,
		21.081638, 19.744637, 4.774144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.643559, 19.994875, 5.413636>,  <21.506508, 19.315762, 5.128478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.643559, 19.994875, 5.413636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.267010, 19.968842, 5.281224>,  <21.041080, 19.953222, 5.201777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.267010, 19.968842, 5.281224>,  <21.643559, 19.994875, 5.413636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.267010, 19.968842, 5.281224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335081, 0.294430, 0.895004,
		0.039216, 0.953455, -0.298976,
		-0.941373, -0.065083, -0.331030,
		20.984598, 19.949316, 5.181915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.312292, 20.664333, 5.495674>,  <21.643559, 19.994875, 5.413636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.312292, 20.664333, 5.495674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.075848, 20.342560, 5.519247>,  <20.933981, 20.149496, 5.533391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.075848, 20.342560, 5.519247>,  <21.312292, 20.664333, 5.495674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.075848, 20.342560, 5.519247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266766, 0.263930, 0.926918,
		-0.761198, 0.532191, -0.370607,
		-0.591112, -0.804434, 0.058932,
		20.898514, 20.101229, 5.536927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.610098, 20.867178, 5.592050>,  <21.312292, 20.664333, 5.495674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.610098, 20.867178, 5.592050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.639095, 20.498474, 5.744418>,  <20.656494, 20.277252, 5.835839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.639095, 20.498474, 5.744418>,  <20.610098, 20.867178, 5.592050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.639095, 20.498474, 5.744418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453820, 0.309614, 0.835575,
		-0.888140, -0.233442, -0.395870,
		0.072491, -0.921762, 0.380921,
		20.660843, 20.221945, 5.858695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.986034, 20.794922, 6.056829>,  <20.610098, 20.867178, 5.592050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.986034, 20.794922, 6.056829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.318985, 20.606323, 6.173338>,  <20.518755, 20.493164, 6.243243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.318985, 20.606323, 6.173338>,  <19.986034, 20.794922, 6.056829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.318985, 20.606323, 6.173338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153241, 0.309266, 0.938548,
		-0.532601, -0.825861, 0.185174,
		0.832378, -0.471495, 0.291271,
		20.568699, 20.464874, 6.260719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.943794, 20.281565, 6.672222>,  <19.986034, 20.794922, 6.056829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.943794, 20.281565, 6.672222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.317169, 20.424648, 6.661326>,  <20.541193, 20.510498, 6.654789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.317169, 20.424648, 6.661326>,  <19.943794, 20.281565, 6.672222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.317169, 20.424648, 6.661326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070887, 0.258341, 0.963450,
		0.351675, -0.897386, 0.266501,
		0.933434, 0.357712, -0.027239,
		20.597200, 20.531961, 6.653155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.297939, 20.113649, 7.290176>,  <19.943794, 20.281565, 6.672222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.297939, 20.113649, 7.290176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.467293, 20.458710, 7.179482>,  <20.568905, 20.665747, 7.113066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.467293, 20.458710, 7.179482>,  <20.297939, 20.113649, 7.290176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.467293, 20.458710, 7.179482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034267, 0.320492, 0.946631,
		0.905303, -0.391304, 0.165252,
		0.423382, 0.862650, -0.276733,
		20.594307, 20.717505, 7.096462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.814016, 20.329941, 7.619876>,  <20.297939, 20.113649, 7.290176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.814016, 20.329941, 7.619876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.658466, 20.675262, 7.491200>,  <20.565136, 20.882456, 7.413995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.658466, 20.675262, 7.491200>,  <20.814016, 20.329941, 7.619876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.658466, 20.675262, 7.491200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128473, 0.294947, 0.946838,
		0.912288, 0.409531, -0.003786,
		-0.388876, 0.863302, -0.321690,
		20.541803, 20.934254, 7.394693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.205141, 20.900023, 7.824388>,  <20.814016, 20.329941, 7.619876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.205141, 20.900023, 7.824388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.809654, 20.959625, 7.818283>,  <20.572361, 20.995388, 7.814620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.809654, 20.959625, 7.818283>,  <21.205141, 20.900023, 7.824388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.809654, 20.959625, 7.818283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023676, 0.256082, 0.966365,
		0.147905, 0.955101, -0.256721,
		-0.988718, 0.149009, -0.015263,
		20.513039, 21.004328, 7.813704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.104769, 21.457479, 8.120791>,  <21.205141, 20.900023, 7.824388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.104769, 21.457479, 8.120791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.761311, 21.264027, 8.188712>,  <20.555237, 21.147955, 8.229465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.761311, 21.264027, 8.188712>,  <21.104769, 21.457479, 8.120791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.761311, 21.264027, 8.188712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022323, 0.366243, 0.930252,
		-0.512087, 0.794964, -0.325268,
		-0.858644, -0.483630, 0.169802,
		20.503717, 21.118938, 8.239653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.699610, 21.905602, 8.515069>,  <21.104769, 21.457479, 8.120791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.699610, 21.905602, 8.515069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.520405, 21.552917, 8.574224>,  <20.412882, 21.341307, 8.609717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.520405, 21.552917, 8.574224>,  <20.699610, 21.905602, 8.515069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.520405, 21.552917, 8.574224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072178, 0.200549, 0.977021,
		-0.891109, 0.427044, -0.153488,
		-0.448013, -0.881710, 0.147888,
		20.386002, 21.288404, 8.618590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.245562, 22.047211, 9.102086>,  <20.699610, 21.905602, 8.515069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.245562, 22.047211, 9.102086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.283161, 21.649658, 9.078897>,  <20.305721, 21.411127, 9.064983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.283161, 21.649658, 9.078897>,  <20.245562, 22.047211, 9.102086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.283161, 21.649658, 9.078897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150392, -0.043387, 0.987674,
		-0.984147, -0.101560, 0.145394,
		0.094000, -0.993883, -0.057973,
		20.311361, 21.351494, 9.061504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.812893, 21.784973, 9.584444>,  <20.245562, 22.047211, 9.102086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.812893, 21.784973, 9.584444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.064148, 21.479118, 9.526791>,  <20.214901, 21.295605, 9.492198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.064148, 21.479118, 9.526791>,  <19.812893, 21.784973, 9.584444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.064148, 21.479118, 9.526791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073846, -0.242984, 0.967215,
		-0.774591, -0.596900, -0.209093,
		0.628137, -0.764637, -0.144134,
		20.252588, 21.249727, 9.483550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.545380, 21.244844, 9.993428>,  <19.812893, 21.784973, 9.584444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.545380, 21.244844, 9.993428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.925129, 21.131298, 9.939592>,  <20.152979, 21.063171, 9.907290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.925129, 21.131298, 9.939592>,  <19.545380, 21.244844, 9.993428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.925129, 21.131298, 9.939592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050249, -0.285692, 0.957003,
		-0.310117, -0.915313, -0.256963,
		0.949369, -0.283871, -0.134592,
		20.209940, 21.046139, 9.899216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.639439, 20.633015, 10.273176>,  <19.545380, 21.244844, 9.993428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.639439, 20.633015, 10.273176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.018066, 20.759830, 10.249537>,  <20.245243, 20.835920, 10.235353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.018066, 20.759830, 10.249537>,  <19.639439, 20.633015, 10.273176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.018066, 20.759830, 10.249537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158759, -0.298574, 0.941089,
		0.280717, -0.900189, -0.332954,
		0.946570, 0.317039, -0.059099,
		20.302036, 20.854942, 10.231807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.013363, 20.070114, 10.603132>,  <19.639439, 20.633015, 10.273176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.013363, 20.070114, 10.603132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.276291, 20.371536, 10.599442>,  <20.434048, 20.552389, 10.597228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.276291, 20.371536, 10.599442>,  <20.013363, 20.070114, 10.603132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.276291, 20.371536, 10.599442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283647, -0.236044, 0.929423,
		0.698195, -0.613544, -0.368900,
		0.657319, 0.753556, -0.009225,
		20.473486, 20.597603, 10.596675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.525150, 19.725466, 10.997240>,  <20.013363, 20.070114, 10.603132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.525150, 19.725466, 10.997240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.573177, 20.122318, 11.011459>,  <20.601994, 20.360430, 11.019991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.573177, 20.122318, 11.011459>,  <20.525150, 19.725466, 10.997240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.573177, 20.122318, 11.011459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195207, -0.058702, 0.979003,
		0.973385, -0.110608, -0.200719,
		0.120068, 0.992129, 0.035549,
		20.609198, 20.419956, 11.022124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.172115, 19.905922, 11.465339>,  <20.525150, 19.725466, 10.997240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.172115, 19.905922, 11.465339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.950100, 20.238178, 11.447585>,  <20.816891, 20.437532, 11.436933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.950100, 20.238178, 11.447585>,  <21.172115, 19.905922, 11.465339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.950100, 20.238178, 11.447585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038897, 0.079218, 0.996098,
		0.830914, 0.551148, -0.076279,
		-0.555040, 0.830639, -0.044385,
		20.783588, 20.487370, 11.434270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.518162, 20.430523, 12.054440>,  <21.172115, 19.905922, 11.465339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.518162, 20.430523, 12.054440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.165226, 20.580814, 11.941089>,  <20.953465, 20.670990, 11.873078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.165226, 20.580814, 11.941089>,  <21.518162, 20.430523, 12.054440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.165226, 20.580814, 11.941089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131005, 0.382248, 0.914726,
		0.452011, 0.844223, -0.288051,
		-0.882340, 0.375730, -0.283378,
		20.900524, 20.693533, 11.856075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.410316, 21.043957, 12.136298>,  <21.518162, 20.430523, 12.054440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.410316, 21.043957, 12.136298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.031307, 20.916084, 12.136448>,  <20.803902, 20.839361, 12.136538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.031307, 20.916084, 12.136448>,  <21.410316, 21.043957, 12.136298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.031307, 20.916084, 12.136448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112097, 0.333344, 0.936118,
		-0.299386, 0.886952, -0.351687,
		-0.947524, -0.319683, 0.000374,
		20.747049, 20.820179, 12.136560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.131569, 21.634838, 12.496062>,  <21.410316, 21.043957, 12.136298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.131569, 21.634838, 12.496062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.826839, 21.377640, 12.527507>,  <20.644001, 21.223320, 12.546373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.826839, 21.377640, 12.527507>,  <21.131569, 21.634838, 12.496062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.826839, 21.377640, 12.527507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179082, 0.325678, 0.928366,
		-0.622537, 0.693174, -0.363259,
		-0.761825, -0.642996, 0.078611,
		20.598291, 21.184742, 12.551090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.840666, 21.883820, 13.106662>,  <21.131569, 21.634838, 12.496062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.840666, 21.883820, 13.106662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.627060, 21.555344, 13.026190>,  <20.498898, 21.358257, 12.977906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.627060, 21.555344, 13.026190>,  <20.840666, 21.883820, 13.106662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.627060, 21.555344, 13.026190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507156, 0.120738, 0.853355,
		-0.676478, 0.557733, -0.480948,
		-0.534013, -0.821192, -0.201181,
		20.466856, 21.308987, 12.965836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.091635, 22.137800, 13.074656>,  <20.840666, 21.883820, 13.106662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.091635, 22.137800, 13.074656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.126122, 21.752884, 13.177858>,  <20.146814, 21.521935, 13.239779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.126122, 21.752884, 13.177858>,  <20.091635, 22.137800, 13.074656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.126122, 21.752884, 13.177858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422797, 0.199153, 0.884071,
		-0.902114, -0.185307, -0.389682,
		0.086219, -0.962289, 0.258006,
		20.151987, 21.464197, 13.255260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.325392, 21.818697, 13.355345>,  <20.091635, 22.137800, 13.074656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.325392, 21.818697, 13.355345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.618118, 21.597141, 13.514168>,  <19.793755, 21.464209, 13.609462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.618118, 21.597141, 13.514168>,  <19.325392, 21.818697, 13.355345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.618118, 21.597141, 13.514168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319532, 0.235743, 0.917783,
		-0.601953, -0.798519, -0.004465,
		0.731814, -0.553888, 0.397058,
		19.837662, 21.430975, 13.633286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.032040, 21.589216, 13.877934>,  <19.325392, 21.818697, 13.355345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.032040, 21.589216, 13.877934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.416706, 21.514587, 13.958319>,  <19.647507, 21.469810, 14.006550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.416706, 21.514587, 13.958319>,  <19.032040, 21.589216, 13.877934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.416706, 21.514587, 13.958319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189910, 0.075529, 0.978892,
		-0.197812, -0.979534, 0.037202,
		0.961668, -0.186571, 0.200964,
		19.705206, 21.458616, 14.018608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.954254, 20.953869, 14.273421>,  <19.032040, 21.589216, 13.877934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.954254, 20.953869, 14.273421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.292553, 21.158092, 14.335445>,  <19.495533, 21.280626, 14.372660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.292553, 21.158092, 14.335445>,  <18.954254, 20.953869, 14.273421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.292553, 21.158092, 14.335445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139740, -0.068526, 0.987814,
		0.514961, -0.857109, 0.013390,
		0.845747, 0.510557, 0.155060,
		19.546278, 21.311260, 14.381964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.291422, 20.591351, 14.876770>,  <18.954254, 20.953869, 14.273421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.291422, 20.591351, 14.876770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.450367, 20.958416, 14.876982>,  <19.545734, 21.178656, 14.877109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.450367, 20.958416, 14.876982>,  <19.291422, 20.591351, 14.876770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.450367, 20.958416, 14.876982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147336, -0.064369, 0.986990,
		0.905757, -0.392113, -0.160783,
		0.397361, 0.917663, 0.000530,
		19.569574, 21.233715, 14.877141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.661818, 20.559496, 15.438995>,  <19.291422, 20.591351, 14.876770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.661818, 20.559496, 15.438995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.692730, 20.953556, 15.377665>,  <19.711277, 21.189991, 15.340866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.692730, 20.953556, 15.377665>,  <19.661818, 20.559496, 15.438995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.692730, 20.953556, 15.377665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044537, 0.150221, 0.987649,
		0.996014, -0.083157, -0.032266,
		0.077282, 0.985149, -0.153326,
		19.715916, 21.249102, 15.331667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.277117, 20.801502, 15.845209>,  <19.661818, 20.559496, 15.438995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.277117, 20.801502, 15.845209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.008774, 21.095470, 15.805527>,  <19.847769, 21.271852, 15.781717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.008774, 21.095470, 15.805527>,  <20.277117, 20.801502, 15.845209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.008774, 21.095470, 15.805527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162960, 0.276598, 0.947068,
		0.723462, 0.619179, -0.305321,
		-0.670855, 0.734923, -0.099207,
		19.807518, 21.315947, 15.775764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.625546, 21.386547, 16.142656>,  <20.277117, 20.801502, 15.845209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.625546, 21.386547, 16.142656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.230419, 21.447392, 16.155802>,  <19.993343, 21.483898, 16.163689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.230419, 21.447392, 16.155802>,  <20.625546, 21.386547, 16.142656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.230419, 21.447392, 16.155802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081963, 0.329018, 0.940760,
		0.132286, 0.931992, -0.337477,
		-0.987817, 0.152110, 0.032864,
		19.934074, 21.493025, 16.165661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.640259, 21.958736, 16.627745>,  <20.625546, 21.386547, 16.142656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.640259, 21.958736, 16.627745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.265255, 21.822796, 16.597883>,  <20.040253, 21.741232, 16.579966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.265255, 21.822796, 16.597883>,  <20.640259, 21.958736, 16.627745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.265255, 21.822796, 16.597883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171537, 0.264751, 0.948937,
		-0.302732, 0.902446, -0.306504,
		-0.937512, -0.339851, -0.074655,
		19.984001, 21.720840, 16.575487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.276970, 22.458954, 16.719398>,  <20.640259, 21.958736, 16.627745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.276970, 22.458954, 16.719398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.022171, 22.161804, 16.801733>,  <19.869291, 21.983515, 16.851133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.022171, 22.161804, 16.801733>,  <20.276970, 22.458954, 16.719398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.022171, 22.161804, 16.801733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156077, 0.385778, 0.909294,
		-0.754898, 0.547094, -0.361686,
		-0.636999, -0.742875, 0.205835,
		19.831072, 21.938942, 16.863483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.637323, 22.728916, 17.034712>,  <20.276970, 22.458954, 16.719398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.637323, 22.728916, 17.034712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.656857, 22.346275, 17.149620>,  <19.668577, 22.116690, 17.218565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.656857, 22.346275, 17.149620>,  <19.637323, 22.728916, 17.034712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.656857, 22.346275, 17.149620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159648, 0.276440, 0.947678,
		-0.985966, -0.092140, -0.139220,
		0.048833, -0.956604, 0.287270,
		19.671507, 22.059294, 17.235802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.153790, 22.635212, 17.506271>,  <19.637323, 22.728916, 17.034712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.153790, 22.635212, 17.506271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.384869, 22.316013, 17.574936>,  <19.523516, 22.124495, 17.616135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.384869, 22.316013, 17.574936>,  <19.153790, 22.635212, 17.506271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.384869, 22.316013, 17.574936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115178, 0.128508, 0.984997,
		-0.808082, -0.588804, -0.017673,
		0.577700, -0.797994, 0.171662,
		19.558178, 22.076614, 17.626434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.918589, 22.429819, 18.106010>,  <19.153790, 22.635212, 17.506271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.918589, 22.429819, 18.106010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.257740, 22.217842, 18.099535>,  <19.461231, 22.090656, 18.095650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.257740, 22.217842, 18.099535>,  <18.918589, 22.429819, 18.106010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.257740, 22.217842, 18.099535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003928, -0.036813, 0.999314,
		-0.530176, -0.847234, -0.033295,
		0.847879, -0.529943, -0.016190,
		19.512104, 22.058859, 18.094679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.825508, 21.872431, 18.478844>,  <18.918589, 22.429819, 18.106010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.825508, 21.872431, 18.478844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.221092, 21.930378, 18.466368>,  <19.458443, 21.965147, 18.458881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.221092, 21.930378, 18.466368>,  <18.825508, 21.872431, 18.478844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.221092, 21.930378, 18.466368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055707, -0.168394, 0.984144,
		0.137318, -0.975016, -0.174605,
		0.988959, 0.144868, -0.031192,
		19.517780, 21.973839, 18.457010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.205736, 21.301342, 18.811686>,  <18.825508, 21.872431, 18.478844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.205736, 21.301342, 18.811686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.460491, 21.609711, 18.814766>,  <19.613344, 21.794731, 18.816614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.460491, 21.609711, 18.814766>,  <19.205736, 21.301342, 18.811686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.460491, 21.609711, 18.814766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033102, -0.037326, 0.998755,
		0.770247, -0.635838, -0.049292,
		0.636886, 0.770920, 0.007703,
		19.651556, 21.840986, 18.817078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.774849, 21.116211, 19.115887>,  <19.205736, 21.301342, 18.811686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.774849, 21.116211, 19.115887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.783890, 21.515301, 19.141296>,  <19.789314, 21.754755, 19.156542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.783890, 21.515301, 19.141296>,  <19.774849, 21.116211, 19.115887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.783890, 21.515301, 19.141296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100431, -0.060951, 0.993075,
		0.994687, -0.028827, 0.098825,
		0.022604, 0.997724, 0.063522,
		19.790670, 21.814617, 19.160353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.219931, 21.136538, 19.643511>,  <19.774849, 21.116211, 19.115887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.219931, 21.136538, 19.643511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.041435, 21.491161, 19.594711>,  <19.934338, 21.703936, 19.565432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.041435, 21.491161, 19.594711>,  <20.219931, 21.136538, 19.643511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.041435, 21.491161, 19.594711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041429, 0.115715, 0.992418,
		0.893955, 0.447910, -0.014907,
		-0.446239, 0.886559, -0.122000,
		19.907564, 21.757130, 19.558111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.488083, 21.567163, 20.112495>,  <20.219931, 21.136538, 19.643511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.488083, 21.567163, 20.112495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.123837, 21.712231, 20.033247>,  <19.905289, 21.799271, 19.985699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.123837, 21.712231, 20.033247>,  <20.488083, 21.567163, 20.112495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.123837, 21.712231, 20.033247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150215, 0.156140, 0.976246,
		0.384988, 0.918745, -0.087705,
		-0.910615, 0.362668, -0.198121,
		19.850653, 21.821032, 19.973810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.535164, 22.053049, 20.666191>,  <20.488083, 21.567163, 20.112495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.535164, 22.053049, 20.666191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.155079, 22.035023, 20.542860>,  <19.927029, 22.024206, 20.468861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.155079, 22.035023, 20.542860>,  <20.535164, 22.053049, 20.666191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.155079, 22.035023, 20.542860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308723, 0.270417, 0.911902,
		0.042280, 0.961688, -0.270866,
		-0.950212, -0.045068, -0.308328,
		19.870016, 22.021502, 20.450361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.213560, 22.703165, 20.839958>,  <20.535164, 22.053049, 20.666191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.213560, 22.703165, 20.839958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.922832, 22.429352, 20.817495>,  <19.748396, 22.265064, 20.804018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.922832, 22.429352, 20.817495>,  <20.213560, 22.703165, 20.839958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.922832, 22.429352, 20.817495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328173, 0.274291, 0.903917,
		-0.603356, 0.675412, -0.424004,
		-0.726817, -0.684531, -0.056157,
		19.704788, 22.223993, 20.800648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.605793, 23.039783, 21.044538>,  <20.213560, 22.703165, 20.839958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.605793, 23.039783, 21.044538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.497555, 22.655205, 21.064114>,  <19.432611, 22.424458, 21.075859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.497555, 22.655205, 21.064114>,  <19.605793, 23.039783, 21.044538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.497555, 22.655205, 21.064114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591374, 0.206122, 0.779609,
		-0.759641, 0.182018, -0.624352,
		-0.270596, -0.961448, 0.048938,
		19.416376, 22.366770, 21.078794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.931837, 22.946505, 21.209713>,  <19.605793, 23.039783, 21.044538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.931837, 22.946505, 21.209713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.031319, 22.571308, 21.306309>,  <19.091007, 22.346189, 21.364265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.031319, 22.571308, 21.306309>,  <18.931837, 22.946505, 21.209713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.031319, 22.571308, 21.306309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427927, 0.117261, 0.896175,
		-0.868923, -0.326220, -0.372229,
		0.248702, -0.937993, 0.241488,
		19.105928, 22.289909, 21.378756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.352896, 22.573559, 21.289097>,  <18.931837, 22.946505, 21.209713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.352896, 22.573559, 21.289097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.641975, 22.398594, 21.503155>,  <18.815424, 22.293615, 21.631590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.641975, 22.398594, 21.503155>,  <18.352896, 22.573559, 21.289097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.641975, 22.398594, 21.503155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535752, 0.134641, 0.833572,
		-0.436666, -0.889125, -0.137039,
		0.722698, -0.437411, 0.535144,
		18.858786, 22.267370, 21.663698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.956163, 22.021881, 21.628950>,  <18.352896, 22.573559, 21.289097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.956163, 22.021881, 21.628950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.290131, 22.038433, 21.848476>,  <18.490511, 22.048365, 21.980192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.290131, 22.038433, 21.848476>,  <17.956163, 22.021881, 21.628950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.290131, 22.038433, 21.848476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550320, 0.048675, 0.833533,
		0.007779, -0.997957, 0.063413,
		0.834917, 0.041381, 0.548818,
		18.540606, 22.050846, 22.013123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.965961, 21.502396, 22.237118>,  <17.956163, 22.021881, 21.628950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.965961, 21.502396, 22.237118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.215172, 21.800941, 22.330738>,  <18.364698, 21.980068, 22.386909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.215172, 21.800941, 22.330738>,  <17.965961, 21.502396, 22.237118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.215172, 21.800941, 22.330738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543641, 0.198034, 0.815621,
		0.562399, -0.635393, 0.529134,
		0.623026, 0.746363, 0.234051,
		18.402081, 22.024851, 22.400953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.266907, 21.381756, 22.932766>,  <17.965961, 21.502396, 22.237118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.266907, 21.381756, 22.932766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.300049, 21.773064, 22.856743>,  <18.319933, 22.007849, 22.811129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.300049, 21.773064, 22.856743>,  <18.266907, 21.381756, 22.932766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.300049, 21.773064, 22.856743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481958, 0.206262, 0.851571,
		0.872268, 0.021044, 0.488575,
		0.082854, 0.978270, -0.190058,
		18.324905, 22.066545, 22.799725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.444355, 21.651445, 23.613266>,  <18.266907, 21.381756, 22.932766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.444355, 21.651445, 23.613266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.311790, 21.965199, 23.403538>,  <18.232252, 22.153450, 23.277700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.311790, 21.965199, 23.403538>,  <18.444355, 21.651445, 23.613266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.311790, 21.965199, 23.403538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505330, 0.321728, 0.800708,
		0.796749, 0.530319, 0.289747,
		-0.331411, 0.784381, -0.524322,
		18.212368, 22.200512, 23.246241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.548523, 22.195030, 24.106823>,  <18.444355, 21.651445, 23.613266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.548523, 22.195030, 24.106823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.296459, 22.322655, 23.823669>,  <18.145222, 22.399229, 23.653778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.296459, 22.322655, 23.823669>,  <18.548523, 22.195030, 24.106823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.296459, 22.322655, 23.823669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568082, 0.432045, 0.700443,
		0.529322, 0.843526, -0.091004,
		-0.630160, 0.319062, -0.707883,
		18.107410, 22.418373, 23.611305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.762920, 22.942831, 23.908340>,  <18.548523, 22.195030, 24.106823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.762920, 22.942831, 23.908340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.372570, 22.857655, 23.889057>,  <18.138359, 22.806549, 23.877487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.372570, 22.857655, 23.889057>,  <18.762920, 22.942831, 23.908340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.372570, 22.857655, 23.889057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180608, 0.663282, 0.726249,
		-0.122671, 0.717435, -0.685739,
		-0.975875, -0.212940, -0.048209,
		18.079807, 22.793772, 23.874594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.295483, 23.571608, 23.829819>,  <18.762920, 22.942831, 23.908340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.295483, 23.571608, 23.829819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.126919, 23.283531, 24.050268>,  <18.025780, 23.110685, 24.182539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.126919, 23.283531, 24.050268>,  <18.295483, 23.571608, 23.829819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.126919, 23.283531, 24.050268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099467, 0.640763, 0.761268,
		-0.901399, 0.265987, -0.341659,
		-0.421410, -0.720190, 0.551126,
		18.000496, 23.067474, 24.215607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.688583, 23.780886, 24.166368>,  <18.295483, 23.571608, 23.829819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.688583, 23.780886, 24.166368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.650501, 24.151146, 24.019884>,  <17.627651, 24.373302, 23.931993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.650501, 24.151146, 24.019884>,  <17.688583, 23.780886, 24.166368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.650501, 24.151146, 24.019884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442403, -0.368900, -0.817430,
		-0.891749, 0.084190, 0.444631,
		-0.095205, 0.925648, -0.366212,
		17.621941, 24.428841, 23.910021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.019506, 24.112631, 24.079185>,  <17.688583, 23.780886, 24.166368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.019506, 24.112631, 24.079185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.233463, 24.298153, 23.796688>,  <17.361837, 24.409466, 23.627190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.233463, 24.298153, 23.796688>,  <17.019506, 24.112631, 24.079185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.233463, 24.298153, 23.796688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501532, -0.498394, -0.707155,
		-0.679969, 0.732453, -0.033972,
		0.534890, 0.463806, -0.706241,
		17.393930, 24.437294, 23.584816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.975424, 23.718414, 24.647398>,  <17.019506, 24.112631, 24.079185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.975424, 23.718414, 24.647398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.950127, 23.882835, 25.011164>,  <16.934948, 23.981487, 25.229424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.950127, 23.882835, 25.011164>,  <16.975424, 23.718414, 24.647398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.950127, 23.882835, 25.011164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658819, -0.701666, 0.271334,
		0.749639, -0.581979, 0.315186,
		-0.063245, 0.411053, 0.909415,
		16.931152, 24.006151, 25.283989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.911997, 23.223093, 25.127867>,  <16.975424, 23.718414, 24.647398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.911997, 23.223093, 25.127867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.829971, 23.530876, 25.369820>,  <16.780756, 23.715546, 25.514992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.829971, 23.530876, 25.369820>,  <16.911997, 23.223093, 25.127867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.829971, 23.530876, 25.369820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484552, -0.616776, 0.620320,
		0.850387, -0.165891, 0.499322,
		-0.205064, 0.769459, 0.604881,
		16.768452, 23.761713, 25.551285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.384541, 22.912868, 24.570213>,  <16.911997, 23.223093, 25.127867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.384541, 22.912868, 24.570213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.227730, 22.688831, 24.278292>,  <16.133644, 22.554409, 24.103140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.227730, 22.688831, 24.278292>,  <16.384541, 22.912868, 24.570213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.227730, 22.688831, 24.278292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664112, 0.721266, -0.196802,
		0.636608, 0.407518, -0.654721,
		-0.392027, -0.560094, -0.729801,
		16.110123, 22.520803, 24.059351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.246243, 23.343384, 24.073086>,  <16.384541, 22.912868, 24.570213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.246243, 23.343384, 24.073086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.981723, 23.044098, 24.051708>,  <15.823010, 22.864527, 24.038881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.981723, 23.044098, 24.051708>,  <16.246243, 23.343384, 24.073086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.981723, 23.044098, 24.051708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747040, 0.663362, -0.043375,
		0.067908, 0.011242, -0.997628,
		-0.661301, -0.748214, -0.053446,
		15.783333, 22.819633, 24.035675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.733662, 23.076138, 23.516987>,  <16.246243, 23.343384, 24.073086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.733662, 23.076138, 23.516987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.716072, 23.463963, 23.420645>,  <16.705519, 23.696657, 23.362839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.716072, 23.463963, 23.420645>,  <16.733662, 23.076138, 23.516987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.716072, 23.463963, 23.420645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508334, -0.229262, -0.830082,
		-0.860037, 0.085934, 0.502943,
		-0.043973, 0.969564, -0.240857,
		16.702881, 23.754831, 23.348387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.030167, 23.302469, 23.225525>,  <16.733662, 23.076138, 23.516987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.030167, 23.302469, 23.225525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.293743, 23.569588, 23.087053>,  <16.451889, 23.729858, 23.003971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.293743, 23.569588, 23.087053>,  <16.030167, 23.302469, 23.225525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.293743, 23.569588, 23.087053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607459, 0.201024, -0.768494,
		-0.443608, 0.716683, 0.538123,
		0.658943, 0.667798, -0.346180,
		16.491426, 23.769928, 22.983200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.832250, 23.935108, 23.197186>,  <16.030167, 23.302469, 23.225525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.832250, 23.935108, 23.197186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.086433, 23.880405, 22.893215>,  <16.238943, 23.847584, 22.710833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.086433, 23.880405, 22.893215>,  <15.832250, 23.935108, 23.197186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.086433, 23.880405, 22.893215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733915, 0.198824, -0.649490,
		0.239915, 0.970446, 0.025976,
		0.635460, -0.136758, -0.759926,
		16.277071, 23.839378, 22.665237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.745229, 24.508312, 22.684341>,  <15.832250, 23.935108, 23.197186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.745229, 24.508312, 22.684341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.862428, 24.154999, 22.537939>,  <15.932747, 23.943010, 22.450098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.862428, 24.154999, 22.537939>,  <15.745229, 24.508312, 22.684341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.862428, 24.154999, 22.537939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709215, 0.055952, -0.702769,
		0.641223, 0.465487, -0.610045,
		0.292996, -0.883285, -0.366008,
		15.950327, 23.890013, 22.428137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.971810, 24.525623, 22.005556>,  <15.745229, 24.508312, 22.684341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.971810, 24.525623, 22.005556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.846683, 24.150471, 22.065586>,  <15.771606, 23.925379, 22.101604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.846683, 24.150471, 22.065586>,  <15.971810, 24.525623, 22.005556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.846683, 24.150471, 22.065586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421121, -0.004671, -0.906992,
		0.851353, -0.346923, -0.393501,
		-0.312819, -0.937882, 0.150073,
		15.752837, 23.869106, 22.110607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.211565, 24.222118, 21.379862>,  <15.971810, 24.525623, 22.005556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.211565, 24.222118, 21.379862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.950948, 23.958504, 21.530146>,  <15.794577, 23.800335, 21.620316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.950948, 23.958504, 21.530146>,  <16.211565, 24.222118, 21.379862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.950948, 23.958504, 21.530146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220204, -0.309635, -0.925006,
		0.725947, -0.685416, 0.056618,
		-0.651545, -0.659038, 0.375710,
		15.755485, 23.760792, 21.642859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.452614, 23.523075, 21.177650>,  <16.211565, 24.222118, 21.379862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.452614, 23.523075, 21.177650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.061378, 23.526630, 21.260847>,  <15.826636, 23.528763, 21.310764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.061378, 23.526630, 21.260847>,  <16.452614, 23.523075, 21.177650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.061378, 23.526630, 21.260847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197444, -0.356293, -0.913275,
		0.065989, -0.934332, 0.350242,
		-0.978091, 0.008887, 0.207990,
		15.767951, 23.529297, 21.323244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.329725, 22.975092, 20.843243>,  <16.452614, 23.523075, 21.177650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.329725, 22.975092, 20.843243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.983459, 23.164257, 20.908936>,  <15.775698, 23.277756, 20.948351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.983459, 23.164257, 20.908936>,  <16.329725, 22.975092, 20.843243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.983459, 23.164257, 20.908936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275218, -0.175534, -0.945221,
		-0.418179, -0.863448, 0.282108,
		-0.865668, 0.472912, 0.164232,
		15.723758, 23.306131, 20.958204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.840093, 22.469742, 20.620224>,  <16.329725, 22.975092, 20.843243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.840093, 22.469742, 20.620224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.672927, 22.832458, 20.598026>,  <15.572628, 23.050089, 20.584707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.672927, 22.832458, 20.598026>,  <15.840093, 22.469742, 20.620224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.672927, 22.832458, 20.598026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306056, -0.198041, -0.931187,
		-0.855381, -0.372171, 0.360293,
		-0.417914, 0.906790, -0.055496,
		15.547553, 23.104496, 20.581377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.175332, 22.328899, 20.301128>,  <15.840093, 22.469742, 20.620224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.175332, 22.328899, 20.301128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.237067, 22.714764, 20.215704>,  <15.274108, 22.946281, 20.164450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.237067, 22.714764, 20.215704>,  <15.175332, 22.328899, 20.301128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.237067, 22.714764, 20.215704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238805, -0.173321, -0.955475,
		-0.958724, 0.198465, 0.203616,
		0.154338, 0.964661, -0.213561,
		15.283368, 23.004162, 20.151636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.612324, 22.446465, 19.948257>,  <15.175332, 22.328899, 20.301128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.612324, 22.446465, 19.948257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.879302, 22.730896, 19.859821>,  <15.039489, 22.901556, 19.806759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.879302, 22.730896, 19.859821>,  <14.612324, 22.446465, 19.948257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.879302, 22.730896, 19.859821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170426, -0.143158, -0.974916,
		-0.724894, 0.688383, 0.025636,
		0.667445, 0.711080, -0.221093,
		15.079535, 22.944220, 19.793493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.401525, 22.679930, 19.410980>,  <14.612324, 22.446465, 19.948257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.401525, 22.679930, 19.410980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.781764, 22.800625, 19.381821>,  <15.009908, 22.873041, 19.364325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.781764, 22.800625, 19.381821>,  <14.401525, 22.679930, 19.410980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.781764, 22.800625, 19.381821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046747, -0.093018, -0.994566,
		-0.306880, 0.948842, -0.074318,
		0.950599, 0.301739, -0.072901,
		15.066944, 22.891146, 19.359951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.424491, 23.130116, 18.842972>,  <14.401525, 22.679930, 19.410980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.424491, 23.130116, 18.842972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.810328, 23.031311, 18.879946>,  <15.041831, 22.972029, 18.902130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.810328, 23.031311, 18.879946>,  <14.424491, 23.130116, 18.842972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.810328, 23.031311, 18.879946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092624, -0.010871, -0.995642,
		0.246937, 0.968952, 0.012392,
		0.964595, -0.247009, 0.092433,
		15.099707, 22.957209, 18.907675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.787201, 23.575035, 18.326408>,  <14.424491, 23.130116, 18.842972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.787201, 23.575035, 18.326408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.032878, 23.269608, 18.406141>,  <15.180285, 23.086351, 18.453981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.032878, 23.269608, 18.406141>,  <14.787201, 23.575035, 18.326408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.032878, 23.269608, 18.406141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285749, -0.020264, -0.958090,
		0.735605, 0.645411, 0.205742,
		0.614193, -0.763567, 0.199332,
		15.217135, 23.040537, 18.465940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.413476, 23.765215, 18.025333>,  <14.787201, 23.575035, 18.326408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.413476, 23.765215, 18.025333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.432378, 23.366928, 18.057125>,  <15.443719, 23.127956, 18.076200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.432378, 23.366928, 18.057125>,  <15.413476, 23.765215, 18.025333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.432378, 23.366928, 18.057125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365449, -0.056819, -0.929096,
		0.929631, 0.072951, 0.361199,
		0.047255, -0.995716, 0.079480,
		15.446554, 23.068213, 18.080969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.070887, 23.647371, 17.669167>,  <15.413476, 23.765215, 18.025333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.070887, 23.647371, 17.669167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.881560, 23.295521, 17.688070>,  <15.767965, 23.084412, 17.699413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.881560, 23.295521, 17.688070>,  <16.070887, 23.647371, 17.669167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.881560, 23.295521, 17.688070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365697, -0.245018, -0.897904,
		0.801398, -0.407708, 0.437647,
		-0.473314, -0.879625, 0.047259,
		15.739566, 23.031633, 17.702248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.613628, 23.221386, 17.436018>,  <16.070887, 23.647371, 17.669167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.613628, 23.221386, 17.436018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.251163, 23.056633, 17.397604>,  <16.033684, 22.957781, 17.374556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.251163, 23.056633, 17.397604>,  <16.613628, 23.221386, 17.436018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.251163, 23.056633, 17.397604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256054, -0.353558, -0.899685,
		0.336610, -0.839851, 0.425845,
		-0.906162, -0.411883, -0.096036,
		15.979315, 22.933067, 17.368793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.749706, 22.519768, 17.250284>,  <16.613628, 23.221386, 17.436018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.749706, 22.519768, 17.250284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.387012, 22.618858, 17.113777>,  <16.169395, 22.678312, 17.031874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.387012, 22.618858, 17.113777>,  <16.749706, 22.519768, 17.250284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.387012, 22.618858, 17.113777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265091, -0.294531, -0.918138,
		-0.327962, -0.922974, 0.201392,
		-0.906735, 0.247728, -0.341267,
		16.114992, 22.693176, 17.011396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.646748, 22.034876, 16.802269>,  <16.749706, 22.519768, 17.250284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.646748, 22.034876, 16.802269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.388973, 22.312298, 16.673466>,  <16.234308, 22.478750, 16.596184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.388973, 22.312298, 16.673466>,  <16.646748, 22.034876, 16.802269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.388973, 22.312298, 16.673466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230966, -0.224892, -0.946614,
		-0.728945, -0.684402, -0.015260,
		-0.644433, 0.693554, -0.322007,
		16.195642, 22.520365, 16.576864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.455254, 21.787487, 16.200272>,  <16.646748, 22.034876, 16.802269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.455254, 21.787487, 16.200272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.313927, 22.160816, 16.174740>,  <16.229130, 22.384813, 16.159420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.313927, 22.160816, 16.174740>,  <16.455254, 21.787487, 16.200272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.313927, 22.160816, 16.174740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133671, -0.017164, -0.990877,
		-0.925904, -0.358627, -0.118694,
		-0.353318, 0.933323, -0.063830,
		16.207932, 22.440813, 16.155590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.963106, 21.784813, 15.661835>,  <16.455254, 21.787487, 16.200272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.963106, 21.784813, 15.661835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.087177, 22.164051, 15.689844>,  <16.161619, 22.391594, 15.706650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.087177, 22.164051, 15.689844>,  <15.963106, 21.784813, 15.661835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.087177, 22.164051, 15.689844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077219, 0.048286, -0.995844,
		-0.947537, 0.314296, -0.058234,
		0.310178, 0.948096, 0.070023,
		16.180231, 22.448481, 15.710851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.607545, 22.174795, 15.191145>,  <15.963106, 21.784813, 15.661835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.607545, 22.174795, 15.191145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.923493, 22.413338, 15.248365>,  <16.113062, 22.556463, 15.282698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.923493, 22.413338, 15.248365>,  <15.607545, 22.174795, 15.191145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.923493, 22.413338, 15.248365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051390, 0.168077, -0.984433,
		-0.611115, 0.784928, 0.102112,
		0.789872, 0.596355, 0.143052,
		16.160456, 22.592243, 15.291281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.567278, 22.671236, 14.698794>,  <15.607545, 22.174795, 15.191145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.567278, 22.671236, 14.698794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.947743, 22.662746, 14.821976>,  <16.176023, 22.657652, 14.895885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.947743, 22.662746, 14.821976>,  <15.567278, 22.671236, 14.698794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.947743, 22.662746, 14.821976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308311, 0.114367, -0.944386,
		-0.015176, 0.993212, 0.115325,
		0.951165, -0.021224, 0.307954,
		16.233093, 22.656380, 14.914362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.891924, 23.226337, 14.391431>,  <15.567278, 22.671236, 14.698794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.891924, 23.226337, 14.391431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.195724, 22.985985, 14.491110>,  <16.378004, 22.841774, 14.550917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.195724, 22.985985, 14.491110>,  <15.891924, 23.226337, 14.391431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.195724, 22.985985, 14.491110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390437, 0.114675, -0.913460,
		0.520304, 0.791070, 0.321702,
		0.759502, -0.600881, 0.249197,
		16.423574, 22.805721, 14.565869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.373653, 23.522081, 14.065515>,  <15.891924, 23.226337, 14.391431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.373653, 23.522081, 14.065515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.555733, 23.178371, 14.158846>,  <16.664980, 22.972145, 14.214845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.555733, 23.178371, 14.158846>,  <16.373653, 23.522081, 14.065515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.555733, 23.178371, 14.158846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497944, 0.028428, -0.866743,
		0.738137, 0.510724, 0.440811,
		0.455198, -0.859275, 0.233328,
		16.692291, 22.920589, 14.228845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.180229, 23.595018, 13.931348>,  <16.373653, 23.522081, 14.065515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.180229, 23.595018, 13.931348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.099907, 23.203171, 13.929249>,  <17.051714, 22.968063, 13.927989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.099907, 23.203171, 13.929249>,  <17.180229, 23.595018, 13.931348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.099907, 23.203171, 13.929249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426618, -0.082625, -0.900650,
		0.881858, -0.183094, 0.434514,
		-0.200805, -0.979617, -0.005248,
		17.039665, 22.909286, 13.927674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.773281, 23.342760, 13.572249>,  <17.180229, 23.595018, 13.931348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.773281, 23.342760, 13.572249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.514427, 23.038383, 13.553568>,  <17.359116, 22.855757, 13.542359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.514427, 23.038383, 13.553568>,  <17.773281, 23.342760, 13.572249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.514427, 23.038383, 13.553568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447649, -0.329682, -0.831216,
		0.617111, -0.558815, 0.553985,
		-0.647135, -0.760943, -0.046703,
		17.320286, 22.810101, 13.539557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.177689, 22.752857, 13.490474>,  <17.773281, 23.342760, 13.572249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.177689, 22.752857, 13.490474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.809772, 22.666687, 13.359278>,  <17.589024, 22.614985, 13.280560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.809772, 22.666687, 13.359278>,  <18.177689, 22.752857, 13.490474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.809772, 22.666687, 13.359278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389210, -0.394279, -0.832502,
		0.050024, -0.893384, 0.446500,
		-0.919790, -0.215428, -0.327990,
		17.533836, 22.602058, 13.260880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.272915, 22.068949, 13.089527>,  <18.177689, 22.752857, 13.490474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.272915, 22.068949, 13.089527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.913734, 22.196354, 12.968048>,  <17.698227, 22.272797, 12.895161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.913734, 22.196354, 12.968048>,  <18.272915, 22.068949, 13.089527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.913734, 22.196354, 12.968048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205875, -0.305899, -0.929538,
		-0.388972, -0.897203, 0.209108,
		-0.897951, 0.318514, -0.303698,
		17.644348, 22.291908, 12.876939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.867546, 21.543941, 12.775833>,  <18.272915, 22.068949, 13.089527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.867546, 21.543941, 12.775833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.763840, 21.900005, 12.625956>,  <17.701616, 22.113644, 12.536029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.763840, 21.900005, 12.625956>,  <17.867546, 21.543941, 12.775833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.763840, 21.900005, 12.625956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087656, -0.364671, -0.927001,
		-0.961820, -0.273183, 0.016518,
		-0.259264, 0.890161, -0.374695,
		17.686060, 22.167053, 12.513547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.238453, 21.485023, 12.383727>,  <17.867546, 21.543941, 12.775833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.238453, 21.485023, 12.383727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.418922, 21.816708, 12.251757>,  <17.527205, 22.015718, 12.172574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.418922, 21.816708, 12.251757>,  <17.238453, 21.485023, 12.383727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.418922, 21.816708, 12.251757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110864, -0.314752, -0.942677,
		-0.885522, 0.461890, -0.050079,
		0.451176, 0.829210, -0.329927,
		17.554276, 22.065470, 12.152779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.032667, 21.550392, 11.651821>,  <17.238453, 21.485023, 12.383727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.032667, 21.550392, 11.651821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.292980, 21.853451, 11.671641>,  <17.449169, 22.035286, 11.683534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.292980, 21.853451, 11.671641>,  <17.032667, 21.550392, 11.651821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.292980, 21.853451, 11.671641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104507, -0.024745, -0.994216,
		-0.752037, 0.652198, -0.095283,
		0.650784, 0.757645, 0.049550,
		17.488214, 22.080744, 11.686506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.792498, 22.098419, 11.175057>,  <17.032667, 21.550392, 11.651821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.792498, 22.098419, 11.175057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.184250, 22.164783, 11.221169>,  <17.419300, 22.204603, 11.248837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.184250, 22.164783, 11.221169>,  <16.792498, 22.098419, 11.175057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.184250, 22.164783, 11.221169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083684, 0.186202, -0.978941,
		-0.183884, 0.968402, 0.168478,
		0.979379, 0.165912, 0.115279,
		17.478064, 22.214558, 11.255754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.890867, 22.616802, 10.608290>,  <16.792498, 22.098419, 11.175057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.890867, 22.616802, 10.608290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.246803, 22.470600, 10.717536>,  <17.460365, 22.382879, 10.783084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.246803, 22.470600, 10.717536>,  <16.890867, 22.616802, 10.608290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.246803, 22.470600, 10.717536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243690, -0.125348, -0.961719,
		0.385749, 0.922330, -0.022469,
		0.889839, -0.365507, 0.273115,
		17.513756, 22.360949, 10.799471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.392994, 22.956104, 10.146079>,  <16.890867, 22.616802, 10.608290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.392994, 22.956104, 10.146079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.576988, 22.624546, 10.273415>,  <17.687386, 22.425611, 10.349816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.576988, 22.624546, 10.273415>,  <17.392994, 22.956104, 10.146079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.576988, 22.624546, 10.273415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237103, -0.230837, -0.943661,
		0.855683, 0.509552, 0.090352,
		0.459988, -0.828897, 0.318340,
		17.714985, 22.375877, 10.368917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.080315, 22.933552, 9.843272>,  <17.392994, 22.956104, 10.146079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.080315, 22.933552, 9.843272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.971050, 22.564407, 9.951869>,  <17.905491, 22.342920, 10.017027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.971050, 22.564407, 9.951869>,  <18.080315, 22.933552, 9.843272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.971050, 22.564407, 9.951869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145027, -0.318508, -0.936760,
		0.950973, -0.216513, 0.220844,
		-0.273161, -0.922862, 0.271492,
		17.889101, 22.287548, 10.033317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.667974, 22.554335, 9.599915>,  <18.080315, 22.933552, 9.843272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.667974, 22.554335, 9.599915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.391109, 22.273273, 9.665874>,  <18.224991, 22.104637, 9.705450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.391109, 22.273273, 9.665874>,  <18.667974, 22.554335, 9.599915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.391109, 22.273273, 9.665874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010526, -0.238277, -0.971140,
		0.721666, -0.670450, 0.172322,
		-0.692162, -0.702653, 0.164899,
		18.183460, 22.062477, 9.715344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.969763, 21.877134, 9.460030>,  <18.667974, 22.554335, 9.599915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.969763, 21.877134, 9.460030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.573605, 21.859497, 9.407608>,  <18.335911, 21.848915, 9.376155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.573605, 21.859497, 9.407608>,  <18.969763, 21.877134, 9.460030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.573605, 21.859497, 9.407608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138210, -0.344019, -0.928735,
		-0.004133, -0.937927, 0.346809,
		-0.990394, -0.044094, -0.131053,
		18.276485, 21.846270, 9.368292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.886927, 21.195202, 9.265353>,  <18.969763, 21.877134, 9.460030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.886927, 21.195202, 9.265353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.568451, 21.400280, 9.136840>,  <18.377365, 21.523327, 9.059732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.568451, 21.400280, 9.136840>,  <18.886927, 21.195202, 9.265353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.568451, 21.400280, 9.136840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073679, -0.444897, -0.892546,
		-0.600544, -0.734308, 0.316447,
		-0.796190, 0.512697, -0.321283,
		18.329594, 21.554089, 9.040455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.707720, 20.768438, 8.798514>,  <18.886927, 21.195202, 9.265353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.707720, 20.768438, 8.798514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.475368, 21.081066, 8.707539>,  <18.335958, 21.268642, 8.652953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.475368, 21.081066, 8.707539>,  <18.707720, 20.768438, 8.798514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.475368, 21.081066, 8.707539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026610, -0.297495, -0.954353,
		-0.813556, -0.548310, 0.193606,
		-0.580877, 0.781571, -0.227439,
		18.301105, 21.315536, 8.639307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.039736, 20.535358, 8.544907>,  <18.707720, 20.768438, 8.798514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.039736, 20.535358, 8.544907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.102562, 20.903679, 8.402105>,  <18.140257, 21.124672, 8.316424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.102562, 20.903679, 8.402105>,  <18.039736, 20.535358, 8.544907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.102562, 20.903679, 8.402105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206429, -0.322896, -0.923648,
		-0.965773, 0.218768, 0.139365,
		0.157064, 0.920803, -0.357004,
		18.149681, 21.179920, 8.295004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.585440, 20.586491, 8.006516>,  <18.039736, 20.535358, 8.544907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.585440, 20.586491, 8.006516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.826645, 20.897186, 7.933795>,  <17.971367, 21.083605, 7.890162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.826645, 20.897186, 7.933795>,  <17.585440, 20.586491, 8.006516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.826645, 20.897186, 7.933795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170504, -0.097138, -0.980557,
		-0.779298, 0.622286, 0.073862,
		0.603012, 0.776740, -0.181801,
		18.007549, 21.130209, 7.879255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.120029, 20.415804, 7.515556>,  <17.585440, 20.586491, 8.006516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.120029, 20.415804, 7.515556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.026951, 20.027588, 7.490549>,  <16.971104, 19.794659, 7.475545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.026951, 20.027588, 7.490549>,  <17.120029, 20.415804, 7.515556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.026951, 20.027588, 7.490549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656194, 0.109235, 0.746644,
		-0.717817, 0.214765, -0.662280,
		-0.232697, -0.970538, -0.062517,
		16.957142, 19.736427, 7.471794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.478540, 20.339443, 7.754937>,  <17.120029, 20.415804, 7.515556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.478540, 20.339443, 7.754937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.545097, 19.945057, 7.760437>,  <16.585032, 19.708426, 7.763737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.545097, 19.945057, 7.760437>,  <16.478540, 20.339443, 7.754937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.545097, 19.945057, 7.760437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767656, -0.120774, 0.629379,
		-0.618884, -0.115281, -0.776977,
		0.166394, -0.985963, 0.013751,
		16.595016, 19.649267, 7.764562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.831442, 20.149622, 7.703076>,  <16.478540, 20.339443, 7.754937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.831442, 20.149622, 7.703076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.043270, 19.846691, 7.855921>,  <16.170366, 19.664932, 7.947628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.043270, 19.846691, 7.855921>,  <15.831442, 20.149622, 7.703076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.043270, 19.846691, 7.855921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659228, -0.083948, 0.747243,
		-0.533831, -0.647616, -0.543708,
		0.529569, -0.757329, 0.382112,
		16.202141, 19.619493, 7.970554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.303624, 19.679272, 7.982335>,  <15.831442, 20.149622, 7.703076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.303624, 19.679272, 7.982335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.640548, 19.638458, 8.194036>,  <15.842702, 19.613970, 8.321055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.640548, 19.638458, 8.194036>,  <15.303624, 19.679272, 7.982335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.640548, 19.638458, 8.194036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526562, 0.053926, 0.848425,
		-0.115111, -0.993318, -0.008306,
		0.842308, -0.102037, 0.529250,
		15.893240, 19.607847, 8.352811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.086305, 19.296831, 8.525098>,  <15.303624, 19.679272, 7.982335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.086305, 19.296831, 8.525098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.436648, 19.438126, 8.656608>,  <15.646854, 19.522903, 8.735514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.436648, 19.438126, 8.656608>,  <15.086305, 19.296831, 8.525098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.436648, 19.438126, 8.656608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382018, 0.091275, 0.919636,
		0.294841, -0.931070, 0.214888,
		0.875860, 0.353238, 0.328774,
		15.699407, 19.544098, 8.755239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.352719, 18.923540, 9.149260>,  <15.086305, 19.296831, 8.525098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.352719, 18.923540, 9.149260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.514312, 19.288952, 9.168300>,  <15.611267, 19.508198, 9.179724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.514312, 19.288952, 9.168300>,  <15.352719, 18.923540, 9.149260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.514312, 19.288952, 9.168300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305687, 0.085771, 0.948261,
		0.862180, -0.397630, 0.313904,
		0.403981, 0.913528, 0.047600,
		15.635506, 19.563011, 9.182580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.837421, 18.880146, 9.730246>,  <15.352719, 18.923540, 9.149260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.837421, 18.880146, 9.730246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.767842, 19.271130, 9.682380>,  <15.726095, 19.505720, 9.653661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.767842, 19.271130, 9.682380>,  <15.837421, 18.880146, 9.730246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.767842, 19.271130, 9.682380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283902, 0.066580, 0.956539,
		0.942943, 0.200361, 0.265920,
		-0.173948, 0.977457, -0.119664,
		15.715658, 19.564367, 9.646481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.174379, 19.157974, 10.277169>,  <15.837421, 18.880146, 9.730246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.174379, 19.157974, 10.277169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.924836, 19.441189, 10.144815>,  <15.775110, 19.611118, 10.065403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.924836, 19.441189, 10.144815>,  <16.174379, 19.157974, 10.277169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.924836, 19.441189, 10.144815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250076, 0.220270, 0.942838,
		0.740447, 0.670945, 0.039645,
		-0.623859, 0.708036, -0.330885,
		15.737679, 19.653599, 10.045550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.328136, 19.746487, 10.744874>,  <16.174379, 19.157974, 10.277169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.328136, 19.746487, 10.744874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.959764, 19.785160, 10.593856>,  <15.738740, 19.808365, 10.503245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.959764, 19.785160, 10.593856>,  <16.328136, 19.746487, 10.744874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.959764, 19.785160, 10.593856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342948, 0.259141, 0.902902,
		0.185133, 0.960988, -0.205494,
		-0.920930, 0.096683, -0.377544,
		15.683484, 19.814165, 10.480593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.073935, 20.344624, 11.097018>,  <16.328136, 19.746487, 10.744874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.073935, 20.344624, 11.097018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.753003, 20.149338, 10.959664>,  <15.560444, 20.032166, 10.877252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.753003, 20.149338, 10.959664>,  <16.073935, 20.344624, 11.097018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.753003, 20.149338, 10.959664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456320, 0.130869, 0.880139,
		-0.384759, 0.862855, -0.327782,
		-0.802329, -0.488215, -0.343386,
		15.512304, 20.002872, 10.856648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.507327, 20.857439, 11.134015>,  <16.073935, 20.344624, 11.097018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.507327, 20.857439, 11.134015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.349263, 20.490025, 11.129236>,  <15.254425, 20.269577, 11.126369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.349263, 20.490025, 11.129236>,  <15.507327, 20.857439, 11.134015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.349263, 20.490025, 11.129236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542530, 0.222866, 0.809933,
		-0.741289, 0.326534, -0.586400,
		-0.395160, -0.918535, -0.011947,
		15.230716, 20.214464, 11.125652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.779215, 20.969290, 11.407572>,  <15.507327, 20.857439, 11.134015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.779215, 20.969290, 11.407572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.872317, 20.581776, 11.441704>,  <14.928179, 20.349268, 11.462183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.872317, 20.581776, 11.441704>,  <14.779215, 20.969290, 11.407572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.872317, 20.581776, 11.441704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464591, -0.033682, 0.884885,
		-0.854388, -0.245606, -0.457928,
		0.232756, -0.968785, 0.085329,
		14.942144, 20.291140, 11.467302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.176447, 20.703213, 11.678104>,  <14.779215, 20.969290, 11.407572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.176447, 20.703213, 11.678104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.452132, 20.425743, 11.761816>,  <14.617543, 20.259260, 11.812043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.452132, 20.425743, 11.761816>,  <14.176447, 20.703213, 11.678104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.452132, 20.425743, 11.761816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372107, -0.091032, 0.923715,
		-0.621707, -0.714512, -0.320862,
		0.689215, -0.693675, 0.209280,
		14.658896, 20.217640, 11.824600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.849278, 20.045620, 12.060960>,  <14.176447, 20.703213, 11.678104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.849278, 20.045620, 12.060960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.235337, 20.096436, 12.152482>,  <14.466972, 20.126925, 12.207396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.235337, 20.096436, 12.152482>,  <13.849278, 20.045620, 12.060960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.235337, 20.096436, 12.152482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240802, 0.088670, 0.966516,
		0.102499, -0.987926, 0.116171,
		0.965147, 0.127041, 0.228806,
		14.524881, 20.134546, 12.221124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.841972, 19.790007, 12.691962>,  <13.849278, 20.045620, 12.060960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.841972, 19.790007, 12.691962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.204675, 19.958366, 12.702058>,  <14.422297, 20.059381, 12.708115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.204675, 19.958366, 12.702058>,  <13.841972, 19.790007, 12.691962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.204675, 19.958366, 12.702058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026367, -0.003138, 0.999647,
		0.420830, -0.907102, 0.008252,
		0.906756, 0.420900, 0.025238,
		14.476702, 20.084637, 12.709629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.249671, 19.356016, 13.035232>,  <13.841972, 19.790007, 12.691962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.249671, 19.356016, 13.035232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.413550, 19.719818, 13.063356>,  <14.511878, 19.938099, 13.080231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.413550, 19.719818, 13.063356>,  <14.249671, 19.356016, 13.035232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.413550, 19.719818, 13.063356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066078, -0.047286, 0.996693,
		0.909825, -0.412990, 0.040725,
		0.409699, 0.909507, 0.070311,
		14.536460, 19.992670, 13.084450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.564893, 19.281691, 13.688226>,  <14.249671, 19.356016, 13.035232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.564893, 19.281691, 13.688226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.568189, 19.673908, 13.609779>,  <14.570166, 19.909239, 13.562712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.568189, 19.673908, 13.609779>,  <14.564893, 19.281691, 13.688226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.568189, 19.673908, 13.609779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060882, 0.196250, 0.978662,
		0.998111, 0.003877, 0.061315,
		0.008239, 0.980546, -0.196115,
		14.570661, 19.968073, 13.550944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.068441, 19.581787, 13.987226>,  <14.564893, 19.281691, 13.688226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.068441, 19.581787, 13.987226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.807843, 19.883083, 13.951048>,  <14.651484, 20.063862, 13.929341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.807843, 19.883083, 13.951048>,  <15.068441, 19.581787, 13.987226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.807843, 19.883083, 13.951048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036160, 0.149912, 0.988038,
		0.757791, 0.640431, -0.124904,
		-0.651494, 0.753243, -0.090444,
		14.612395, 20.109056, 13.923915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.422574, 20.170219, 14.305562>,  <15.068441, 19.581787, 13.987226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.422574, 20.170219, 14.305562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.029286, 20.232780, 14.267996>,  <14.793314, 20.270317, 14.245457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.029286, 20.232780, 14.267996>,  <15.422574, 20.170219, 14.305562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.029286, 20.232780, 14.267996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041687, 0.308556, 0.950292,
		0.177606, 0.938260, -0.296857,
		-0.983218, 0.156402, -0.093915,
		14.734321, 20.279701, 14.239821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.185326, 20.845737, 14.539333>,  <15.422574, 20.170219, 14.305562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.185326, 20.845737, 14.539333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.829885, 20.667496, 14.582823>,  <14.616619, 20.560551, 14.608916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.829885, 20.667496, 14.582823>,  <15.185326, 20.845737, 14.539333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.829885, 20.667496, 14.582823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135875, 0.482132, 0.865498,
		-0.438088, 0.754312, -0.488971,
		-0.888604, -0.445603, 0.108724,
		14.563303, 20.533815, 14.615440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.751085, 21.394108, 14.784816>,  <15.185326, 20.845737, 14.539333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.751085, 21.394108, 14.784816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.524085, 21.077137, 14.874264>,  <14.387885, 20.886955, 14.927933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.524085, 21.077137, 14.874264>,  <14.751085, 21.394108, 14.784816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.524085, 21.077137, 14.874264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293282, 0.448320, 0.844390,
		-0.769370, 0.413607, -0.486826,
		-0.567500, -0.792425, 0.223620,
		14.353835, 20.839409, 14.941350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.134492, 21.683249, 15.105271>,  <14.751085, 21.394108, 14.784816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.134492, 21.683249, 15.105271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.168525, 21.303551, 15.226395>,  <14.188945, 21.075731, 15.299068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.168525, 21.303551, 15.226395>,  <14.134492, 21.683249, 15.105271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.168525, 21.303551, 15.226395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257309, 0.272668, 0.927062,
		-0.962576, -0.156791, -0.221051,
		0.085082, -0.949246, 0.302807,
		14.194049, 21.018776, 15.317237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.849660, 21.708471, 15.813839>,  <14.134492, 21.683249, 15.105271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.849660, 21.708471, 15.813839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.885140, 21.310070, 15.809607>,  <13.906428, 21.071030, 15.807067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.885140, 21.310070, 15.809607>,  <13.849660, 21.708471, 15.813839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.885140, 21.310070, 15.809607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190007, -0.027346, 0.981402,
		-0.977768, -0.085040, -0.191673,
		0.088700, -0.996002, -0.010580,
		13.911751, 21.011269, 15.806433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.295094, 21.443651, 16.028519>,  <13.849660, 21.708471, 15.813839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.295094, 21.443651, 16.028519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.600814, 21.203899, 16.123674>,  <13.784245, 21.060049, 16.180767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.600814, 21.203899, 16.123674>,  <13.295094, 21.443651, 16.028519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.600814, 21.203899, 16.123674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137748, 0.208637, 0.968244,
		-0.629977, -0.772797, 0.076898,
		0.764300, -0.599379, 0.237888,
		13.830104, 21.024086, 16.195042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.078464, 20.844965, 16.559156>,  <13.295094, 21.443651, 16.028519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.078464, 20.844965, 16.559156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.477084, 20.851746, 16.591642>,  <13.716257, 20.855814, 16.611134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.477084, 20.851746, 16.591642>,  <13.078464, 20.844965, 16.559156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.477084, 20.851746, 16.591642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080279, -0.049989, 0.995518,
		0.020937, -0.998606, -0.048456,
		0.996552, 0.016953, 0.081214,
		13.776050, 20.856831, 16.616007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.237890, 20.382576, 17.116894>,  <13.078464, 20.844965, 16.559156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.237890, 20.382576, 17.116894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.589465, 20.571297, 17.088968>,  <13.800410, 20.684528, 17.072212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.589465, 20.571297, 17.088968>,  <13.237890, 20.382576, 17.116894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.589465, 20.571297, 17.088968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165675, -0.164766, 0.972319,
		0.447238, -0.866173, -0.222985,
		0.878937, 0.471801, -0.069813,
		13.853147, 20.712837, 17.068024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.800951, 19.906599, 17.346706>,  <13.237890, 20.382576, 17.116894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.800951, 19.906599, 17.346706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.885762, 20.294415, 17.395754>,  <13.936649, 20.527103, 17.425182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.885762, 20.294415, 17.395754>,  <13.800951, 19.906599, 17.346706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.885762, 20.294415, 17.395754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082733, -0.142830, 0.986283,
		0.973755, -0.198975, -0.110497,
		0.212028, 0.969540, 0.122620,
		13.949370, 20.585278, 17.432539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.392761, 19.899017, 17.703056>,  <13.800951, 19.906599, 17.346706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.392761, 19.899017, 17.703056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.246940, 20.267178, 17.759577>,  <14.159447, 20.488073, 17.793489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.246940, 20.267178, 17.759577>,  <14.392761, 19.899017, 17.703056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.246940, 20.267178, 17.759577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224187, -0.060530, 0.972665,
		0.903792, 0.386268, -0.184275,
		-0.364554, 0.920399, 0.141303,
		14.137573, 20.543297, 17.801968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.935078, 20.334560, 17.987350>,  <14.392761, 19.899017, 17.703056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.935078, 20.334560, 17.987350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.582456, 20.497929, 18.082056>,  <14.370883, 20.595949, 18.138880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.582456, 20.497929, 18.082056>,  <14.935078, 20.334560, 17.987350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.582456, 20.497929, 18.082056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215518, -0.098037, 0.971566,
		0.420017, 0.907515, -0.001596,
		-0.881554, 0.408419, 0.236764,
		14.317989, 20.620455, 18.153086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.129874, 20.889408, 18.409794>,  <14.935078, 20.334560, 17.987350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.129874, 20.889408, 18.409794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.751372, 20.791424, 18.494263>,  <14.524271, 20.732634, 18.544945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.751372, 20.791424, 18.494263>,  <15.129874, 20.889408, 18.409794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.751372, 20.791424, 18.494263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190416, 0.105813, 0.975984,
		-0.261424, 0.963741, -0.053481,
		-0.946255, -0.244962, 0.211173,
		14.467496, 20.717936, 18.557615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.969625, 21.339949, 18.925196>,  <15.129874, 20.889408, 18.409794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.969625, 21.339949, 18.925196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.680560, 21.066269, 18.964441>,  <14.507121, 20.902061, 18.987989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.680560, 21.066269, 18.964441>,  <14.969625, 21.339949, 18.925196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.680560, 21.066269, 18.964441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121101, 0.014423, 0.992535,
		-0.680509, 0.729151, 0.072434,
		-0.722663, -0.684201, 0.098116,
		14.463761, 20.861008, 18.993876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.647390, 21.546507, 19.504950>,  <14.969625, 21.339949, 18.925196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.647390, 21.546507, 19.504950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.497687, 21.175743, 19.493835>,  <14.407866, 20.953285, 19.487167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.497687, 21.175743, 19.493835>,  <14.647390, 21.546507, 19.504950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.497687, 21.175743, 19.493835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035271, -0.044172, 0.998401,
		-0.926654, 0.372678, 0.049225,
		-0.374257, -0.926909, -0.027787,
		14.385410, 20.897671, 19.485498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.081638, 21.476046, 19.973467>,  <14.647390, 21.546507, 19.504950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.081638, 21.476046, 19.973467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.218606, 21.102837, 19.929251>,  <14.300787, 20.878912, 19.902721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.218606, 21.102837, 19.929251>,  <14.081638, 21.476046, 19.973467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.218606, 21.102837, 19.929251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109554, -0.077202, 0.990978,
		-0.933138, -0.351440, 0.075781,
		0.342419, -0.933022, -0.110542,
		14.321332, 20.822929, 19.896088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.791520, 21.245415, 20.512352>,  <14.081638, 21.476046, 19.973467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.791520, 21.245415, 20.512352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.068124, 20.968117, 20.431139>,  <14.234086, 20.801737, 20.382412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.068124, 20.968117, 20.431139>,  <13.791520, 21.245415, 20.512352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.068124, 20.968117, 20.431139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230252, -0.054874, 0.971583,
		-0.684688, -0.718608, 0.121676,
		0.691510, -0.693248, -0.203032,
		14.275577, 20.760143, 20.370230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.625941, 20.687592, 21.014919>,  <13.791520, 21.245415, 20.512352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.625941, 20.687592, 21.014919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.005116, 20.630253, 20.901171>,  <14.232621, 20.595850, 20.832922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.005116, 20.630253, 20.901171>,  <13.625941, 20.687592, 21.014919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.005116, 20.630253, 20.901171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263219, -0.149943, 0.953012,
		-0.179254, -0.978247, -0.104404,
		0.947936, -0.143350, -0.284372,
		14.289497, 20.587248, 20.815859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.821680, 20.154974, 21.346542>,  <13.625941, 20.687592, 21.014919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.821680, 20.154974, 21.346542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.162608, 20.343933, 21.256752>,  <14.367165, 20.457310, 21.202877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.162608, 20.343933, 21.256752>,  <13.821680, 20.154974, 21.346542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.162608, 20.343933, 21.256752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350542, -0.197427, 0.915502,
		0.388164, -0.858989, -0.333866,
		0.852320, 0.472399, -0.224478,
		14.418304, 20.485653, 21.189409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.336916, 19.684170, 21.511972>,  <13.821680, 20.154974, 21.346542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.336916, 19.684170, 21.511972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.495612, 20.050137, 21.541704>,  <14.590830, 20.269716, 21.559544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.495612, 20.050137, 21.541704>,  <14.336916, 19.684170, 21.511972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.495612, 20.050137, 21.541704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394893, -0.243214, 0.885949,
		0.828648, -0.322139, -0.457787,
		0.396739, 0.914917, 0.074328,
		14.614634, 20.324612, 21.564003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.048285, 19.526258, 21.658936>,  <14.336916, 19.684170, 21.511972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.048285, 19.526258, 21.658936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.936982, 19.897175, 21.759100>,  <14.870200, 20.119724, 21.819199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.936982, 19.897175, 21.759100>,  <15.048285, 19.526258, 21.658936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.936982, 19.897175, 21.759100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403316, -0.123813, 0.906646,
		0.871727, 0.353277, -0.339539,
		-0.278258, 0.927289, 0.250413,
		14.853505, 20.175362, 21.834225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.129826, 19.340508, 22.401815>,  <15.048285, 19.526258, 21.658936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.129826, 19.340508, 22.401815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.393809, 19.050888, 22.482019>,  <15.552199, 18.877115, 22.530142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.393809, 19.050888, 22.482019>,  <15.129826, 19.340508, 22.401815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.393809, 19.050888, 22.482019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177197, -0.109349, -0.978082,
		0.730106, 0.681024, 0.056134,
		0.659959, -0.724050, 0.200512,
		15.591797, 18.833673, 22.542173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.743699, 19.495373, 22.231430>,  <15.129826, 19.340508, 22.401815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.743699, 19.495373, 22.231430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.770385, 19.096809, 22.210575>,  <15.786396, 18.857672, 22.198061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.770385, 19.096809, 22.210575>,  <15.743699, 19.495373, 22.231430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.770385, 19.096809, 22.210575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179445, 0.063386, -0.981724,
		0.981503, 0.056139, 0.183030,
		0.066715, -0.996409, -0.052139,
		15.790400, 18.797886, 22.194933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.347145, 19.358141, 21.956917>,  <15.743699, 19.495373, 22.231430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.347145, 19.358141, 21.956917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.139423, 19.031746, 21.855337>,  <16.014791, 18.835909, 21.794390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.139423, 19.031746, 21.855337>,  <16.347145, 19.358141, 21.956917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.139423, 19.031746, 21.855337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398717, 0.031492, -0.916533,
		0.755877, -0.577211, 0.308995,
		-0.519302, -0.815988, -0.253948,
		15.983633, 18.786949, 21.779152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.854956, 18.949408, 21.524075>,  <16.347145, 19.358141, 21.956917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.854956, 18.949408, 21.524075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.492893, 18.804039, 21.435881>,  <16.275656, 18.716818, 21.382965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.492893, 18.804039, 21.435881>,  <16.854956, 18.949408, 21.524075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.492893, 18.804039, 21.435881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318119, -0.235119, -0.918433,
		0.281939, -0.901467, 0.328432,
		-0.905158, -0.363423, -0.220485,
		16.221346, 18.695013, 21.369736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.918421, 18.253967, 21.206549>,  <16.854956, 18.949408, 21.524075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.918421, 18.253967, 21.206549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.556507, 18.380859, 21.092894>,  <16.339359, 18.456995, 21.024700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.556507, 18.380859, 21.092894>,  <16.918421, 18.253967, 21.206549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.556507, 18.380859, 21.092894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223053, -0.215364, -0.950719,
		-0.362791, -0.923571, 0.124098,
		-0.904782, 0.317231, -0.284137,
		16.285072, 18.476028, 21.007652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.667084, 17.702171, 20.812809>,  <16.918421, 18.253967, 21.206549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.667084, 17.702171, 20.812809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.438095, 18.014950, 20.714144>,  <16.300703, 18.202616, 20.654945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.438095, 18.014950, 20.714144>,  <16.667084, 17.702171, 20.812809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.438095, 18.014950, 20.714144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135007, -0.206833, -0.969017,
		-0.808735, -0.588033, 0.012837,
		-0.572469, 0.781945, -0.246662,
		16.266354, 18.249533, 20.640144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.306162, 17.404112, 20.413845>,  <16.667084, 17.702171, 20.812809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.306162, 17.404112, 20.413845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.232288, 17.783005, 20.309046>,  <16.187965, 18.010340, 20.246166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.232288, 17.783005, 20.309046>,  <16.306162, 17.404112, 20.413845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.232288, 17.783005, 20.309046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005071, -0.265661, -0.964053,
		-0.982785, -0.179372, 0.044259,
		-0.184682, 0.947233, -0.261997,
		16.176884, 18.067175, 20.230446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.864842, 17.269962, 19.868011>,  <16.306162, 17.404112, 20.413845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.864842, 17.269962, 19.868011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.021976, 17.635521, 19.827070>,  <16.116257, 17.854856, 19.802505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.021976, 17.635521, 19.827070>,  <15.864842, 17.269962, 19.868011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.021976, 17.635521, 19.827070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180019, -0.032726, -0.983119,
		-0.901817, 0.404629, 0.151662,
		0.392835, 0.913895, -0.102354,
		16.139828, 17.909689, 19.796364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.453745, 17.701124, 19.321991>,  <15.864842, 17.269962, 19.868011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.453745, 17.701124, 19.321991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.803363, 17.895031, 19.309067>,  <16.013134, 18.011375, 19.301311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.803363, 17.895031, 19.309067>,  <15.453745, 17.701124, 19.321991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.803363, 17.895031, 19.309067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004945, -0.057629, -0.998326,
		-0.485819, 0.872742, -0.047973,
		0.874045, 0.484768, -0.032313,
		16.065577, 18.040461, 19.299374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.440928, 18.263409, 18.807777>,  <15.453745, 17.701124, 19.321991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.440928, 18.263409, 18.807777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.838431, 18.241100, 18.846430>,  <16.076933, 18.227716, 18.869621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.838431, 18.241100, 18.846430>,  <15.440928, 18.263409, 18.807777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.838431, 18.241100, 18.846430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097354, 0.010397, -0.995196,
		0.054497, 0.998390, 0.015762,
		0.993757, -0.055770, 0.096631,
		16.136559, 18.224369, 18.875420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.735593, 18.797968, 18.366869>,  <15.440928, 18.263409, 18.807777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.735593, 18.797968, 18.366869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.014702, 18.517979, 18.427731>,  <16.182167, 18.349985, 18.464247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.014702, 18.517979, 18.427731>,  <15.735593, 18.797968, 18.366869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.014702, 18.517979, 18.427731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006060, -0.218172, -0.975892,
		0.716293, 0.680029, -0.156477,
		0.697773, -0.699973, 0.152154,
		16.224033, 18.307987, 18.473377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.132956, 19.030754, 17.842173>,  <15.735593, 18.797968, 18.366869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.132956, 19.030754, 17.842173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.252724, 18.658733, 17.927353>,  <16.324585, 18.435520, 17.978462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.252724, 18.658733, 17.927353>,  <16.132956, 19.030754, 17.842173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.252724, 18.658733, 17.927353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064596, -0.242440, -0.968014,
		0.951932, 0.276087, -0.132669,
		0.299421, -0.930053, 0.212952,
		16.342550, 18.379717, 17.991238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.690020, 18.845203, 17.467184>,  <16.132956, 19.030754, 17.842173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.690020, 18.845203, 17.467184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.479927, 18.515068, 17.550077>,  <16.353870, 18.316986, 17.599813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.479927, 18.515068, 17.550077>,  <16.690020, 18.845203, 17.467184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.479927, 18.515068, 17.550077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150454, -0.149622, -0.977229,
		0.837552, -0.544452, -0.045590,
		-0.525233, -0.825340, 0.207232,
		16.322357, 18.267466, 17.612247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.918596, 18.266115, 17.069574>,  <16.690020, 18.845203, 17.467184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.918596, 18.266115, 17.069574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.538109, 18.188362, 17.165405>,  <16.309816, 18.141710, 17.222904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.538109, 18.188362, 17.165405>,  <16.918596, 18.266115, 17.069574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.538109, 18.188362, 17.165405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225507, -0.091885, -0.969899,
		0.210545, -0.976613, 0.043568,
		-0.951219, -0.194383, 0.239579,
		16.252743, 18.130047, 17.237280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.706999, 17.647310, 16.658430>,  <16.918596, 18.266115, 17.069574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.706999, 17.647310, 16.658430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.369152, 17.838821, 16.754255>,  <16.166445, 17.953728, 16.811750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.369152, 17.838821, 16.754255>,  <16.706999, 17.647310, 16.658430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.369152, 17.838821, 16.754255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244555, 0.053025, -0.968184,
		-0.476251, -0.876332, 0.072302,
		-0.844617, 0.478781, 0.239565,
		16.115767, 17.982456, 16.826124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.104404, 17.292686, 16.342049>,  <16.706999, 17.647310, 16.658430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.104404, 17.292686, 16.342049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.995984, 17.673546, 16.398531>,  <15.930931, 17.902061, 16.432421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.995984, 17.673546, 16.398531>,  <16.104404, 17.292686, 16.342049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.995984, 17.673546, 16.398531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269286, 0.065833, -0.960807,
		-0.924130, -0.298454, 0.238557,
		-0.271052, 0.952151, 0.141208,
		15.914668, 17.959190, 16.440893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.443040, 17.297503, 16.110622>,  <16.104404, 17.292686, 16.342049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.443040, 17.297503, 16.110622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.581000, 17.672894, 16.117622>,  <15.663776, 17.898129, 16.121822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.581000, 17.672894, 16.117622>,  <15.443040, 17.297503, 16.110622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.581000, 17.672894, 16.117622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239850, 0.106143, -0.964990,
		-0.907477, 0.328629, 0.261702,
		0.344902, 0.938476, 0.017500,
		15.684471, 17.954435, 16.122873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.990366, 17.619967, 15.793585>,  <15.443040, 17.297503, 16.110622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.990366, 17.619967, 15.793585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.298188, 17.872566, 15.755655>,  <15.482882, 18.024126, 15.732898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.298188, 17.872566, 15.755655>,  <14.990366, 17.619967, 15.793585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.298188, 17.872566, 15.755655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177311, 0.068658, -0.981757,
		-0.613468, 0.772331, 0.164808,
		0.769557, 0.631499, -0.094823,
		15.529056, 18.062016, 15.727208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.828916, 18.013577, 15.210937>,  <14.990366, 17.619967, 15.793585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.828916, 18.013577, 15.210937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.222631, 18.081936, 15.228699>,  <15.458859, 18.122952, 15.239356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.222631, 18.081936, 15.228699>,  <14.828916, 18.013577, 15.210937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.222631, 18.081936, 15.228699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034376, 0.061204, -0.997533,
		-0.173197, 0.983386, 0.054367,
		0.984287, 0.170900, 0.044405,
		15.517917, 18.133205, 15.242021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.915773, 18.580587, 14.663957>,  <14.828916, 18.013577, 15.210937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.915773, 18.580587, 14.663957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.272954, 18.415127, 14.734980>,  <15.487263, 18.315849, 14.777594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.272954, 18.415127, 14.734980>,  <14.915773, 18.580587, 14.663957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.272954, 18.415127, 14.734980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162161, -0.072366, -0.984107,
		0.419928, 0.907554, 0.002459,
		0.892952, -0.413653, 0.177558,
		15.540840, 18.291031, 14.788247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.446289, 18.935314, 14.164843>,  <14.915773, 18.580587, 14.663957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.446289, 18.935314, 14.164843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.587090, 18.580719, 14.284994>,  <15.671572, 18.367962, 14.357085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.587090, 18.580719, 14.284994>,  <15.446289, 18.935314, 14.164843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.587090, 18.580719, 14.284994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324247, -0.185556, -0.927595,
		0.878041, 0.423915, 0.222125,
		0.352005, -0.886490, 0.300379,
		15.692692, 18.314772, 14.375108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.091890, 19.022564, 14.026890>,  <15.446289, 18.935314, 14.164843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.091890, 19.022564, 14.026890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.997474, 18.633877, 14.029522>,  <15.940824, 18.400663, 14.031101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.997474, 18.633877, 14.029522>,  <16.091890, 19.022564, 14.026890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.997474, 18.633877, 14.029522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172382, -0.048536, -0.983834,
		0.956331, -0.231093, 0.178963,
		-0.236044, -0.971721, 0.006580,
		15.926661, 18.342361, 14.031496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.605705, 18.637890, 13.479477>,  <16.091890, 19.022564, 14.026890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.605705, 18.637890, 13.479477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.305447, 18.378006, 13.527493>,  <16.125292, 18.222076, 13.556302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.305447, 18.378006, 13.527493>,  <16.605705, 18.637890, 13.479477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.305447, 18.378006, 13.527493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113205, -0.305474, -0.945447,
		0.650934, -0.696107, 0.302853,
		-0.750646, -0.649709, 0.120040,
		16.080254, 18.183094, 13.563504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.793352, 18.058052, 13.044858>,  <16.605705, 18.637890, 13.479477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.793352, 18.058052, 13.044858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.406693, 17.984692, 13.116364>,  <16.174698, 17.940676, 13.159266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.406693, 17.984692, 13.116364>,  <16.793352, 18.058052, 13.044858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.406693, 17.984692, 13.116364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096364, -0.386247, -0.917348,
		0.237290, -0.903979, 0.355691,
		-0.966648, -0.183401, 0.178764,
		16.116697, 17.929670, 13.169992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.600210, 17.301386, 12.824967>,  <16.793352, 18.058052, 13.044858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.600210, 17.301386, 12.824967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.280853, 17.541840, 12.811054>,  <16.089239, 17.686111, 12.802707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.280853, 17.541840, 12.811054>,  <16.600210, 17.301386, 12.824967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.280853, 17.541840, 12.811054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220570, -0.345722, -0.912044,
		-0.560285, -0.720497, 0.408614,
		-0.798392, 0.601133, -0.034783,
		16.041336, 17.722179, 12.800619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.098011, 16.884167, 12.543246>,  <16.600210, 17.301386, 12.824967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.098011, 16.884167, 12.543246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.014729, 17.268311, 12.469105>,  <15.964759, 17.498796, 12.424620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.014729, 17.268311, 12.469105>,  <16.098011, 16.884167, 12.543246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.014729, 17.268311, 12.469105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215917, -0.229960, -0.948946,
		-0.953955, -0.157556, 0.255238,
		-0.208207, 0.960362, -0.185353,
		15.952267, 17.556419, 12.413499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.583421, 16.871469, 12.048564>,  <16.098011, 16.884167, 12.543246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.583421, 16.871469, 12.048564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.697490, 17.252022, 12.001997>,  <15.765931, 17.480352, 11.974057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.697490, 17.252022, 12.001997>,  <15.583421, 16.871469, 12.048564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.697490, 17.252022, 12.001997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114142, -0.086888, -0.989658,
		-0.951656, 0.295511, 0.083814,
		0.285173, 0.951380, -0.116418,
		15.783042, 17.537436, 11.967072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.176065, 17.033499, 11.567421>,  <15.583421, 16.871469, 12.048564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.176065, 17.033499, 11.567421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.457694, 17.317368, 11.557239>,  <15.626671, 17.487690, 11.551129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.457694, 17.317368, 11.557239>,  <15.176065, 17.033499, 11.567421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.457694, 17.317368, 11.557239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148952, -0.182636, -0.971832,
		-0.694332, 0.680447, -0.234296,
		0.704071, 0.709673, -0.025457,
		15.668916, 17.530270, 11.549602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.962266, 17.497549, 11.053270>,  <15.176065, 17.033499, 11.567421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.962266, 17.497549, 11.053270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.352130, 17.582371, 11.081751>,  <15.586048, 17.633265, 11.098839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.352130, 17.582371, 11.081751>,  <14.962266, 17.497549, 11.053270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.352130, 17.582371, 11.081751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111962, -0.186912, -0.975976,
		-0.193651, 0.959217, -0.205918,
		0.974661, 0.212054, 0.071201,
		15.644528, 17.645987, 11.103111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.173981, 17.960890, 10.440520>,  <14.962266, 17.497549, 11.053270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.173981, 17.960890, 10.440520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.498292, 17.768513, 10.573987>,  <15.692879, 17.653088, 10.654067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.498292, 17.768513, 10.573987>,  <15.173981, 17.960890, 10.440520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.498292, 17.768513, 10.573987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291476, -0.162619, -0.942654,
		0.507621, 0.861540, 0.008335,
		0.810779, -0.480941, 0.333667,
		15.741526, 17.624231, 10.674088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.722409, 18.207218, 9.987800>,  <15.173981, 17.960890, 10.440520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.722409, 18.207218, 9.987800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.871318, 17.874756, 10.153013>,  <15.960663, 17.675280, 10.252141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.871318, 17.874756, 10.153013>,  <15.722409, 18.207218, 9.987800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.871318, 17.874756, 10.153013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392871, -0.262067, -0.881461,
		0.840873, 0.490411, 0.228976,
		0.372271, -0.831155, 0.413033,
		15.982999, 17.625410, 10.276923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.512182, 18.186726, 9.838451>,  <15.722409, 18.207218, 9.987800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.512182, 18.186726, 9.838451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.351139, 17.824017, 9.888527>,  <16.254513, 17.606392, 9.918572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.351139, 17.824017, 9.888527>,  <16.512182, 18.186726, 9.838451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.351139, 17.824017, 9.888527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349264, -0.278591, -0.894652,
		0.846121, -0.316471, 0.428865,
		-0.402609, -0.906771, 0.125189,
		16.230356, 17.551985, 9.926084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.779024, 17.861494, 9.206871>,  <16.512182, 18.186726, 9.838451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.779024, 17.861494, 9.206871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.578537, 17.558624, 9.374425>,  <16.458244, 17.376902, 9.474957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.578537, 17.558624, 9.374425>,  <16.779024, 17.861494, 9.206871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.578537, 17.558624, 9.374425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274412, -0.598177, -0.752916,
		0.820658, -0.262427, 0.507594,
		-0.501217, -0.757177, 0.418886,
		16.428171, 17.331470, 9.500091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.153433, 17.238539, 9.183873>,  <16.779024, 17.861494, 9.206871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.153433, 17.238539, 9.183873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.772118, 17.117874, 9.190145>,  <16.543329, 17.045475, 9.193909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.772118, 17.117874, 9.190145>,  <17.153433, 17.238539, 9.183873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.772118, 17.117874, 9.190145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181059, -0.612181, -0.769709,
		0.241791, -0.730913, 0.638203,
		-0.953286, -0.301662, 0.015681,
		16.486132, 17.027376, 9.194850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.259726, 16.519339, 9.146291>,  <17.153433, 17.238539, 9.183873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.259726, 16.519339, 9.146291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.879185, 16.589329, 9.044850>,  <16.650860, 16.631323, 8.983986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.879185, 16.589329, 9.044850>,  <17.259726, 16.519339, 9.146291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.879185, 16.589329, 9.044850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059679, -0.702859, -0.708822,
		-0.302270, -0.689474, 0.658224,
		-0.951352, 0.174973, -0.253600,
		16.593779, 16.641821, 8.968770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.968374, 15.933972, 9.272389>,  <17.259726, 16.519339, 9.146291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.968374, 15.933972, 9.272389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.748501, 16.127151, 8.999740>,  <16.616577, 16.243059, 8.836150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.748501, 16.127151, 8.999740>,  <16.968374, 15.933972, 9.272389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.748501, 16.127151, 8.999740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022456, -0.807113, -0.589969,
		-0.835075, -0.339600, 0.432807,
		-0.549678, 0.482949, -0.681626,
		16.583597, 16.272036, 8.795252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.489046, 15.393263, 8.981366>,  <16.968374, 15.933972, 9.272389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.489046, 15.393263, 8.981366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.527870, 15.697678, 8.724803>,  <16.551165, 15.880326, 8.570866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.527870, 15.697678, 8.724803>,  <16.489046, 15.393263, 8.981366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.527870, 15.697678, 8.724803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251217, -0.642316, -0.724100,
		-0.963052, -0.090851, -0.253529,
		0.097060, 0.761036, -0.641407,
		16.556988, 15.925988, 8.532381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.144236, 15.192180, 8.423625>,  <16.489046, 15.393263, 8.981366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.144236, 15.192180, 8.423625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.356239, 15.497650, 8.276172>,  <16.483440, 15.680932, 8.187699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.356239, 15.497650, 8.276172>,  <16.144236, 15.192180, 8.423625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.356239, 15.497650, 8.276172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074226, -0.474825, -0.876945,
		-0.844738, 0.437425, -0.308345,
		0.530008, 0.763676, -0.368634,
		16.515242, 15.726753, 8.165582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.240393, 14.962742, 7.710705>,  <16.144236, 15.192180, 8.423625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.240393, 14.962742, 7.710705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.478600, 15.284077, 7.709605>,  <16.621525, 15.476877, 7.708945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.478600, 15.284077, 7.709605>,  <16.240393, 14.962742, 7.710705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.478600, 15.284077, 7.709605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442602, -0.330955, -0.833410,
		-0.670419, 0.495094, -0.552648,
		0.595518, 0.803337, -0.002749,
		16.657255, 15.525078, 7.708780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.192163, 15.320428, 7.036574>,  <16.240393, 14.962742, 7.710705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.192163, 15.320428, 7.036574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.539322, 15.404232, 7.216735>,  <16.747618, 15.454515, 7.324831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.539322, 15.404232, 7.216735>,  <16.192163, 15.320428, 7.036574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.539322, 15.404232, 7.216735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496735, -0.372384, -0.783955,
		0.003475, 0.904121, -0.427262,
		0.867895, 0.209511, 0.450402,
		16.799690, 15.467086, 7.351856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.663090, 15.732807, 6.549268>,  <16.192163, 15.320428, 7.036574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.663090, 15.732807, 6.549268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.892502, 15.559734, 6.827506>,  <17.030149, 15.455891, 6.994449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.892502, 15.559734, 6.827506>,  <16.663090, 15.732807, 6.549268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.892502, 15.559734, 6.827506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695415, -0.191639, -0.692584,
		0.432971, 0.880944, 0.190983,
		0.573528, -0.432681, 0.695595,
		17.064560, 15.429930, 7.036185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.319221, 15.919266, 6.497676>,  <16.663090, 15.732807, 6.549268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.319221, 15.919266, 6.497676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.332886, 15.553467, 6.658936>,  <17.341084, 15.333987, 6.755691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.332886, 15.553467, 6.658936>,  <17.319221, 15.919266, 6.497676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.332886, 15.553467, 6.658936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583420, -0.309271, -0.750981,
		0.811452, 0.260859, 0.522971,
		0.034161, -0.914497, 0.403149,
		17.343134, 15.279118, 6.779880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.909298, 15.644140, 6.288973>,  <17.319221, 15.919266, 6.497676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.909298, 15.644140, 6.288973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.710468, 15.318600, 6.409346>,  <17.591169, 15.123275, 6.481569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.710468, 15.318600, 6.409346>,  <17.909298, 15.644140, 6.288973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.710468, 15.318600, 6.409346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386960, -0.518333, -0.762622,
		0.776645, -0.262633, 0.572579,
		-0.497076, -0.813852, 0.300932,
		17.561346, 15.074444, 6.499625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.400934, 15.111400, 6.260239>,  <17.909298, 15.644140, 6.288973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.400934, 15.111400, 6.260239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.032726, 14.965302, 6.204762>,  <17.811802, 14.877643, 6.171475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.032726, 14.965302, 6.204762>,  <18.400934, 15.111400, 6.260239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.032726, 14.965302, 6.204762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349749, -0.612183, -0.709160,
		0.174112, -0.701305, 0.691272,
		-0.920522, -0.365245, -0.138693,
		17.756569, 14.855728, 6.163154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.553583, 14.360255, 6.180837>,  <18.400934, 15.111400, 6.260239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.553583, 14.360255, 6.180837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.214092, 14.502831, 6.024573>,  <18.010397, 14.588376, 5.930815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.214092, 14.502831, 6.024573>,  <18.553583, 14.360255, 6.180837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.214092, 14.502831, 6.024573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234278, -0.408853, -0.882017,
		-0.474109, -0.840113, 0.263498,
		-0.848726, 0.356440, -0.390661,
		17.959475, 14.609762, 5.907375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.065428, 13.813100, 6.008308>,  <18.553583, 14.360255, 6.180837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.065428, 13.813100, 6.008308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.080681, 14.143112, 5.782788>,  <18.089832, 14.341120, 5.647477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.080681, 14.143112, 5.782788>,  <18.065428, 13.813100, 6.008308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.080681, 14.143112, 5.782788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130235, -0.563500, -0.815786,
		-0.990750, -0.042320, -0.128934,
		0.038131, 0.825031, -0.563799,
		18.092119, 14.390621, 5.613648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.858700, 13.612972, 5.312315>,  <18.065428, 13.813100, 6.008308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.858700, 13.612972, 5.312315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.016991, 13.970444, 5.227711>,  <18.111965, 14.184927, 5.176948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.016991, 13.970444, 5.227711>,  <17.858700, 13.612972, 5.312315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.016991, 13.970444, 5.227711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298578, -0.343000, -0.890619,
		-0.868476, 0.289290, -0.402568,
		0.395728, 0.893679, -0.211512,
		18.135710, 14.238547, 5.164257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.562082, 13.942453, 4.643772>,  <17.858700, 13.612972, 5.312315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.562082, 13.942453, 4.643772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.948673, 14.026733, 4.702457>,  <18.180628, 14.077301, 4.737668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.948673, 14.026733, 4.702457>,  <17.562082, 13.942453, 4.643772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.948673, 14.026733, 4.702457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230555, -0.460787, -0.857041,
		-0.112976, 0.862137, -0.493919,
		0.966479, 0.210700, 0.146713,
		18.238617, 14.089944, 4.746471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.935589, 14.483537, 4.227609>,  <17.562082, 13.942453, 4.643772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.935589, 14.483537, 4.227609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.210537, 14.217571, 4.344509>,  <18.375505, 14.057992, 4.414649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.210537, 14.217571, 4.344509>,  <17.935589, 14.483537, 4.227609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.210537, 14.217571, 4.344509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059638, -0.349351, -0.935092,
		0.723855, 0.660184, -0.200480,
		0.687370, -0.664915, 0.292251,
		18.416748, 14.018097, 4.432184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.633339, 14.550800, 3.865550>,  <17.935589, 14.483537, 4.227609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.633339, 14.550800, 3.865550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.502666, 14.186317, 3.965932>,  <18.424263, 13.967628, 4.026162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.502666, 14.186317, 3.965932>,  <18.633339, 14.550800, 3.865550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.502666, 14.186317, 3.965932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090126, -0.234282, -0.967982,
		0.940828, -0.338839, -0.005589,
		-0.326681, -0.911208, 0.250957,
		18.404663, 13.912955, 4.041220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.092110, 14.127926, 3.495285>,  <18.633339, 14.550800, 3.865550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.092110, 14.127926, 3.495285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.738281, 13.950302, 3.552337>,  <18.525984, 13.843728, 3.586569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.738281, 13.950302, 3.552337>,  <19.092110, 14.127926, 3.495285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.738281, 13.950302, 3.552337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001362, -0.303350, -0.952878,
		0.466403, -0.843083, 0.267730,
		-0.884571, -0.444060, 0.142632,
		18.472910, 13.817084, 3.595127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.133965, 13.337747, 3.477985>,  <19.092110, 14.127926, 3.495285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.133965, 13.337747, 3.477985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.806740, 13.514469, 3.330697>,  <18.610405, 13.620502, 3.242324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.806740, 13.514469, 3.330697>,  <19.133965, 13.337747, 3.477985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.806740, 13.514469, 3.330697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110175, -0.507994, -0.854285,
		-0.564484, -0.739424, 0.366893,
		-0.818059, 0.441808, -0.368220,
		18.561321, 13.647011, 3.220231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.632320, 12.814277, 3.460299>,  <19.133965, 13.337747, 3.477985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.632320, 12.814277, 3.460299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.639427, 13.083492, 3.164541>,  <18.643692, 13.245022, 2.987087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.639427, 13.083492, 3.164541>,  <18.632320, 12.814277, 3.460299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.639427, 13.083492, 3.164541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096832, -0.734875, -0.671254,
		-0.995142, 0.083522, 0.052115,
		0.017766, 0.673040, -0.739393,
		18.644756, 13.285404, 2.942723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.015375, 12.823498, 3.025216>,  <18.632320, 12.814277, 3.460299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.015375, 12.823498, 3.025216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.333183, 12.935307, 2.809585>,  <18.523869, 13.002392, 2.680207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.333183, 12.935307, 2.809585>,  <18.015375, 12.823498, 3.025216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.333183, 12.935307, 2.809585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117723, -0.800010, -0.588324,
		-0.595716, 0.530898, -0.602719,
		0.794521, 0.279521, -0.539077,
		18.571539, 13.019163, 2.647862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.927654, 12.737552, 2.248907>,  <18.015375, 12.823498, 3.025216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.927654, 12.737552, 2.248907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.309822, 12.693405, 2.358449>,  <18.539122, 12.666917, 2.424175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.309822, 12.693405, 2.358449>,  <17.927654, 12.737552, 2.248907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.309822, 12.693405, 2.358449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063994, -0.828060, -0.556975,
		0.288241, 0.549668, -0.784080,
		0.955417, -0.110367, 0.273856,
		18.596447, 12.660295, 2.440606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.291092, 12.693278, 1.652844>,  <17.927654, 12.737552, 2.248907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.291092, 12.693278, 1.652844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.468834, 12.493706, 1.950465>,  <18.575480, 12.373962, 2.129037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.468834, 12.493706, 1.950465>,  <18.291092, 12.693278, 1.652844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.468834, 12.493706, 1.950465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096069, -0.852304, -0.514148,
		0.890684, 0.156984, -0.426658,
		0.444356, -0.498932, 0.744053,
		18.602140, 12.344026, 2.173681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.000364, 12.312278, 1.699010>,  <18.291092, 12.693278, 1.652844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.000364, 12.312278, 1.699010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.704906, 12.161400, 1.922483>,  <18.527632, 12.070873, 2.056567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.704906, 12.161400, 1.922483>,  <19.000364, 12.312278, 1.699010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.704906, 12.161400, 1.922483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070320, -0.781153, -0.620367,
		0.670417, -0.497517, 0.550470,
		-0.738645, -0.377195, 0.558684,
		18.483313, 12.048242, 2.090088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.244629, 11.679378, 1.945251>,  <19.000364, 12.312278, 1.699010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.244629, 11.679378, 1.945251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.844837, 11.674526, 1.933264>,  <18.604963, 11.671616, 1.926072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.844837, 11.674526, 1.933264>,  <19.244629, 11.679378, 1.945251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.844837, 11.674526, 1.933264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026768, -0.830193, -0.556832,
		-0.018124, -0.557343, 0.830084,
		-0.999477, -0.012128, -0.029965,
		18.544994, 11.670888, 1.924275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.908262, 11.447300, 1.811791>,  <19.244629, 11.679378, 1.945251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.908262, 11.447300, 1.811791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.065933, 11.306114, 2.151212>,  <20.160536, 11.221403, 2.354865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.065933, 11.306114, 2.151212>,  <19.908262, 11.447300, 1.811791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.065933, 11.306114, 2.151212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519811, 0.847056, 0.110875,
		-0.757906, 0.397382, 0.517364,
		0.394176, -0.352964, 0.848553,
		20.184187, 11.200225, 2.405778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.641977, 11.757194, 1.640966>,  <19.908262, 11.447300, 1.811791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.641977, 11.757194, 1.640966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.556217, 12.034985, 1.366235>,  <20.504761, 12.201659, 1.201397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.556217, 12.034985, 1.366235>,  <20.641977, 11.757194, 1.640966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.556217, 12.034985, 1.366235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289966, -0.626223, -0.723716,
		-0.932712, -0.354322, -0.067111,
		-0.214402, 0.694479, -0.686827,
		20.491896, 12.243328, 1.160187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.367968, 11.521860, 1.034328>,  <20.641977, 11.757194, 1.640966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.367968, 11.521860, 1.034328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.517269, 11.860786, 0.883205>,  <20.606850, 12.064142, 0.792532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.517269, 11.860786, 0.883205>,  <20.367968, 11.521860, 1.034328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.517269, 11.860786, 0.883205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490123, -0.525867, -0.695157,
		-0.787694, 0.074299, -0.611570,
		0.373254, 0.847316, -0.377807,
		20.629246, 12.114981, 0.769863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.715658, 11.346215, 0.479741>,  <20.367968, 11.521860, 1.034328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.715658, 11.346215, 0.479741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.831009, 11.727879, 0.511797>,  <20.900219, 11.956877, 0.531030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.831009, 11.727879, 0.511797>,  <20.715658, 11.346215, 0.479741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.831009, 11.727879, 0.511797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777758, -0.184599, -0.600846,
		-0.558508, 0.235598, -0.795338,
		0.288377, 0.954157, 0.080138,
		20.917522, 12.014126, 0.535838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.620806, 11.580042, -0.146554>,  <20.715658, 11.346215, 0.479741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.620806, 11.580042, -0.146554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.929089, 11.735668, 0.055293>,  <21.114058, 11.829043, 0.176402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.929089, 11.735668, 0.055293>,  <20.620806, 11.580042, -0.146554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.929089, 11.735668, 0.055293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632066, -0.366576, -0.682726,
		-0.080644, 0.845133, -0.528438,
		0.770707, 0.389065, 0.504618,
		21.160301, 11.852387, 0.206679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.088434, 12.106206, -0.470017>,  <20.620806, 11.580042, -0.146554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.088434, 12.106206, -0.470017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.271851, 11.853088, -0.220438>,  <21.381901, 11.701218, -0.070690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.271851, 11.853088, -0.220438>,  <21.088434, 12.106206, -0.470017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.271851, 11.853088, -0.220438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210647, -0.604707, -0.768086,
		0.863347, 0.483632, -0.143986,
		0.458540, -0.632795, 0.623948,
		21.409412, 11.663250, -0.033254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.907879, 11.830487, -0.610137>,  <21.088434, 12.106206, -0.470017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.907879, 11.830487, -0.610137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.596554, 11.626427, -0.463727>,  <21.409760, 11.503990, -0.375881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.596554, 11.626427, -0.463727>,  <21.907879, 11.830487, -0.610137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.596554, 11.626427, -0.463727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151798, -0.412776, -0.898094,
		0.609251, -0.754560, 0.243828,
		-0.778313, -0.510152, 0.366025,
		21.363060, 11.473381, -0.353919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.923618, 11.250736, -0.802849>,  <21.907879, 11.830487, -0.610137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.923618, 11.250736, -0.802849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.525963, 11.248699, -0.759660>,  <21.287369, 11.247477, -0.733746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.525963, 11.248699, -0.759660>,  <21.923618, 11.250736, -0.802849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.525963, 11.248699, -0.759660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093726, -0.457014, -0.884508,
		0.053851, -0.889445, 0.453858,
		-0.994141, -0.005093, 0.107975,
		21.227720, 11.247171, -0.727267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.589308, 10.606253, -0.785594>,  <21.923618, 11.250736, -0.802849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.589308, 10.606253, -0.785594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.344837, 10.885365, -0.935030>,  <21.198154, 11.052832, -1.024691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.344837, 10.885365, -0.935030>,  <21.589308, 10.606253, -0.785594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.344837, 10.885365, -0.935030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086586, -0.528114, -0.844747,
		-0.786746, -0.483940, 0.383188,
		-0.611174, 0.697780, -0.373589,
		21.161484, 11.094698, -1.047107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.133801, 10.241711, -1.109367>,  <21.589308, 10.606253, -0.785594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.133801, 10.241711, -1.109367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.215607, 10.606430, -1.251800>,  <21.264690, 10.825262, -1.337260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.215607, 10.606430, -1.251800>,  <21.133801, 10.241711, -1.109367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.215607, 10.606430, -1.251800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103604, -0.381892, -0.918381,
		-0.973365, 0.150931, -0.172569,
		0.204515, 0.911799, -0.356084,
		21.276960, 10.879970, -1.358625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.632111, 10.430029, -1.601561>,  <21.133801, 10.241711, -1.109367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.632111, 10.430029, -1.601561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.000278, 10.581154, -1.641728>,  <21.221180, 10.671829, -1.665828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.000278, 10.581154, -1.641728>,  <20.632111, 10.430029, -1.601561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.000278, 10.581154, -1.641728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136193, -0.550672, -0.823536,
		-0.366439, 0.744323, -0.558306,
		0.920421, 0.377813, -0.100416,
		21.276405, 10.694498, -1.671852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.740858, 10.597247, -2.337114>,  <20.632111, 10.430029, -1.601561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.740858, 10.597247, -2.337114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.083748, 10.518059, -2.146968>,  <21.289482, 10.470546, -2.032880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.083748, 10.518059, -2.146968>,  <20.740858, 10.597247, -2.337114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.083748, 10.518059, -2.146968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249263, -0.648255, -0.719467,
		0.450592, 0.735237, -0.506353,
		0.857225, -0.197971, 0.475366,
		21.340916, 10.458668, -2.004358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.446404, 10.653664, -2.739342>,  <20.740858, 10.597247, -2.337114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.446404, 10.653664, -2.739342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.502625, 10.389935, -2.443900>,  <21.536358, 10.231697, -2.266634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.502625, 10.389935, -2.443900>,  <21.446404, 10.653664, -2.739342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.502625, 10.389935, -2.443900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610223, -0.529779, -0.589035,
		0.779662, 0.533504, 0.327872,
		0.140553, -0.659324, 0.738605,
		21.544790, 10.192138, -2.222318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.229076, 10.436220, -2.502398>,  <21.446404, 10.653664, -2.739342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.229076, 10.436220, -2.502398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.977169, 10.135033, -2.426054>,  <21.826025, 9.954320, -2.380247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.977169, 10.135033, -2.426054>,  <22.229076, 10.436220, -2.502398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.977169, 10.135033, -2.426054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536866, -0.599494, -0.593618,
		0.561397, -0.271375, 0.781786,
		-0.629769, -0.752969, 0.190862,
		21.788239, 9.909142, -2.368795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.660852, 9.953557, -2.263076>,  <22.229076, 10.436220, -2.502398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.660852, 9.953557, -2.263076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.328598, 9.816414, -2.438571>,  <22.129246, 9.734128, -2.543869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.328598, 9.816414, -2.438571>,  <22.660852, 9.953557, -2.263076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.328598, 9.816414, -2.438571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555342, -0.567388, -0.608002,
		-0.040478, -0.748679, 0.661696,
		-0.830636, -0.342857, -0.438739,
		22.079407, 9.713556, -2.570193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.873329, 10.608622, -1.822757>,  <22.660852, 9.953557, -2.263076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.873329, 10.608622, -1.822757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.646713, 10.870182, -1.622179>,  <22.510744, 11.027119, -1.501832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.646713, 10.870182, -1.622179>,  <22.873329, 10.608622, -1.822757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.646713, 10.870182, -1.622179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804192, 0.306003, 0.509546,
		0.179749, 0.691936, -0.699224,
		-0.566539, 0.653901, 0.501446,
		22.476751, 11.066352, -1.471745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.268009, 11.299306, -1.714171>,  <22.873329, 10.608622, -1.822757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.268009, 11.299306, -1.714171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.999622, 11.234814, -1.424673>,  <22.838591, 11.196118, -1.250975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.999622, 11.234814, -1.424673>,  <23.268009, 11.299306, -1.714171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.999622, 11.234814, -1.424673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676301, 0.267109, 0.686490,
		-0.304002, 0.950083, -0.070182,
		-0.670969, -0.161230, 0.723744,
		22.798332, 11.186444, -1.207550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<20.539972, 18.019325, 17.346729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.708286, 18.377934, 17.291309>,  <20.809275, 18.593098, 17.258057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.708286, 18.377934, 17.291309>,  <20.539972, 18.019325, 17.346729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.708286, 18.377934, 17.291309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195337, -0.059603, -0.978923,
		-0.885881, 0.438979, 0.150043,
		0.420784, 0.896518, -0.138550,
		20.834522, 18.646889, 17.249744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.055439, 18.236418, 16.885748>,  <20.539972, 18.019325, 17.346729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.055439, 18.236418, 16.885748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.380787, 18.465996, 16.847761>,  <20.575994, 18.603743, 16.824970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.380787, 18.465996, 16.847761>,  <20.055439, 18.236418, 16.885748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.380787, 18.465996, 16.847761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176382, 0.087743, -0.980403,
		-0.554365, 0.814179, 0.172601,
		0.813369, 0.573945, -0.094965,
		20.624798, 18.638180, 16.819271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.934813, 18.780247, 16.432703>,  <20.055439, 18.236418, 16.885748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.934813, 18.780247, 16.432703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.334534, 18.767590, 16.424732>,  <20.574366, 18.759995, 16.419950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.334534, 18.767590, 16.424732>,  <19.934813, 18.780247, 16.432703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.334534, 18.767590, 16.424732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014628, 0.159561, -0.987080,
		0.034414, 0.986681, 0.158987,
		0.999301, -0.031643, -0.019925,
		20.634323, 18.758097, 16.418755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.102764, 19.151003, 15.882114>,  <19.934813, 18.780247, 16.432703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.102764, 19.151003, 15.882114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.460861, 18.992283, 15.963200>,  <20.675720, 18.897051, 16.011850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.460861, 18.992283, 15.963200>,  <20.102764, 19.151003, 15.882114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.460861, 18.992283, 15.963200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255141, 0.083525, -0.963289,
		0.365300, 0.914098, 0.176015,
		0.895242, -0.396798, 0.202713,
		20.729433, 18.873243, 16.024014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.598370, 19.626478, 15.572631>,  <20.102764, 19.151003, 15.882114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.598370, 19.626478, 15.572631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.755516, 19.259235, 15.593567>,  <20.849804, 19.038891, 15.606129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.755516, 19.259235, 15.593567>,  <20.598370, 19.626478, 15.572631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.755516, 19.259235, 15.593567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280747, 0.065547, -0.957541,
		0.875693, 0.390878, 0.283507,
		0.392865, -0.918105, 0.052339,
		20.873375, 18.983803, 15.609268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.114529, 19.715403, 15.177052>,  <20.598370, 19.626478, 15.572631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.114529, 19.715403, 15.177052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.058456, 19.320328, 15.204826>,  <21.024813, 19.083282, 15.221491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.058456, 19.320328, 15.204826>,  <21.114529, 19.715403, 15.177052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.058456, 19.320328, 15.204826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134924, -0.088530, -0.986893,
		0.980890, -0.128975, 0.145673,
		-0.140181, -0.987688, 0.069437,
		21.016401, 19.024021, 15.225657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.544008, 19.460104, 14.676075>,  <21.114529, 19.715403, 15.177052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.544008, 19.460104, 14.676075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.287422, 19.169212, 14.773779>,  <21.133471, 18.994678, 14.832401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.287422, 19.169212, 14.773779>,  <21.544008, 19.460104, 14.676075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.287422, 19.169212, 14.773779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100311, -0.236153, -0.966524,
		0.760567, -0.644493, 0.078534,
		-0.641464, -0.727228, 0.244260,
		21.094982, 18.951044, 14.847057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.816557, 18.783863, 14.329853>,  <21.544008, 19.460104, 14.676075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.816557, 18.783863, 14.329853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.423733, 18.749992, 14.397245>,  <21.188038, 18.729670, 14.437681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.423733, 18.749992, 14.397245>,  <21.816557, 18.783863, 14.329853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.423733, 18.749992, 14.397245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155546, -0.141287, -0.977672,
		0.106589, -0.986341, 0.125581,
		-0.982061, -0.084676, 0.168481,
		21.129114, 18.724590, 14.447790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.663118, 18.236916, 13.993233>,  <21.816557, 18.783863, 14.329853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.663118, 18.236916, 13.993233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.313965, 18.430214, 14.020203>,  <21.104473, 18.546192, 14.036385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.313965, 18.430214, 14.020203>,  <21.663118, 18.236916, 13.993233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.313965, 18.430214, 14.020203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258106, -0.340047, -0.904295,
		-0.414069, -0.806748, 0.421550,
		-0.872885, 0.483245, 0.067424,
		21.052099, 18.575188, 14.040430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.186659, 17.822773, 13.550256>,  <21.663118, 18.236916, 13.993233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.186659, 17.822773, 13.550256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.999557, 18.174881, 13.582088>,  <20.887297, 18.386145, 13.601189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.999557, 18.174881, 13.582088>,  <21.186659, 17.822773, 13.550256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.999557, 18.174881, 13.582088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467844, -0.170195, -0.867269,
		-0.749884, -0.442902, 0.491438,
		-0.467755, 0.880268, 0.079583,
		20.859230, 18.438961, 13.605964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.564611, 17.650917, 13.213223>,  <21.186659, 17.822773, 13.550256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.564611, 17.650917, 13.213223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.558350, 18.050846, 13.217333>,  <20.554592, 18.290804, 13.219798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.558350, 18.050846, 13.217333>,  <20.564611, 17.650917, 13.213223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.558350, 18.050846, 13.217333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495509, 0.001167, -0.868602,
		-0.868462, -0.018686, 0.495404,
		-0.015653, 0.999825, 0.010273,
		20.553654, 18.350794, 13.220415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.845098, 17.811977, 13.005871>,  <20.564611, 17.650917, 13.213223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.845098, 17.811977, 13.005871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.086342, 18.120590, 12.924881>,  <20.231089, 18.305758, 12.876287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.086342, 18.120590, 12.924881>,  <19.845098, 17.811977, 13.005871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.086342, 18.120590, 12.924881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246000, -0.061556, -0.967313,
		-0.758777, 0.633206, 0.152672,
		0.603111, 0.771532, -0.202475,
		20.267275, 18.352049, 12.864139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.451916, 18.213312, 12.550858>,  <19.845098, 17.811977, 13.005871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.451916, 18.213312, 12.550858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.818657, 18.362789, 12.494670>,  <20.038702, 18.452477, 12.460958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.818657, 18.362789, 12.494670>,  <19.451916, 18.213312, 12.550858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.818657, 18.362789, 12.494670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145485, -0.014904, -0.989248,
		-0.371770, 0.927432, 0.040702,
		0.916854, 0.373695, -0.140469,
		20.093714, 18.474897, 12.452529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.352057, 18.571266, 11.983775>,  <19.451916, 18.213312, 12.550858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.352057, 18.571266, 11.983775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.747066, 18.515434, 12.012938>,  <19.984072, 18.481936, 12.030437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.747066, 18.515434, 12.012938>,  <19.352057, 18.571266, 11.983775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.747066, 18.515434, 12.012938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051106, -0.153855, -0.986771,
		0.148950, 0.978185, -0.144802,
		0.987523, -0.139579, 0.072908,
		20.043324, 18.473560, 12.034811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.676365, 19.001619, 11.495772>,  <19.352057, 18.571266, 11.983775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.676365, 19.001619, 11.495772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.908546, 18.683517, 11.565788>,  <20.047855, 18.492657, 11.607798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.908546, 18.683517, 11.565788>,  <19.676365, 19.001619, 11.495772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.908546, 18.683517, 11.565788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066975, -0.260857, -0.963051,
		0.811532, 0.547286, -0.204678,
		0.580456, -0.795256, 0.175039,
		20.082684, 18.444941, 11.618300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.229498, 19.025209, 10.994083>,  <19.676365, 19.001619, 11.495772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.229498, 19.025209, 10.994083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.284790, 18.649601, 11.120027>,  <20.317965, 18.424236, 11.195592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.284790, 18.649601, 11.120027>,  <20.229498, 19.025209, 10.994083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.284790, 18.649601, 11.120027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118707, -0.299909, -0.946553,
		0.983260, 0.168218, 0.070011,
		0.138230, -0.939019, 0.314857,
		20.326260, 18.367895, 11.214483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.727808, 18.794189, 10.609048>,  <20.229498, 19.025209, 10.994083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.727808, 18.794189, 10.609048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.571487, 18.448223, 10.735028>,  <20.477695, 18.240643, 10.810616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.571487, 18.448223, 10.735028>,  <20.727808, 18.794189, 10.609048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.571487, 18.448223, 10.735028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153365, -0.398562, -0.904228,
		0.907609, -0.305069, 0.288406,
		-0.390799, -0.864917, 0.314952,
		20.454248, 18.188747, 10.829514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.244013, 18.266243, 10.483650>,  <20.727808, 18.794189, 10.609048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.244013, 18.266243, 10.483650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.887192, 18.085899, 10.496090>,  <20.673100, 17.977694, 10.503553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.887192, 18.085899, 10.496090>,  <21.244013, 18.266243, 10.483650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.887192, 18.085899, 10.496090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180890, -0.419270, -0.889658,
		0.414149, -0.787997, 0.455567,
		-0.892053, -0.450859, 0.031099,
		20.619576, 17.950642, 10.505420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.419554, 17.692902, 10.334688>,  <21.244013, 18.266243, 10.483650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.419554, 17.692902, 10.334688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.026814, 17.717434, 10.262907>,  <20.791168, 17.732153, 10.219838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.026814, 17.717434, 10.262907>,  <21.419554, 17.692902, 10.334688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.026814, 17.717434, 10.262907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125225, -0.500966, -0.856360,
		-0.142420, -0.863291, 0.484195,
		-0.981853, 0.061330, -0.179453,
		20.732258, 17.735832, 10.209071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.252127, 17.132160, 10.037299>,  <21.419554, 17.692902, 10.334688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.252127, 17.132160, 10.037299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.930595, 17.334007, 9.911301>,  <20.737677, 17.455114, 9.835702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.930595, 17.334007, 9.911301>,  <21.252127, 17.132160, 10.037299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.930595, 17.334007, 9.911301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062372, -0.455113, -0.888246,
		-0.591583, -0.733644, 0.334358,
		-0.803828, 0.504617, -0.314996,
		20.689447, 17.485392, 9.816802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.842291, 16.666880, 9.592578>,  <21.252127, 17.132160, 10.037299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.842291, 16.666880, 9.592578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.698753, 17.026012, 9.490499>,  <20.612631, 17.241493, 9.429253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.698753, 17.026012, 9.490499>,  <20.842291, 16.666880, 9.592578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.698753, 17.026012, 9.490499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007573, -0.270596, -0.962663,
		-0.933367, -0.347377, 0.090302,
		-0.358843, 0.897834, -0.255197,
		20.591101, 17.295362, 9.413940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.302383, 16.564724, 9.014633>,  <20.842291, 16.666880, 9.592578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.302383, 16.564724, 9.014633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.406921, 16.947845, 8.966775>,  <20.469645, 17.177717, 8.938060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.406921, 16.947845, 8.966775>,  <20.302383, 16.564724, 9.014633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.406921, 16.947845, 8.966775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136882, -0.085924, -0.986853,
		-0.955491, 0.274285, 0.108651,
		0.261343, 0.957802, -0.119645,
		20.485325, 17.235186, 8.930882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.622250, 16.277077, 8.942422>,  <20.302383, 16.564724, 9.014633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.622250, 16.277077, 8.942422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.346519, 15.987659, 8.956948>,  <19.181082, 15.814010, 8.965664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.346519, 15.987659, 8.956948>,  <19.622250, 16.277077, 8.942422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.346519, 15.987659, 8.956948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004774, 0.045591, 0.998949,
		-0.724437, 0.688773, -0.027973,
		-0.689324, -0.723542, 0.036316,
		19.139723, 15.770597, 8.967843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.956949, 16.492142, 9.223786>,  <19.622250, 16.277077, 8.942422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.956949, 16.492142, 9.223786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.974957, 16.096764, 9.281680>,  <18.985762, 15.859536, 9.316416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.974957, 16.096764, 9.281680>,  <18.956949, 16.492142, 9.223786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.974957, 16.096764, 9.281680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233749, 0.130436, 0.963508,
		-0.971254, -0.077207, -0.225176,
		0.045018, -0.988446, 0.144734,
		18.988462, 15.800230, 9.325100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.477055, 16.324245, 9.708201>,  <18.956949, 16.492142, 9.223786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.477055, 16.324245, 9.708201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.718079, 16.005489, 9.725598>,  <18.862692, 15.814236, 9.736036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.718079, 16.005489, 9.725598>,  <18.477055, 16.324245, 9.708201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.718079, 16.005489, 9.725598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020760, 0.070130, 0.997322,
		-0.797805, -0.600042, 0.058801,
		0.602559, -0.796889, 0.043493,
		18.898846, 15.766423, 9.738647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.162632, 15.892747, 10.111071>,  <18.477055, 16.324245, 9.708201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.162632, 15.892747, 10.111071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.529610, 15.733875, 10.120409>,  <18.749796, 15.638552, 10.126012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.529610, 15.733875, 10.120409>,  <18.162632, 15.892747, 10.111071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.529610, 15.733875, 10.120409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033637, -0.018960, 0.999254,
		-0.396442, -0.917545, -0.030754,
		0.917444, -0.397180, 0.023347,
		18.804842, 15.614721, 10.127413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.102457, 15.489431, 10.639793>,  <18.162632, 15.892747, 10.111071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.102457, 15.489431, 10.639793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.491814, 15.523685, 10.554772>,  <18.725428, 15.544238, 10.503759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.491814, 15.523685, 10.554772>,  <18.102457, 15.489431, 10.639793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.491814, 15.523685, 10.554772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217952, -0.059486, 0.974145,
		0.070778, -0.994549, -0.076567,
		0.973390, 0.085636, -0.212554,
		18.783831, 15.549376, 10.491006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.440599, 14.909541, 11.129917>,  <18.102457, 15.489431, 10.639793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.440599, 14.909541, 11.129917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.732132, 15.170815, 11.047791>,  <18.907051, 15.327579, 10.998516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.732132, 15.170815, 11.047791>,  <18.440599, 14.909541, 11.129917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.732132, 15.170815, 11.047791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192853, 0.091886, 0.976916,
		0.656972, -0.751603, -0.058999,
		0.728832, 0.653184, -0.205315,
		18.950781, 15.366770, 10.986197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.879152, 14.766132, 11.530526>,  <18.440599, 14.909541, 11.129917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.879152, 14.766132, 11.530526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.938541, 15.153446, 11.450144>,  <18.974174, 15.385835, 11.401915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.938541, 15.153446, 11.450144>,  <18.879152, 14.766132, 11.530526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.938541, 15.153446, 11.450144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219221, 0.165925, 0.961463,
		0.964312, -0.186804, -0.187633,
		0.148472, 0.968284, -0.200955,
		18.983084, 15.443932, 11.389857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.418030, 14.916826, 11.966122>,  <18.879152, 14.766132, 11.530526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.418030, 14.916826, 11.966122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.246628, 15.265472, 11.870900>,  <19.143787, 15.474660, 11.813767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.246628, 15.265472, 11.870900>,  <19.418030, 14.916826, 11.966122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.246628, 15.265472, 11.870900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004023, 0.261624, 0.965162,
		0.903531, 0.414533, -0.108600,
		-0.428504, 0.871616, -0.238053,
		19.118076, 15.526958, 11.799484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.722307, 15.383787, 12.237162>,  <19.418030, 14.916826, 11.966122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.722307, 15.383787, 12.237162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.369617, 15.568340, 12.197790>,  <19.158003, 15.679072, 12.174168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.369617, 15.568340, 12.197790>,  <19.722307, 15.383787, 12.237162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.369617, 15.568340, 12.197790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042372, 0.130346, 0.990563,
		0.469859, 0.877573, -0.095380,
		-0.881724, 0.461384, -0.098429,
		19.105101, 15.706756, 12.168262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.846817, 15.945737, 12.667983>,  <19.722307, 15.383787, 12.237162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.846817, 15.945737, 12.667983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.451378, 15.903255, 12.625279>,  <19.214115, 15.877767, 12.599657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.451378, 15.903255, 12.625279>,  <19.846817, 15.945737, 12.667983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.451378, 15.903255, 12.625279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144691, 0.473465, 0.868847,
		-0.041729, 0.874386, -0.483433,
		-0.988597, -0.106205, -0.106759,
		19.154799, 15.871394, 12.593252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.603746, 16.538473, 13.032227>,  <19.846817, 15.945737, 12.667983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.603746, 16.538473, 13.032227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.291603, 16.290333, 13.000713>,  <19.104317, 16.141449, 12.981805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.291603, 16.290333, 13.000713>,  <19.603746, 16.538473, 13.032227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.291603, 16.290333, 13.000713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301162, 0.262415, 0.916755,
		-0.548034, 0.739125, -0.391604,
		-0.780359, -0.620349, -0.078784,
		19.057495, 16.104229, 12.977078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.127138, 16.900337, 13.398188>,  <19.603746, 16.538473, 13.032227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.127138, 16.900337, 13.398188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.956593, 16.538570, 13.404465>,  <18.854265, 16.321510, 13.408231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.956593, 16.538570, 13.404465>,  <19.127138, 16.900337, 13.398188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.956593, 16.538570, 13.404465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371756, 0.191017, 0.908466,
		-0.824628, 0.381503, -0.417665,
		-0.426364, -0.904416, 0.015692,
		18.828684, 16.267246, 13.409172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.436207, 17.046576, 13.622339>,  <19.127138, 16.900337, 13.398188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.436207, 17.046576, 13.622339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.530731, 16.664810, 13.695286>,  <18.587446, 16.435751, 13.739054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.530731, 16.664810, 13.695286>,  <18.436207, 17.046576, 13.622339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.530731, 16.664810, 13.695286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337705, 0.095312, 0.936414,
		-0.911106, -0.282869, -0.299787,
		0.236309, -0.954411, 0.182365,
		18.601624, 16.378487, 13.749995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.987461, 16.849482, 14.060127>,  <18.436207, 17.046576, 13.622339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.987461, 16.849482, 14.060127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.274097, 16.579674, 14.131138>,  <18.446079, 16.417789, 14.173744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.274097, 16.579674, 14.131138>,  <17.987461, 16.849482, 14.060127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.274097, 16.579674, 14.131138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302589, -0.071314, 0.950449,
		-0.628438, -0.734803, -0.255206,
		0.716593, -0.674522, 0.177527,
		18.489075, 16.377317, 14.184396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.704226, 16.302729, 14.501981>,  <17.987461, 16.849482, 14.060127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.704226, 16.302729, 14.501981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.094204, 16.237389, 14.562380>,  <18.328190, 16.198185, 14.598619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.094204, 16.237389, 14.562380>,  <17.704226, 16.302729, 14.501981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.094204, 16.237389, 14.562380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162308, -0.058184, 0.985023,
		-0.152118, -0.984851, -0.083239,
		0.974944, -0.163350, 0.150998,
		18.386688, 16.188383, 14.607679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.679308, 15.916540, 15.086036>,  <17.704226, 16.302729, 14.501981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.679308, 15.916540, 15.086036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.065434, 16.020138, 15.072828>,  <18.297110, 16.082296, 15.064904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.065434, 16.020138, 15.072828>,  <17.679308, 15.916540, 15.086036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.065434, 16.020138, 15.072828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008863, 0.158895, 0.987256,
		0.260941, -0.952719, 0.155679,
		0.965314, 0.258995, -0.033018,
		18.355028, 16.097836, 15.062922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.101200, 15.580003, 15.598352>,  <17.679308, 15.916540, 15.086036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.101200, 15.580003, 15.598352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.326408, 15.901009, 15.519381>,  <18.461535, 16.093613, 15.471997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.326408, 15.901009, 15.519381>,  <18.101200, 15.580003, 15.598352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.326408, 15.901009, 15.519381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005408, 0.242463, 0.970146,
		0.826424, -0.545146, 0.140852,
		0.563022, 0.802513, -0.197429,
		18.495316, 16.141762, 15.460152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.699615, 15.569511, 16.073109>,  <18.101200, 15.580003, 15.598352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.699615, 15.569511, 16.073109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.654270, 15.941364, 15.932863>,  <18.627064, 16.164476, 15.848716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.654270, 15.941364, 15.932863>,  <18.699615, 15.569511, 16.073109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.654270, 15.941364, 15.932863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056584, 0.358358, 0.931868,
		0.991941, 0.085798, -0.093227,
		-0.113361, 0.929633, -0.350615,
		18.620262, 16.220255, 15.827679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<19.267660, 15.967599, 16.245453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.992088, 16.253735, 16.198698>,  <18.826744, 16.425417, 16.170645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.992088, 16.253735, 16.198698>,  <19.267660, 15.967599, 16.245453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.992088, 16.253735, 16.198698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238213, 0.375760, 0.895578,
		0.684564, 0.589147, -0.429276,
		-0.688931, 0.715339, -0.116889,
		18.785408, 16.468336, 16.163631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.570707, 16.487431, 16.629202>,  <19.267660, 15.967599, 16.245453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.570707, 16.487431, 16.629202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.208492, 16.651215, 16.584761>,  <18.991163, 16.749485, 16.558096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.208492, 16.651215, 16.584761>,  <19.570707, 16.487431, 16.629202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.208492, 16.651215, 16.584761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092358, 0.445837, 0.890337,
		0.414090, 0.795973, -0.441539,
		-0.905538, 0.409459, -0.111102,
		18.936831, 16.774052, 16.551430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.558626, 17.287771, 16.614534>,  <19.570707, 16.487431, 16.629202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.558626, 17.287771, 16.614534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.202274, 17.152023, 16.735306>,  <18.988462, 17.070574, 16.807770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.202274, 17.152023, 16.735306>,  <19.558626, 17.287771, 16.614534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.202274, 17.152023, 16.735306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131276, 0.443972, 0.886372,
		-0.434856, 0.829287, -0.350974,
		-0.890880, -0.339370, 0.301929,
		18.935011, 17.050213, 16.825884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.227467, 17.880074, 16.850897>,  <19.558626, 17.287771, 16.614534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.227467, 17.880074, 16.850897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.020233, 17.578030, 17.011597>,  <18.895893, 17.396803, 17.108017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.020233, 17.578030, 17.011597>,  <19.227467, 17.880074, 16.850897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.020233, 17.578030, 17.011597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115474, 0.527147, 0.841891,
		-0.847500, 0.389778, -0.360302,
		-0.518083, -0.755108, 0.401748,
		18.864809, 17.351498, 17.132122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.762127, 18.199968, 17.297640>,  <19.227467, 17.880074, 16.850897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.762127, 18.199968, 17.297640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.768433, 17.821159, 17.425953>,  <18.772215, 17.593874, 17.502941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.768433, 17.821159, 17.425953>,  <18.762127, 18.199968, 17.297640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.768433, 17.821159, 17.425953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008016, 0.320694, 0.947149,
		-0.999844, -0.017501, -0.002536,
		0.015762, -0.947021, 0.320784,
		18.773161, 17.537052, 17.522188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.261425, 18.238422, 17.868444>,  <18.762127, 18.199968, 17.297640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.261425, 18.238422, 17.868444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.464619, 17.898834, 17.926691>,  <18.586535, 17.695082, 17.961639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.464619, 17.898834, 17.926691>,  <18.261425, 18.238422, 17.868444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.464619, 17.898834, 17.926691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012757, 0.176448, 0.984227,
		-0.861273, -0.498112, 0.100463,
		0.507982, -0.848970, 0.145615,
		18.617014, 17.644144, 17.970375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.842073, 17.742830, 18.278374>,  <18.261425, 18.238422, 17.868444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.842073, 17.742830, 18.278374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.220432, 17.629517, 18.341661>,  <18.447447, 17.561529, 18.379635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.220432, 17.629517, 18.341661>,  <17.842073, 17.742830, 18.278374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.220432, 17.629517, 18.341661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194877, -0.106105, 0.975071,
		-0.259435, -0.953148, -0.155570,
		0.945894, -0.283285, 0.158220,
		18.504200, 17.544531, 18.389128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.867283, 17.181303, 18.803143>,  <17.842073, 17.742830, 18.278374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.867283, 17.181303, 18.803143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.241470, 17.322506, 18.796366>,  <18.465982, 17.407228, 18.792299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.241470, 17.322506, 18.796366>,  <17.867283, 17.181303, 18.803143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.241470, 17.322506, 18.796366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016097, 0.005324, 0.999856,
		0.353049, -0.935605, -0.000702,
		0.935467, 0.353010, -0.016940,
		18.522110, 17.428410, 18.791285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.291851, 16.707489, 19.162514>,  <17.867283, 17.181303, 18.803143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.291851, 16.707489, 19.162514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.495621, 17.050701, 19.188667>,  <18.617882, 17.256628, 19.204359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.495621, 17.050701, 19.188667>,  <18.291851, 16.707489, 19.162514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.495621, 17.050701, 19.188667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002735, -0.077595, 0.996981,
		0.860512, -0.507707, -0.041875,
		0.509423, 0.858029, 0.065383,
		18.648447, 17.308109, 19.208282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.751995, 16.535252, 19.691902>,  <18.291851, 16.707489, 19.162514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.751995, 16.535252, 19.691902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.735435, 16.933769, 19.661751>,  <18.725500, 17.172880, 19.643660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.735435, 16.933769, 19.661751>,  <18.751995, 16.535252, 19.691902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.735435, 16.933769, 19.661751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172921, 0.067160, 0.982643,
		0.984065, 0.053716, 0.169500,
		-0.041400, 0.996295, -0.075378,
		18.723015, 17.232658, 19.639137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.282423, 16.802204, 20.164934>,  <18.751995, 16.535252, 19.691902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.282423, 16.802204, 20.164934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.021942, 17.100323, 20.107714>,  <18.865654, 17.279194, 20.073381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.021942, 17.100323, 20.107714>,  <19.282423, 16.802204, 20.164934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.021942, 17.100323, 20.107714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074607, 0.124711, 0.989384,
		0.755227, 0.654964, -0.025608,
		-0.651204, 0.745299, -0.143049,
		18.826580, 17.323912, 20.064798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.384127, 17.269770, 20.653515>,  <19.282423, 16.802204, 20.164934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.384127, 17.269770, 20.653515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.002178, 17.362350, 20.579056>,  <18.773008, 17.417898, 20.534380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.002178, 17.362350, 20.579056>,  <19.384127, 17.269770, 20.653515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.002178, 17.362350, 20.579056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158407, 0.133310, 0.978333,
		0.251252, 0.963669, -0.090631,
		-0.954871, 0.231452, -0.186146,
		18.715717, 17.431786, 20.523212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.225409, 17.722490, 21.151630>,  <19.384127, 17.269770, 20.653515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.225409, 17.722490, 21.151630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.852512, 17.644791, 21.029520>,  <18.628775, 17.598171, 20.956253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.852512, 17.644791, 21.029520>,  <19.225409, 17.722490, 21.151630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.852512, 17.644791, 21.029520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329778, 0.108931, 0.937753,
		-0.148902, 0.974886, -0.165609,
		-0.932242, -0.194248, -0.305275,
		18.572840, 17.586515, 20.937937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.882603, 18.292742, 21.307659>,  <19.225409, 17.722490, 21.151630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.882603, 18.292742, 21.307659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.641979, 17.974190, 21.282669>,  <18.497604, 17.783058, 21.267675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.641979, 17.974190, 21.282669>,  <18.882603, 18.292742, 21.307659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.641979, 17.974190, 21.282669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236019, 0.102470, 0.966331,
		-0.763167, 0.596050, -0.249603,
		-0.601558, -0.796382, -0.062477,
		18.461512, 17.735275, 21.263926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.399363, 18.334414, 21.781158>,  <18.882603, 18.292742, 21.307659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.399363, 18.334414, 21.781158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.324234, 17.949471, 21.702579>,  <18.279158, 17.718504, 21.655432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.324234, 17.949471, 21.702579>,  <18.399363, 18.334414, 21.781158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.324234, 17.949471, 21.702579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342636, -0.123248, 0.931349,
		-0.920502, 0.242237, -0.306589,
		-0.187820, -0.962357, -0.196449,
		18.267887, 17.660763, 21.643644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.718582, 18.242388, 21.831331>,  <18.399363, 18.334414, 21.781158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.718582, 18.242388, 21.831331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.914192, 17.909111, 21.934595>,  <18.031559, 17.709145, 21.996553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.914192, 17.909111, 21.934595>,  <17.718582, 18.242388, 21.831331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.914192, 17.909111, 21.934595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410158, 0.041557, 0.911067,
		-0.769821, -0.551422, -0.321417,
		0.489025, -0.833191, 0.258162,
		18.060900, 17.659153, 22.012043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.297859, 17.907133, 22.294611>,  <17.718582, 18.242388, 21.831331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.297859, 17.907133, 22.294611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.627987, 17.686321, 22.342131>,  <17.826063, 17.553835, 22.370642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.627987, 17.686321, 22.342131>,  <17.297859, 17.907133, 22.294611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.627987, 17.686321, 22.342131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224949, -0.128456, 0.965866,
		-0.517926, -0.823871, -0.230195,
		0.825319, -0.552029, 0.118798,
		17.875582, 17.520712, 22.377769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.104925, 17.279184, 22.649256>,  <17.297859, 17.907133, 22.294611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.104925, 17.279184, 22.649256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.499130, 17.316242, 22.706081>,  <17.735653, 17.338476, 22.740177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.499130, 17.316242, 22.706081>,  <17.104925, 17.279184, 22.649256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.499130, 17.316242, 22.706081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156379, 0.172121, 0.972584,
		0.065652, -0.980710, 0.184115,
		0.985513, 0.092644, 0.142062,
		17.794785, 17.344036, 22.748699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.252615, 16.919228, 23.311670>,  <17.104925, 17.279184, 22.649256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.252615, 16.919228, 23.311670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.543430, 17.188374, 23.257017>,  <17.717920, 17.349861, 23.224224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.543430, 17.188374, 23.257017>,  <17.252615, 16.919228, 23.311670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.543430, 17.188374, 23.257017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035632, 0.235711, 0.971170,
		0.685672, -0.701209, 0.195347,
		0.727038, 0.672865, -0.136635,
		17.761541, 17.390232, 23.216026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.710739, 16.842358, 23.861210>,  <17.252615, 16.919228, 23.311670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.710739, 16.842358, 23.861210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.768707, 17.209118, 23.712461>,  <17.803488, 17.429174, 23.623213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.768707, 17.209118, 23.712461>,  <17.710739, 16.842358, 23.861210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.768707, 17.209118, 23.712461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079281, 0.363870, 0.928069,
		0.986262, -0.163979, -0.019961,
		0.144921, 0.916902, -0.371872,
		17.812183, 17.484188, 23.600901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.211329, 17.138632, 24.313887>,  <17.710739, 16.842358, 23.861210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.211329, 17.138632, 24.313887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.088757, 17.467243, 24.121557>,  <18.015213, 17.664410, 24.006161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.088757, 17.467243, 24.121557>,  <18.211329, 17.138632, 24.313887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.088757, 17.467243, 24.121557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156503, 0.541730, 0.825855,
		0.938939, 0.177818, -0.294575,
		-0.306432, 0.821529, -0.480822,
		17.996826, 17.713701, 23.977310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.639235, 17.788095, 24.527328>,  <18.211329, 17.138632, 24.313887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.639235, 17.788095, 24.527328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.277954, 17.907284, 24.403751>,  <18.061186, 17.978796, 24.329605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.277954, 17.907284, 24.403751>,  <18.639235, 17.788095, 24.527328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.277954, 17.907284, 24.403751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126018, 0.503966, 0.854481,
		0.410305, 0.810699, -0.417632,
		-0.903199, 0.297969, -0.308943,
		18.006994, 17.996674, 24.311069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.560558, 18.520813, 24.541166>,  <18.639235, 17.788095, 24.527328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.560558, 18.520813, 24.541166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.209656, 18.330410, 24.565950>,  <17.999115, 18.216167, 24.580820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.209656, 18.330410, 24.565950>,  <18.560558, 18.520813, 24.541166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.209656, 18.330410, 24.565950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124264, 0.349871, 0.928520,
		-0.463661, 0.806849, -0.366077,
		-0.877255, -0.476009, 0.061959,
		17.946480, 18.187607, 24.584538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.882826, 18.982243, 24.697241>,  <18.560558, 18.520813, 24.541166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.882826, 18.982243, 24.697241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.825008, 18.616562, 24.848682>,  <17.790318, 18.397154, 24.939548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.825008, 18.616562, 24.848682>,  <17.882826, 18.982243, 24.697241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.825008, 18.616562, 24.848682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317749, 0.405243, 0.857212,
		-0.937092, 0.003605, -0.349063,
		-0.144546, -0.914202, 0.378605,
		17.781645, 18.342300, 24.962263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.374567, 19.261879, 24.226065>,  <17.882826, 18.982243, 24.697241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.374567, 19.261879, 24.226065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.581223, 19.542816, 24.421942>,  <18.705215, 19.711378, 24.539467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.581223, 19.542816, 24.421942>,  <18.374567, 19.261879, 24.226065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.581223, 19.542816, 24.421942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512772, 0.204213, -0.833884,
		-0.685674, 0.681918, -0.254637,
		0.516640, 0.702343, 0.489691,
		18.736214, 19.753519, 24.568850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.193306, 19.858862, 23.888262>,  <18.374567, 19.261879, 24.226065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.193306, 19.858862, 23.888262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.542831, 19.905258, 24.077150>,  <18.752546, 19.933096, 24.190483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.542831, 19.905258, 24.077150>,  <18.193306, 19.858862, 23.888262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.542831, 19.905258, 24.077150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427784, 0.278347, -0.859956,
		-0.231189, 0.953451, 0.193605,
		0.873815, 0.115992, 0.472222,
		18.804976, 19.940056, 24.218817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.507410, 20.259430, 23.508345>,  <18.193306, 19.858862, 23.888262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.507410, 20.259430, 23.508345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.831902, 20.147190, 23.713545>,  <19.026596, 20.079845, 23.836664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.831902, 20.147190, 23.713545>,  <18.507410, 20.259430, 23.508345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.831902, 20.147190, 23.713545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584518, 0.365680, -0.724305,
		0.015645, 0.887436, 0.460666,
		0.811230, -0.280599, 0.513001,
		19.075270, 20.063011, 23.867445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.972876, 20.783470, 23.468105>,  <18.507410, 20.259430, 23.508345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.972876, 20.783470, 23.468105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.200325, 20.465141, 23.551373>,  <19.336794, 20.274143, 23.601334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.200325, 20.465141, 23.551373>,  <18.972876, 20.783470, 23.468105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.200325, 20.465141, 23.551373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574228, 0.202815, -0.793176,
		0.589009, 0.570553, 0.572309,
		0.568622, -0.795824, 0.208168,
		19.370911, 20.226395, 23.613823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.596661, 21.009794, 23.260162>,  <18.972876, 20.783470, 23.468105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.596661, 21.009794, 23.260162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.655647, 20.616798, 23.305708>,  <19.691040, 20.381001, 23.333036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.655647, 20.616798, 23.305708>,  <19.596661, 21.009794, 23.260162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.655647, 20.616798, 23.305708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423838, -0.041245, -0.904799,
		0.893653, 0.181688, 0.410334,
		0.147467, -0.982491, 0.113865,
		19.699888, 20.322052, 23.339867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.194590, 20.925032, 22.879084>,  <19.596661, 21.009794, 23.260162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.194590, 20.925032, 22.879084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.048836, 20.554329, 22.915630>,  <19.961384, 20.331907, 22.937559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.048836, 20.554329, 22.915630>,  <20.194590, 20.925032, 22.879084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.048836, 20.554329, 22.915630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094253, -0.134313, -0.986446,
		0.926466, -0.350836, 0.136291,
		-0.364386, -0.926755, 0.091369,
		19.939520, 20.276302, 22.943041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.745441, 20.415785, 22.609102>,  <20.194590, 20.925032, 22.879084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.745441, 20.415785, 22.609102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.397106, 20.222500, 22.573011>,  <20.188105, 20.106529, 22.551357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.397106, 20.222500, 22.573011>,  <20.745441, 20.415785, 22.609102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.397106, 20.222500, 22.573011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211968, -0.203522, -0.955850,
		0.443517, -0.851518, 0.279661,
		-0.870840, -0.483215, -0.090229,
		20.135855, 20.077536, 22.545942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.968792, 19.789103, 22.221014>,  <20.745441, 20.415785, 22.609102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.968792, 19.789103, 22.221014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.573208, 19.839565, 22.189915>,  <20.335857, 19.869843, 22.171255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.573208, 19.839565, 22.189915>,  <20.968792, 19.789103, 22.221014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.573208, 19.839565, 22.189915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026284, -0.367008, -0.929847,
		-0.145838, -0.921624, 0.359640,
		-0.988959, 0.126154, -0.077748,
		20.276520, 19.877411, 22.166590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.835541, 19.244726, 21.887495>,  <20.968792, 19.789103, 22.221014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.835541, 19.244726, 21.887495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.526020, 19.492462, 21.834364>,  <20.340307, 19.641104, 21.802485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.526020, 19.492462, 21.834364>,  <20.835541, 19.244726, 21.887495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.526020, 19.492462, 21.834364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011992, -0.223986, -0.974519,
		-0.633312, -0.752493, 0.180749,
		-0.773804, 0.619342, -0.132829,
		20.293879, 19.678265, 21.794516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.471378, 18.918228, 21.445324>,  <20.835541, 19.244726, 21.887495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.471378, 18.918228, 21.445324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.300705, 19.279175, 21.421059>,  <20.198301, 19.495743, 21.406500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.300705, 19.279175, 21.421059>,  <20.471378, 18.918228, 21.445324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.300705, 19.279175, 21.421059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053738, -0.092252, -0.994285,
		-0.902804, -0.420982, 0.087853,
		-0.426681, 0.902366, -0.060663,
		20.172701, 19.549885, 21.402861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.840446, 18.873362, 21.039761>,  <20.471378, 18.918228, 21.445324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.840446, 18.873362, 21.039761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.938366, 19.260227, 21.012434>,  <19.997118, 19.492346, 20.996038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.938366, 19.260227, 21.012434>,  <19.840446, 18.873362, 21.039761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.938366, 19.260227, 21.012434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016790, -0.066219, -0.997664,
		-0.969428, 0.245374, 0.000029,
		0.244799, 0.967164, -0.068314,
		20.011806, 19.550377, 20.991940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.536652, 19.014997, 20.370340>,  <19.840446, 18.873362, 21.039761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.536652, 19.014997, 20.370340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.796795, 19.310394, 20.441519>,  <19.952881, 19.487633, 20.484226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.796795, 19.310394, 20.441519>,  <19.536652, 19.014997, 20.370340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.796795, 19.310394, 20.441519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057150, 0.186024, -0.980882,
		-0.757476, 0.648092, 0.078778,
		0.650357, 0.738492, 0.177947,
		19.991901, 19.531942, 20.494904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.403475, 19.470472, 19.927912>,  <19.536652, 19.014997, 20.370340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.403475, 19.470472, 19.927912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.773293, 19.584381, 20.029200>,  <19.995184, 19.652725, 20.089972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.773293, 19.584381, 20.029200>,  <19.403475, 19.470472, 19.927912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.773293, 19.584381, 20.029200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236736, 0.091486, -0.967257,
		-0.298613, 0.954220, 0.017168,
		0.924547, 0.284771, 0.253218,
		20.050657, 19.669813, 20.105165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.543736, 20.060492, 19.574894>,  <19.403475, 19.470472, 19.927912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.543736, 20.060492, 19.574894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.874409, 19.852005, 19.659678>,  <20.072813, 19.726913, 19.710548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.874409, 19.852005, 19.659678>,  <19.543736, 20.060492, 19.574894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.874409, 19.852005, 19.659678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197597, -0.083783, -0.976696,
		0.526828, 0.849302, 0.033729,
		0.826685, -0.521216, 0.211959,
		20.122414, 19.695641, 19.723265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.072918, 20.306273, 19.155684>,  <19.543736, 20.060492, 19.574894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.072918, 20.306273, 19.155684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.198597, 19.940170, 19.256548>,  <20.274004, 19.720509, 19.317066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.198597, 19.940170, 19.256548>,  <20.072918, 20.306273, 19.155684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.198597, 19.940170, 19.256548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405889, -0.110607, -0.907204,
		0.858216, 0.387389, 0.336741,
		0.314195, -0.915257, 0.252162,
		20.292856, 19.665592, 19.332197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.786303, 20.225863, 18.900270>,  <20.072918, 20.306273, 19.155684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.786303, 20.225863, 18.900270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.647640, 19.859241, 18.980030>,  <20.564444, 19.639269, 19.027885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.647640, 19.859241, 18.980030>,  <20.786303, 20.225863, 18.900270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.647640, 19.859241, 18.980030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433555, -0.345077, -0.832438,
		0.831781, -0.202119, 0.516999,
		-0.346656, -0.916553, 0.199399,
		20.543644, 19.584276, 19.039850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.307289, 19.778101, 18.824829>,  <20.786303, 20.225863, 18.900270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.307289, 19.778101, 18.824829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.991421, 19.535118, 18.790392>,  <20.801899, 19.389328, 18.769730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.991421, 19.535118, 18.790392>,  <21.307289, 19.778101, 18.824829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.991421, 19.535118, 18.790392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424534, -0.439707, -0.791472,
		0.442930, -0.661553, 0.605111,
		-0.789673, -0.607457, -0.086092,
		20.754519, 19.352880, 18.764565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.661488, 19.134777, 18.698606>,  <21.307289, 19.778101, 18.824829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.661488, 19.134777, 18.698606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.281147, 19.147675, 18.575420>,  <21.052942, 19.155413, 18.501509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.281147, 19.147675, 18.575420>,  <21.661488, 19.134777, 18.698606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.281147, 19.147675, 18.575420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282534, -0.316648, -0.905488,
		-0.126712, -0.947995, 0.291976,
		-0.950851, 0.032243, -0.307964,
		20.995892, 19.157349, 18.483030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.641985, 18.490313, 18.250410>,  <21.661488, 19.134777, 18.698606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.641985, 18.490313, 18.250410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.321232, 18.698509, 18.133060>,  <21.128780, 18.823427, 18.062651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.321232, 18.698509, 18.133060>,  <21.641985, 18.490313, 18.250410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.321232, 18.698509, 18.133060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085372, -0.386166, -0.918470,
		-0.591350, -0.761552, 0.265224,
		-0.801883, 0.520494, -0.293374,
		21.080667, 18.854658, 18.045048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.066051, 18.074703, 17.888861>,  <21.641985, 18.490313, 18.250410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.066051, 18.074703, 17.888861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.067997, 18.451115, 17.753544>,  <21.069164, 18.676962, 17.672354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.067997, 18.451115, 17.753544>,  <21.066051, 18.074703, 17.888861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.067997, 18.451115, 17.753544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061138, -0.337944, -0.939178,
		-0.998117, -0.016113, -0.059177,
		0.004866, 0.941028, -0.338293,
		21.069456, 18.733423, 17.652056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<18.360039, 15.069036, 13.411892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.481537, 15.450024, 13.402563>,  <18.554436, 15.678617, 13.396966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.481537, 15.450024, 13.402563>,  <18.360039, 15.069036, 13.411892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.481537, 15.450024, 13.402563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079536, 0.000957, -0.996832,
		-0.949428, 0.304636, 0.076046,
		0.303743, 0.952468, -0.023321,
		18.572660, 15.735765, 13.395567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.041233, 15.354437, 12.839037>,  <18.360039, 15.069036, 13.411892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.041233, 15.354437, 12.839037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.331310, 15.629040, 12.860208>,  <18.505358, 15.793801, 12.872910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.331310, 15.629040, 12.860208>,  <18.041233, 15.354437, 12.839037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.331310, 15.629040, 12.860208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218476, -0.156530, -0.963206,
		-0.652963, 0.710076, -0.263500,
		0.725195, 0.686506, 0.052926,
		18.548868, 15.834991, 12.876085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.835154, 15.848660, 12.305617>,  <18.041233, 15.354437, 12.839037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.835154, 15.848660, 12.305617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.222305, 15.890144, 12.397231>,  <18.454596, 15.915035, 12.452200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.222305, 15.890144, 12.397231>,  <17.835154, 15.848660, 12.305617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.222305, 15.890144, 12.397231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239020, -0.096970, -0.966161,
		-0.077993, 0.989869, -0.118644,
		0.967877, 0.103712, 0.229035,
		18.512669, 15.921258, 12.465941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.105860, 16.345385, 11.836177>,  <17.835154, 15.848660, 12.305617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.105860, 16.345385, 11.836177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.446636, 16.169094, 11.949282>,  <18.651102, 16.063320, 12.017144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.446636, 16.169094, 11.949282>,  <18.105860, 16.345385, 11.836177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.446636, 16.169094, 11.949282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173978, -0.271080, -0.946703,
		0.493888, 0.855731, -0.154268,
		0.851943, -0.440726, 0.282762,
		18.702219, 16.036877, 12.034110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.558783, 16.619293, 11.376475>,  <18.105860, 16.345385, 11.836177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.558783, 16.619293, 11.376475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.722881, 16.284389, 11.521079>,  <18.821341, 16.083447, 11.607841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.722881, 16.284389, 11.521079>,  <18.558783, 16.619293, 11.376475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.722881, 16.284389, 11.521079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213855, -0.297030, -0.930612,
		0.886545, 0.459094, 0.057196,
		0.410249, -0.837261, 0.361510,
		18.845957, 16.033211, 11.629532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.155359, 16.657845, 11.027923>,  <18.558783, 16.619293, 11.376475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.155359, 16.657845, 11.027923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.118275, 16.275791, 11.140442>,  <19.096024, 16.046560, 11.207953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.118275, 16.275791, 11.140442>,  <19.155359, 16.657845, 11.027923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.118275, 16.275791, 11.140442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265639, -0.296001, -0.917507,
		0.959605, -0.010338, 0.281162,
		-0.092709, -0.955132, 0.281298,
		19.090462, 15.989252, 11.224832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.755861, 16.338591, 10.785769>,  <19.155359, 16.657845, 11.027923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.755861, 16.338591, 10.785769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.487198, 16.047440, 10.841005>,  <19.326000, 15.872748, 10.874147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.487198, 16.047440, 10.841005>,  <19.755861, 16.338591, 10.785769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.487198, 16.047440, 10.841005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213864, -0.368946, -0.904511,
		0.709323, -0.577988, 0.403472,
		-0.671656, -0.727879, 0.138091,
		19.285702, 15.829076, 10.882433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.045643, 15.805769, 10.436310>,  <19.755861, 16.338591, 10.785769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.045643, 15.805769, 10.436310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.654095, 15.726147, 10.455016>,  <19.419165, 15.678373, 10.466240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.654095, 15.726147, 10.455016>,  <20.045643, 15.805769, 10.436310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.654095, 15.726147, 10.455016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036419, -0.394780, -0.918054,
		0.201206, -0.896954, 0.393689,
		-0.978872, -0.199055, 0.046766,
		19.360434, 15.666430, 10.469046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.026239, 15.148068, 10.108092>,  <20.045643, 15.805769, 10.436310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.026239, 15.148068, 10.108092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.648163, 15.278664, 10.109649>,  <19.421316, 15.357020, 10.110582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.648163, 15.278664, 10.109649>,  <20.026239, 15.148068, 10.108092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.648163, 15.278664, 10.109649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146672, -0.413912, -0.898423,
		-0.291711, -0.849756, 0.439113,
		-0.945195, 0.326485, 0.003893,
		19.364605, 15.376610, 10.110816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.539633, 14.617258, 9.811696>,  <20.026239, 15.148068, 10.108092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.539633, 14.617258, 9.811696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.338688, 14.961838, 9.781931>,  <19.218121, 15.168586, 9.764072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.338688, 14.961838, 9.781931>,  <19.539633, 14.617258, 9.811696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.338688, 14.961838, 9.781931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289124, -0.248462, -0.924486,
		-0.814887, -0.442910, 0.373884,
		-0.502360, 0.861450, -0.074412,
		19.187981, 15.220273, 9.759607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.075176, 14.492192, 9.276904>,  <19.539633, 14.617258, 9.811696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.075176, 14.492192, 9.276904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.111526, 14.889629, 9.303780>,  <19.133337, 15.128092, 9.319905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.111526, 14.889629, 9.303780>,  <19.075176, 14.492192, 9.276904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.111526, 14.889629, 9.303780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116572, 0.077619, -0.990145,
		-0.989016, 0.082149, 0.122879,
		0.090877, 0.993593, 0.067190,
		19.138790, 15.187707, 9.323936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.442875, 14.715584, 9.072012>,  <19.075176, 14.492192, 9.276904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.442875, 14.715584, 9.072012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.693192, 15.020718, 9.006935>,  <18.843382, 15.203798, 8.967889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.693192, 15.020718, 9.006935>,  <18.442875, 14.715584, 9.072012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.693192, 15.020718, 9.006935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241065, -0.009218, -0.970465,
		-0.741805, 0.646527, 0.178124,
		0.625790, 0.762835, -0.162693,
		18.880928, 15.249568, 8.958127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.162136, 15.367836, 8.694253>,  <18.442875, 14.715584, 9.072012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.162136, 15.367836, 8.694253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.543259, 15.296551, 8.595946>,  <18.771933, 15.253779, 8.536963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.543259, 15.296551, 8.595946>,  <18.162136, 15.367836, 8.694253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.543259, 15.296551, 8.595946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257159, -0.043550, -0.965387,
		0.161342, 0.983028, -0.087324,
		0.952805, -0.178213, -0.245768,
		18.829100, 15.243087, 8.522216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.513433, 15.924006, 8.343517>,  <18.162136, 15.367836, 8.694253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.513433, 15.924006, 8.343517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.586205, 15.554287, 8.209308>,  <18.629868, 15.332456, 8.128781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.586205, 15.554287, 8.209308>,  <18.513433, 15.924006, 8.343517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.586205, 15.554287, 8.209308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112883, 0.319332, -0.940896,
		0.976811, 0.209051, -0.046242,
		0.181928, -0.924297, -0.335525,
		18.640783, 15.276998, 8.108650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.892818, 15.650908, 8.011250>,  <18.513433, 15.924006, 8.343517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.892818, 15.650908, 8.011250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.559185, 15.585217, 7.800600>,  <17.359005, 15.545802, 7.674211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.559185, 15.585217, 7.800600>,  <17.892818, 15.650908, 8.011250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.559185, 15.585217, 7.800600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500217, 0.627639, 0.596534,
		0.232561, 0.760986, -0.605654,
		-0.834085, -0.164228, -0.526623,
		17.308960, 15.535948, 7.642613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.719027, 16.316137, 7.829652>,  <17.892818, 15.650908, 8.011250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.719027, 16.316137, 7.829652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.392532, 16.087116, 7.798815>,  <17.196636, 15.949703, 7.780313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.392532, 16.087116, 7.798815>,  <17.719027, 16.316137, 7.829652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.392532, 16.087116, 7.798815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491741, 0.618504, 0.612898,
		-0.303234, 0.538178, -0.786393,
		-0.816235, -0.572553, -0.077093,
		17.147661, 15.915350, 7.775687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.234959, 16.739697, 7.642353>,  <17.719027, 16.316137, 7.829652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.234959, 16.739697, 7.642353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.018600, 16.438419, 7.792089>,  <16.888786, 16.257652, 7.881931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.018600, 16.438419, 7.792089>,  <17.234959, 16.739697, 7.642353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.018600, 16.438419, 7.792089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429684, 0.630053, 0.646842,
		-0.723053, 0.189025, -0.664428,
		-0.540894, -0.753195, 0.374341,
		16.856333, 16.212461, 7.904392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.480354, 16.917204, 7.591370>,  <17.234959, 16.739697, 7.642353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.480354, 16.917204, 7.591370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.543934, 16.651836, 7.883839>,  <16.582081, 16.492617, 8.059319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.543934, 16.651836, 7.883839>,  <16.480354, 16.917204, 7.591370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.543934, 16.651836, 7.883839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406607, 0.630876, 0.660808,
		-0.899670, -0.402334, -0.169473,
		0.158950, -0.663418, 0.731172,
		16.591619, 16.452810, 8.103190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.913100, 16.917978, 7.924233>,  <16.480354, 16.917204, 7.591370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.913100, 16.917978, 7.924233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.137829, 16.722466, 8.191201>,  <16.272667, 16.605158, 8.351382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.137829, 16.722466, 8.191201>,  <15.913100, 16.917978, 7.924233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.137829, 16.722466, 8.191201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398047, 0.547530, 0.736050,
		-0.725199, -0.679194, 0.113057,
		0.561822, -0.488781, 0.667420,
		16.306376, 16.575830, 8.391427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.383552, 16.930576, 8.538448>,  <15.913100, 16.917978, 7.924233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.383552, 16.930576, 8.538448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.755279, 16.850723, 8.662716>,  <15.978314, 16.802811, 8.737277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.755279, 16.850723, 8.662716>,  <15.383552, 16.930576, 8.538448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.755279, 16.850723, 8.662716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223313, 0.366223, 0.903334,
		-0.294109, -0.908861, 0.295757,
		0.929318, -0.199633, 0.310670,
		16.034075, 16.790834, 8.755917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.223468, 16.771698, 9.165236>,  <15.383552, 16.930576, 8.538448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.223468, 16.771698, 9.165236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.614038, 16.855873, 9.184460>,  <15.848379, 16.906378, 9.195993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.614038, 16.855873, 9.184460>,  <15.223468, 16.771698, 9.165236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.614038, 16.855873, 9.184460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132520, 0.408665, 0.903013,
		0.170390, -0.888093, 0.426918,
		0.976425, 0.210440, 0.048057,
		15.906965, 16.919004, 9.198877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.480526, 16.531588, 9.739635>,  <15.223468, 16.771698, 9.165236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.480526, 16.531588, 9.739635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.806569, 16.755131, 9.678613>,  <16.002195, 16.889257, 9.641999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.806569, 16.755131, 9.678613>,  <15.480526, 16.531588, 9.739635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.806569, 16.755131, 9.678613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000617, 0.262505, 0.964930,
		0.579308, -0.786617, 0.213625,
		0.815109, 0.558860, -0.152557,
		16.051102, 16.922789, 9.632846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.939108, 16.330315, 10.235133>,  <15.480526, 16.531588, 9.739635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.939108, 16.330315, 10.235133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.011158, 16.713242, 10.144710>,  <16.054388, 16.942997, 10.090456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.011158, 16.713242, 10.144710>,  <15.939108, 16.330315, 10.235133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.011158, 16.713242, 10.144710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038399, 0.222799, 0.974108,
		0.982894, -0.184142, 0.003372,
		0.180125, 0.957315, -0.226058,
		16.065195, 17.000437, 10.076892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.440428, 16.482279, 10.672687>,  <15.939108, 16.330315, 10.235133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.440428, 16.482279, 10.672687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.309700, 16.843105, 10.559931>,  <16.231262, 17.059601, 10.492277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.309700, 16.843105, 10.559931>,  <16.440428, 16.482279, 10.672687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.309700, 16.843105, 10.559931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109600, 0.260079, 0.959347,
		0.938709, 0.344430, 0.013867,
		-0.326822, 0.902068, -0.281888,
		16.211653, 17.113726, 10.475365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.837252, 16.967964, 11.057539>,  <16.440428, 16.482279, 10.672687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.837252, 16.967964, 11.057539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.534775, 17.203030, 10.942426>,  <16.353289, 17.344069, 10.873358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.534775, 17.203030, 10.942426>,  <16.837252, 16.967964, 11.057539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.534775, 17.203030, 10.942426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092676, 0.339183, 0.936144,
		0.647751, 0.734577, -0.202026,
		-0.756194, 0.587666, -0.287783,
		16.307917, 17.379330, 10.856091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.911058, 17.832294, 11.151061>,  <16.837252, 16.967964, 11.057539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.911058, 17.832294, 11.151061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.521790, 17.740341, 11.147262>,  <16.288229, 17.685169, 11.144982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.521790, 17.740341, 11.147262>,  <16.911058, 17.832294, 11.151061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.521790, 17.740341, 11.147262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091779, 0.350011, 0.932239,
		-0.210982, 0.908100, -0.361719,
		-0.973172, -0.229884, -0.009499,
		16.229837, 17.671375, 11.144412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.594645, 18.433434, 11.416649>,  <16.911058, 17.832294, 11.151061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.594645, 18.433434, 11.416649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.314606, 18.149769, 11.450012>,  <16.146584, 17.979570, 11.470031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.314606, 18.149769, 11.450012>,  <16.594645, 18.433434, 11.416649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.314606, 18.149769, 11.450012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250053, 0.352903, 0.901628,
		-0.668835, 0.610369, -0.424394,
		-0.700095, -0.709161, 0.083409,
		16.104578, 17.937021, 11.475035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.991917, 18.774828, 11.643888>,  <16.594645, 18.433434, 11.416649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.991917, 18.774828, 11.643888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.963706, 18.393555, 11.761510>,  <15.946780, 18.164791, 11.832083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.963706, 18.393555, 11.761510>,  <15.991917, 18.774828, 11.643888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.963706, 18.393555, 11.761510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301401, 0.301372, 0.904617,
		-0.950886, -0.024829, -0.308545,
		-0.070526, -0.953183, 0.294054,
		15.942548, 18.107599, 11.849726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.228674, 19.066236, 11.528521>,  <15.991917, 18.774828, 11.643888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.228674, 19.066236, 11.528521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.124759, 19.452343, 11.517440>,  <15.062409, 19.684008, 11.510792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.124759, 19.452343, 11.517440>,  <15.228674, 19.066236, 11.528521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.124759, 19.452343, 11.517440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257321, 0.041547, -0.965433,
		-0.930751, -0.257935, -0.259177,
		-0.259787, 0.965269, -0.027702,
		15.046823, 19.741924, 11.509130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.695146, 19.076181, 10.941867>,  <15.228674, 19.066236, 11.528521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.695146, 19.076181, 10.941867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.860610, 19.437103, 10.990416>,  <14.959888, 19.653656, 11.019545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.860610, 19.437103, 10.990416>,  <14.695146, 19.076181, 10.941867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.860610, 19.437103, 10.990416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061049, 0.105522, -0.992541,
		-0.908382, 0.417985, -0.011435,
		0.413660, 0.902305, 0.121372,
		14.984708, 19.707794, 11.026827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.421165, 19.482924, 10.373205>,  <14.695146, 19.076181, 10.941867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.421165, 19.482924, 10.373205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.729146, 19.687988, 10.525181>,  <14.913935, 19.811028, 10.616366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.729146, 19.687988, 10.525181>,  <14.421165, 19.482924, 10.373205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.729146, 19.687988, 10.525181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264700, 0.285168, -0.921202,
		-0.580611, 0.809851, 0.083864,
		0.769951, 0.512661, 0.379939,
		14.960132, 19.841787, 10.639162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.491524, 20.008457, 9.909786>,  <14.421165, 19.482924, 10.373205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.491524, 20.008457, 9.909786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.855666, 19.955662, 10.066670>,  <15.074152, 19.923985, 10.160801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.855666, 19.955662, 10.066670>,  <14.491524, 20.008457, 9.909786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.855666, 19.955662, 10.066670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412430, 0.211658, -0.886060,
		0.033937, 0.968390, 0.247120,
		0.910357, -0.131990, 0.392210,
		15.128774, 19.916065, 10.184334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.877884, 20.438984, 9.543944>,  <14.491524, 20.008457, 9.909786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.877884, 20.438984, 9.543944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.171529, 20.238640, 9.727343>,  <15.347715, 20.118433, 9.837381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.171529, 20.238640, 9.727343>,  <14.877884, 20.438984, 9.543944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.171529, 20.238640, 9.727343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583663, 0.120379, -0.803023,
		0.347010, 0.857116, 0.380706,
		0.734113, -0.500861, 0.458495,
		15.391763, 20.088381, 9.864891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.549956, 20.866478, 9.481737>,  <14.877884, 20.438984, 9.543944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.549956, 20.866478, 9.481737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.598680, 20.472450, 9.530407>,  <15.627913, 20.236034, 9.559608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.598680, 20.472450, 9.530407>,  <15.549956, 20.866478, 9.481737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.598680, 20.472450, 9.530407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425670, -0.058896, -0.902960,
		0.896643, 0.161780, 0.412140,
		0.121807, -0.985068, 0.121673,
		15.635221, 20.176929, 9.566909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.276642, 20.720333, 9.193680>,  <15.549956, 20.866478, 9.481737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.276642, 20.720333, 9.193680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.084118, 20.369717, 9.195374>,  <15.968604, 20.159348, 9.196390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.084118, 20.369717, 9.195374>,  <16.276642, 20.720333, 9.193680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.084118, 20.369717, 9.195374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491819, -0.274050, -0.826445,
		0.725573, -0.395693, 0.563002,
		-0.481309, -0.876541, 0.004234,
		15.939725, 20.106754, 9.196644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.794449, 20.145844, 9.065774>,  <16.276642, 20.720333, 9.193680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.794449, 20.145844, 9.065774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.457497, 19.942631, 8.993884>,  <16.255325, 19.820704, 8.950750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.457497, 19.942631, 8.993884>,  <16.794449, 20.145844, 9.065774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.457497, 19.942631, 8.993884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415840, -0.400699, -0.816405,
		0.342742, -0.762460, 0.548800,
		-0.842380, -0.508030, -0.179726,
		16.204782, 19.790222, 8.939966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.031336, 19.482037, 8.972777>,  <16.794449, 20.145844, 9.065774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.031336, 19.482037, 8.972777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.678387, 19.495975, 8.785072>,  <16.466618, 19.504339, 8.672449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.678387, 19.495975, 8.785072>,  <17.031336, 19.482037, 8.972777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.678387, 19.495975, 8.785072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428358, -0.353273, -0.831689,
		-0.194759, -0.934871, 0.296791,
		-0.882371, 0.034846, -0.469263,
		16.413675, 19.506430, 8.644294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.916601, 18.856730, 8.741892>,  <17.031336, 19.482037, 8.972777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.916601, 18.856730, 8.741892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.708488, 19.098000, 8.500071>,  <16.583620, 19.242762, 8.354978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.708488, 19.098000, 8.500071>,  <16.916601, 18.856730, 8.741892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.708488, 19.098000, 8.500071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605440, -0.238738, -0.759240,
		-0.602284, -0.761042, -0.240975,
		-0.520284, 0.603175, -0.604554,
		16.552402, 19.278952, 8.318705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.761204, 18.458090, 8.029976>,  <16.916601, 18.856730, 8.741892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.761204, 18.458090, 8.029976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.748955, 18.851681, 7.959716>,  <16.741606, 19.087835, 7.917560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.748955, 18.851681, 7.959716>,  <16.761204, 18.458090, 8.029976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.748955, 18.851681, 7.959716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395809, -0.149430, -0.906094,
		-0.917822, -0.097271, -0.384891,
		-0.030623, 0.983976, -0.175651,
		16.739767, 19.146873, 7.907021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.518862, 18.562157, 7.379270>,  <16.761204, 18.458090, 8.029976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.518862, 18.562157, 7.379270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.693733, 18.915955, 7.444442>,  <16.798656, 19.128233, 7.483545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.693733, 18.915955, 7.444442>,  <16.518862, 18.562157, 7.379270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.693733, 18.915955, 7.444442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402247, -0.030262, -0.915031,
		-0.804409, 0.465568, -0.369015,
		0.437176, 0.884494, 0.162930,
		16.824886, 19.181303, 7.493321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<13.680091, 19.760942, 15.085257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.881444, 20.105408, 15.056971>,  <14.002255, 20.312088, 15.039999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.881444, 20.105408, 15.056971>,  <13.680091, 19.760942, 15.085257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.881444, 20.105408, 15.056971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069983, -0.122204, -0.990034,
		-0.861225, 0.493417, -0.121782,
		0.503382, 0.861165, -0.070715,
		14.032458, 20.363758, 15.035756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.362010, 20.000380, 14.553046>,  <13.680091, 19.760942, 15.085257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.362010, 20.000380, 14.553046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.718535, 20.176250, 14.597307>,  <13.932451, 20.281773, 14.623863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.718535, 20.176250, 14.597307>,  <13.362010, 20.000380, 14.553046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.718535, 20.176250, 14.597307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212544, -0.189630, -0.958575,
		-0.400480, 0.877910, -0.262470,
		0.891314, 0.439676, 0.110652,
		13.985929, 20.308153, 14.630503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.407207, 20.589134, 14.072470>,  <13.362010, 20.000380, 14.553046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.407207, 20.589134, 14.072470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.781722, 20.461994, 14.132257>,  <14.006431, 20.385710, 14.168130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.781722, 20.461994, 14.132257>,  <13.407207, 20.589134, 14.072470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.781722, 20.461994, 14.132257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189791, 0.099751, -0.976744,
		0.295547, 0.942879, 0.153721,
		0.936286, -0.317849, 0.149469,
		14.062608, 20.366640, 14.177098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.761826, 21.019455, 13.549405>,  <13.407207, 20.589134, 14.072470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.761826, 21.019455, 13.549405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.010947, 20.736137, 13.682331>,  <14.160420, 20.566147, 13.762087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.010947, 20.736137, 13.682331>,  <13.761826, 21.019455, 13.549405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.010947, 20.736137, 13.682331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415502, -0.060464, -0.907580,
		0.662928, 0.703322, 0.256641,
		0.622804, -0.708295, 0.332315,
		14.197788, 20.523649, 13.782025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.461490, 21.257336, 13.348664>,  <13.761826, 21.019455, 13.549405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.461490, 21.257336, 13.348664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.470630, 20.861755, 13.407255>,  <14.476113, 20.624407, 13.442410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.470630, 20.861755, 13.407255>,  <14.461490, 21.257336, 13.348664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.470630, 20.861755, 13.407255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387760, -0.126279, -0.913069,
		0.921477, 0.077662, 0.380590,
		0.022850, -0.988950, 0.146478,
		14.477485, 20.565071, 13.451199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.069283, 21.130562, 12.992849>,  <14.461490, 21.257336, 13.348664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.069283, 21.130562, 12.992849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.889472, 20.777473, 13.047585>,  <14.781586, 20.565620, 13.080426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.889472, 20.777473, 13.047585>,  <15.069283, 21.130562, 12.992849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.889472, 20.777473, 13.047585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332195, -0.307403, -0.891712,
		0.829199, -0.355392, 0.431422,
		-0.449527, -0.882723, 0.136839,
		14.754614, 20.512657, 13.088636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.592852, 20.701769, 12.654592>,  <15.069283, 21.130562, 12.992849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.592852, 20.701769, 12.654592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.247081, 20.503975, 12.690926>,  <15.039618, 20.385298, 12.712726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.247081, 20.503975, 12.690926>,  <15.592852, 20.701769, 12.654592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.247081, 20.503975, 12.690926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122304, -0.382070, -0.916004,
		0.487656, -0.780709, 0.390750,
		-0.864427, -0.494485, 0.090835,
		14.987753, 20.355629, 12.718176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.775392, 20.083111, 12.397422>,  <15.592852, 20.701769, 12.654592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.775392, 20.083111, 12.397422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.377492, 20.097874, 12.359238>,  <15.138752, 20.106731, 12.336327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.377492, 20.097874, 12.359238>,  <15.775392, 20.083111, 12.397422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.377492, 20.097874, 12.359238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071566, -0.415947, -0.906568,
		-0.073166, -0.908640, 0.411121,
		-0.994749, 0.036908, -0.095461,
		15.079067, 20.108946, 12.330600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.597271, 19.411251, 12.175649>,  <15.775392, 20.083111, 12.397422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.597271, 19.411251, 12.175649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.311116, 19.662296, 12.052799>,  <15.139423, 19.812923, 11.979090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.311116, 19.662296, 12.052799>,  <15.597271, 19.411251, 12.175649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.311116, 19.662296, 12.052799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136196, -0.305866, -0.942283,
		-0.685327, -0.715925, 0.133334,
		-0.715386, 0.627612, -0.307124,
		15.096500, 19.850580, 11.960662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.345707, 18.685026, 12.191733>,  <15.597271, 19.411251, 12.175649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.345707, 18.685026, 12.191733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.556369, 18.350277, 12.251438>,  <15.682766, 18.149427, 12.287261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.556369, 18.350277, 12.251438>,  <15.345707, 18.685026, 12.191733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.556369, 18.350277, 12.251438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086284, 0.122053, 0.988766,
		-0.845689, -0.533617, -0.007930,
		0.526655, -0.836873, 0.149261,
		15.714365, 18.099215, 12.296217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.027757, 18.467587, 12.806267>,  <15.345707, 18.685026, 12.191733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.027757, 18.467587, 12.806267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.344693, 18.223560, 12.807786>,  <15.534855, 18.077145, 12.808698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.344693, 18.223560, 12.807786>,  <15.027757, 18.467587, 12.806267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.344693, 18.223560, 12.807786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036464, 0.053572, 0.997898,
		-0.608987, -0.790538, 0.064693,
		0.792342, -0.610066, 0.003799,
		15.582396, 18.040541, 12.808926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.862145, 17.798990, 13.318810>,  <15.027757, 18.467587, 12.806267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.862145, 17.798990, 13.318810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.257039, 17.848167, 13.278303>,  <15.493975, 17.877674, 13.253999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.257039, 17.848167, 13.278303>,  <14.862145, 17.798990, 13.318810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.257039, 17.848167, 13.278303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110737, -0.072790, 0.991180,
		0.114486, -0.989741, -0.085475,
		0.987234, 0.122942, -0.101268,
		15.553209, 17.885050, 13.247923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.124076, 17.324894, 13.728214>,  <14.862145, 17.798990, 13.318810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.124076, 17.324894, 13.728214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.414077, 17.595524, 13.676643>,  <15.588078, 17.757902, 13.645700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.414077, 17.595524, 13.676643>,  <15.124076, 17.324894, 13.728214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.414077, 17.595524, 13.676643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141787, 0.036568, 0.989221,
		0.673995, -0.735467, -0.069418,
		0.725001, 0.676573, -0.128927,
		15.631577, 17.798496, 13.637965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.680957, 17.084984, 14.199825>,  <15.124076, 17.324894, 13.728214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.680957, 17.084984, 14.199825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.743989, 17.476460, 14.147154>,  <15.781808, 17.711344, 14.115551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.743989, 17.476460, 14.147154>,  <15.680957, 17.084984, 14.199825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.743989, 17.476460, 14.147154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281503, 0.083291, 0.955938,
		0.946533, -0.187705, -0.262379,
		0.157580, 0.978688, -0.131677,
		15.791264, 17.770065, 14.107651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.334110, 17.223934, 14.663589>,  <15.680957, 17.084984, 14.199825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.334110, 17.223934, 14.663589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.134453, 17.561543, 14.585121>,  <16.014658, 17.764109, 14.538040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.134453, 17.561543, 14.585121>,  <16.334110, 17.223934, 14.663589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.134453, 17.561543, 14.585121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025527, 0.240612, 0.970286,
		0.866143, 0.479305, -0.141645,
		-0.499144, 0.844022, -0.196170,
		15.984710, 17.814749, 14.526270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.719576, 17.777977, 14.974268>,  <16.334110, 17.223934, 14.663589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.719576, 17.777977, 14.974268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.351318, 17.926994, 14.927572>,  <16.130363, 18.016405, 14.899555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.351318, 17.926994, 14.927572>,  <16.719576, 17.777977, 14.974268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.351318, 17.926994, 14.927572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053291, 0.176301, 0.982893,
		0.386753, 0.911113, -0.142456,
		-0.920642, 0.372545, -0.116739,
		16.075127, 18.038757, 14.892550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.764490, 18.456783, 15.302014>,  <16.719576, 17.777977, 14.974268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.764490, 18.456783, 15.302014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.382870, 18.339108, 15.279255>,  <16.153898, 18.268501, 15.265599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.382870, 18.339108, 15.279255>,  <16.764490, 18.456783, 15.302014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.382870, 18.339108, 15.279255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109563, 0.165759, 0.980061,
		-0.278893, 0.941263, -0.190375,
		-0.954052, -0.294191, -0.056898,
		16.096655, 18.250851, 15.262185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.441212, 18.975349, 15.672237>,  <16.764490, 18.456783, 15.302014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.441212, 18.975349, 15.672237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.181984, 18.670769, 15.677927>,  <16.026447, 18.488020, 15.681340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.181984, 18.670769, 15.677927>,  <16.441212, 18.975349, 15.672237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.181984, 18.670769, 15.677927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053928, 0.064511, 0.996459,
		-0.759671, 0.645006, -0.082871,
		-0.648068, -0.761450, 0.014223,
		15.987564, 18.442333, 15.682194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.906889, 19.210440, 16.158411>,  <16.441212, 18.975349, 15.672237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.906889, 19.210440, 16.158411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.848168, 18.816391, 16.122662>,  <15.812936, 18.579962, 16.101212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.848168, 18.816391, 16.122662>,  <15.906889, 19.210440, 16.158411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.848168, 18.816391, 16.122662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209840, -0.057281, 0.976056,
		-0.966652, 0.162040, -0.198309,
		-0.146801, -0.985120, -0.089374,
		15.804129, 18.520855, 16.095850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.268970, 19.087458, 16.536312>,  <15.906889, 19.210440, 16.158411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.268970, 19.087458, 16.536312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.469350, 18.741764, 16.517782>,  <15.589579, 18.534348, 16.506664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.469350, 18.741764, 16.517782>,  <15.268970, 19.087458, 16.536312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.469350, 18.741764, 16.517782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232475, -0.185926, 0.954666,
		-0.833669, -0.467471, -0.294053,
		0.500951, -0.864235, -0.046325,
		15.619636, 18.482494, 16.503885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.009697, 18.564438, 17.086697>,  <15.268970, 19.087458, 16.536312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.009697, 18.564438, 17.086697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.344842, 18.357674, 17.016508>,  <15.545929, 18.233616, 16.974396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.344842, 18.357674, 17.016508>,  <15.009697, 18.564438, 17.086697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.344842, 18.357674, 17.016508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052133, -0.244206, 0.968321,
		-0.543387, -0.820467, -0.177663,
		0.837862, -0.516911, -0.175472,
		15.596201, 18.202600, 16.963867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.977941, 17.887875, 17.391886>,  <15.009697, 18.564438, 17.086697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.977941, 17.887875, 17.391886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.373271, 17.943390, 17.366751>,  <15.610470, 17.976700, 17.351669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.373271, 17.943390, 17.366751>,  <14.977941, 17.887875, 17.391886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.373271, 17.943390, 17.366751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069290, -0.042166, 0.996705,
		0.135683, -0.989424, -0.051291,
		0.988326, 0.138790, -0.062836,
		15.669769, 17.985027, 17.347900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.385637, 17.330822, 17.891771>,  <14.977941, 17.887875, 17.391886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.385637, 17.330822, 17.891771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.651544, 17.616081, 17.802771>,  <15.811088, 17.787237, 17.749371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.651544, 17.616081, 17.802771>,  <15.385637, 17.330822, 17.891771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.651544, 17.616081, 17.802771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378285, -0.064507, 0.923439,
		0.644194, -0.698041, -0.312654,
		0.664766, 0.713146, -0.222503,
		15.850973, 17.830025, 17.736019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<20.754555, 22.169115, 18.339752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.367958, 22.100311, 18.415966>,  <20.136000, 22.059029, 18.461695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.367958, 22.100311, 18.415966>,  <20.754555, 22.169115, 18.339752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.367958, 22.100311, 18.415966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083744, -0.490371, -0.867481,
		0.242650, -0.854370, 0.459535,
		-0.966492, -0.172011, 0.190537,
		20.078011, 22.048708, 18.473127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.656986, 21.474781, 18.160088>,  <20.754555, 22.169115, 18.339752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.656986, 21.474781, 18.160088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.299522, 21.653389, 18.142214>,  <20.085045, 21.760553, 18.131489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.299522, 21.653389, 18.142214>,  <20.656986, 21.474781, 18.160088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.299522, 21.653389, 18.142214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185448, -0.458154, -0.869312,
		-0.408631, -0.768584, 0.492240,
		-0.893661, 0.446513, -0.044684,
		20.031425, 21.787344, 18.128807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.329247, 20.935764, 17.733379>,  <20.656986, 21.474781, 18.160088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.329247, 20.935764, 17.733379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.103615, 21.264713, 17.703671>,  <19.968235, 21.462082, 17.685846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.103615, 21.264713, 17.703671>,  <20.329247, 20.935764, 17.733379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.103615, 21.264713, 17.703671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223018, -0.238338, -0.945229,
		-0.795032, -0.516621, 0.317846,
		-0.564080, 0.822373, -0.074270,
		19.934391, 21.511425, 17.681389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.722340, 20.732262, 17.503662>,  <20.329247, 20.935764, 17.733379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.722340, 20.732262, 17.503662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.714489, 21.124039, 17.423359>,  <19.709778, 21.359106, 17.375177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.714489, 21.124039, 17.423359>,  <19.722340, 20.732262, 17.503662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.714489, 21.124039, 17.423359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328940, -0.195946, -0.923799,
		-0.944147, 0.047906, 0.326024,
		-0.019628, 0.979444, -0.200760,
		19.708601, 21.417871, 17.363131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.252642, 20.781731, 16.979830>,  <19.722340, 20.732262, 17.503662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.252642, 20.781731, 16.979830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.408398, 21.149021, 16.950884>,  <19.501852, 21.369396, 16.933516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.408398, 21.149021, 16.950884>,  <19.252642, 20.781731, 16.979830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.408398, 21.149021, 16.950884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232359, 0.021902, -0.972383,
		-0.891282, 0.395452, 0.221886,
		0.389391, 0.918226, -0.072366,
		19.525215, 21.424488, 16.929174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.735422, 21.293667, 16.586222>,  <19.252642, 20.781731, 16.979830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.735422, 21.293667, 16.586222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.105835, 21.443680, 16.569181>,  <19.328083, 21.533688, 16.558958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.105835, 21.443680, 16.569181>,  <18.735422, 21.293667, 16.586222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.105835, 21.443680, 16.569181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083876, 0.094424, -0.991992,
		-0.368005, 0.922191, 0.118895,
		0.926033, 0.375031, -0.042601,
		19.383644, 21.556189, 16.556400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.665365, 21.831621, 16.113152>,  <18.735422, 21.293667, 16.586222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.665365, 21.831621, 16.113152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.050537, 21.725609, 16.133259>,  <19.281639, 21.662001, 16.145323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.050537, 21.725609, 16.133259>,  <18.665365, 21.831621, 16.113152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.050537, 21.725609, 16.133259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034243, -0.064743, -0.997314,
		0.267574, 0.962064, -0.053267,
		0.962929, -0.265031, 0.050268,
		19.339417, 21.646099, 16.148338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.996857, 22.293434, 15.697879>,  <18.665365, 21.831621, 16.113152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.996857, 22.293434, 15.697879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.249214, 21.984505, 15.727499>,  <19.400629, 21.799147, 15.745272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.249214, 21.984505, 15.727499>,  <18.996857, 22.293434, 15.697879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.249214, 21.984505, 15.727499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167511, 0.042398, -0.984958,
		0.757569, 0.633810, 0.156122,
		0.630895, -0.772326, 0.074051,
		19.438482, 21.752808, 15.749714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.535980, 22.509668, 15.203982>,  <18.996857, 22.293434, 15.697879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.535980, 22.509668, 15.203982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.626705, 22.122894, 15.250622>,  <19.681139, 21.890831, 15.278605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.626705, 22.122894, 15.250622>,  <19.535980, 22.509668, 15.203982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.626705, 22.122894, 15.250622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192764, -0.072783, -0.978542,
		0.954672, 0.244420, 0.169882,
		0.226810, -0.966934, 0.116599,
		19.694748, 21.832813, 15.285602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.150957, 22.412155, 14.830851>,  <19.535980, 22.509668, 15.203982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.150957, 22.412155, 14.830851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.975319, 22.052933, 14.841385>,  <19.869936, 21.837400, 14.847706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.975319, 22.052933, 14.841385>,  <20.150957, 22.412155, 14.830851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.975319, 22.052933, 14.841385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194077, -0.123432, -0.973190,
		0.877228, -0.422212, 0.228490,
		-0.439096, -0.898054, 0.026336,
		19.843590, 21.783516, 14.849286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.645164, 21.864651, 14.550885>,  <20.150957, 22.412155, 14.830851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.645164, 21.864651, 14.550885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.287445, 21.689350, 14.514740>,  <20.072813, 21.584169, 14.493052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.287445, 21.689350, 14.514740>,  <20.645164, 21.864651, 14.550885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.287445, 21.689350, 14.514740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246957, -0.314987, -0.916403,
		0.373153, -0.841853, 0.389922,
		-0.894297, -0.438253, -0.090363,
		20.019156, 21.557875, 14.487631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.893124, 21.243275, 14.440440>,  <20.645164, 21.864651, 14.550885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.893124, 21.243275, 14.440440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.527840, 21.315109, 14.294127>,  <20.308670, 21.358210, 14.206339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.527840, 21.315109, 14.294127>,  <20.893124, 21.243275, 14.440440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.527840, 21.315109, 14.294127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283458, -0.364921, -0.886839,
		-0.292744, -0.913555, 0.282345,
		-0.913210, 0.179584, -0.365783,
		20.253878, 21.368986, 14.184391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.836494, 20.690922, 13.983077>,  <20.893124, 21.243275, 14.440440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.836494, 20.690922, 13.983077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.529236, 20.929329, 13.889511>,  <20.344881, 21.072372, 13.833371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.529236, 20.929329, 13.889511>,  <20.836494, 20.690922, 13.983077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.529236, 20.929329, 13.889511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078274, -0.275180, -0.958201,
		-0.635474, -0.754346, 0.164725,
		-0.768144, 0.596019, -0.233915,
		20.298792, 21.108135, 13.819337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.244606, 20.277719, 13.733528>,  <20.836494, 20.690922, 13.983077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.244606, 20.277719, 13.733528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.259930, 20.644077, 13.573694>,  <20.269125, 20.863892, 13.477794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.259930, 20.644077, 13.573694>,  <20.244606, 20.277719, 13.733528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.259930, 20.644077, 13.573694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101731, -0.401376, -0.910246,
		-0.994074, -0.005777, -0.108552,
		0.038311, 0.915895, -0.399585,
		20.271423, 20.918846, 13.453818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.195744, 19.495312, 13.611650>,  <20.244606, 20.277719, 13.733528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.195744, 19.495312, 13.611650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.411957, 19.158791, 13.613905>,  <20.541685, 18.956877, 13.615257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.411957, 19.158791, 13.613905>,  <20.195744, 19.495312, 13.611650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.411957, 19.158791, 13.613905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023179, 0.021588, 0.999498,
		-0.841004, -0.540130, 0.031170,
		0.540532, -0.841305, 0.005636,
		20.574116, 18.906399, 13.615596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.961519, 19.219147, 14.236494>,  <20.195744, 19.495312, 13.611650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.961519, 19.219147, 14.236494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.305958, 19.039917, 14.140373>,  <20.512621, 18.932379, 14.082701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.305958, 19.039917, 14.140373>,  <19.961519, 19.219147, 14.236494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.305958, 19.039917, 14.140373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179769, -0.173788, 0.968236,
		-0.475604, -0.876942, -0.069098,
		0.861095, -0.448075, -0.240301,
		20.564287, 18.905495, 14.068283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.861301, 18.520340, 14.654753>,  <19.961519, 19.219147, 14.236494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.861301, 18.520340, 14.654753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.245937, 18.609409, 14.590546>,  <20.476719, 18.662851, 14.552021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.245937, 18.609409, 14.590546>,  <19.861301, 18.520340, 14.654753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.245937, 18.609409, 14.590546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175568, -0.049390, 0.983228,
		0.211011, -0.973641, -0.086587,
		0.961588, 0.222674, -0.160519,
		20.534414, 18.676210, 14.542390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.098349, 18.097855, 15.090081>,  <19.861301, 18.520340, 14.654753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.098349, 18.097855, 15.090081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.393974, 18.358662, 15.022364>,  <20.571350, 18.515146, 14.981733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.393974, 18.358662, 15.022364>,  <20.098349, 18.097855, 15.090081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.393974, 18.358662, 15.022364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244933, -0.025984, 0.969192,
		0.627530, -0.757760, -0.178904,
		0.739063, 0.652016, -0.169294,
		20.615694, 18.554266, 14.971576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.770212, 17.778107, 15.439700>,  <20.098349, 18.097855, 15.090081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.770212, 17.778107, 15.439700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.849640, 18.160862, 15.354910>,  <20.897297, 18.390514, 15.304035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.849640, 18.160862, 15.354910>,  <20.770212, 17.778107, 15.439700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.849640, 18.160862, 15.354910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327453, 0.139082, 0.934575,
		0.923767, -0.254990, -0.285719,
		0.198569, 0.956889, -0.211976,
		20.909210, 18.447929, 15.291317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.499458, 17.870304, 15.606274>,  <20.770212, 17.778107, 15.439700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.499458, 17.870304, 15.606274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.310833, 18.222080, 15.632250>,  <21.197659, 18.433146, 15.647836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.310833, 18.222080, 15.632250>,  <21.499458, 17.870304, 15.606274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.310833, 18.222080, 15.632250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205520, 0.037989, 0.977915,
		0.857549, 0.474494, -0.198657,
		-0.471562, 0.879439, 0.064940,
		21.169365, 18.485912, 15.651731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.903568, 18.307846, 16.052425>,  <21.499458, 17.870304, 15.606274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.903568, 18.307846, 16.052425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.530575, 18.451591, 16.037828>,  <21.306778, 18.537838, 16.029070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.530575, 18.451591, 16.037828>,  <21.903568, 18.307846, 16.052425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.530575, 18.451591, 16.037828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037316, 0.196332, 0.979827,
		0.359279, 0.912311, -0.196486,
		-0.932484, 0.359364, -0.036494,
		21.250830, 18.559401, 16.026880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.906885, 18.908794, 16.251268>,  <21.903568, 18.307846, 16.052425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.906885, 18.908794, 16.251268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.516857, 18.838135, 16.304981>,  <21.282841, 18.795738, 16.337208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.516857, 18.838135, 16.304981>,  <21.906885, 18.908794, 16.251268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.516857, 18.838135, 16.304981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045194, 0.434366, 0.899602,
		-0.217242, 0.883244, -0.415554,
		-0.975071, -0.176651, 0.134280,
		21.224337, 18.785139, 16.345264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.746628, 19.377344, 16.712536>,  <21.906885, 18.908794, 16.251268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.746628, 19.377344, 16.712536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.410088, 19.163242, 16.742569>,  <21.208164, 19.034782, 16.760590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.410088, 19.163242, 16.742569>,  <21.746628, 19.377344, 16.712536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.410088, 19.163242, 16.742569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135283, 0.343038, 0.929529,
		-0.523288, 0.771900, -0.361025,
		-0.841349, -0.535252, 0.075082,
		21.157682, 19.002666, 16.765093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.180414, 19.849298, 16.926233>,  <21.746628, 19.377344, 16.712536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.180414, 19.849298, 16.926233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.098824, 19.470154, 17.024176>,  <21.049870, 19.242666, 17.082941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.098824, 19.470154, 17.024176>,  <21.180414, 19.849298, 16.926233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.098824, 19.470154, 17.024176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280861, 0.296258, 0.912879,
		-0.937822, 0.117435, -0.326647,
		-0.203976, -0.947861, 0.244854,
		21.037630, 19.185795, 17.097631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.742323, 20.013758, 17.472017>,  <21.180414, 19.849298, 16.926233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.742323, 20.013758, 17.472017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.820133, 19.621948, 17.492760>,  <20.866819, 19.386862, 17.505205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.820133, 19.621948, 17.492760>,  <20.742323, 20.013758, 17.472017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.820133, 19.621948, 17.492760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438994, -0.039662, 0.897614,
		-0.877180, -0.197373, -0.437721,
		0.194526, -0.979526, 0.051855,
		20.878490, 19.328091, 17.508316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.088730, 19.547989, 17.650063>,  <20.742323, 20.013758, 17.472017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.088730, 19.547989, 17.650063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.407368, 19.341053, 17.775150>,  <20.598551, 19.216892, 17.850203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.407368, 19.341053, 17.775150>,  <20.088730, 19.547989, 17.650063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.407368, 19.341053, 17.775150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442642, -0.146862, 0.884590,
		-0.411707, -0.843084, -0.345986,
		0.796596, -0.517340, 0.312720,
		20.646347, 19.185852, 17.868967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.762291, 19.006182, 18.116205>,  <20.088730, 19.547989, 17.650063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.762291, 19.006182, 18.116205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.147484, 19.049568, 18.214916>,  <20.378599, 19.075600, 18.274143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.147484, 19.049568, 18.214916>,  <19.762291, 19.006182, 18.116205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.147484, 19.049568, 18.214916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248405, 0.001557, 0.968655,
		0.104683, -0.994099, 0.028444,
		0.962983, 0.108467, 0.246776,
		20.436378, 19.082108, 18.288948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.774189, 18.535715, 18.695326>,  <19.762291, 19.006182, 18.116205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.774189, 18.535715, 18.695326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.070786, 18.803734, 18.709335>,  <20.248743, 18.964546, 18.717741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.070786, 18.803734, 18.709335>,  <19.774189, 18.535715, 18.695326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.070786, 18.803734, 18.709335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178999, 0.147235, 0.972770,
		0.646646, -0.727569, 0.229112,
		0.741491, 0.670049, 0.035025,
		20.293232, 19.004747, 18.719843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.766417, 17.791006, 18.928377>,  <19.774189, 18.535715, 18.695326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.766417, 17.791006, 18.928377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.379314, 17.703613, 18.878231>,  <19.147053, 17.651178, 18.848143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.379314, 17.703613, 18.878231>,  <19.766417, 17.791006, 18.928377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.379314, 17.703613, 18.878231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163952, -0.168496, -0.971972,
		0.191235, -0.961184, 0.198883,
		-0.967755, -0.218482, -0.125366,
		19.088987, 17.638069, 18.840622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.754749, 17.133749, 18.563610>,  <19.766417, 17.791006, 18.928377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.754749, 17.133749, 18.563610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.392162, 17.287048, 18.492683>,  <19.174610, 17.379028, 18.450127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.392162, 17.287048, 18.492683>,  <19.754749, 17.133749, 18.563610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.392162, 17.287048, 18.492683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001218, -0.422277, -0.906466,
		-0.422277, -0.821465, 0.383246,
		0.906466, -0.383246, 0.177317,
		19.120222, 17.402021, 18.439487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.404507, 16.618040, 18.171305>,  <19.754749, 17.133749, 18.563610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.404507, 16.618040, 18.171305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.172142, 16.939301, 18.118406>,  <19.032724, 17.132057, 18.086666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.172142, 16.939301, 18.118406>,  <19.404507, 16.618040, 18.171305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.172142, 16.939301, 18.118406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300095, -0.362353, -0.882408,
		-0.756629, -0.472912, 0.451517,
		-0.580910, 0.803153, -0.132248,
		18.997869, 17.180246, 18.078732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.666771, 16.396938, 18.063070>,  <19.404507, 16.618040, 18.171305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.666771, 16.396938, 18.063070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.737640, 16.736336, 17.863604>,  <18.780163, 16.939974, 17.743923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.737640, 16.736336, 17.863604>,  <18.666771, 16.396938, 18.063070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.737640, 16.736336, 17.863604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188417, -0.468068, -0.863372,
		-0.965975, 0.246925, 0.076941,
		0.177174, 0.848493, -0.498667,
		18.790792, 16.990883, 17.714003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.186312, 16.287981, 17.543856>,  <18.666771, 16.396938, 18.063070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.186312, 16.287981, 17.543856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.386173, 16.616611, 17.434048>,  <18.506090, 16.813789, 17.368164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.386173, 16.616611, 17.434048>,  <18.186312, 16.287981, 17.543856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.386173, 16.616611, 17.434048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264736, -0.156916, -0.951469,
		-0.824780, 0.548079, 0.139097,
		0.499654, 0.821575, -0.274518,
		18.536070, 16.863085, 17.351692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.752672, 16.654716, 17.087681>,  <18.186312, 16.287981, 17.543856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.752672, 16.654716, 17.087681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.134155, 16.757103, 17.024534>,  <18.363045, 16.818535, 16.986647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.134155, 16.757103, 17.024534>,  <17.752672, 16.654716, 17.087681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.134155, 16.757103, 17.024534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155506, -0.029566, -0.987392,
		-0.257404, 0.966234, 0.011607,
		0.953709, 0.255964, -0.157866,
		18.420267, 16.833893, 16.977175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.729414, 17.186314, 16.580143>,  <17.752672, 16.654716, 17.087681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.729414, 17.186314, 16.580143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.093575, 17.022663, 16.555529>,  <18.312071, 16.924473, 16.540760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.093575, 17.022663, 16.555529>,  <17.729414, 17.186314, 16.580143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.093575, 17.022663, 16.555529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093315, -0.058149, -0.993937,
		0.403068, 0.910623, -0.091117,
		0.910400, -0.409127, -0.061537,
		18.366695, 16.899925, 16.537067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.021877, 17.485781, 16.004986>,  <17.729414, 17.186314, 16.580143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.021877, 17.485781, 16.004986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.238007, 17.153538, 16.058861>,  <18.367685, 16.954191, 16.091187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.238007, 17.153538, 16.058861>,  <18.021877, 17.485781, 16.004986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.238007, 17.153538, 16.058861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102445, -0.093941, -0.990293,
		0.835197, 0.548878, 0.034333,
		0.540325, -0.830607, 0.134690,
		18.400105, 16.904356, 16.099268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.509853, 17.505634, 15.531384>,  <18.021877, 17.485781, 16.004986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.509853, 17.505634, 15.531384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.503777, 17.115753, 15.620575>,  <18.500132, 16.881824, 15.674090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.503777, 17.115753, 15.620575>,  <18.509853, 17.505634, 15.531384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.503777, 17.115753, 15.620575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151670, -0.222671, -0.963023,
		0.988314, 0.019190, 0.151216,
		-0.015191, -0.974705, 0.222979,
		18.499220, 16.823341, 15.687469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.107767, 17.228065, 15.104493>,  <18.509853, 17.505634, 15.531384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.107767, 17.228065, 15.104493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.916439, 16.895229, 15.216803>,  <18.801641, 16.695528, 15.284188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.916439, 16.895229, 15.216803>,  <19.107767, 17.228065, 15.104493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.916439, 16.895229, 15.216803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348111, -0.473181, -0.809270,
		0.806244, -0.289350, 0.515992,
		-0.478320, -0.832091, 0.280774,
		18.772943, 16.645601, 15.301035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.576262, 16.641569, 14.896587>,  <19.107767, 17.228065, 15.104493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.576262, 16.641569, 14.896587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.202660, 16.507179, 14.945179>,  <18.978498, 16.426546, 14.974334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.202660, 16.507179, 14.945179>,  <19.576262, 16.641569, 14.896587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.202660, 16.507179, 14.945179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013460, -0.372878, -0.927783,
		0.357008, -0.864918, 0.352792,
		-0.934004, -0.335974, 0.121479,
		18.922459, 16.406387, 14.981623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.654600, 15.904568, 14.693869>,  <19.576262, 16.641569, 14.896587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.654600, 15.904568, 14.693869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.271790, 16.015942, 14.661436>,  <19.042103, 16.082766, 14.641976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.271790, 16.015942, 14.661436>,  <19.654600, 15.904568, 14.693869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.271790, 16.015942, 14.661436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038799, -0.400013, -0.915688,
		-0.287391, -0.873192, 0.393626,
		-0.957027, 0.278433, -0.081081,
		18.984682, 16.099472, 14.637112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.343628, 15.428082, 14.360726>,  <19.654600, 15.904568, 14.693869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.343628, 15.428082, 14.360726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.087814, 15.728207, 14.293758>,  <18.934326, 15.908281, 14.253577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.087814, 15.728207, 14.293758>,  <19.343628, 15.428082, 14.360726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.087814, 15.728207, 14.293758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108644, -0.303805, -0.946519,
		-0.761047, -0.587142, 0.275811,
		-0.639535, 0.750311, -0.167420,
		18.895954, 15.953300, 14.243532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.812038, 15.103110, 13.998896>,  <19.343628, 15.428082, 14.360726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.812038, 15.103110, 13.998896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.770763, 15.489811, 13.905306>,  <18.745998, 15.721831, 13.849152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.770763, 15.489811, 13.905306>,  <18.812038, 15.103110, 13.998896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.770763, 15.489811, 13.905306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196684, -0.250418, -0.947948,
		-0.975022, -0.051798, 0.215985,
		-0.103188, 0.966751, -0.233975,
		18.739807, 15.779837, 13.835114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<16.661495, 17.126177, 18.237959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.636604, 17.517887, 18.160868>,  <16.621670, 17.752914, 18.114613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.636604, 17.517887, 18.160868>,  <16.661495, 17.126177, 18.237959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.636604, 17.517887, 18.160868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094968, 0.198034, 0.975584,
		0.993533, 0.042407, -0.105324,
		-0.062229, 0.979277, -0.192726,
		16.617935, 17.811670, 18.103050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.202482, 17.518085, 18.600842>,  <16.661495, 17.126177, 18.237959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.202482, 17.518085, 18.600842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.900383, 17.775314, 18.550148>,  <16.719124, 17.929651, 18.519732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.900383, 17.775314, 18.550148>,  <17.202482, 17.518085, 18.600842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.900383, 17.775314, 18.550148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091424, 0.294821, 0.951169,
		0.649031, 0.706782, -0.281455,
		-0.755248, 0.643070, -0.126732,
		16.673809, 17.968235, 18.512129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.353188, 17.893608, 19.151930>,  <17.202482, 17.518085, 18.600842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.353188, 17.893608, 19.151930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.979271, 17.998508, 19.056103>,  <16.754921, 18.061449, 18.998608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.979271, 17.998508, 19.056103>,  <17.353188, 17.893608, 19.151930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.979271, 17.998508, 19.056103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163711, 0.280448, 0.945805,
		0.315223, 0.923349, -0.219227,
		-0.934790, 0.262250, -0.239566,
		16.698833, 18.077183, 18.984232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.208467, 18.680912, 19.355680>,  <17.353188, 17.893608, 19.151930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.208467, 18.680912, 19.355680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.874214, 18.461403, 19.346182>,  <16.673662, 18.329699, 19.340483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.874214, 18.461403, 19.346182>,  <17.208467, 18.680912, 19.355680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.874214, 18.461403, 19.346182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268578, 0.370498, 0.889155,
		-0.479144, 0.749388, -0.456989,
		-0.835636, -0.548771, -0.023747,
		16.623524, 18.296772, 19.339058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.656256, 19.139601, 19.604322>,  <17.208467, 18.680912, 19.355680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.656256, 19.139601, 19.604322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.500923, 18.772991, 19.642660>,  <16.407722, 18.553026, 19.665663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.500923, 18.772991, 19.642660>,  <16.656256, 19.139601, 19.604322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.500923, 18.772991, 19.642660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302773, 0.225129, 0.926092,
		-0.870360, 0.330613, -0.364923,
		-0.388333, -0.916522, 0.095843,
		16.384424, 18.498035, 19.671413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.015602, 19.288633, 19.705624>,  <16.656256, 19.139601, 19.604322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.015602, 19.288633, 19.705624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.092548, 18.935398, 19.876808>,  <16.138716, 18.723457, 19.979519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.092548, 18.935398, 19.876808>,  <16.015602, 19.288633, 19.705624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.092548, 18.935398, 19.876808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326893, 0.353531, 0.876445,
		-0.925277, -0.308493, -0.220669,
		0.192364, -0.883090, 0.427959,
		16.150257, 18.670471, 20.005196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.517108, 19.284449, 20.228088>,  <16.015602, 19.288633, 19.705624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.517108, 19.284449, 20.228088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.751117, 18.979218, 20.337969>,  <15.891521, 18.796078, 20.403896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.751117, 18.979218, 20.337969>,  <15.517108, 19.284449, 20.228088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.751117, 18.979218, 20.337969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259422, 0.144846, 0.954840,
		-0.768408, -0.629865, -0.113222,
		0.585021, -0.763079, 0.274702,
		15.926623, 18.750294, 20.420380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.110011, 18.874660, 20.725365>,  <15.517108, 19.284449, 20.228088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.110011, 18.874660, 20.725365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.476541, 18.739677, 20.811598>,  <15.696458, 18.658688, 20.863338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.476541, 18.739677, 20.811598>,  <15.110011, 18.874660, 20.725365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.476541, 18.739677, 20.811598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263372, -0.102342, 0.959250,
		-0.301642, -0.935761, -0.182655,
		0.916323, -0.337456, 0.215583,
		15.751437, 18.638441, 20.876272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.014826, 18.289524, 21.121553>,  <15.110011, 18.874660, 20.725365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.014826, 18.289524, 21.121553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.382535, 18.409435, 21.223587>,  <15.603161, 18.481382, 21.284807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.382535, 18.409435, 21.223587>,  <15.014826, 18.289524, 21.121553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.382535, 18.409435, 21.223587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227018, -0.125623, 0.965755,
		0.321559, -0.945701, -0.047426,
		0.919273, 0.299780, 0.255086,
		15.658317, 18.499369, 21.300114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.320486, 17.710611, 21.556410>,  <15.014826, 18.289524, 21.121553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.320486, 17.710611, 21.556410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.526792, 18.046215, 21.625750>,  <15.650575, 18.247578, 21.667353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.526792, 18.046215, 21.625750>,  <15.320486, 17.710611, 21.556410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.526792, 18.046215, 21.625750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066506, -0.162518, 0.984462,
		0.854145, -0.519279, -0.028022,
		0.515764, 0.839010, 0.173349,
		15.681521, 18.297918, 21.677753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.786836, 17.521343, 22.105619>,  <15.320486, 17.710611, 21.556410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.786836, 17.521343, 22.105619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.813869, 17.919765, 22.128624>,  <15.830088, 18.158819, 22.142426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.813869, 17.919765, 22.128624>,  <15.786836, 17.521343, 22.105619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.813869, 17.919765, 22.128624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052029, -0.061082, 0.996776,
		0.996356, -0.064372, -0.055952,
		0.067582, 0.996055, 0.057510,
		15.834143, 18.218582, 22.145878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.256535, 17.717712, 22.691599>,  <15.786836, 17.521343, 22.105619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.256535, 17.717712, 22.691599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.045906, 18.053757, 22.639544>,  <15.919529, 18.255383, 22.608311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.045906, 18.053757, 22.639544>,  <16.256535, 17.717712, 22.691599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.045906, 18.053757, 22.639544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114821, 0.081396, 0.990046,
		0.842340, 0.536274, 0.053601,
		-0.526573, 0.840110, -0.130139,
		15.887934, 18.305790, 22.600502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.731289, 18.286068, 22.810049>,  <16.256535, 17.717712, 22.691599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.731289, 18.286068, 22.810049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.339375, 18.295338, 22.889528>,  <16.104225, 18.300900, 22.937216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.339375, 18.295338, 22.889528>,  <16.731289, 18.286068, 22.810049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.339375, 18.295338, 22.889528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199189, 0.204874, 0.958306,
		-0.018499, 0.978514, -0.205349,
		-0.979787, 0.023175, 0.198699,
		16.045439, 18.302290, 22.949139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.396242, 18.596968, 23.304226>,  <16.731289, 18.286068, 22.810049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.396242, 18.596968, 23.304226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.742615, 18.708195, 23.137930>,  <16.950438, 18.774931, 23.038153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.742615, 18.708195, 23.137930>,  <16.396242, 18.596968, 23.304226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.742615, 18.708195, 23.137930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370227, -0.202525, -0.906596,
		-0.336294, 0.938968, -0.072424,
		0.865932, 0.278069, -0.415740,
		17.002394, 18.791616, 23.013208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.005169, 18.630001, 23.766403>,  <16.396242, 18.596968, 23.304226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.005169, 18.630001, 23.766403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.308994, 18.425613, 23.927385>,  <17.491291, 18.302980, 24.023973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.308994, 18.425613, 23.927385>,  <17.005169, 18.630001, 23.766403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.308994, 18.425613, 23.927385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060214, -0.560853, -0.825723,
		0.647637, 0.651424, -0.395237,
		0.759566, -0.510970, 0.402454,
		17.536863, 18.272322, 24.048122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.491442, 18.710232, 23.323175>,  <17.005169, 18.630001, 23.766403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.491442, 18.710232, 23.323175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.627670, 18.402248, 23.539017>,  <17.709408, 18.217457, 23.668522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.627670, 18.402248, 23.539017>,  <17.491442, 18.710232, 23.323175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.627670, 18.402248, 23.539017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278520, -0.465534, -0.840062,
		0.898018, 0.436392, 0.055902,
		0.340573, -0.769961, 0.539602,
		17.729841, 18.171261, 23.700897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.243338, 18.567696, 23.107391>,  <17.491442, 18.710232, 23.323175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.243338, 18.567696, 23.107391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.100166, 18.237713, 23.282358>,  <18.014263, 18.039722, 23.387339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.100166, 18.237713, 23.282358>,  <18.243338, 18.567696, 23.107391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.100166, 18.237713, 23.282358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219214, -0.529599, -0.819433,
		0.907653, -0.197410, 0.370400,
		-0.357928, -0.824957, 0.437417,
		17.992788, 17.990225, 23.413584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.818142, 18.133987, 23.074074>,  <18.243338, 18.567696, 23.107391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.818142, 18.133987, 23.074074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.482841, 17.917805, 23.103035>,  <18.281662, 17.788095, 23.120413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.482841, 17.917805, 23.103035>,  <18.818142, 18.133987, 23.074074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.482841, 17.917805, 23.103035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233627, -0.475947, -0.847875,
		0.492700, -0.693817, 0.525229,
		-0.838251, -0.540456, 0.072405,
		18.231365, 17.755669, 23.124756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.032488, 17.518124, 23.004457>,  <18.818142, 18.133987, 23.074074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.032488, 17.518124, 23.004457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.639763, 17.478851, 22.939461>,  <18.404127, 17.455288, 22.900463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.639763, 17.478851, 22.939461>,  <19.032488, 17.518124, 23.004457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.639763, 17.478851, 22.939461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189728, -0.538204, -0.821182,
		-0.006830, -0.837077, 0.547043,
		-0.981813, -0.098181, -0.162493,
		18.345219, 17.449398, 22.890713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.013046, 16.942364, 22.500481>,  <19.032488, 17.518124, 23.004457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.013046, 16.942364, 22.500481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.640091, 17.083496, 22.469078>,  <18.416317, 17.168175, 22.450237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.640091, 17.083496, 22.469078>,  <19.013046, 16.942364, 22.500481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.640091, 17.083496, 22.469078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017863, -0.261905, -0.964928,
		-0.361018, -0.898285, 0.250500,
		-0.932388, 0.352831, -0.078506,
		18.360374, 17.189344, 22.445526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.487263, 16.427992, 22.114082>,  <19.013046, 16.942364, 22.500481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.487263, 16.427992, 22.114082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.347569, 16.799274, 22.062748>,  <18.263752, 17.022043, 22.031946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.347569, 16.799274, 22.062748>,  <18.487263, 16.427992, 22.114082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.347569, 16.799274, 22.062748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073126, -0.109545, -0.991288,
		-0.934177, -0.355579, -0.029618,
		-0.349237, 0.928204, -0.128337,
		18.242798, 17.077736, 22.024246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.229610, 16.400908, 21.420954>,  <18.487263, 16.427992, 22.114082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.229610, 16.400908, 21.420954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.217705, 16.791325, 21.507164>,  <18.210562, 17.025576, 21.558891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.217705, 16.791325, 21.507164>,  <18.229610, 16.400908, 21.420954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.217705, 16.791325, 21.507164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010234, 0.215910, -0.976360,
		-0.999505, -0.026854, -0.016415,
		-0.029764, 0.976044, 0.215528,
		18.208776, 17.084137, 21.571823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.673975, 16.685549, 20.973534>,  <18.229610, 16.400908, 21.420954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.673975, 16.685549, 20.973534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.911518, 16.991447, 21.073532>,  <18.054045, 17.174986, 21.133532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.911518, 16.991447, 21.073532>,  <17.673975, 16.685549, 20.973534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.911518, 16.991447, 21.073532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047115, 0.277130, -0.959676,
		-0.803189, 0.581691, 0.128545,
		0.593859, 0.764745, 0.249995,
		18.089676, 17.220871, 21.148531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.375200, 17.351555, 20.680342>,  <17.673975, 16.685549, 20.973534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.375200, 17.351555, 20.680342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.765560, 17.411453, 20.743835>,  <17.999777, 17.447392, 20.781931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.765560, 17.411453, 20.743835>,  <17.375200, 17.351555, 20.680342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.765560, 17.411453, 20.743835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113533, 0.272795, -0.955350,
		-0.186362, 0.950347, 0.249220,
		0.975899, 0.149746, 0.158734,
		18.058331, 17.456377, 20.791456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.543648, 17.853111, 20.172216>,  <17.375200, 17.351555, 20.680342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.543648, 17.853111, 20.172216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.903477, 17.710411, 20.273012>,  <18.119373, 17.624790, 20.333490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.903477, 17.710411, 20.273012>,  <17.543648, 17.853111, 20.172216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.903477, 17.710411, 20.273012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242880, -0.070923, -0.967460,
		0.363014, 0.931504, 0.022847,
		0.899572, -0.356751, 0.251989,
		18.173347, 17.603386, 20.348608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.967358, 18.258051, 19.806412>,  <17.543648, 17.853111, 20.172216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.967358, 18.258051, 19.806412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.239471, 17.974213, 19.879827>,  <18.402740, 17.803909, 19.923878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.239471, 17.974213, 19.879827>,  <17.967358, 18.258051, 19.806412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.239471, 17.974213, 19.879827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270109, 0.009926, -0.962779,
		0.681361, 0.704540, 0.198421,
		0.680285, -0.709595, 0.183539,
		18.443558, 17.761333, 19.934889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.587545, 18.516384, 19.549782>,  <17.967358, 18.258051, 19.806412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.587545, 18.516384, 19.549782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.630203, 18.119530, 19.575989>,  <18.655798, 17.881416, 19.591713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.630203, 18.119530, 19.575989>,  <18.587545, 18.516384, 19.549782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.630203, 18.119530, 19.575989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390202, -0.018845, -0.920536,
		0.914532, 0.123735, 0.385124,
		0.106645, -0.992136, 0.065516,
		18.662197, 17.821888, 19.595644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.276001, 18.425056, 19.342165>,  <18.587545, 18.516384, 19.549782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.276001, 18.425056, 19.342165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.089638, 18.073566, 19.300655>,  <18.977819, 17.862673, 19.275749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.089638, 18.073566, 19.300655>,  <19.276001, 18.425056, 19.342165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.089638, 18.073566, 19.300655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376517, -0.090751, -0.921954,
		0.800728, -0.468619, 0.373137,
		-0.465907, -0.878727, -0.103776,
		18.949865, 17.809948, 19.269522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.152672, 18.388660, 19.281252>,  <19.276001, 18.425056, 19.342165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.152672, 18.388660, 19.281252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.299686, 18.749317, 19.190073>,  <20.387896, 18.965712, 19.135365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.299686, 18.749317, 19.190073>,  <20.152672, 18.388660, 19.281252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.299686, 18.749317, 19.190073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111816, 0.286168, 0.951633,
		0.923262, -0.324273, 0.205995,
		0.367538, 0.901640, -0.227949,
		20.409948, 19.019810, 19.121689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.748796, 18.575851, 19.797924>,  <20.152672, 18.388660, 19.281252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.748796, 18.575851, 19.797924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.597374, 18.916039, 19.651829>,  <20.506521, 19.120152, 19.564171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.597374, 18.916039, 19.651829>,  <20.748796, 18.575851, 19.797924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.597374, 18.916039, 19.651829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020768, 0.402312, 0.915267,
		0.925345, 0.338895, -0.169960,
		-0.378557, 0.850468, -0.365239,
		20.483807, 19.171179, 19.542257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.227200, 19.080631, 20.021809>,  <20.748796, 18.575851, 19.797924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.227200, 19.080631, 20.021809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.867550, 19.236015, 19.941141>,  <20.651760, 19.329247, 19.892740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.867550, 19.236015, 19.941141>,  <21.227200, 19.080631, 20.021809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.867550, 19.236015, 19.941141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080673, 0.305781, 0.948678,
		0.430190, 0.869251, -0.243597,
		-0.899126, 0.388460, -0.201669,
		20.597813, 19.352554, 19.880640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.235048, 19.720793, 20.433809>,  <21.227200, 19.080631, 20.021809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.235048, 19.720793, 20.433809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.849747, 19.732155, 20.326973>,  <20.618567, 19.738972, 20.262871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.849747, 19.732155, 20.326973>,  <21.235048, 19.720793, 20.433809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.849747, 19.732155, 20.326973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253472, 0.232843, 0.938902,
		0.088859, 0.972100, -0.217087,
		-0.963253, 0.028405, -0.267090,
		20.560770, 19.740677, 20.246845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.007002, 20.368284, 20.714914>,  <21.235048, 19.720793, 20.433809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.007002, 20.368284, 20.714914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.681778, 20.146523, 20.643839>,  <20.486645, 20.013466, 20.601192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.681778, 20.146523, 20.643839>,  <21.007002, 20.368284, 20.714914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.681778, 20.146523, 20.643839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340518, 0.205303, 0.917550,
		-0.472212, 0.806528, -0.355707,
		-0.813057, -0.554403, -0.177691,
		20.437860, 19.980202, 20.590532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.462566, 20.777105, 20.859200>,  <21.007002, 20.368284, 20.714914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.462566, 20.777105, 20.859200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.320580, 20.405350, 20.899662>,  <20.235388, 20.182297, 20.923941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.320580, 20.405350, 20.899662>,  <20.462566, 20.777105, 20.859200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.320580, 20.405350, 20.899662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242266, 0.195954, 0.950215,
		-0.902943, 0.312788, -0.294717,
		-0.354966, -0.929390, 0.101157,
		20.214090, 20.126534, 20.930010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.812462, 20.832411, 21.244587>,  <20.462566, 20.777105, 20.859200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.812462, 20.832411, 21.244587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.918983, 20.449486, 21.289545>,  <19.982897, 20.219730, 21.316521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.918983, 20.449486, 21.289545>,  <19.812462, 20.832411, 21.244587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.918983, 20.449486, 21.289545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145746, 0.075273, 0.986454,
		-0.952807, -0.279077, -0.119479,
		0.266304, -0.957314, 0.112395,
		19.998875, 20.162292, 21.323263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.113077, 21.100588, 21.158100>,  <19.812462, 20.832411, 21.244587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.113077, 21.100588, 21.158100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.205128, 21.489265, 21.136740>,  <19.260359, 21.722471, 21.123922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.205128, 21.489265, 21.136740>,  <19.113077, 21.100588, 21.158100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.205128, 21.489265, 21.136740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080014, -0.073583, -0.994074,
		-0.969865, 0.224492, -0.094683,
		0.230129, 0.971694, -0.053403,
		19.274166, 21.780773, 21.120718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.709639, 21.414326, 20.636742>,  <19.113077, 21.100588, 21.158100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.709639, 21.414326, 20.636742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.010643, 21.673267, 20.685163>,  <19.191246, 21.828632, 20.714216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.010643, 21.673267, 20.685163>,  <18.709639, 21.414326, 20.636742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.010643, 21.673267, 20.685163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035083, 0.144148, -0.988934,
		-0.657642, 0.748433, 0.085762,
		0.752513, 0.647356, 0.121055,
		19.236397, 21.867474, 20.721479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.539600, 21.919083, 20.231403>,  <18.709639, 21.414326, 20.636742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.539600, 21.919083, 20.231403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.933266, 21.954018, 20.293106>,  <19.169464, 21.974977, 20.330128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.933266, 21.954018, 20.293106>,  <18.539600, 21.919083, 20.231403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.933266, 21.954018, 20.293106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120884, 0.305807, -0.944388,
		-0.129652, 0.948079, 0.290407,
		0.984163, 0.087336, 0.154256,
		19.228516, 21.980219, 20.339382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.806238, 22.478535, 19.750074>,  <18.539600, 21.919083, 20.231403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.806238, 22.478535, 19.750074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.146255, 22.281273, 19.824070>,  <19.350266, 22.162916, 19.868467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.146255, 22.281273, 19.824070>,  <18.806238, 22.478535, 19.750074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.146255, 22.281273, 19.824070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338356, 0.242114, -0.909338,
		0.403657, 0.835571, 0.372670,
		0.850045, -0.493155, 0.184989,
		19.401270, 22.133326, 19.879566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.336084, 22.916166, 19.414492>,  <18.806238, 22.478535, 19.750074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.336084, 22.916166, 19.414492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.496803, 22.553032, 19.462473>,  <19.593235, 22.335152, 19.491262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.496803, 22.553032, 19.462473>,  <19.336084, 22.916166, 19.414492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.496803, 22.553032, 19.462473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484129, 0.099405, -0.869332,
		0.777288, 0.407370, 0.479451,
		0.401800, -0.907837, 0.119954,
		19.617344, 22.280682, 19.498459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.894625, 23.095449, 19.130333>,  <19.336084, 22.916166, 19.414492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.894625, 23.095449, 19.130333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.875484, 22.696297, 19.147953>,  <19.864000, 22.456804, 19.158525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.875484, 22.696297, 19.147953>,  <19.894625, 23.095449, 19.130333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.875484, 22.696297, 19.147953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195654, -0.052608, -0.979261,
		0.979505, -0.038241, 0.197758,
		-0.047851, -0.997883, 0.044048,
		19.861130, 22.396933, 19.161167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.429092, 22.910770, 18.682833>,  <19.894625, 23.095449, 19.130333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.429092, 22.910770, 18.682833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.170418, 22.609653, 18.731985>,  <20.015213, 22.428984, 18.761477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.170418, 22.609653, 18.731985>,  <20.429092, 22.910770, 18.682833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.170418, 22.609653, 18.731985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187096, -0.312731, -0.931233,
		0.739455, -0.579224, 0.343083,
		-0.646685, -0.752794, 0.122880,
		19.976412, 22.383816, 18.768848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<14.770771, 21.493649, 22.216696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.843415, 21.121670, 22.088810>,  <14.887002, 20.898483, 22.012079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.843415, 21.121670, 22.088810>,  <14.770771, 21.493649, 22.216696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.843415, 21.121670, 22.088810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439611, 0.214048, -0.872311,
		0.879636, 0.298970, -0.369941,
		0.181610, -0.929946, -0.319715,
		14.897898, 20.842686, 21.992895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.090586, 21.560600, 21.569300>,  <14.770771, 21.493649, 22.216696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.090586, 21.560600, 21.569300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.952785, 21.185089, 21.570992>,  <14.870104, 20.959784, 21.572006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.952785, 21.185089, 21.570992>,  <15.090586, 21.560600, 21.569300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.952785, 21.185089, 21.570992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230135, 0.080081, -0.969858,
		0.910141, -0.335092, -0.243633,
		-0.344502, -0.938776, 0.004232,
		14.849434, 20.903456, 21.572262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.418068, 21.270075, 20.942554>,  <15.090586, 21.560600, 21.569300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.418068, 21.270075, 20.942554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.101668, 21.035534, 21.012421>,  <14.911828, 20.894810, 21.054340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.101668, 21.035534, 21.012421>,  <15.418068, 21.270075, 20.942554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.101668, 21.035534, 21.012421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075001, -0.190405, -0.978837,
		0.607202, -0.787360, 0.106633,
		-0.791000, -0.586354, 0.174667,
		14.864368, 20.859629, 21.064821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.537927, 20.606682, 20.573000>,  <15.418068, 21.270075, 20.942554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.537927, 20.606682, 20.573000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.146834, 20.587929, 20.654823>,  <14.912179, 20.576677, 20.703917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.146834, 20.587929, 20.654823>,  <15.537927, 20.606682, 20.573000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.146834, 20.587929, 20.654823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193441, -0.176642, -0.965079,
		0.081377, -0.983158, 0.163640,
		-0.977732, -0.046881, 0.204558,
		14.853515, 20.573864, 20.716190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.342504, 20.086454, 20.098562>,  <15.537927, 20.606682, 20.573000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.342504, 20.086454, 20.098562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.009334, 20.296722, 20.167740>,  <14.809432, 20.422882, 20.209248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.009334, 20.296722, 20.167740>,  <15.342504, 20.086454, 20.098562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.009334, 20.296722, 20.167740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310331, -0.184939, -0.932466,
		-0.458184, -0.830343, 0.317171,
		-0.832924, 0.525669, 0.172945,
		14.759457, 20.454424, 20.219624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.812866, 19.676983, 19.806637>,  <15.342504, 20.086454, 20.098562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.812866, 19.676983, 19.806637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.685523, 20.055710, 19.825350>,  <14.609118, 20.282946, 19.836578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.685523, 20.055710, 19.825350>,  <14.812866, 19.676983, 19.806637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.685523, 20.055710, 19.825350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325073, -0.062679, -0.943610,
		-0.890492, -0.315613, 0.327738,
		-0.318357, 0.946816, 0.046782,
		14.590015, 20.339754, 19.839384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.150769, 19.634144, 19.480179>,  <14.812866, 19.676983, 19.806637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.150769, 19.634144, 19.480179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.244679, 20.022572, 19.462702>,  <14.301025, 20.255629, 19.452215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.244679, 20.022572, 19.462702>,  <14.150769, 19.634144, 19.480179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.244679, 20.022572, 19.462702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236277, 0.013407, -0.971593,
		-0.942897, 0.238430, 0.232589,
		0.234775, 0.971067, -0.043694,
		14.315112, 20.313892, 19.449593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.562905, 19.971498, 19.223728>,  <14.150769, 19.634144, 19.480179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.562905, 19.971498, 19.223728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.837598, 20.252914, 19.150591>,  <14.002414, 20.421764, 19.106709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.837598, 20.252914, 19.150591>,  <13.562905, 19.971498, 19.223728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.837598, 20.252914, 19.150591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453052, 0.217545, -0.864534,
		-0.568457, 0.676540, 0.468135,
		0.686732, 0.703539, -0.182843,
		14.043617, 20.463976, 19.095737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.203780, 20.606224, 18.886635>,  <13.562905, 19.971498, 19.223728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.203780, 20.606224, 18.886635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.588021, 20.622257, 18.776627>,  <13.818566, 20.631878, 18.710621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.588021, 20.622257, 18.776627>,  <13.203780, 20.606224, 18.886635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.588021, 20.622257, 18.776627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273248, 0.317018, -0.908204,
		0.050781, 0.947572, 0.315481,
		0.960602, 0.040085, -0.275020,
		13.876202, 20.634283, 18.694120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.185744, 21.162697, 18.490425>,  <13.203780, 20.606224, 18.886635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.185744, 21.162697, 18.490425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.540692, 21.012978, 18.382742>,  <13.753661, 20.923145, 18.318132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.540692, 21.012978, 18.382742>,  <13.185744, 21.162697, 18.490425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.540692, 21.012978, 18.382742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124723, 0.367252, -0.921721,
		0.443866, 0.851485, 0.279205,
		0.887371, -0.374297, -0.269210,
		13.806904, 20.900688, 18.301979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.669310, 21.714136, 18.060997>,  <13.185744, 21.162697, 18.490425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.669310, 21.714136, 18.060997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.814271, 21.351822, 17.973164>,  <13.901248, 21.134434, 17.920464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.814271, 21.351822, 17.973164>,  <13.669310, 21.714136, 18.060997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.814271, 21.351822, 17.973164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004253, 0.237203, -0.971451,
		0.932011, 0.351123, 0.089815,
		0.362404, -0.905785, -0.219583,
		13.922992, 21.080086, 17.907290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.278217, 21.862131, 17.613890>,  <13.669310, 21.714136, 18.060997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.278217, 21.862131, 17.613890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.148982, 21.488045, 17.555939>,  <14.071441, 21.263594, 17.521168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.148982, 21.488045, 17.555939>,  <14.278217, 21.862131, 17.613890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.148982, 21.488045, 17.555939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160879, 0.096584, -0.982237,
		0.932595, -0.340656, 0.119251,
		-0.323088, -0.935214, -0.144878,
		14.052055, 21.207481, 17.512476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.017470, 21.961992, 17.806694>,  <14.278217, 21.862131, 17.613890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.017470, 21.961992, 17.806694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.269397, 22.270813, 17.772589>,  <15.420552, 22.456106, 17.752127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.269397, 22.270813, 17.772589>,  <15.017470, 21.961992, 17.806694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.269397, 22.270813, 17.772589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020971, 0.092827, 0.995462,
		0.776462, -0.628745, 0.042273,
		0.629815, 0.772051, -0.085261,
		15.458342, 22.502428, 17.747011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.561900, 21.809547, 18.312801>,  <15.017470, 21.961992, 17.806694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.561900, 21.809547, 18.312801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.556176, 22.202717, 18.239414>,  <15.552742, 22.438618, 18.195381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.556176, 22.202717, 18.239414>,  <15.561900, 21.809547, 18.312801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.556176, 22.202717, 18.239414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002912, 0.183527, 0.983010,
		0.999893, 0.013533, -0.005488,
		-0.014310, 0.982921, -0.183468,
		15.551883, 22.497593, 18.184374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.044525, 22.101761, 18.822180>,  <15.561900, 21.809547, 18.312801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.044525, 22.101761, 18.822180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.783507, 22.384747, 18.713602>,  <15.626896, 22.554537, 18.648457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.783507, 22.384747, 18.713602>,  <16.044525, 22.101761, 18.822180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.783507, 22.384747, 18.713602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066484, 0.303386, 0.950546,
		0.754827, 0.638321, -0.150938,
		-0.652546, 0.707462, -0.271442,
		15.587744, 22.596985, 18.632170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.323730, 22.669474, 19.169119>,  <16.044525, 22.101761, 18.822180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.323730, 22.669474, 19.169119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.942197, 22.749027, 19.079102>,  <15.713276, 22.796759, 19.025091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.942197, 22.749027, 19.079102>,  <16.323730, 22.669474, 19.169119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.942197, 22.749027, 19.079102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124701, 0.419399, 0.899196,
		0.273218, 0.885748, -0.375237,
		-0.953835, 0.198884, -0.225041,
		15.656046, 22.808693, 19.011589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.336252, 23.340296, 19.326525>,  <16.323730, 22.669474, 19.169119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.336252, 23.340296, 19.326525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.954833, 23.219959, 19.332680>,  <15.725981, 23.147757, 19.336372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.954833, 23.219959, 19.332680>,  <16.336252, 23.340296, 19.326525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.954833, 23.219959, 19.332680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125544, 0.443317, 0.887530,
		-0.273829, 0.844371, -0.460494,
		-0.953549, -0.300843, 0.015387,
		15.668768, 23.129705, 19.337296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.881200, 23.901075, 19.450968>,  <16.336252, 23.340296, 19.326525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.881200, 23.901075, 19.450968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.679269, 23.577251, 19.570810>,  <15.558110, 23.382957, 19.642715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.679269, 23.577251, 19.570810>,  <15.881200, 23.901075, 19.450968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.679269, 23.577251, 19.570810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118204, 0.408641, 0.905009,
		-0.855088, 0.421459, -0.301986,
		-0.504828, -0.809558, 0.299606,
		15.527821, 23.334383, 19.660692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.430260, 24.294947, 19.840145>,  <15.881200, 23.901075, 19.450968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.430260, 24.294947, 19.840145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.420215, 23.907494, 19.939037>,  <15.414187, 23.675022, 19.998373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.420215, 23.907494, 19.939037>,  <15.430260, 24.294947, 19.840145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.420215, 23.907494, 19.939037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083095, 0.248477, 0.965067,
		-0.996225, 0.003693, -0.086728,
		-0.025114, -0.968631, 0.247232,
		15.412681, 23.616905, 20.013206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.043557, 24.305290, 20.455517>,  <15.430260, 24.294947, 19.840145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.043557, 24.305290, 20.455517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.168712, 23.927650, 20.497051>,  <15.243804, 23.701067, 20.521973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.168712, 23.927650, 20.497051>,  <15.043557, 24.305290, 20.455517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.168712, 23.927650, 20.497051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152080, 0.157714, 0.975704,
		-0.937536, -0.289492, 0.192924,
		0.312885, -0.944098, 0.103836,
		15.262577, 23.644421, 20.528202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.616599, 23.988792, 21.067705>,  <15.043557, 24.305290, 20.455517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.616599, 23.988792, 21.067705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.968480, 23.802670, 21.028490>,  <15.179608, 23.690996, 21.004961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.968480, 23.802670, 21.028490>,  <14.616599, 23.988792, 21.067705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.968480, 23.802670, 21.028490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053254, -0.108472, 0.992672,
		-0.472534, -0.878477, -0.070643,
		0.879702, -0.465309, -0.098039,
		15.232390, 23.663076, 20.999079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.533879, 23.304922, 21.517254>,  <14.616599, 23.988792, 21.067705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.533879, 23.304922, 21.517254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.919850, 23.396999, 21.466780>,  <15.151433, 23.452246, 21.436495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.919850, 23.396999, 21.466780>,  <14.533879, 23.304922, 21.517254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.919850, 23.396999, 21.466780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148673, -0.083038, 0.985394,
		0.216354, -0.969595, -0.114350,
		0.964929, 0.230194, -0.126187,
		15.209329, 23.466057, 21.428923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.816431, 22.920422, 22.061634>,  <14.533879, 23.304922, 21.517254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.816431, 22.920422, 22.061634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.104098, 23.170662, 21.940693>,  <15.276699, 23.320807, 21.868128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.104098, 23.170662, 21.940693>,  <14.816431, 22.920422, 22.061634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.104098, 23.170662, 21.940693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390837, -0.004437, 0.920449,
		0.574493, -0.780130, -0.247700,
		0.719169, 0.625602, -0.302355,
		15.319849, 23.358343, 21.849987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.461393, 22.629791, 22.358749>,  <14.816431, 22.920422, 22.061634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.461393, 22.629791, 22.358749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.541360, 23.014576, 22.284277>,  <15.589340, 23.245447, 22.239594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.541360, 23.014576, 22.284277>,  <15.461393, 22.629791, 22.358749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.541360, 23.014576, 22.284277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643456, 0.014402, 0.765348,
		0.738917, -0.272803, -0.616101,
		0.199916, 0.961962, -0.186179,
		15.601335, 23.303165, 22.228424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.226570, 22.622295, 22.220865>,  <15.461393, 22.629791, 22.358749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.226570, 22.622295, 22.220865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.160221, 23.013218, 22.273563>,  <16.120413, 23.247772, 22.305182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.160221, 23.013218, 22.273563>,  <16.226570, 22.622295, 22.220865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.160221, 23.013218, 22.273563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733128, 0.032857, 0.679297,
		0.659554, 0.209260, -0.721941,
		-0.165870, 0.977308, 0.131743,
		16.110460, 23.306410, 22.313086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.827194, 23.091799, 22.188782>,  <16.226570, 22.622295, 22.220865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.827194, 23.091799, 22.188782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.562759, 23.249027, 22.444426>,  <16.404099, 23.343365, 22.597811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.562759, 23.249027, 22.444426>,  <16.827194, 23.091799, 22.188782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.562759, 23.249027, 22.444426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732583, 0.154088, 0.663008,
		0.162131, 0.906505, -0.389823,
		-0.661087, 0.393072, 0.639107,
		16.364433, 23.366949, 22.636158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.260426, 22.831188, 22.719778>,  <16.827194, 23.091799, 22.188782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.260426, 22.831188, 22.719778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.542717, 22.749519, 22.991148>,  <17.712091, 22.700518, 23.153969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.542717, 22.749519, 22.991148>,  <17.260426, 22.831188, 22.719778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.542717, 22.749519, 22.991148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632020, -0.251278, -0.733082,
		0.320148, 0.946136, -0.048294,
		0.705731, -0.204173, 0.678423,
		17.754436, 22.688267, 23.194675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.933332, 23.223738, 22.545507>,  <17.260426, 22.831188, 22.719778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.933332, 23.223738, 22.545507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.027298, 22.901455, 22.763002>,  <18.083677, 22.708086, 22.893499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.027298, 22.901455, 22.763002>,  <17.933332, 23.223738, 22.545507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.027298, 22.901455, 22.763002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690305, -0.255538, -0.676889,
		0.684320, 0.534357, 0.496154,
		0.234914, -0.805706, 0.543739,
		18.097773, 22.659742, 22.926125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.686626, 23.299232, 22.606760>,  <17.933332, 23.223738, 22.545507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.686626, 23.299232, 22.606760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.573090, 22.922337, 22.677887>,  <18.504967, 22.696199, 22.720562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.573090, 22.922337, 22.677887>,  <18.686626, 23.299232, 22.606760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.573090, 22.922337, 22.677887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681619, -0.328699, -0.653722,
		0.674411, -0.064351, 0.735547,
		-0.283841, -0.942240, 0.177816,
		18.487938, 22.639664, 22.731232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.280939, 22.952152, 22.766115>,  <18.686626, 23.299232, 22.606760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.280939, 22.952152, 22.766115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.009281, 22.684181, 22.646145>,  <18.846287, 22.523399, 22.574162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.009281, 22.684181, 22.646145>,  <19.280939, 22.952152, 22.766115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.009281, 22.684181, 22.646145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656368, -0.371399, -0.656692,
		0.328544, -0.642853, 0.691953,
		-0.679147, -0.669928, -0.299927,
		18.805536, 22.483202, 22.556168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.602737, 22.277752, 22.728209>,  <19.280939, 22.952152, 22.766115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.602737, 22.277752, 22.728209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.278027, 22.213238, 22.503706>,  <19.083200, 22.174530, 22.369005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.278027, 22.213238, 22.503706>,  <19.602737, 22.277752, 22.728209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.278027, 22.213238, 22.503706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579858, -0.336452, -0.742001,
		-0.069161, -0.927786, 0.366646,
		-0.811777, -0.161285, -0.561254,
		19.034494, 22.164852, 22.335329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.731432, 21.641100, 22.348749>,  <19.602737, 22.277752, 22.728209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.731432, 21.641100, 22.348749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.461895, 21.848885, 22.138571>,  <19.300173, 21.973557, 22.012465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.461895, 21.848885, 22.138571>,  <19.731432, 21.641100, 22.348749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.461895, 21.848885, 22.138571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370038, -0.378277, -0.848516,
		-0.639537, -0.766201, 0.062678,
		-0.673843, 0.519464, -0.525446,
		19.259743, 22.004723, 21.980938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.443951, 21.120691, 21.848146>,  <19.731432, 21.641100, 22.348749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.443951, 21.120691, 21.848146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.358070, 21.483120, 21.702303>,  <19.306541, 21.700577, 21.614798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.358070, 21.483120, 21.702303>,  <19.443951, 21.120691, 21.848146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.358070, 21.483120, 21.702303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260094, -0.306790, -0.915550,
		-0.941411, -0.291403, -0.169795,
		-0.214702, 0.906071, -0.364607,
		19.293659, 21.754942, 21.592920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.265594, 20.464348, 21.791754>,  <19.443951, 21.120691, 21.848146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.265594, 20.464348, 21.791754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.595062, 20.237976, 21.777372>,  <19.792744, 20.102154, 21.768744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.595062, 20.237976, 21.777372>,  <19.265594, 20.464348, 21.791754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.595062, 20.237976, 21.777372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049093, -0.134325, 0.989721,
		-0.564941, -0.813438, -0.138423,
		0.823670, -0.565929, -0.035952,
		19.842163, 20.068197, 21.766586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.984930, 19.938154, 22.025234>,  <19.265594, 20.464348, 21.791754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.984930, 19.938154, 22.025234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.383209, 19.945087, 22.061651>,  <19.622177, 19.949247, 22.083502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.383209, 19.945087, 22.061651>,  <18.984930, 19.938154, 22.025234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.383209, 19.945087, 22.061651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090257, -0.041708, 0.995045,
		0.021052, -0.998979, -0.039964,
		0.995695, 0.017340, 0.091043,
		19.681917, 19.950289, 22.088964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.969120, 19.591785, 22.649385>,  <18.984930, 19.938154, 22.025234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.969120, 19.591785, 22.649385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.326279, 19.764378, 22.597906>,  <19.540573, 19.867933, 22.567019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.326279, 19.764378, 22.597906>,  <18.969120, 19.591785, 22.649385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.326279, 19.764378, 22.597906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118259, 0.051066, 0.991669,
		0.434460, -0.900675, -0.005430,
		0.892894, 0.431482, -0.128699,
		19.594147, 19.893822, 22.559296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.422577, 19.115576, 22.981657>,  <18.969120, 19.591785, 22.649385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.422577, 19.115576, 22.981657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.571186, 19.486721, 22.968721>,  <19.660351, 19.709408, 22.960960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.571186, 19.486721, 22.968721>,  <19.422577, 19.115576, 22.981657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.571186, 19.486721, 22.968721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058300, 0.011446, 0.998233,
		0.926592, -0.372751, -0.049842,
		0.371522, 0.927861, -0.032338,
		19.682642, 19.765079, 22.959021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.998423, 19.055017, 23.348318>,  <19.422577, 19.115576, 22.981657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.998423, 19.055017, 23.348318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.889668, 19.439945, 23.350170>,  <19.824413, 19.670902, 23.351280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.889668, 19.439945, 23.350170>,  <19.998423, 19.055017, 23.348318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.889668, 19.439945, 23.350170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057578, 0.011466, 0.998275,
		0.960604, 0.271687, -0.058525,
		-0.271889, 0.962317, 0.004629,
		19.808102, 19.728640, 23.351559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.221563, 19.306660, 23.940605>,  <19.998423, 19.055017, 23.348318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.221563, 19.306660, 23.940605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.955391, 19.590485, 23.847895>,  <19.795687, 19.760780, 23.792269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.955391, 19.590485, 23.847895>,  <20.221563, 19.306660, 23.940605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.955391, 19.590485, 23.847895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234203, 0.096361, 0.967401,
		0.708765, 0.698023, 0.102060,
		-0.665433, 0.709562, -0.231777,
		19.755760, 19.803352, 23.778362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.163754, 19.707047, 24.519619>,  <20.221563, 19.306660, 23.940605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.163754, 19.707047, 24.519619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.823387, 19.810509, 24.336735>,  <19.619167, 19.872585, 24.227003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.823387, 19.810509, 24.336735>,  <20.163754, 19.707047, 24.519619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.823387, 19.810509, 24.336735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498327, -0.122122, 0.858345,
		0.166180, 0.958219, 0.232811,
		-0.850914, 0.258656, -0.457212,
		19.568113, 19.888105, 24.199572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.932426, 20.294653, 24.876751>,  <20.163754, 19.707047, 24.519619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.932426, 20.294653, 24.876751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.593204, 20.204376, 24.684975>,  <19.389671, 20.150211, 24.569908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.593204, 20.204376, 24.684975>,  <19.932426, 20.294653, 24.876751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.593204, 20.204376, 24.684975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499774, 0.039902, 0.865236,
		-0.176145, 0.973381, -0.146633,
		-0.848056, -0.225690, -0.479442,
		19.338787, 20.136669, 24.541142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.466658, 20.538595, 25.298170>,  <19.932426, 20.294653, 24.876751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.466658, 20.538595, 25.298170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.244984, 20.293026, 25.073324>,  <19.111979, 20.145683, 24.938416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.244984, 20.293026, 25.073324>,  <19.466658, 20.538595, 25.298170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.244984, 20.293026, 25.073324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692003, -0.035510, 0.721021,
		-0.462614, 0.788565, -0.405159,
		-0.554185, -0.613925, -0.562116,
		19.078728, 20.108849, 24.904690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<20.850740, 18.467491, 8.825879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.716385, 18.091759, 8.853697>,  <20.635771, 17.866320, 8.870387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.716385, 18.091759, 8.853697>,  <20.850740, 18.467491, 8.825879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.716385, 18.091759, 8.853697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215968, 0.148672, 0.965015,
		-0.916808, 0.309118, -0.252802,
		-0.335889, -0.939331, 0.069544,
		20.615618, 17.809959, 8.874560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.197662, 18.484922, 9.040366>,  <20.850740, 18.467491, 8.825879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.197662, 18.484922, 9.040366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.338013, 18.127960, 9.153853>,  <20.422222, 17.913782, 9.221946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.338013, 18.127960, 9.153853>,  <20.197662, 18.484922, 9.040366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.338013, 18.127960, 9.153853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186581, 0.230281, 0.955070,
		-0.917646, -0.388047, -0.085706,
		0.350876, -0.892407, 0.283718,
		20.443275, 17.860239, 9.238969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.639658, 18.140558, 9.484891>,  <20.197662, 18.484922, 9.040366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.639658, 18.140558, 9.484891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.971874, 17.937759, 9.577113>,  <20.171204, 17.816080, 9.632446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.971874, 17.937759, 9.577113>,  <19.639658, 18.140558, 9.484891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.971874, 17.937759, 9.577113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254445, 0.022836, 0.966817,
		-0.495439, -0.861645, -0.110037,
		0.830540, -0.506998, 0.230555,
		20.221037, 17.785660, 9.646279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.469603, 17.509062, 9.984061>,  <19.639658, 18.140558, 9.484891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.469603, 17.509062, 9.984061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.854733, 17.597584, 10.046015>,  <20.085812, 17.650698, 10.083187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.854733, 17.597584, 10.046015>,  <19.469603, 17.509062, 9.984061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.854733, 17.597584, 10.046015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150812, -0.035280, 0.987933,
		0.224102, -0.974565, -0.000593,
		0.962826, 0.221308, 0.154883,
		20.143579, 17.663977, 10.092480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.530773, 17.260031, 10.627858>,  <19.469603, 17.509062, 9.984061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.530773, 17.260031, 10.627858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.876377, 17.457588, 10.588756>,  <20.083740, 17.576122, 10.565294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.876377, 17.457588, 10.588756>,  <19.530773, 17.260031, 10.627858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.876377, 17.457588, 10.588756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034161, 0.136211, 0.990091,
		0.502315, -0.858787, 0.100815,
		0.864010, 0.493894, -0.097758,
		20.135580, 17.605757, 10.559428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.791210, 17.155888, 11.265899>,  <19.530773, 17.260031, 10.627858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.791210, 17.155888, 11.265899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.029331, 17.440720, 11.117006>,  <20.172203, 17.611620, 11.027671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.029331, 17.440720, 11.117006>,  <19.791210, 17.155888, 11.265899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.029331, 17.440720, 11.117006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237531, 0.286596, 0.928139,
		0.767591, -0.640938, 0.001469,
		0.595300, 0.712082, -0.372231,
		20.207922, 17.654345, 11.005337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.368824, 17.104856, 11.590331>,  <19.791210, 17.155888, 11.265899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.368824, 17.104856, 11.590331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.360302, 17.490208, 11.483413>,  <20.355188, 17.721418, 11.419262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.360302, 17.490208, 11.483413>,  <20.368824, 17.104856, 11.590331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.360302, 17.490208, 11.483413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173322, 0.266867, 0.948020,
		0.984635, -0.026133, -0.172660,
		-0.021303, 0.963379, -0.267295,
		20.353910, 17.779221, 11.403224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.943750, 17.518339, 11.903896>,  <20.368824, 17.104856, 11.590331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.943750, 17.518339, 11.903896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.682198, 17.809078, 11.819865>,  <20.525265, 17.983521, 11.769446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.682198, 17.809078, 11.819865>,  <20.943750, 17.518339, 11.903896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.682198, 17.809078, 11.819865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282118, 0.491868, 0.823696,
		0.702030, 0.479335, -0.526680,
		-0.653883, 0.726846, -0.210077,
		20.486032, 18.027132, 11.756842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.287853, 18.147160, 11.913031>,  <20.943750, 17.518339, 11.903896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.287853, 18.147160, 11.913031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.902454, 18.245949, 11.954371>,  <20.671215, 18.305222, 11.979176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.902454, 18.245949, 11.954371>,  <21.287853, 18.147160, 11.913031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.902454, 18.245949, 11.954371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218648, 0.503104, 0.836110,
		0.154498, 0.828186, -0.538738,
		-0.963496, 0.246971, 0.103352,
		20.613405, 18.320040, 11.985377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.267384, 18.879652, 12.077804>,  <21.287853, 18.147160, 11.913031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.267384, 18.879652, 12.077804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.923031, 18.730251, 12.216009>,  <20.716419, 18.640610, 12.298933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.923031, 18.730251, 12.216009>,  <21.267384, 18.879652, 12.077804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.923031, 18.730251, 12.216009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199843, 0.376286, 0.904694,
		-0.467918, 0.847882, -0.249295,
		-0.860881, -0.373503, 0.345514,
		20.664766, 18.618200, 12.319663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.078392, 19.372005, 12.536800>,  <21.267384, 18.879652, 12.077804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.078392, 19.372005, 12.536800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.841263, 19.064445, 12.632592>,  <20.698986, 18.879910, 12.690067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.841263, 19.064445, 12.632592>,  <21.078392, 19.372005, 12.536800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.841263, 19.064445, 12.632592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138495, 0.195601, 0.970855,
		-0.793334, 0.608712, -0.009468,
		-0.592823, -0.768901, 0.239481,
		20.663416, 18.833775, 12.704436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.775057, 19.659256, 13.110792>,  <21.078392, 19.372005, 12.536800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.775057, 19.659256, 13.110792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.715828, 19.265163, 13.145195>,  <20.680290, 19.028708, 13.165836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.715828, 19.265163, 13.145195>,  <20.775057, 19.659256, 13.110792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.715828, 19.265163, 13.145195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001751, 0.086705, 0.996233,
		-0.988975, 0.147664, -0.011114,
		-0.148071, -0.985230, 0.086007,
		20.671406, 18.969595, 13.170998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.141983, 20.103081, 13.017129>,  <20.775057, 19.659256, 13.110792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.141983, 20.103081, 13.017129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.223793, 20.493946, 12.994068>,  <20.272879, 20.728464, 12.980231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.223793, 20.493946, 12.994068>,  <20.141983, 20.103081, 13.017129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.223793, 20.493946, 12.994068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094849, -0.078404, -0.992399,
		-0.974255, 0.197502, -0.108718,
		0.204525, 0.977162, -0.057653,
		20.285151, 20.787094, 12.976772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.620483, 20.320860, 12.600203>,  <20.141983, 20.103081, 13.017129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.620483, 20.320860, 12.600203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.938625, 20.562599, 12.581557>,  <20.129511, 20.707642, 12.570370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.938625, 20.562599, 12.581557>,  <19.620483, 20.320860, 12.600203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.938625, 20.562599, 12.581557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032816, -0.119721, -0.992265,
		-0.605253, 0.787675, -0.115053,
		0.795357, 0.604347, -0.046613,
		20.177233, 20.743904, 12.567574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.476553, 20.869219, 12.190551>,  <19.620483, 20.320860, 12.600203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.476553, 20.869219, 12.190551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.872456, 20.812141, 12.188573>,  <20.109997, 20.777895, 12.187387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.872456, 20.812141, 12.188573>,  <19.476553, 20.869219, 12.190551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.872456, 20.812141, 12.188573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008538, -0.024581, -0.999662,
		0.142522, 0.989462, -0.025547,
		0.989755, -0.142692, -0.004945,
		20.169382, 20.769333, 12.187090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.682087, 21.041641, 11.610402>,  <19.476553, 20.869219, 12.190551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.682087, 21.041641, 11.610402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.063015, 20.948616, 11.689393>,  <20.291573, 20.892801, 11.736788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.063015, 20.948616, 11.689393>,  <19.682087, 21.041641, 11.610402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.063015, 20.948616, 11.689393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233904, 0.140959, -0.961987,
		0.195885, 0.962313, 0.188636,
		0.952322, -0.232562, 0.197477,
		20.348711, 20.878847, 11.748636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.023861, 21.597116, 11.259263>,  <19.682087, 21.041641, 11.610402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.023861, 21.597116, 11.259263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.243507, 21.268261, 11.319345>,  <20.375296, 21.070948, 11.355395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.243507, 21.268261, 11.319345>,  <20.023861, 21.597116, 11.259263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.243507, 21.268261, 11.319345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245109, -0.013402, -0.969403,
		0.798996, 0.569130, 0.194154,
		0.549114, -0.822138, 0.150207,
		20.408241, 21.021620, 11.364408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.721319, 21.720665, 11.068698>,  <20.023861, 21.597116, 11.259263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.721319, 21.720665, 11.068698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.679420, 21.323204, 11.052268>,  <20.654282, 21.084728, 11.042410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.679420, 21.323204, 11.052268>,  <20.721319, 21.720665, 11.068698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.679420, 21.323204, 11.052268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369081, -0.000488, -0.929397,
		0.923476, -0.112509, 0.366789,
		-0.104744, -0.993651, -0.041075,
		20.647997, 21.025108, 11.039946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.389542, 21.510798, 10.751702>,  <20.721319, 21.720665, 11.068698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.389542, 21.510798, 10.751702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.098843, 21.244194, 10.685241>,  <20.924423, 21.084232, 10.645364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.098843, 21.244194, 10.685241>,  <21.389542, 21.510798, 10.751702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.098843, 21.244194, 10.685241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162573, 0.068121, -0.984342,
		0.667390, -0.742379, 0.058850,
		-0.726747, -0.666508, -0.166154,
		20.880819, 21.044241, 10.635394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.576923, 21.182770, 10.158322>,  <21.389542, 21.510798, 10.751702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.576923, 21.182770, 10.158322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.184498, 21.112122, 10.190129>,  <20.949043, 21.069733, 10.209213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.184498, 21.112122, 10.190129>,  <21.576923, 21.182770, 10.158322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.184498, 21.112122, 10.190129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069867, -0.060217, -0.995737,
		0.180654, -0.982436, 0.046736,
		-0.981062, -0.176619, 0.079518,
		20.890179, 21.059135, 10.213984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.469967, 20.670710, 9.735427>,  <21.576923, 21.182770, 10.158322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.469967, 20.670710, 9.735427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.088524, 20.783638, 9.777241>,  <20.859657, 20.851395, 9.802329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.088524, 20.783638, 9.777241>,  <21.469967, 20.670710, 9.735427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.088524, 20.783638, 9.777241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135489, -0.092393, -0.986461,
		-0.268845, -0.954859, 0.126358,
		-0.953606, 0.282325, 0.104533,
		20.802443, 20.868336, 9.808600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.040367, 20.247322, 9.272490>,  <21.469967, 20.670710, 9.735427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.040367, 20.247322, 9.272490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.790585, 20.553425, 9.335013>,  <20.640715, 20.737087, 9.372527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.790585, 20.553425, 9.335013>,  <21.040367, 20.247322, 9.272490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.790585, 20.553425, 9.335013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252049, -0.008019, -0.967681,
		-0.739273, -0.643673, 0.197891,
		-0.624457, 0.765259, 0.156309,
		20.603247, 20.783003, 9.381906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.488747, 20.076298, 8.833726>,  <21.040367, 20.247322, 9.272490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.488747, 20.076298, 8.833726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.414242, 20.460213, 8.917737>,  <20.369539, 20.690561, 8.968143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.414242, 20.460213, 8.917737>,  <20.488747, 20.076298, 8.833726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.414242, 20.460213, 8.917737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243212, 0.162073, -0.956337,
		-0.951922, -0.229209, 0.203245,
		-0.186260, 0.959790, 0.210027,
		20.358364, 20.748150, 8.980745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.816261, 20.143328, 8.673768>,  <20.488747, 20.076298, 8.833726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.816261, 20.143328, 8.673768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.959999, 20.516163, 8.692016>,  <20.046242, 20.739864, 8.702964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.959999, 20.516163, 8.692016>,  <19.816261, 20.143328, 8.673768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.959999, 20.516163, 8.692016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189439, 0.120725, -0.974443,
		-0.913775, 0.341517, 0.219956,
		0.359343, 0.932090, 0.045619,
		20.067802, 20.795790, 8.705701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.303619, 20.643391, 8.353988>,  <19.816261, 20.143328, 8.673768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.303619, 20.643391, 8.353988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.680691, 20.772911, 8.321705>,  <19.906933, 20.850622, 8.302336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.680691, 20.772911, 8.321705>,  <19.303619, 20.643391, 8.353988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.680691, 20.772911, 8.321705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122047, 0.109440, -0.986472,
		-0.310586, 0.939775, 0.142686,
		0.942678, 0.323799, -0.080706,
		19.963493, 20.870050, 8.297493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.271788, 20.802109, 7.606437>,  <19.303619, 20.643391, 8.353988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.271788, 20.802109, 7.606437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.652328, 20.895855, 7.686437>,  <19.880653, 20.952103, 7.734437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.652328, 20.895855, 7.686437>,  <19.271788, 20.802109, 7.606437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.652328, 20.895855, 7.686437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172320, 0.133369, -0.975971,
		-0.255406, 0.962957, 0.086495,
		0.951354, 0.234364, 0.200000,
		19.937735, 20.966164, 7.746437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.189205, 21.022030, 6.899183>,  <19.271788, 20.802109, 7.606437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.189205, 21.022030, 6.899183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.789764, 21.027454, 6.919634>,  <18.550100, 21.030708, 6.931905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.789764, 21.027454, 6.919634>,  <19.189205, 21.022030, 6.899183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.789764, 21.027454, 6.919634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046504, 0.685679, 0.726417,
		-0.025206, 0.727777, -0.685350,
		-0.998600, 0.013561, 0.051128,
		18.490185, 21.031523, 6.934972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.863918, 21.721401, 6.836511>,  <19.189205, 21.022030, 6.899183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.863918, 21.721401, 6.836511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.596592, 21.487751, 7.020751>,  <18.436197, 21.347561, 7.131295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.596592, 21.487751, 7.020751>,  <18.863918, 21.721401, 6.836511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.596592, 21.487751, 7.020751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028619, 0.598538, 0.800583,
		-0.743329, 0.548223, -0.383294,
		-0.668314, -0.584127, 0.460600,
		18.396097, 21.312513, 7.158931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.758759, 22.082846, 7.459035>,  <18.863918, 21.721401, 6.836511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.758759, 22.082846, 7.459035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.516235, 21.795822, 7.596146>,  <18.370722, 21.623608, 7.678412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.516235, 21.795822, 7.596146>,  <18.758759, 22.082846, 7.459035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.516235, 21.795822, 7.596146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107913, 0.352812, 0.929451,
		-0.787873, 0.600524, -0.136480,
		-0.606309, -0.717561, 0.342776,
		18.334343, 21.580553, 7.698978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.276445, 22.416500, 7.841213>,  <18.758759, 22.082846, 7.459035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.276445, 22.416500, 7.841213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.233479, 22.039417, 7.967556>,  <18.207699, 21.813168, 8.043362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.233479, 22.039417, 7.967556>,  <18.276445, 22.416500, 7.841213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.233479, 22.039417, 7.967556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184322, 0.331073, 0.925428,
		-0.976978, 0.041189, -0.209325,
		-0.107419, -0.942706, 0.315859,
		18.201252, 21.756605, 8.062314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.686714, 22.429438, 8.245628>,  <18.276445, 22.416500, 7.841213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.686714, 22.429438, 8.245628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.867657, 22.093403, 8.365376>,  <17.976223, 21.891781, 8.437225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.867657, 22.093403, 8.365376>,  <17.686714, 22.429438, 8.245628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.867657, 22.093403, 8.365376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253910, 0.200470, 0.946225,
		-0.854928, -0.504046, -0.122623,
		0.452358, -0.840089, 0.299370,
		18.003365, 21.841375, 8.455188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.190609, 22.082613, 8.646355>,  <17.686714, 22.429438, 8.245628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.190609, 22.082613, 8.646355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.528259, 21.908096, 8.771002>,  <17.730848, 21.803387, 8.845790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.528259, 21.908096, 8.771002>,  <17.190609, 22.082613, 8.646355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.528259, 21.908096, 8.771002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257760, 0.179401, 0.949408,
		-0.470122, -0.881741, 0.038979,
		0.844124, -0.436290, 0.311617,
		17.781496, 21.777210, 8.864487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.951311, 21.678551, 9.264769>,  <17.190609, 22.082613, 8.646355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.951311, 21.678551, 9.264769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.345623, 21.744671, 9.276856>,  <17.582211, 21.784344, 9.284109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.345623, 21.744671, 9.276856>,  <16.951311, 21.678551, 9.264769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.345623, 21.744671, 9.276856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052911, 0.134641, 0.989481,
		0.159496, -0.977009, 0.141473,
		0.985779, 0.165304, 0.030220,
		17.641357, 21.794262, 9.285923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.160631, 21.302704, 9.894231>,  <16.951311, 21.678551, 9.264769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.160631, 21.302704, 9.894231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.469761, 21.545128, 9.818933>,  <17.655239, 21.690582, 9.773755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.469761, 21.545128, 9.818933>,  <17.160631, 21.302704, 9.894231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.469761, 21.545128, 9.818933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065096, 0.219356, 0.973471,
		0.631274, -0.764575, 0.130071,
		0.772824, 0.606060, -0.188245,
		17.701609, 21.726946, 9.762460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.603460, 21.103151, 10.445040>,  <17.160631, 21.302704, 9.894231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.603460, 21.103151, 10.445040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.734074, 21.457699, 10.313752>,  <17.812441, 21.670427, 10.234980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.734074, 21.457699, 10.313752>,  <17.603460, 21.103151, 10.445040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.734074, 21.457699, 10.313752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060223, 0.327036, 0.943091,
		0.943266, -0.327715, 0.053408,
		0.326531, 0.886369, -0.328218,
		17.832033, 21.723610, 10.215286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.158648, 21.238060, 10.801619>,  <17.603460, 21.103151, 10.445040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.158648, 21.238060, 10.801619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.034229, 21.592701, 10.664686>,  <17.959578, 21.805485, 10.582527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.034229, 21.592701, 10.664686>,  <18.158648, 21.238060, 10.801619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.034229, 21.592701, 10.664686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221928, 0.417998, 0.880923,
		0.924120, 0.198035, -0.326778,
		-0.311046, 0.886600, -0.342331,
		17.940916, 21.858681, 10.561987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.668364, 21.761189, 11.007536>,  <18.158648, 21.238060, 10.801619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.668364, 21.761189, 11.007536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.313667, 21.938290, 10.954381>,  <18.100849, 22.044550, 10.922488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.313667, 21.938290, 10.954381>,  <18.668364, 21.761189, 11.007536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.313667, 21.938290, 10.954381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030034, 0.231684, 0.972327,
		0.461287, 0.866195, -0.192146,
		-0.886742, 0.442751, -0.132889,
		18.047644, 22.071115, 10.914515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.739088, 22.298265, 11.400432>,  <18.668364, 21.761189, 11.007536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.739088, 22.298265, 11.400432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.341583, 22.290470, 11.356503>,  <18.103081, 22.285793, 11.330147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.341583, 22.290470, 11.356503>,  <18.739088, 22.298265, 11.400432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.341583, 22.290470, 11.356503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111020, 0.267503, 0.957140,
		0.010724, 0.963360, -0.267998,
		-0.993760, -0.019489, -0.109820,
		18.043455, 22.284624, 11.323557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.479729, 22.999170, 11.691361>,  <18.739088, 22.298265, 11.400432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.479729, 22.999170, 11.691361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.176357, 22.738491, 11.694738>,  <17.994333, 22.582083, 11.696765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.176357, 22.738491, 11.694738>,  <18.479729, 22.999170, 11.691361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.176357, 22.738491, 11.694738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249121, 0.301841, 0.920234,
		-0.602264, 0.695830, -0.391278,
		-0.758430, -0.651699, 0.008442,
		17.948828, 22.542982, 11.697271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.846193, 23.326696, 11.947144>,  <18.479729, 22.999170, 11.691361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.846193, 23.326696, 11.947144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.788380, 22.932396, 11.981557>,  <17.753693, 22.695816, 12.002205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.788380, 22.932396, 11.981557>,  <17.846193, 23.326696, 11.947144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.788380, 22.932396, 11.981557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449065, 0.142821, 0.882011,
		-0.881732, 0.088844, -0.463309,
		-0.144532, -0.985753, 0.086033,
		17.745020, 22.636669, 12.007367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.153648, 23.252047, 12.086226>,  <17.846193, 23.326696, 11.947144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.153648, 23.252047, 12.086226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.331028, 22.915817, 12.210669>,  <17.437456, 22.714079, 12.285334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.331028, 22.915817, 12.210669>,  <17.153648, 23.252047, 12.086226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.331028, 22.915817, 12.210669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511648, 0.047586, 0.857876,
		-0.735913, -0.539603, -0.408976,
		0.443451, -0.840574, 0.311106,
		17.464064, 22.663645, 12.304001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.625885, 22.880713, 12.444371>,  <17.153648, 23.252047, 12.086226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.625885, 22.880713, 12.444371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.944832, 22.681389, 12.580542>,  <17.136200, 22.561794, 12.662244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.944832, 22.681389, 12.580542>,  <16.625885, 22.880713, 12.444371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.944832, 22.681389, 12.580542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462672, -0.142583, 0.874988,
		-0.387478, -0.855193, -0.344246,
		0.797368, -0.498312, 0.340426,
		17.184042, 22.531895, 12.682670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.342108, 22.344009, 12.844440>,  <16.625885, 22.880713, 12.444371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.342108, 22.344009, 12.844440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.714191, 22.411232, 12.974958>,  <16.937441, 22.451565, 13.053269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.714191, 22.411232, 12.974958>,  <16.342108, 22.344009, 12.844440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.714191, 22.411232, 12.974958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340529, 0.063494, 0.938087,
		0.136938, -0.983730, 0.116292,
		0.930208, 0.168061, 0.326294,
		16.993254, 22.461649, 13.072847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.523092, 21.838627, 13.383781>,  <16.342108, 22.344009, 12.844440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.523092, 21.838627, 13.383781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.752113, 22.162495, 13.435345>,  <16.889526, 22.356815, 13.466283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.752113, 22.162495, 13.435345>,  <16.523092, 21.838627, 13.383781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.752113, 22.162495, 13.435345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254256, 0.025873, 0.966791,
		0.779446, -0.586315, 0.220677,
		0.572554, 0.809670, 0.128908,
		16.923880, 22.405396, 13.474017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.617313, 21.672960, 14.061456>,  <16.523092, 21.838627, 13.383781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.617313, 21.672960, 14.061456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.765522, 22.040306, 14.005850>,  <16.854446, 22.260714, 13.972486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.765522, 22.040306, 14.005850>,  <16.617313, 21.672960, 14.061456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.765522, 22.040306, 14.005850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007726, 0.152708, 0.988241,
		0.928792, -0.365090, 0.063677,
		0.370521, 0.918362, -0.139014,
		16.876678, 22.315815, 13.964146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.072542, 21.718838, 14.638990>,  <16.617313, 21.672960, 14.061456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.072542, 21.718838, 14.638990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.997528, 22.090469, 14.511465>,  <16.952518, 22.313448, 14.434950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.997528, 22.090469, 14.511465>,  <17.072542, 21.718838, 14.638990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.997528, 22.090469, 14.511465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140957, 0.295758, 0.944806,
		0.972091, 0.222124, 0.075495,
		-0.187536, 0.929079, -0.318813,
		16.941267, 22.369194, 14.415821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.497566, 22.227459, 15.079450>,  <17.072542, 21.718838, 14.638990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.497566, 22.227459, 15.079450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.182411, 22.414650, 14.919336>,  <16.993319, 22.526964, 14.823268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.182411, 22.414650, 14.919336>,  <17.497566, 22.227459, 15.079450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.182411, 22.414650, 14.919336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322975, 0.239416, 0.915624,
		0.524326, 0.850692, -0.037488,
		-0.787889, 0.467977, -0.400284,
		16.946045, 22.555042, 14.799251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.454117, 22.848763, 15.444264>,  <17.497566, 22.227459, 15.079450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.454117, 22.848763, 15.444264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.097809, 22.801128, 15.268833>,  <16.884024, 22.772549, 15.163574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.097809, 22.801128, 15.268833>,  <17.454117, 22.848763, 15.444264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.097809, 22.801128, 15.268833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443019, 0.442702, 0.779583,
		0.101324, 0.888726, -0.447101,
		-0.890768, -0.119084, -0.438578,
		16.830578, 22.765404, 15.137259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.030003, 23.517355, 15.495659>,  <17.454117, 22.848763, 15.444264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.030003, 23.517355, 15.495659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.760853, 23.224659, 15.452213>,  <16.599363, 23.049042, 15.426146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.760853, 23.224659, 15.452213>,  <17.030003, 23.517355, 15.495659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.760853, 23.224659, 15.452213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365079, 0.200774, 0.909069,
		-0.643397, 0.651340, -0.402239,
		-0.672873, -0.731741, -0.108614,
		16.558990, 23.005136, 15.419629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.450499, 23.728302, 15.909461>,  <17.030003, 23.517355, 15.495659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.450499, 23.728302, 15.909461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.356434, 23.347538, 15.830912>,  <16.299995, 23.119080, 15.783782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.356434, 23.347538, 15.830912>,  <16.450499, 23.728302, 15.909461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.356434, 23.347538, 15.830912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499741, -0.054869, 0.864435,
		-0.833641, 0.301420, -0.462806,
		-0.235164, -0.951912, -0.196373,
		16.285885, 23.061964, 15.771999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.766689, 23.624714, 16.044081>,  <16.450499, 23.728302, 15.909461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.766689, 23.624714, 16.044081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.862779, 23.236881, 16.062845>,  <15.920432, 23.004181, 16.074104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.862779, 23.236881, 16.062845>,  <15.766689, 23.624714, 16.044081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.862779, 23.236881, 16.062845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524210, -0.088901, 0.846936,
		-0.817005, -0.228045, -0.529621,
		0.240224, -0.969584, 0.046911,
		15.934846, 22.946007, 16.076918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.220062, 23.320356, 16.189985>,  <15.766689, 23.624714, 16.044081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.220062, 23.320356, 16.189985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.514892, 23.078568, 16.310875>,  <15.691790, 22.933495, 16.383408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.514892, 23.078568, 16.310875>,  <15.220062, 23.320356, 16.189985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.514892, 23.078568, 16.310875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396463, -0.024593, 0.917721,
		-0.547303, -0.796248, -0.257777,
		0.737073, -0.604470, 0.302223,
		15.736013, 22.897226, 16.401543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.858806, 22.891592, 16.624451>,  <15.220062, 23.320356, 16.189985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.858806, 22.891592, 16.624451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.243661, 22.839626, 16.720295>,  <15.474574, 22.808447, 16.777802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.243661, 22.839626, 16.720295>,  <14.858806, 22.891592, 16.624451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.243661, 22.839626, 16.720295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249894, -0.069445, 0.965780,
		-0.108840, -0.989089, -0.099283,
		0.962137, -0.129926, 0.239609,
		15.532302, 22.800652, 16.792177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.848495, 22.290751, 17.134045>,  <14.858806, 22.891592, 16.624451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.848495, 22.290751, 17.134045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.207305, 22.446362, 17.217953>,  <15.422591, 22.539728, 17.268297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.207305, 22.446362, 17.217953>,  <14.848495, 22.290751, 17.134045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.207305, 22.446362, 17.217953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229544, 0.004472, 0.973288,
		0.377699, -0.921215, 0.093310,
		0.897025, 0.389029, 0.209771,
		15.476413, 22.563070, 17.280884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.868759, 21.551477, 17.022995>,  <14.848495, 22.290751, 17.134045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.868759, 21.551477, 17.022995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.560515, 21.298111, 17.051130>,  <14.375569, 21.146091, 17.068010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.560515, 21.298111, 17.051130>,  <14.868759, 21.551477, 17.022995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.560515, 21.298111, 17.051130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056080, -0.177332, -0.982552,
		0.634837, -0.753218, 0.172176,
		-0.770608, -0.633416, 0.070336,
		14.329333, 21.108086, 17.072231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.115234, 20.955322, 16.851551>,  <14.868759, 21.551477, 17.022995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.115234, 20.955322, 16.851551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.727263, 20.929985, 16.757547>,  <14.494481, 20.914783, 16.701145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.727263, 20.929985, 16.757547>,  <15.115234, 20.955322, 16.851551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.727263, 20.929985, 16.757547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241692, -0.364681, -0.899218,
		-0.028743, -0.928976, 0.369023,
		-0.969927, -0.063344, -0.235008,
		14.436285, 20.910982, 16.687044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.006717, 20.460367, 16.431833>,  <15.115234, 20.955322, 16.851551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.006717, 20.460367, 16.431833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.645904, 20.614399, 16.353804>,  <14.429416, 20.706818, 16.306986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.645904, 20.614399, 16.353804>,  <15.006717, 20.460367, 16.431833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.645904, 20.614399, 16.353804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070852, -0.313701, -0.946875,
		-0.425815, -0.867932, 0.255685,
		-0.902032, 0.385078, -0.195073,
		14.375294, 20.729921, 16.295282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.473221, 19.945744, 16.231012>,  <15.006717, 20.460367, 16.431833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.473221, 19.945744, 16.231012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.376376, 20.300278, 16.073130>,  <14.318269, 20.512999, 15.978400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.376376, 20.300278, 16.073130>,  <14.473221, 19.945744, 16.231012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.376376, 20.300278, 16.073130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122171, -0.431422, -0.893839,
		-0.962526, -0.168188, 0.212737,
		-0.242112, 0.886334, -0.394707,
		14.303742, 20.566177, 15.954718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.183530, 19.731512, 15.600843>,  <14.473221, 19.945744, 16.231012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.183530, 19.731512, 15.600843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.189891, 20.125618, 15.532726>,  <14.193707, 20.362082, 15.491857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.189891, 20.125618, 15.532726>,  <14.183530, 19.731512, 15.600843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.189891, 20.125618, 15.532726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076439, -0.168617, -0.982713,
		-0.996947, 0.028646, 0.072631,
		0.015904, 0.985265, -0.170292,
		14.194662, 20.421198, 15.481639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
