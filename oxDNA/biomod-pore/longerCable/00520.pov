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
	<24.078035, 34.816029, 35.341877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.171741, 35.103622, 35.080135>,  <24.227964, 35.276176, 34.923088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.171741, 35.103622, 35.080135>,  <24.078035, 34.816029, 35.341877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.171741, 35.103622, 35.080135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444048, 0.519638, 0.729931,
		0.864836, -0.461563, -0.197530,
		0.234265, 0.718983, -0.654357,
		24.242022, 35.319317, 34.883827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.698215, 34.943272, 34.936039>,  <24.078035, 34.816029, 35.341877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.698215, 34.943272, 34.936039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.934130, 34.656509, 34.787334>,  <25.075678, 34.484451, 34.698112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.934130, 34.656509, 34.787334>,  <24.698215, 34.943272, 34.936039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.934130, 34.656509, 34.787334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723769, 0.673445, -0.150435,
		0.358207, -0.180344, 0.916059,
		0.589785, -0.716902, -0.371759,
		25.111065, 34.441441, 34.675808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.457834, 34.939171, 35.193665>,  <24.698215, 34.943272, 34.936039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.457834, 34.939171, 35.193665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447275, 34.763763, 34.834332>,  <25.440939, 34.658520, 34.618732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447275, 34.763763, 34.834332>,  <25.457834, 34.939171, 35.193665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.447275, 34.763763, 34.834332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743445, 0.592143, -0.310895,
		0.668276, -0.676070, 0.310381,
		-0.026397, -0.438515, -0.898336,
		25.439356, 34.632210, 34.564831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097773, 34.967995, 35.045818>,  <25.457834, 34.939171, 35.193665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097773, 34.967995, 35.045818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925762, 34.867558, 34.698940>,  <25.822556, 34.807297, 34.490814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925762, 34.867558, 34.698940>,  <26.097773, 34.967995, 35.045818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.925762, 34.867558, 34.698940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668420, 0.557129, -0.492770,
		0.606871, -0.791555, -0.071745,
		-0.430025, -0.251092, -0.867197,
		25.796755, 34.792229, 34.438782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590622, 34.932926, 34.671597>,  <26.097773, 34.967995, 35.045818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590622, 34.932926, 34.671597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301018, 34.960545, 34.397068>,  <26.127254, 34.977116, 34.232349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301018, 34.960545, 34.397068>,  <26.590622, 34.932926, 34.671597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.301018, 34.960545, 34.397068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571439, 0.617327, -0.540708,
		0.386350, -0.783671, -0.486409,
		-0.724011, 0.069051, -0.686324,
		26.083815, 34.981258, 34.191170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.718641, 34.703888, 34.030682>,  <26.590622, 34.932926, 34.671597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.718641, 34.703888, 34.030682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.481356, 35.023884, 33.994652>,  <26.338984, 35.215881, 33.973034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.481356, 35.023884, 33.994652>,  <26.718641, 34.703888, 34.030682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.481356, 35.023884, 33.994652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656103, 0.415594, -0.629929,
		-0.466503, -0.432780, -0.771412,
		-0.593215, 0.799989, -0.090072,
		26.303391, 35.263882, 33.967628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579388, 34.873371, 33.259159>,  <26.718641, 34.703888, 34.030682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579388, 34.873371, 33.259159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536867, 35.194984, 33.493160>,  <26.511354, 35.387955, 33.633560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536867, 35.194984, 33.493160>,  <26.579388, 34.873371, 33.259159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.536867, 35.194984, 33.493160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596489, 0.522281, -0.609445,
		-0.795550, 0.284161, -0.535119,
		-0.106302, 0.804037, 0.585000,
		26.504976, 35.436195, 33.668659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.081551, 35.483570, 32.930237>,  <26.579388, 34.873371, 33.259159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.081551, 35.483570, 32.930237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.375740, 35.597660, 33.176075>,  <26.552254, 35.666115, 33.323578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.375740, 35.597660, 33.176075>,  <26.081551, 35.483570, 32.930237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.375740, 35.597660, 33.176075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461643, 0.453011, -0.762671,
		-0.495951, 0.844647, 0.201505,
		0.735471, 0.285224, 0.614596,
		26.596382, 35.683228, 33.360455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296656, 36.106014, 32.703384>,  <26.081551, 35.483570, 32.930237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296656, 36.106014, 32.703384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613129, 36.015411, 32.930618>,  <26.803013, 35.961048, 33.066959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613129, 36.015411, 32.930618>,  <26.296656, 36.106014, 32.703384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.613129, 36.015411, 32.930618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605204, 0.156202, -0.780595,
		0.088073, 0.961403, 0.260666,
		0.791183, -0.226506, 0.568088,
		26.850483, 35.947460, 33.101044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811790, 36.645557, 32.504990>,  <26.296656, 36.106014, 32.703384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.811790, 36.645557, 32.504990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.026716, 36.354961, 32.676342>,  <27.155672, 36.180603, 32.779152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.026716, 36.354961, 32.676342>,  <26.811790, 36.645557, 32.504990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.026716, 36.354961, 32.676342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744505, 0.169939, -0.645627,
		0.396240, 0.665837, 0.632182,
		0.537315, -0.726486, 0.428382,
		27.187910, 36.137016, 32.804855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417679, 36.929554, 32.430969>,  <26.811790, 36.645557, 32.504990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417679, 36.929554, 32.430969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479733, 36.541561, 32.505882>,  <27.516964, 36.308765, 32.550831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479733, 36.541561, 32.505882>,  <27.417679, 36.929554, 32.430969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479733, 36.541561, 32.505882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838387, 0.028991, -0.544305,
		0.522534, 0.241456, 0.817714,
		0.155132, -0.969979, 0.187285,
		27.526272, 36.250568, 32.562069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.215464, 36.841850, 32.490227>,  <27.417679, 36.929554, 32.430969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.215464, 36.841850, 32.490227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026798, 36.514538, 32.358807>,  <27.913599, 36.318150, 32.279953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026798, 36.514538, 32.358807>,  <28.215464, 36.841850, 32.490227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026798, 36.514538, 32.358807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627449, -0.049663, -0.777072,
		0.619548, -0.572667, 0.536855,
		-0.471665, -0.818283, -0.328551,
		27.885298, 36.269054, 32.260242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727249, 36.407394, 32.439053>,  <28.215464, 36.841850, 32.490227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727249, 36.407394, 32.439053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415861, 36.348289, 32.195038>,  <28.229029, 36.312824, 32.048630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415861, 36.348289, 32.195038>,  <28.727249, 36.407394, 32.439053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.415861, 36.348289, 32.195038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625627, -0.104069, -0.773150,
		0.050759, -0.983532, 0.173462,
		-0.778469, -0.147767, -0.610041,
		28.182320, 36.303959, 32.012024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938093, 36.026402, 31.893642>,  <28.727249, 36.407394, 32.439053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938093, 36.026402, 31.893642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585100, 36.144379, 31.747091>,  <28.373304, 36.215164, 31.659161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585100, 36.144379, 31.747091>,  <28.938093, 36.026402, 31.893642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585100, 36.144379, 31.747091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340387, -0.137095, -0.930238,
		-0.324593, -0.945629, 0.020591,
		-0.882483, 0.294940, -0.366380,
		28.320354, 36.232861, 31.637177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433956, 35.463570, 31.482426>,  <28.938093, 36.026402, 31.893642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433956, 35.463570, 31.482426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431324, 35.847900, 31.371603>,  <28.429745, 36.078499, 31.305109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431324, 35.847900, 31.371603>,  <28.433956, 35.463570, 31.482426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.431324, 35.847900, 31.371603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105830, -0.274837, -0.955649,
		-0.994362, -0.035610, -0.099876,
		-0.006581, 0.960831, -0.277056,
		28.429350, 36.136150, 31.288486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.913219, 35.120094, 31.992462>,  <28.433956, 35.463570, 31.482426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.913219, 35.120094, 31.992462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915895, 35.491673, 32.140522>,  <27.917501, 35.714619, 32.229359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915895, 35.491673, 32.140522>,  <27.913219, 35.120094, 31.992462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915895, 35.491673, 32.140522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454066, -0.326975, 0.828801,
		0.890943, -0.173615, 0.419617,
		0.006688, 0.928948, 0.370149,
		27.917902, 35.770355, 32.251568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824684, 34.997959, 32.672276>,  <27.913219, 35.120094, 31.992462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824684, 34.997959, 32.672276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751951, 35.391277, 32.668949>,  <27.708311, 35.627270, 32.666954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751951, 35.391277, 32.668949>,  <27.824684, 34.997959, 32.672276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751951, 35.391277, 32.668949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586122, -0.101590, 0.803829,
		0.789556, 0.151034, 0.594803,
		-0.181831, 0.983295, -0.008313,
		27.697401, 35.686264, 32.666454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809107, 35.125671, 33.298126>,  <27.824684, 34.997959, 32.672276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809107, 35.125671, 33.298126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642790, 35.455261, 33.144146>,  <27.542999, 35.653015, 33.051758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642790, 35.455261, 33.144146>,  <27.809107, 35.125671, 33.298126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642790, 35.455261, 33.144146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642552, 0.033396, 0.765514,
		0.643618, 0.565644, 0.515560,
		-0.415791, 0.823973, -0.384951,
		27.518053, 35.702454, 33.028660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836195, 35.628239, 33.817123>,  <27.809107, 35.125671, 33.298126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836195, 35.628239, 33.817123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532141, 35.724453, 33.575684>,  <27.349709, 35.782181, 33.430820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532141, 35.724453, 33.575684>,  <27.836195, 35.628239, 33.817123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532141, 35.724453, 33.575684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610830, 0.052185, 0.790040,
		0.221534, 0.969236, 0.107261,
		-0.760138, 0.240539, -0.603599,
		27.304100, 35.796616, 33.394604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506454, 36.303333, 34.078617>,  <27.836195, 35.628239, 33.817123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506454, 36.303333, 34.078617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.239635, 36.078053, 33.883537>,  <27.079544, 35.942886, 33.766491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.239635, 36.078053, 33.883537>,  <27.506454, 36.303333, 34.078617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239635, 36.078053, 33.883537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640756, 0.099712, 0.761242,
		-0.380101, 0.820283, -0.427386,
		-0.667049, -0.563199, -0.487701,
		27.039520, 35.909092, 33.737228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830282, 36.545280, 34.182095>,  <27.506454, 36.303333, 34.078617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.830282, 36.545280, 34.182095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746809, 36.164207, 34.093693>,  <26.696724, 35.935562, 34.040649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746809, 36.164207, 34.093693>,  <26.830282, 36.545280, 34.182095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.746809, 36.164207, 34.093693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661969, -0.028746, 0.748979,
		-0.719894, 0.302600, -0.624649,
		-0.208685, -0.952684, -0.221006,
		26.684204, 35.878403, 34.027390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.087040, 36.416222, 34.326851>,  <26.830282, 36.545280, 34.182095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.087040, 36.416222, 34.326851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246603, 36.049496, 34.334026>,  <26.342340, 35.829460, 34.338333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246603, 36.049496, 34.334026>,  <26.087040, 36.416222, 34.326851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246603, 36.049496, 34.334026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584774, -0.239268, 0.775106,
		-0.706337, -0.319686, -0.631576,
		0.398907, -0.916816, 0.017940,
		26.366276, 35.774452, 34.339409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.560333, 35.793629, 34.376148>,  <26.087040, 36.416222, 34.326851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.560333, 35.793629, 34.376148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.905123, 35.696384, 34.554092>,  <26.111998, 35.638039, 34.660858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.905123, 35.696384, 34.554092>,  <25.560333, 35.793629, 34.376148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.905123, 35.696384, 34.554092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456420, 0.009753, 0.889711,
		-0.220635, -0.969950, -0.102553,
		0.861975, -0.243109, 0.444856,
		26.163715, 35.623451, 34.687550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.281305, 35.854713, 33.675575>,  <25.560333, 35.793629, 34.376148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.281305, 35.854713, 33.675575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.610130, 35.630527, 33.715752>,  <25.807426, 35.496017, 33.739857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.610130, 35.630527, 33.715752>,  <25.281305, 35.854713, 33.675575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.610130, 35.630527, 33.715752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568538, -0.817627, 0.090831,
		0.031218, -0.131775, -0.990788,
		0.822064, -0.560465, 0.100444,
		25.856750, 35.462387, 33.745884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.119625, 35.229733, 33.331051>,  <25.281305, 35.854713, 33.675575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.119625, 35.229733, 33.331051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.401720, 35.151817, 33.603725>,  <25.570976, 35.105068, 33.767330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.401720, 35.151817, 33.603725>,  <25.119625, 35.229733, 33.331051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.401720, 35.151817, 33.603725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522790, -0.792351, 0.314437,
		0.478887, -0.578132, -0.660629,
		0.705236, -0.194791, 0.681688,
		25.613291, 35.093380, 33.808231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.019196, 34.529110, 33.328537>,  <25.119625, 35.229733, 33.331051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.019196, 34.529110, 33.328537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.258228, 34.623161, 33.635159>,  <25.401648, 34.679592, 33.819134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.258228, 34.623161, 33.635159>,  <25.019196, 34.529110, 33.328537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.258228, 34.623161, 33.635159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218154, -0.872291, 0.437626,
		0.771559, -0.428745, -0.469972,
		0.597583, 0.235129, 0.766557,
		25.437504, 34.693699, 33.865124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.535868, 33.990665, 33.416138>,  <25.019196, 34.529110, 33.328537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.535868, 33.990665, 33.416138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.481356, 34.188698, 33.759373>,  <25.448648, 34.307518, 33.965313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.481356, 34.188698, 33.759373>,  <25.535868, 33.990665, 33.416138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.481356, 34.188698, 33.759373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339106, -0.837160, 0.429151,
		0.930825, -0.232499, 0.281974,
		-0.136280, 0.495083, 0.858091,
		25.440472, 34.337223, 34.016800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.816711, 33.596478, 33.829113>,  <25.535868, 33.990665, 33.416138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.816711, 33.596478, 33.829113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.597818, 33.822605, 34.076000>,  <25.466482, 33.958282, 34.224133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.597818, 33.822605, 34.076000>,  <25.816711, 33.596478, 33.829113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.597818, 33.822605, 34.076000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185559, -0.801022, 0.569150,
		0.816152, 0.196928, 0.543245,
		-0.547232, 0.565318, 0.617214,
		25.433649, 33.992199, 34.261166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.102486, 33.207260, 33.146187>,  <25.816711, 33.596478, 33.829113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.102486, 33.207260, 33.146187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299204, 32.861977, 33.191814>,  <26.417234, 32.654808, 33.219193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299204, 32.861977, 33.191814>,  <26.102486, 33.207260, 33.146187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299204, 32.861977, 33.191814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814303, -0.502358, -0.290769,
		0.308299, 0.050110, -0.949969,
		0.491795, -0.863207, 0.114072,
		26.446743, 32.603016, 33.226036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.263069, 32.770786, 32.549576>,  <26.102486, 33.207260, 33.146187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.263069, 32.770786, 32.549576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193079, 32.544334, 32.871788>,  <26.151085, 32.408463, 33.065117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193079, 32.544334, 32.871788>,  <26.263069, 32.770786, 32.549576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.193079, 32.544334, 32.871788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670388, -0.530700, -0.518592,
		0.721086, -0.630760, -0.286665,
		-0.174974, -0.566127, 0.805534,
		26.140587, 32.374496, 33.113449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467060, 32.142345, 32.376415>,  <26.263069, 32.770786, 32.549576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467060, 32.142345, 32.376415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201561, 32.097607, 32.672234>,  <26.042261, 32.070763, 32.849724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201561, 32.097607, 32.672234>,  <26.467060, 32.142345, 32.376415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.201561, 32.097607, 32.672234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538242, -0.615134, -0.576113,
		0.519358, -0.780448, 0.348091,
		-0.663750, -0.111852, 0.739544,
		26.002436, 32.064053, 32.894096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.309658, 31.456228, 32.499664>,  <26.467060, 32.142345, 32.376415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.309658, 31.456228, 32.499664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.990950, 31.621117, 32.676403>,  <25.799725, 31.720049, 32.782448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.990950, 31.621117, 32.676403>,  <26.309658, 31.456228, 32.499664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.990950, 31.621117, 32.676403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602517, -0.597776, -0.528808,
		0.046140, -0.687559, 0.724661,
		-0.796772, 0.412221, 0.441847,
		25.751919, 31.744783, 32.808956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.895603, 30.929113, 32.683990>,  <26.309658, 31.456228, 32.499664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.895603, 30.929113, 32.683990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646362, 31.241808, 32.694019>,  <25.496819, 31.429424, 32.700035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646362, 31.241808, 32.694019>,  <25.895603, 30.929113, 32.683990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.646362, 31.241808, 32.694019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737139, -0.576233, -0.352962,
		-0.261476, -0.238414, 0.935302,
		-0.623103, 0.781738, 0.025073,
		25.459431, 31.476330, 32.701542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.330063, 30.685659, 32.972939>,  <25.895603, 30.929113, 32.683990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.330063, 30.685659, 32.972939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198248, 31.013653, 32.785736>,  <25.119158, 31.210449, 32.673416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198248, 31.013653, 32.785736>,  <25.330063, 30.685659, 32.972939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.198248, 31.013653, 32.785736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646140, -0.557298, -0.521461,
		-0.688410, 0.130556, 0.713475,
		-0.329538, 0.819983, -0.468007,
		25.099386, 31.259647, 32.645336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.560408, 30.610643, 32.919750>,  <25.330063, 30.685659, 32.972939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.560408, 30.610643, 32.919750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.725487, 30.853151, 32.647835>,  <24.824535, 30.998655, 32.484684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.725487, 30.853151, 32.647835>,  <24.560408, 30.610643, 32.919750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.725487, 30.853151, 32.647835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506395, -0.467633, -0.724488,
		-0.757128, 0.643239, 0.114020,
		0.412700, 0.606270, -0.679791,
		24.849297, 31.035032, 32.443897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.022247, 30.861128, 32.331070>,  <24.560408, 30.610643, 32.919750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.022247, 30.861128, 32.331070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.407385, 30.834261, 32.226440>,  <24.638468, 30.818140, 32.163662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.407385, 30.834261, 32.226440>,  <24.022247, 30.861128, 32.331070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.407385, 30.834261, 32.226440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260602, -0.485205, -0.834664,
		-0.070854, 0.871817, -0.484680,
		0.962843, -0.067169, -0.261575,
		24.696238, 30.814110, 32.147968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.003046, 31.021122, 31.608801>,  <24.022247, 30.861128, 32.331070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.003046, 31.021122, 31.608801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.337543, 30.813385, 31.679207>,  <24.538242, 30.688742, 31.721451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.337543, 30.813385, 31.679207>,  <24.003046, 31.021122, 31.608801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.337543, 30.813385, 31.679207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079463, -0.432363, -0.898191,
		0.542572, 0.737119, -0.402829,
		0.836242, -0.519344, 0.176014,
		24.588417, 30.657581, 31.732012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.348913, 30.973320, 30.954891>,  <24.003046, 31.021122, 31.608801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.348913, 30.973320, 30.954891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452250, 30.680618, 31.207174>,  <24.514252, 30.504997, 31.358545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452250, 30.680618, 31.207174>,  <24.348913, 30.973320, 30.954891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.452250, 30.680618, 31.207174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012941, -0.650191, -0.759660,
		0.965968, 0.204412, -0.158500,
		0.258339, -0.731756, 0.630709,
		24.529751, 30.461092, 31.396387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.357727, 30.651320, 30.296169>,  <24.348913, 30.973320, 30.954891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.357727, 30.651320, 30.296169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.434761, 31.035822, 30.217279>,  <24.480982, 31.266523, 30.169947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.434761, 31.035822, 30.217279>,  <24.357727, 30.651320, 30.296169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.434761, 31.035822, 30.217279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574691, 0.052424, 0.816690,
		0.795387, -0.270624, -0.542329,
		0.192585, 0.961257, -0.197223,
		24.492537, 31.324200, 30.158113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.151461, 30.738430, 30.264347>,  <24.357727, 30.651320, 30.296169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.151461, 30.738430, 30.264347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.947075, 31.073727, 30.340523>,  <24.824444, 31.274904, 30.386229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.947075, 31.073727, 30.340523>,  <25.151461, 30.738430, 30.264347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.947075, 31.073727, 30.340523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522982, 0.127322, 0.842780,
		0.682207, 0.530225, -0.503442,
		-0.510963, 0.838242, 0.190438,
		24.793785, 31.325199, 30.397654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.742577, 30.211256, 30.449219>,  <25.151461, 30.738430, 30.264347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.742577, 30.211256, 30.449219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024628, 29.927643, 30.452368>,  <26.193859, 29.757475, 30.454258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024628, 29.927643, 30.452368>,  <25.742577, 30.211256, 30.449219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024628, 29.927643, 30.452368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406608, 0.413415, 0.814714,
		-0.580916, -0.571277, 0.579810,
		0.705130, -0.709035, 0.007873,
		26.236166, 29.714931, 30.454729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.699917, 29.730728, 31.069317>,  <25.742577, 30.211256, 30.449219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.699917, 29.730728, 31.069317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.022200, 29.870893, 30.878300>,  <26.215569, 29.954992, 30.763689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.022200, 29.870893, 30.878300>,  <25.699917, 29.730728, 31.069317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.022200, 29.870893, 30.878300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249282, 0.530746, 0.810042,
		0.537299, -0.771701, 0.340276,
		0.805710, 0.350410, -0.477541,
		26.263912, 29.976019, 30.735037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.657932, 30.505072, 31.265228>,  <25.699917, 29.730728, 31.069317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.657932, 30.505072, 31.265228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427975, 30.394789, 31.573380>,  <25.290001, 30.328619, 31.758270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427975, 30.394789, 31.573380>,  <25.657932, 30.505072, 31.265228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.427975, 30.394789, 31.573380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619690, 0.468106, 0.629969,
		-0.534305, 0.839561, -0.098258,
		-0.574893, -0.275706, 0.770379,
		25.255507, 30.312077, 31.804493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.862104, 31.003212, 31.703531>,  <25.657932, 30.505072, 31.265228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.862104, 31.003212, 31.703531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665997, 30.733358, 31.924259>,  <25.548332, 30.571445, 32.056694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665997, 30.733358, 31.924259>,  <25.862104, 31.003212, 31.703531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.665997, 30.733358, 31.924259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493193, 0.307273, 0.813845,
		-0.718607, 0.671157, 0.182078,
		-0.490270, -0.674634, 0.551818,
		25.518915, 30.530968, 32.089806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.181450, 31.161301, 31.455887>,  <25.862104, 31.003212, 31.703531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.181450, 31.161301, 31.455887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.850746, 31.155655, 31.680838>,  <24.652325, 31.152267, 31.815809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.850746, 31.155655, 31.680838>,  <25.181450, 31.161301, 31.455887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.850746, 31.155655, 31.680838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438322, 0.610461, 0.659706,
		-0.352621, 0.791921, -0.498517,
		-0.826760, -0.014115, 0.562378,
		24.602718, 31.151421, 31.849550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.912134, 31.863560, 31.589127>,  <25.181450, 31.161301, 31.455887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.912134, 31.863560, 31.589127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.800093, 31.620565, 31.886448>,  <24.732868, 31.474768, 32.064842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.800093, 31.620565, 31.886448>,  <24.912134, 31.863560, 31.589127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.800093, 31.620565, 31.886448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252980, 0.700218, 0.667605,
		-0.926036, 0.375039, -0.042452,
		-0.280103, -0.607487, 0.743305,
		24.716063, 31.438320, 32.109440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.535990, 32.280838, 32.056721>,  <24.912134, 31.863560, 31.589127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.535990, 32.280838, 32.056721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702530, 31.969419, 32.244556>,  <24.802454, 31.782568, 32.357258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702530, 31.969419, 32.244556>,  <24.535990, 32.280838, 32.056721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.702530, 31.969419, 32.244556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517312, 0.627583, 0.581831,
		-0.747690, 0.000678, 0.664048,
		0.416351, -0.778549, 0.469588,
		24.827435, 31.735855, 32.385433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.600685, 32.479137, 32.782303>,  <24.535990, 32.280838, 32.056721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.600685, 32.479137, 32.782303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.848333, 32.166176, 32.755348>,  <24.996922, 31.978399, 32.739178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.848333, 32.166176, 32.755348>,  <24.600685, 32.479137, 32.782303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.848333, 32.166176, 32.755348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619445, 0.433820, 0.654285,
		-0.482681, -0.446820, 0.753240,
		0.619118, -0.782402, -0.067384,
		25.034069, 31.931456, 32.735134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.758390, 32.230030, 33.478233>,  <24.600685, 32.479137, 32.782303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.758390, 32.230030, 33.478233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.063381, 32.097141, 33.256149>,  <25.246376, 32.017410, 33.122898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.063381, 32.097141, 33.256149>,  <24.758390, 32.230030, 33.478233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.063381, 32.097141, 33.256149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646962, 0.380474, 0.660817,
		-0.008294, -0.863058, 0.505037,
		0.762477, -0.332220, -0.555210,
		25.292124, 31.997475, 33.089588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.357126, 32.037270, 34.000854>,  <24.758390, 32.230030, 33.478233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.357126, 32.037270, 34.000854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.572332, 32.007370, 33.665009>,  <25.701456, 31.989431, 33.463501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.572332, 32.007370, 33.665009>,  <25.357126, 32.037270, 34.000854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.572332, 32.007370, 33.665009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805806, 0.337972, 0.486263,
		0.247419, -0.938183, 0.242066,
		0.538015, -0.074748, -0.839614,
		25.733736, 31.984945, 33.413124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.018469, 31.693567, 34.226727>,  <25.357126, 32.037270, 34.000854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.018469, 31.693567, 34.226727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.049305, 31.906088, 33.889259>,  <26.067806, 32.033600, 33.686779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.049305, 31.906088, 33.889259>,  <26.018469, 31.693567, 34.226727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.049305, 31.906088, 33.889259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821669, 0.445435, 0.355595,
		0.564727, -0.720630, -0.402213,
		0.077092, 0.531300, -0.843669,
		26.072433, 32.065479, 33.636158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.648464, 31.571289, 34.026871>,  <26.018469, 31.693567, 34.226727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.648464, 31.571289, 34.026871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.543293, 31.918413, 33.858219>,  <26.480190, 32.126686, 33.757027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.543293, 31.918413, 33.858219>,  <26.648464, 31.571289, 34.026871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.543293, 31.918413, 33.858219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866653, 0.404483, 0.292071,
		0.424005, -0.288613, -0.858442,
		-0.262929, 0.867811, -0.421631,
		26.464415, 32.178757, 33.731731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235565, 31.750774, 33.729118>,  <26.648464, 31.571289, 34.026871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235565, 31.750774, 33.729118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998636, 32.071625, 33.759457>,  <26.856480, 32.264133, 33.777660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998636, 32.071625, 33.759457>,  <27.235565, 31.750774, 33.729118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.998636, 32.071625, 33.759457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712503, 0.477531, 0.514104,
		0.376157, 0.358554, -0.854368,
		-0.592321, 0.802124, 0.075845,
		26.820940, 32.312263, 33.782211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474052, 32.395515, 33.473885>,  <27.235565, 31.750774, 33.729118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474052, 32.395515, 33.473885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235283, 32.422707, 33.793652>,  <27.092022, 32.439022, 33.985512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235283, 32.422707, 33.793652>,  <27.474052, 32.395515, 33.473885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235283, 32.422707, 33.793652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765461, 0.346713, 0.542088,
		-0.240318, 0.935505, -0.258994,
		-0.596922, 0.067976, 0.799414,
		27.056206, 32.443100, 34.033474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669703, 32.950459, 34.015953>,  <27.474052, 32.395515, 33.473885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669703, 32.950459, 34.015953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412615, 32.753777, 34.250946>,  <27.258362, 32.635765, 34.391941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412615, 32.753777, 34.250946>,  <27.669703, 32.950459, 34.015953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412615, 32.753777, 34.250946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532367, 0.264778, 0.804038,
		-0.550903, 0.829528, 0.091591,
		-0.642721, -0.491707, 0.587480,
		27.219799, 32.606266, 34.427189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609035, 33.482330, 34.549988>,  <27.669703, 32.950459, 34.015953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609035, 33.482330, 34.549988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.541151, 33.104713, 34.663113>,  <27.500422, 32.878143, 34.730988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.541151, 33.104713, 34.663113>,  <27.609035, 33.482330, 34.549988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541151, 33.104713, 34.663113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458871, 0.178271, 0.870435,
		-0.872145, 0.277495, 0.402939,
		-0.169709, -0.944042, 0.282813,
		27.490238, 32.821503, 34.747955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124613, 33.623432, 35.150410>,  <27.609035, 33.482330, 34.549988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124613, 33.623432, 35.150410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380737, 33.317589, 35.121094>,  <27.534412, 33.134083, 35.103504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380737, 33.317589, 35.121094>,  <27.124613, 33.623432, 35.150410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380737, 33.317589, 35.121094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368767, 0.222304, 0.902548,
		-0.673806, -0.604938, 0.424307,
		0.640310, -0.764612, -0.073292,
		27.572830, 33.088203, 35.099106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037596, 33.194248, 35.814014>,  <27.124613, 33.623432, 35.150410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037596, 33.194248, 35.814014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.404379, 33.152325, 35.660023>,  <27.624449, 33.127171, 35.567627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.404379, 33.152325, 35.660023>,  <27.037596, 33.194248, 35.814014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.404379, 33.152325, 35.660023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378494, -0.076748, 0.922416,
		-0.126232, -0.991526, -0.030701,
		0.916955, -0.104818, -0.384975,
		27.679466, 33.120880, 35.544529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435114, 32.717388, 36.179676>,  <27.037596, 33.194248, 35.814014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435114, 32.717388, 36.179676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.723495, 32.941635, 36.016735>,  <27.896524, 33.076183, 35.918972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.723495, 32.941635, 36.016735>,  <27.435114, 32.717388, 36.179676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.723495, 32.941635, 36.016735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495271, -0.005694, 0.868720,
		0.484696, -0.828058, -0.281761,
		0.720955, 0.560613, -0.407353,
		27.939781, 33.109818, 35.894527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029493, 32.341587, 36.277779>,  <27.435114, 32.717388, 36.179676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.029493, 32.341587, 36.277779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010981, 32.741043, 36.268181>,  <27.999872, 32.980717, 36.262421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010981, 32.741043, 36.268181>,  <28.029493, 32.341587, 36.277779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010981, 32.741043, 36.268181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278255, 0.035959, 0.959834,
		0.959392, 0.037746, -0.279541,
		-0.046282, 0.998640, -0.023996,
		27.997097, 33.040634, 36.260983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751406, 32.755451, 36.358696>,  <28.029493, 32.341587, 36.277779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751406, 32.755451, 36.358696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417301, 32.910755, 36.514435>,  <28.216839, 33.003937, 36.607876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417301, 32.910755, 36.514435>,  <28.751406, 32.755451, 36.358696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417301, 32.910755, 36.514435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300300, -0.271038, 0.914526,
		0.460604, 0.880789, 0.109793,
		-0.835263, 0.388263, 0.389343,
		28.166723, 33.027233, 36.631237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846907, 33.306370, 36.825665>,  <28.751406, 32.755451, 36.358696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846907, 33.306370, 36.825665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533951, 33.063923, 36.882919>,  <28.346178, 32.918453, 36.917274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533951, 33.063923, 36.882919>,  <28.846907, 33.306370, 36.825665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533951, 33.063923, 36.882919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304339, -0.171570, 0.936986,
		-0.543365, 0.776650, 0.318699,
		-0.782389, -0.606117, 0.143140,
		28.299234, 32.882088, 36.925861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163044, 34.041050, 36.503841>,  <28.846907, 33.306370, 36.825665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163044, 34.041050, 36.503841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186527, 33.955853, 36.893955>,  <29.200617, 33.904736, 37.128025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186527, 33.955853, 36.893955>,  <29.163044, 34.041050, 36.503841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186527, 33.955853, 36.893955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923930, -0.358371, -0.133882,
		0.378031, 0.908958, 0.175750,
		0.058710, -0.212992, 0.975288,
		29.204140, 33.891956, 37.186543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837105, 34.300808, 36.757095>,  <29.163044, 34.041050, 36.503841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837105, 34.300808, 36.757095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692278, 34.041420, 37.024944>,  <29.605383, 33.885788, 37.185654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692278, 34.041420, 37.024944>,  <29.837105, 34.300808, 36.757095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692278, 34.041420, 37.024944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925218, -0.337467, 0.173460,
		0.113493, 0.682352, 0.722160,
		-0.362066, -0.648469, 0.669624,
		29.583658, 33.846878, 37.225830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147873, 34.404949, 37.408207>,  <29.837105, 34.300808, 36.757095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147873, 34.404949, 37.408207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067345, 34.015881, 37.361954>,  <30.019028, 33.782440, 37.334202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067345, 34.015881, 37.361954>,  <30.147873, 34.404949, 37.408207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067345, 34.015881, 37.361954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967978, -0.215629, 0.128543,
		-0.149965, -0.086055, 0.984939,
		-0.201320, -0.972676, -0.115636,
		30.006948, 33.724079, 37.327263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597317, 34.005730, 37.908630>,  <30.147873, 34.404949, 37.408207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597317, 34.005730, 37.908630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488079, 33.766850, 37.606964>,  <30.422537, 33.623520, 37.425964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488079, 33.766850, 37.606964>,  <30.597317, 34.005730, 37.908630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488079, 33.766850, 37.606964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902534, -0.430390, 0.013993,
		-0.332942, -0.676840, 0.656534,
		-0.273095, -0.597203, -0.754167,
		30.406151, 33.587688, 37.380714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268497, 33.734909, 38.028484>,  <30.597317, 34.005730, 37.908630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268497, 33.734909, 38.028484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196915, 33.927292, 37.685169>,  <31.153965, 34.042721, 37.479179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196915, 33.927292, 37.685169>,  <31.268497, 33.734909, 38.028484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196915, 33.927292, 37.685169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286733, -0.809005, -0.513122,
		-0.941147, -0.337927, 0.006874,
		-0.178958, 0.480952, -0.858288,
		31.143227, 34.071579, 37.427681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861702, 33.272522, 37.590694>,  <31.268497, 33.734909, 38.028484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861702, 33.272522, 37.590694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023867, 33.541790, 37.343315>,  <31.121166, 33.703350, 37.194885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023867, 33.541790, 37.343315>,  <30.861702, 33.272522, 37.590694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023867, 33.541790, 37.343315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222946, -0.728925, -0.647274,
		-0.886530, 0.124532, -0.445596,
		0.405413, 0.673172, -0.618450,
		31.145491, 33.743740, 37.157780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605795, 33.090176, 36.890450>,  <30.861702, 33.272522, 37.590694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605795, 33.090176, 36.890450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945700, 33.299435, 36.864460>,  <31.149643, 33.424992, 36.848866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945700, 33.299435, 36.864460>,  <30.605795, 33.090176, 36.890450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945700, 33.299435, 36.864460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347476, -0.648521, -0.677260,
		-0.396442, 0.552934, -0.732870,
		0.849761, 0.523149, -0.064970,
		31.200628, 33.456379, 36.844971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680065, 33.056633, 36.148544>,  <30.605795, 33.090176, 36.890450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680065, 33.056633, 36.148544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036543, 33.187351, 36.274387>,  <31.250429, 33.265781, 36.349895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036543, 33.187351, 36.274387>,  <30.680065, 33.056633, 36.148544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036543, 33.187351, 36.274387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453622, -0.639951, -0.620233,
		-0.001354, 0.695462, -0.718561,
		0.891193, 0.326795, 0.314611,
		31.303902, 33.285389, 36.368771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058556, 33.398308, 35.614803>,  <30.680065, 33.056633, 36.148544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058556, 33.398308, 35.614803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350483, 33.289219, 35.865559>,  <31.525640, 33.223766, 36.016010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350483, 33.289219, 35.865559>,  <31.058556, 33.398308, 35.614803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350483, 33.289219, 35.865559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521133, -0.371560, -0.768351,
		0.442474, 0.887448, -0.129045,
		0.729820, -0.272726, 0.626884,
		31.569429, 33.207401, 36.053623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724791, 33.575638, 35.253803>,  <31.058556, 33.398308, 35.614803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724791, 33.575638, 35.253803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795858, 33.302246, 35.537010>,  <31.838499, 33.138210, 35.706932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795858, 33.302246, 35.537010>,  <31.724791, 33.575638, 35.253803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795858, 33.302246, 35.537010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519064, -0.546156, -0.657485,
		0.836066, 0.484319, 0.257737,
		0.177668, -0.683483, 0.708015,
		31.849159, 33.097202, 35.749416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384697, 33.333084, 35.204685>,  <31.724791, 33.575638, 35.253803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384697, 33.333084, 35.204685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245594, 33.036751, 35.434547>,  <32.162132, 32.858952, 35.572464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245594, 33.036751, 35.434547>,  <32.384697, 33.333084, 35.204685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245594, 33.036751, 35.434547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431647, -0.670598, -0.603307,
		0.832313, 0.038243, 0.552985,
		-0.347759, -0.740835, 0.574655,
		32.141266, 32.814499, 35.606945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886990, 32.903648, 35.238560>,  <32.384697, 33.333084, 35.204685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886990, 32.903648, 35.238560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573162, 32.665867, 35.309074>,  <32.384865, 32.523197, 35.351383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573162, 32.665867, 35.309074>,  <32.886990, 32.903648, 35.238560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573162, 32.665867, 35.309074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398637, -0.701356, -0.590922,
		0.474917, -0.393344, 0.787232,
		-0.784566, -0.594458, 0.176284,
		32.337791, 32.487530, 35.361961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086525, 32.262032, 35.520634>,  <32.886990, 32.903648, 35.238560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086525, 32.262032, 35.520634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723530, 32.180229, 35.373863>,  <32.505733, 32.131149, 35.285801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723530, 32.180229, 35.373863>,  <33.086525, 32.262032, 35.520634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723530, 32.180229, 35.373863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399615, -0.689538, -0.604024,
		-0.129487, -0.694777, 0.707472,
		-0.907491, -0.204503, -0.366930,
		32.451283, 32.118877, 35.263783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096191, 31.549404, 35.419052>,  <33.086525, 32.262032, 35.520634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096191, 31.549404, 35.419052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784473, 31.663382, 35.195801>,  <32.597443, 31.731768, 35.061848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784473, 31.663382, 35.195801>,  <33.096191, 31.549404, 35.419052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784473, 31.663382, 35.195801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296763, -0.616638, -0.729170,
		-0.551934, -0.733871, 0.395982,
		-0.779294, 0.284941, -0.558130,
		32.550686, 31.748865, 35.028362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738770, 30.911652, 35.159168>,  <33.096191, 31.549404, 35.419052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738770, 30.911652, 35.159168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606934, 31.196548, 34.911270>,  <32.527832, 31.367487, 34.762531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606934, 31.196548, 34.911270>,  <32.738770, 30.911652, 35.159168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606934, 31.196548, 34.911270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272662, -0.556643, -0.784732,
		-0.903895, -0.427619, -0.010739,
		-0.329589, 0.712244, -0.619742,
		32.508057, 31.410221, 34.725349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267471, 30.574945, 34.784744>,  <32.738770, 30.911652, 35.159168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267471, 30.574945, 34.784744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366447, 30.908587, 34.587547>,  <32.425835, 31.108772, 34.469231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366447, 30.908587, 34.587547>,  <32.267471, 30.574945, 34.784744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366447, 30.908587, 34.587547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020948, -0.504091, -0.863396,
		-0.968675, 0.223970, -0.107262,
		0.247445, 0.834104, -0.492992,
		32.440681, 31.158817, 34.439651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845938, 30.540644, 34.206745>,  <32.267471, 30.574945, 34.784744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845938, 30.540644, 34.206745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119144, 30.818476, 34.116375>,  <32.283070, 30.985174, 34.062153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119144, 30.818476, 34.116375>,  <31.845938, 30.540644, 34.206745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119144, 30.818476, 34.116375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070100, -0.370232, -0.926291,
		-0.727029, 0.616836, -0.301565,
		0.683019, 0.694580, -0.225929,
		32.324051, 31.026850, 34.048595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738630, 30.721411, 33.558132>,  <31.845938, 30.540644, 34.206745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738630, 30.721411, 33.558132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122246, 30.827318, 33.598415>,  <32.352413, 30.890863, 33.622585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122246, 30.827318, 33.598415>,  <31.738630, 30.721411, 33.558132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122246, 30.827318, 33.598415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167782, -0.244477, -0.955029,
		-0.228242, 0.932806, -0.278886,
		0.959038, 0.264770, 0.100708,
		32.409958, 30.906750, 33.628628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915461, 31.025942, 32.995247>,  <31.738630, 30.721411, 33.558132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915461, 31.025942, 32.995247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291409, 30.972399, 33.120930>,  <32.516975, 30.940273, 33.196339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291409, 30.972399, 33.120930>,  <31.915461, 31.025942, 32.995247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291409, 30.972399, 33.120930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273952, -0.253901, -0.927623,
		0.203949, 0.957923, -0.201962,
		0.939870, -0.133860, 0.314208,
		32.573368, 30.932241, 33.215191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469704, 31.386921, 32.597145>,  <31.915461, 31.025942, 32.995247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469704, 31.386921, 32.597145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643116, 31.061407, 32.751961>,  <32.747166, 30.866098, 32.844852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643116, 31.061407, 32.751961>,  <32.469704, 31.386921, 32.597145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643116, 31.061407, 32.751961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226666, -0.317218, -0.920866,
		0.872164, 0.486957, 0.046932,
		0.433535, -0.813784, 0.387043,
		32.773178, 30.817272, 32.868073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152184, 31.421551, 32.420387>,  <32.469704, 31.386921, 32.597145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152184, 31.421551, 32.420387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069302, 31.033030, 32.467102>,  <33.019573, 30.799917, 32.495132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069302, 31.033030, 32.467102>,  <33.152184, 31.421551, 32.420387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069302, 31.033030, 32.467102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203782, -0.159610, -0.965918,
		0.956838, -0.176344, 0.231006,
		-0.207205, -0.971302, 0.116786,
		33.007141, 30.741638, 32.502136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490032, 31.090836, 31.858871>,  <33.152184, 31.421551, 32.420387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490032, 31.090836, 31.858871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307568, 30.775911, 32.024792>,  <33.198090, 30.586958, 32.124344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307568, 30.775911, 32.024792>,  <33.490032, 31.090836, 31.858871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307568, 30.775911, 32.024792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029124, -0.479082, -0.877287,
		0.889421, -0.388102, 0.241468,
		-0.456160, -0.787310, 0.414803,
		33.170719, 30.539719, 32.149231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948776, 30.463764, 31.836990>,  <33.490032, 31.090836, 31.858871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948776, 30.463764, 31.836990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565487, 30.349377, 31.839426>,  <33.335514, 30.280745, 31.840887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565487, 30.349377, 31.839426>,  <33.948776, 30.463764, 31.836990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565487, 30.349377, 31.839426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170450, -0.587989, -0.790706,
		0.229698, -0.756632, 0.612166,
		-0.958220, -0.285967, 0.006091,
		33.278023, 30.263586, 31.841253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918335, 29.743227, 31.981724>,  <33.948776, 30.463764, 31.836990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918335, 29.743227, 31.981724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586628, 29.855473, 31.788406>,  <33.387604, 29.922821, 31.672417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586628, 29.855473, 31.788406>,  <33.918335, 29.743227, 31.981724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586628, 29.855473, 31.788406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140187, -0.732692, -0.665965,
		-0.540983, -0.620015, 0.568260,
		-0.829268, 0.280614, -0.483292,
		33.337849, 29.939657, 31.643419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660324, 29.092321, 31.780384>,  <33.918335, 29.743227, 31.981724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660324, 29.092321, 31.780384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469021, 29.359337, 31.552118>,  <33.354240, 29.519547, 31.415159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469021, 29.359337, 31.552118>,  <33.660324, 29.092321, 31.780384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469021, 29.359337, 31.552118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185190, -0.711844, -0.677482,
		-0.858473, -0.218329, 0.464066,
		-0.478256, 0.667541, -0.570667,
		33.325542, 29.559599, 31.380919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119938, 28.734896, 31.500158>,  <33.660324, 29.092321, 31.780384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119938, 28.734896, 31.500158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121281, 29.047096, 31.250101>,  <33.122086, 29.234417, 31.100067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121281, 29.047096, 31.250101>,  <33.119938, 28.734896, 31.500158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121281, 29.047096, 31.250101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007611, -0.625110, -0.780500,
		-0.999965, 0.007380, 0.003840,
		0.003359, 0.780502, -0.625144,
		33.122288, 29.281246, 31.062557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637920, 28.502352, 30.934414>,  <33.119938, 28.734896, 31.500158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637920, 28.502352, 30.934414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861866, 28.799004, 30.786612>,  <32.996235, 28.976994, 30.697929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861866, 28.799004, 30.786612>,  <32.637920, 28.502352, 30.934414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861866, 28.799004, 30.786612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209344, -0.558091, -0.802938,
		-0.801700, 0.372185, -0.467713,
		0.559867, 0.741628, -0.369507,
		33.029827, 29.021492, 30.675758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485065, 28.586296, 30.212561>,  <32.637920, 28.502352, 30.934414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485065, 28.586296, 30.212561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832222, 28.784866, 30.219824>,  <33.040516, 28.904009, 30.224182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832222, 28.784866, 30.219824>,  <32.485065, 28.586296, 30.212561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832222, 28.784866, 30.219824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256379, -0.416318, -0.872324,
		-0.425484, 0.761736, -0.488591,
		0.867890, 0.496425, 0.018156,
		33.092590, 28.933794, 30.225271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468830, 28.843596, 29.631947>,  <32.485065, 28.586296, 30.212561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468830, 28.843596, 29.631947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857464, 28.832302, 29.725950>,  <33.090645, 28.825525, 29.782352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857464, 28.832302, 29.725950>,  <32.468830, 28.843596, 29.631947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857464, 28.832302, 29.725950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209313, -0.361107, -0.908730,
		0.110523, 0.932097, -0.344935,
		0.971583, -0.028236, 0.235010,
		33.148937, 28.823832, 29.796453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839401, 29.198660, 29.117247>,  <32.468830, 28.843596, 29.631947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839401, 29.198660, 29.117247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160309, 29.008196, 29.261269>,  <33.352852, 28.893917, 29.347681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160309, 29.008196, 29.261269>,  <32.839401, 29.198660, 29.117247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160309, 29.008196, 29.261269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332908, -0.143788, -0.931932,
		0.495519, 0.867524, 0.043160,
		0.802268, -0.476158, 0.360055,
		33.400990, 28.865349, 29.369286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359612, 29.384844, 28.783504>,  <32.839401, 29.198660, 29.117247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359612, 29.384844, 28.783504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547565, 29.076874, 28.956209>,  <33.660339, 28.892092, 29.059832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547565, 29.076874, 28.956209>,  <33.359612, 29.384844, 28.783504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547565, 29.076874, 28.956209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394375, -0.254490, -0.883008,
		0.789731, 0.585190, 0.184059,
		0.469886, -0.769927, 0.431763,
		33.688530, 28.845896, 29.085737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030491, 29.349663, 28.583801>,  <33.359612, 29.384844, 28.783504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030491, 29.349663, 28.583801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961765, 28.981264, 28.723658>,  <33.920532, 28.760225, 28.807571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961765, 28.981264, 28.723658>,  <34.030491, 29.349663, 28.583801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961765, 28.981264, 28.723658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503973, -0.387132, -0.772102,
		0.846459, 0.043554, 0.530670,
		-0.171810, -0.920995, 0.349641,
		33.910221, 28.704966, 28.828550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708858, 29.036978, 28.658461>,  <34.030491, 29.349663, 28.583801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708858, 29.036978, 28.658461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436222, 28.746687, 28.621037>,  <34.272640, 28.572514, 28.598583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436222, 28.746687, 28.621037>,  <34.708858, 29.036978, 28.658461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436222, 28.746687, 28.621037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570430, -0.446901, -0.689122,
		0.458303, -0.523069, 0.718580,
		-0.681593, -0.725726, -0.093559,
		34.231743, 28.528969, 28.592968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116528, 28.472610, 28.516390>,  <34.708858, 29.036978, 28.658461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116528, 28.472610, 28.516390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747448, 28.373440, 28.398304>,  <34.526001, 28.313938, 28.327452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747448, 28.373440, 28.398304>,  <35.116528, 28.472610, 28.516390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747448, 28.373440, 28.398304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385417, -0.610193, -0.692184,
		-0.008527, -0.752461, 0.658582,
		-0.922703, -0.247926, -0.295214,
		34.470638, 28.299063, 28.309740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014858, 27.735495, 28.547804>,  <35.116528, 28.472610, 28.516390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014858, 27.735495, 28.547804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736492, 27.842676, 28.281300>,  <34.569473, 27.906984, 28.121397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736492, 27.842676, 28.281300>,  <35.014858, 27.735495, 28.547804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736492, 27.842676, 28.281300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512911, -0.463896, -0.722304,
		-0.502624, -0.844393, 0.185392,
		-0.695910, 0.267957, -0.666264,
		34.527718, 27.923061, 28.081421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142292, 27.321466, 27.890720>,  <35.014858, 27.735495, 28.547804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142292, 27.321466, 27.890720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902912, 27.613119, 27.757923>,  <34.759285, 27.788111, 27.678246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902912, 27.613119, 27.757923>,  <35.142292, 27.321466, 27.890720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902912, 27.613119, 27.757923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446661, -0.040356, -0.893793,
		-0.665091, -0.683181, -0.301524,
		-0.598454, 0.729133, -0.331991,
		34.723377, 27.831860, 27.658325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791279, 27.128426, 27.194750>,  <35.142292, 27.321466, 27.890720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791279, 27.128426, 27.194750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820019, 27.526058, 27.227337>,  <34.837265, 27.764639, 27.246889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820019, 27.526058, 27.227337>,  <34.791279, 27.128426, 27.194750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820019, 27.526058, 27.227337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378588, 0.048385, -0.924300,
		-0.922772, 0.097258, -0.372871,
		0.071854, 0.994082, 0.081469,
		34.841576, 27.824284, 27.251778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475021, 27.455156, 26.610527>,  <34.791279, 27.128426, 27.194750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475021, 27.455156, 26.610527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714359, 27.735138, 26.766500>,  <34.857964, 27.903126, 26.860085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714359, 27.735138, 26.766500>,  <34.475021, 27.455156, 26.610527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714359, 27.735138, 26.766500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232752, 0.313836, -0.920507,
		-0.766686, 0.641541, 0.024868,
		0.598347, 0.699952, 0.389934,
		34.893864, 27.945124, 26.883480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254719, 28.019855, 26.295542>,  <34.475021, 27.455156, 26.610527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254719, 28.019855, 26.295542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619022, 28.154324, 26.391464>,  <34.837605, 28.235004, 26.449018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619022, 28.154324, 26.391464>,  <34.254719, 28.019855, 26.295542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619022, 28.154324, 26.391464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124347, 0.330511, -0.935575,
		-0.393770, 0.881903, 0.259214,
		0.910759, 0.336169, 0.239807,
		34.892250, 28.255175, 26.463406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270294, 28.771070, 26.084919>,  <34.254719, 28.019855, 26.295542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270294, 28.771070, 26.084919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656281, 28.685640, 26.145870>,  <34.887875, 28.634382, 26.182442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656281, 28.685640, 26.145870>,  <34.270294, 28.771070, 26.084919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656281, 28.685640, 26.145870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257968, 0.666543, -0.699409,
		0.047808, 0.714217, 0.698289,
		0.964970, -0.213574, 0.152379,
		34.945770, 28.621569, 26.191584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601418, 29.444326, 26.265791>,  <34.270294, 28.771070, 26.084919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601418, 29.444326, 26.265791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869804, 29.192631, 26.108891>,  <35.030834, 29.041613, 26.014750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869804, 29.192631, 26.108891>,  <34.601418, 29.444326, 26.265791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869804, 29.192631, 26.108891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255839, 0.692980, -0.674037,
		0.695954, 0.351901, 0.625949,
		0.670965, -0.629241, -0.392252,
		35.071095, 29.003859, 25.991215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266602, 29.809336, 26.255110>,  <34.601418, 29.444326, 26.265791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266602, 29.809336, 26.255110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291943, 29.505430, 25.996269>,  <35.307148, 29.323086, 25.840965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291943, 29.505430, 25.996269>,  <35.266602, 29.809336, 26.255110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291943, 29.505430, 25.996269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118086, 0.649557, -0.751087,
		0.990980, -0.028830, 0.130869,
		0.063353, -0.759766, -0.647103,
		35.310947, 29.277500, 25.802139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772476, 30.035994, 25.860201>,  <35.266602, 29.809336, 26.255110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772476, 30.035994, 25.860201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593468, 29.747084, 25.649284>,  <35.486061, 29.573738, 25.522734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593468, 29.747084, 25.649284>,  <35.772476, 30.035994, 25.860201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593468, 29.747084, 25.649284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275401, 0.449663, -0.849681,
		0.850808, -0.525471, -0.002320,
		-0.447525, -0.722277, -0.527292,
		35.459209, 29.530401, 25.491096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284367, 29.817766, 25.393238>,  <35.772476, 30.035994, 25.860201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284367, 29.817766, 25.393238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919827, 29.732962, 25.252100>,  <35.701103, 29.682079, 25.167418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919827, 29.732962, 25.252100>,  <36.284367, 29.817766, 25.393238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919827, 29.732962, 25.252100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255620, 0.380394, -0.888796,
		0.322653, -0.900196, -0.292478,
		-0.911347, -0.212009, -0.352844,
		35.646423, 29.669359, 25.146246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369904, 29.705679, 24.664482>,  <36.284367, 29.817766, 25.393238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369904, 29.705679, 24.664482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975182, 29.770420, 24.665960>,  <35.738346, 29.809265, 24.666847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975182, 29.770420, 24.665960>,  <36.369904, 29.705679, 24.664482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975182, 29.770420, 24.665960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041929, 0.277548, -0.959796,
		-0.156369, -0.946980, -0.280673,
		-0.986809, 0.161851, 0.003695,
		35.679138, 29.818975, 24.667068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178169, 29.541424, 24.027256>,  <36.369904, 29.705679, 24.664482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178169, 29.541424, 24.027256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859074, 29.742384, 24.160650>,  <35.667618, 29.862961, 24.240686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859074, 29.742384, 24.160650>,  <36.178169, 29.541424, 24.027256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859074, 29.742384, 24.160650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106631, 0.426790, -0.898043,
		-0.593504, -0.751960, -0.286894,
		-0.797736, 0.502401, 0.333484,
		35.619751, 29.893105, 24.260695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527580, 29.387737, 23.533920>,  <36.178169, 29.541424, 24.027256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527580, 29.387737, 23.533920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493767, 29.731295, 23.735971>,  <35.473476, 29.937429, 23.857203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493767, 29.731295, 23.735971>,  <35.527580, 29.387737, 23.533920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493767, 29.731295, 23.735971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148643, 0.490397, -0.858729,
		-0.985271, -0.147678, 0.086212,
		-0.084538, 0.858896, 0.505126,
		35.468407, 29.988964, 23.887508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911655, 29.639715, 23.322538>,  <35.527580, 29.387737, 23.533920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911655, 29.639715, 23.322538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115780, 29.957455, 23.454350>,  <35.238255, 30.148098, 23.533436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115780, 29.957455, 23.454350>,  <34.911655, 29.639715, 23.322538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115780, 29.957455, 23.454350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175156, 0.471150, -0.864487,
		-0.841962, 0.383440, 0.379569,
		0.510313, 0.794349, 0.329528,
		35.268875, 30.195759, 23.553207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406666, 29.136688, 23.528585>,  <34.911655, 29.639715, 23.322538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406666, 29.136688, 23.528585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255508, 29.453352, 23.336557>,  <34.164814, 29.643351, 23.221340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255508, 29.453352, 23.336557>,  <34.406666, 29.136688, 23.528585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255508, 29.453352, 23.336557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193309, -0.439627, -0.877131,
		-0.905444, -0.424264, 0.013096,
		-0.377893, 0.791662, -0.480071,
		34.142139, 29.690851, 23.192535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269199, 28.899878, 22.857498>,  <34.406666, 29.136688, 23.528585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269199, 28.899878, 22.857498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316349, 29.290590, 22.785946>,  <34.344639, 29.525019, 22.743015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316349, 29.290590, 22.785946>,  <34.269199, 28.899878, 22.857498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316349, 29.290590, 22.785946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377007, -0.210671, -0.901933,
		-0.918679, 0.038879, -0.393088,
		0.117878, 0.976784, -0.178881,
		34.351711, 29.583626, 22.732281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028065, 28.822151, 22.170120>,  <34.269199, 28.899878, 22.857498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028065, 28.822151, 22.170120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235085, 28.490221, 22.086662>,  <34.359295, 28.291063, 22.036587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235085, 28.490221, 22.086662>,  <34.028065, 28.822151, 22.170120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235085, 28.490221, 22.086662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415318, 0.456817, -0.786656,
		0.748101, 0.320478, 0.581067,
		0.517547, -0.829826, -0.208645,
		34.390350, 28.241274, 22.024069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752941, 29.079710, 22.027895>,  <34.028065, 28.822151, 22.170120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752941, 29.079710, 22.027895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650940, 28.736946, 21.848705>,  <34.589741, 28.531288, 21.741192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650940, 28.736946, 21.848705>,  <34.752941, 29.079710, 22.027895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650940, 28.736946, 21.848705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289424, 0.374407, -0.880939,
		0.922609, -0.354295, 0.152535,
		-0.255002, -0.856910, -0.447973,
		34.574440, 28.479874, 21.714314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333809, 28.789940, 21.541874>,  <34.752941, 29.079710, 22.027895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333809, 28.789940, 21.541874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977039, 28.662849, 21.413170>,  <34.762978, 28.586596, 21.335947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977039, 28.662849, 21.413170>,  <35.333809, 28.789940, 21.541874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977039, 28.662849, 21.413170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181176, 0.400860, -0.898046,
		0.414329, -0.859275, -0.299964,
		-0.891912, -0.317741, -0.321768,
		34.709465, 28.567532, 21.316641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388485, 29.520086, 21.571068>,  <35.333809, 28.789940, 21.541874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388485, 29.520086, 21.571068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658207, 29.802460, 21.484377>,  <35.820042, 29.971884, 21.432362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658207, 29.802460, 21.484377>,  <35.388485, 29.520086, 21.571068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658207, 29.802460, 21.484377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328110, 0.549341, 0.768485,
		0.661556, -0.447083, 0.602047,
		0.674306, 0.705933, -0.216727,
		35.860500, 30.014240, 21.419359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635769, 29.719427, 22.240652>,  <35.388485, 29.520086, 21.571068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635769, 29.719427, 22.240652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704666, 30.006369, 21.970621>,  <35.746006, 30.178534, 21.808601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704666, 30.006369, 21.970621>,  <35.635769, 29.719427, 22.240652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704666, 30.006369, 21.970621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051410, 0.677841, 0.733409,
		0.983711, -0.161033, 0.079877,
		0.172247, 0.717356, -0.675079,
		35.756340, 30.221575, 21.768097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161003, 30.236616, 22.456921>,  <35.635769, 29.719427, 22.240652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161003, 30.236616, 22.456921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968987, 30.451090, 22.179197>,  <35.853779, 30.579775, 22.012564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968987, 30.451090, 22.179197>,  <36.161003, 30.236616, 22.456921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968987, 30.451090, 22.179197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285447, 0.843865, 0.454325,
		0.829507, 0.019906, -0.558141,
		-0.480040, 0.536186, -0.694310,
		35.824974, 30.611946, 21.970903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509945, 30.776245, 22.011852>,  <36.161003, 30.236616, 22.456921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509945, 30.776245, 22.011852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140160, 30.876211, 22.127029>,  <35.918289, 30.936190, 22.196136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140160, 30.876211, 22.127029>,  <36.509945, 30.776245, 22.011852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140160, 30.876211, 22.127029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366170, 0.792402, 0.487871,
		-0.106240, 0.556455, -0.824057,
		-0.924463, 0.249914, 0.287942,
		35.862820, 30.951185, 22.213411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326164, 31.488932, 21.961729>,  <36.509945, 30.776245, 22.011852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326164, 31.488932, 21.961729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066593, 31.366888, 22.240524>,  <35.910851, 31.293661, 22.407803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066593, 31.366888, 22.240524>,  <36.326164, 31.488932, 21.961729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066593, 31.366888, 22.240524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255784, 0.775267, 0.577525,
		-0.716563, 0.553053, -0.425053,
		-0.648932, -0.305111, 0.696990,
		35.871914, 31.275354, 22.449621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889427, 32.037655, 22.153925>,  <36.326164, 31.488932, 21.961729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889427, 32.037655, 22.153925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894672, 31.789253, 22.467405>,  <35.897820, 31.640213, 22.655493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894672, 31.789253, 22.467405>,  <35.889427, 32.037655, 22.153925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894672, 31.789253, 22.467405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221388, 0.766119, 0.603365,
		-0.975098, 0.165587, 0.147531,
		0.013117, -0.621001, 0.783700,
		35.898609, 31.602953, 22.702515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384117, 32.229771, 22.677984>,  <35.889427, 32.037655, 22.153925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384117, 32.229771, 22.677984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642960, 31.999115, 22.877481>,  <35.798264, 31.860722, 22.997179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642960, 31.999115, 22.877481>,  <35.384117, 32.229771, 22.677984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642960, 31.999115, 22.877481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143589, 0.734647, 0.663080,
		-0.748757, -0.357469, 0.558193,
		0.647106, -0.576636, 0.498744,
		35.837090, 31.826124, 23.027105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220753, 32.149776, 23.325865>,  <35.384117, 32.229771, 22.677984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220753, 32.149776, 23.325865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614487, 32.080429, 23.338718>,  <35.850727, 32.038818, 23.346432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614487, 32.080429, 23.338718>,  <35.220753, 32.149776, 23.325865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614487, 32.080429, 23.338718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123297, 0.807064, 0.577447,
		-0.126049, -0.564437, 0.815795,
		0.984332, -0.173372, 0.032136,
		35.909786, 32.028416, 23.348360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351337, 32.183468, 23.974501>,  <35.220753, 32.149776, 23.325865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351337, 32.183468, 23.974501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715755, 32.242378, 23.820456>,  <35.934406, 32.277725, 23.728029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715755, 32.242378, 23.820456>,  <35.351337, 32.183468, 23.974501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715755, 32.242378, 23.820456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221823, 0.612266, 0.758897,
		0.347554, -0.776815, 0.525133,
		0.911044, 0.147271, -0.385111,
		35.989067, 32.286560, 23.704922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709019, 32.006920, 24.561888>,  <35.351337, 32.183468, 23.974501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709019, 32.006920, 24.561888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950607, 32.232647, 24.336758>,  <36.095558, 32.368084, 24.201679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950607, 32.232647, 24.336758>,  <35.709019, 32.006920, 24.561888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950607, 32.232647, 24.336758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197527, 0.578158, 0.791654,
		0.772143, -0.589307, 0.237722,
		0.603969, 0.564314, -0.562825,
		36.131798, 32.401939, 24.167910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264839, 32.051792, 24.957266>,  <35.709019, 32.006920, 24.561888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264839, 32.051792, 24.957266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282585, 32.349133, 24.690294>,  <36.293232, 32.527534, 24.530111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282585, 32.349133, 24.690294>,  <36.264839, 32.051792, 24.957266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282585, 32.349133, 24.690294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323603, 0.621374, 0.713565,
		0.945152, -0.247641, -0.212982,
		0.044366, 0.743349, -0.667430,
		36.295895, 32.572136, 24.490065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841614, 32.318954, 25.049784>,  <36.264839, 32.051792, 24.957266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841614, 32.318954, 25.049784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631302, 32.604759, 24.865164>,  <36.505116, 32.776241, 24.754391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631302, 32.604759, 24.865164>,  <36.841614, 32.318954, 25.049784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631302, 32.604759, 24.865164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279765, 0.657675, 0.699425,
		0.803297, 0.238619, -0.545688,
		-0.525781, 0.714510, -0.461551,
		36.473568, 32.819111, 24.726698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136520, 32.947971, 25.281588>,  <36.841614, 32.318954, 25.049784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136520, 32.947971, 25.281588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794075, 33.088318, 25.129820>,  <36.588608, 33.172527, 25.038759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794075, 33.088318, 25.129820>,  <37.136520, 32.947971, 25.281588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794075, 33.088318, 25.129820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098670, 0.609708, 0.786461,
		0.507277, 0.710739, -0.487360,
		-0.856116, 0.350866, -0.379420,
		36.537239, 33.193577, 25.015993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116795, 33.708263, 25.479792>,  <37.136520, 32.947971, 25.281588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116795, 33.708263, 25.479792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749508, 33.565567, 25.410965>,  <36.529137, 33.479950, 25.369669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749508, 33.565567, 25.410965>,  <37.116795, 33.708263, 25.479792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749508, 33.565567, 25.410965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347249, 0.516149, 0.782949,
		-0.190495, 0.778670, -0.597816,
		-0.918221, -0.356739, -0.172068,
		36.474041, 33.458546, 25.359344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821407, 34.319702, 25.548269>,  <37.116795, 33.708263, 25.479792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821407, 34.319702, 25.548269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574974, 34.007778, 25.592688>,  <36.427113, 33.820621, 25.619339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574974, 34.007778, 25.592688>,  <36.821407, 34.319702, 25.548269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574974, 34.007778, 25.592688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373394, 0.413267, 0.830534,
		-0.693554, 0.470214, -0.545785,
		-0.616084, -0.779813, 0.111048,
		36.390148, 33.773834, 25.626001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222744, 34.701050, 25.686449>,  <36.821407, 34.319702, 25.548269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222744, 34.701050, 25.686449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193203, 34.326447, 25.823561>,  <36.175480, 34.101685, 25.905828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193203, 34.326447, 25.823561>,  <36.222744, 34.701050, 25.686449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193203, 34.326447, 25.823561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431470, 0.339886, 0.835650,
		-0.899099, -0.086186, -0.429176,
		-0.073850, -0.936509, 0.342778,
		36.171047, 34.045494, 25.926394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542076, 34.571770, 26.060163>,  <36.222744, 34.701050, 25.686449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542076, 34.571770, 26.060163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752277, 34.264462, 26.206369>,  <35.878399, 34.080074, 26.294094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752277, 34.264462, 26.206369>,  <35.542076, 34.571770, 26.060163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752277, 34.264462, 26.206369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313591, 0.224463, 0.922647,
		-0.790891, -0.599476, -0.122968,
		0.525503, -0.768274, 0.365516,
		35.909927, 34.033978, 26.316025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254635, 34.502502, 26.572359>,  <35.542076, 34.571770, 26.060163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254635, 34.502502, 26.572359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569393, 34.284859, 26.688797>,  <35.758247, 34.154270, 26.758659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569393, 34.284859, 26.688797>,  <35.254635, 34.502502, 26.572359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569393, 34.284859, 26.688797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293395, 0.085108, 0.952195,
		-0.542877, -0.834684, -0.092669,
		0.786895, -0.544113, 0.291095,
		35.805462, 34.121624, 26.776125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048500, 34.062901, 27.092913>,  <35.254635, 34.502502, 26.572359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048500, 34.062901, 27.092913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443104, 34.068512, 27.158161>,  <35.679867, 34.071880, 27.197311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443104, 34.068512, 27.158161>,  <35.048500, 34.062901, 27.092913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443104, 34.068512, 27.158161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163716, 0.094686, 0.981953,
		-0.001670, -0.995408, 0.095705,
		0.986506, 0.014029, 0.163122,
		35.739056, 34.072720, 27.207098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291473, 33.500572, 27.529451>,  <35.048500, 34.062901, 27.092913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291473, 33.500572, 27.529451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540478, 33.812325, 27.557846>,  <35.689880, 33.999378, 27.574883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540478, 33.812325, 27.557846>,  <35.291473, 33.500572, 27.529451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540478, 33.812325, 27.557846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090335, -0.018540, 0.995739,
		0.777380, -0.626270, 0.058864,
		0.622510, 0.779385, 0.070987,
		35.727230, 34.046139, 27.579142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512341, 33.447716, 28.148123>,  <35.291473, 33.500572, 27.529451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512341, 33.447716, 28.148123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648968, 33.813549, 28.061525>,  <35.730946, 34.033047, 28.009567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648968, 33.813549, 28.061525>,  <35.512341, 33.447716, 28.148123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648968, 33.813549, 28.061525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026143, 0.239505, 0.970543,
		0.939492, -0.325851, 0.105718,
		0.341573, 0.914581, -0.216494,
		35.751438, 34.087925, 27.996576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061211, 33.720898, 28.754591>,  <35.512341, 33.447716, 28.148123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061211, 33.720898, 28.754591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899323, 34.029861, 28.558800>,  <35.802189, 34.215240, 28.441324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899323, 34.029861, 28.558800>,  <36.061211, 33.720898, 28.754591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899323, 34.029861, 28.558800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185495, 0.454803, 0.871060,
		0.895430, 0.443330, -0.040790,
		-0.404718, 0.772407, -0.489480,
		35.777908, 34.261585, 28.411957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146427, 34.258713, 29.208111>,  <36.061211, 33.720898, 28.754591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146427, 34.258713, 29.208111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844494, 34.394402, 28.983555>,  <35.663334, 34.475815, 28.848822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844494, 34.394402, 28.983555>,  <36.146427, 34.258713, 29.208111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844494, 34.394402, 28.983555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411193, 0.422094, 0.807934,
		0.511024, 0.840695, -0.179128,
		-0.754834, 0.339217, -0.561388,
		35.618042, 34.496166, 28.815138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059330, 34.927277, 29.449228>,  <36.146427, 34.258713, 29.208111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059330, 34.927277, 29.449228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709873, 34.863056, 29.265503>,  <35.500198, 34.824524, 29.155268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709873, 34.863056, 29.265503>,  <36.059330, 34.927277, 29.449228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709873, 34.863056, 29.265503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485940, 0.335812, 0.806904,
		0.024696, 0.928146, -0.371397,
		-0.873643, -0.160550, -0.459316,
		35.447781, 34.814892, 29.127708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616703, 35.484180, 29.599949>,  <36.059330, 34.927277, 29.449228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616703, 35.484180, 29.599949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331863, 35.243530, 29.455200>,  <35.160957, 35.099140, 29.368351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331863, 35.243530, 29.455200>,  <35.616703, 35.484180, 29.599949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331863, 35.243530, 29.455200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650512, 0.371522, 0.662424,
		-0.264088, 0.707117, -0.655928,
		-0.712103, -0.601628, -0.361874,
		35.118233, 35.063042, 29.346638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143436, 35.927620, 29.272453>,  <35.616703, 35.484180, 29.599949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143436, 35.927620, 29.272453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979717, 35.586952, 29.403374>,  <34.881485, 35.382549, 29.481926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979717, 35.586952, 29.403374>,  <35.143436, 35.927620, 29.272453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979717, 35.586952, 29.403374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560452, 0.517754, 0.646393,
		-0.719978, 0.081131, -0.689239,
		-0.409299, -0.851674, 0.327301,
		34.856926, 35.331451, 29.501564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426353, 36.081577, 29.366022>,  <35.143436, 35.927620, 29.272453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426353, 36.081577, 29.366022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503632, 35.764778, 29.597681>,  <34.549999, 35.574699, 29.736677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503632, 35.764778, 29.597681>,  <34.426353, 36.081577, 29.366022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503632, 35.764778, 29.597681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592441, 0.376351, 0.712302,
		-0.782105, -0.480727, -0.396501,
		0.193199, -0.791998, 0.579148,
		34.561592, 35.527180, 29.771425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784576, 36.038937, 29.615749>,  <34.426353, 36.081577, 29.366022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784576, 36.038937, 29.615749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030079, 35.839005, 29.860199>,  <34.177380, 35.719044, 30.006868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030079, 35.839005, 29.860199>,  <33.784576, 36.038937, 29.615749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030079, 35.839005, 29.860199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625527, 0.164404, 0.762684,
		-0.481684, -0.850377, -0.211754,
		0.613756, -0.499830, 0.611124,
		34.214207, 35.689056, 30.043537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361740, 35.706692, 30.055052>,  <33.784576, 36.038937, 29.615749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361740, 35.706692, 30.055052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702862, 35.673229, 30.261244>,  <33.907536, 35.653152, 30.384960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702862, 35.673229, 30.261244>,  <33.361740, 35.706692, 30.055052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702862, 35.673229, 30.261244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506723, 0.106164, 0.855547,
		-0.126299, -0.990823, 0.048146,
		0.852807, -0.083658, 0.515481,
		33.958702, 35.648132, 30.415888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223045, 35.177269, 30.567984>,  <33.361740, 35.706692, 30.055052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223045, 35.177269, 30.567984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543522, 35.389179, 30.679293>,  <33.735806, 35.516327, 30.746078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543522, 35.389179, 30.679293>,  <33.223045, 35.177269, 30.567984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543522, 35.389179, 30.679293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420333, 0.167227, 0.891827,
		0.425933, -0.831488, 0.356663,
		0.801187, 0.529776, 0.278274,
		33.783878, 35.548111, 30.762775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397068, 34.986427, 31.236427>,  <33.223045, 35.177269, 30.567984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397068, 34.986427, 31.236427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529610, 35.361092, 31.191044>,  <33.609135, 35.585892, 31.163815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529610, 35.361092, 31.191044>,  <33.397068, 34.986427, 31.236427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529610, 35.361092, 31.191044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358803, 0.236312, 0.903004,
		0.872619, -0.258507, 0.414380,
		0.331355, 0.936659, -0.113457,
		33.629017, 35.642090, 31.157007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901062, 34.985710, 31.770792>,  <33.397068, 34.986427, 31.236427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901062, 34.985710, 31.770792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787952, 35.358799, 31.681282>,  <33.720089, 35.582653, 31.627577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787952, 35.358799, 31.681282>,  <33.901062, 34.985710, 31.770792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787952, 35.358799, 31.681282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342913, 0.119575, 0.931725,
		0.895797, 0.340198, 0.286030,
		-0.282769, 0.932720, -0.223774,
		33.703121, 35.638615, 31.614149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975082, 35.317593, 32.385803>,  <33.901062, 34.985710, 31.770792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975082, 35.317593, 32.385803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736591, 35.546318, 32.160400>,  <33.593498, 35.683552, 32.025158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736591, 35.546318, 32.160400>,  <33.975082, 35.317593, 32.385803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736591, 35.546318, 32.160400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489663, 0.297219, 0.819690,
		0.636193, 0.764653, 0.102784,
		-0.596229, 0.571810, -0.563511,
		33.557724, 35.717861, 31.991346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957630, 35.893574, 32.848042>,  <33.975082, 35.317593, 32.385803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957630, 35.893574, 32.848042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658062, 35.965359, 32.592884>,  <33.478321, 36.008430, 32.439789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658062, 35.965359, 32.592884>,  <33.957630, 35.893574, 32.848042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658062, 35.965359, 32.592884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548958, 0.371164, 0.748921,
		0.371164, 0.911061, -0.179458,
		-0.748921, 0.179458, -0.637897,
		33.433384, 36.019196, 32.401516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696499, 36.603477, 32.935089>,  <33.957630, 35.893574, 32.848042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696499, 36.603477, 32.935089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382626, 36.391445, 32.806541>,  <33.194302, 36.264225, 32.729412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382626, 36.391445, 32.806541>,  <33.696499, 36.603477, 32.935089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382626, 36.391445, 32.806541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480736, 0.193079, 0.855344,
		-0.391355, 0.825670, -0.406338,
		-0.784687, -0.530085, -0.321367,
		33.147221, 36.232418, 32.710133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067089, 36.909149, 33.161728>,  <33.696499, 36.603477, 32.935089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067089, 36.909149, 33.161728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937370, 36.545933, 33.055668>,  <32.859539, 36.328003, 32.992031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937370, 36.545933, 33.055668>,  <33.067089, 36.909149, 33.161728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937370, 36.545933, 33.055668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668134, 0.021444, 0.743732,
		-0.669650, 0.418341, -0.613644,
		-0.324293, -0.908037, -0.265148,
		32.840084, 36.273521, 32.976124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282093, 36.968277, 33.109497>,  <33.067089, 36.909149, 33.161728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282093, 36.968277, 33.109497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366966, 36.583557, 33.178680>,  <32.417892, 36.352726, 33.220188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366966, 36.583557, 33.178680>,  <32.282093, 36.968277, 33.109497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366966, 36.583557, 33.178680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792883, -0.065984, 0.605791,
		-0.571239, -0.265673, -0.776598,
		0.212185, -0.961802, 0.172954,
		32.430622, 36.295017, 33.230568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622818, 36.663010, 33.356205>,  <32.282093, 36.968277, 33.109497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622818, 36.663010, 33.356205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915838, 36.413048, 33.464180>,  <32.091648, 36.263069, 33.528965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915838, 36.413048, 33.464180>,  <31.622818, 36.663010, 33.356205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915838, 36.413048, 33.464180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562231, -0.331881, 0.757464,
		-0.383761, -0.706642, -0.594462,
		0.732546, -0.624909, 0.269933,
		32.135601, 36.225574, 33.545162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263906, 36.050545, 33.496433>,  <31.622818, 36.663010, 33.356205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263906, 36.050545, 33.496433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607950, 36.061424, 33.700188>,  <31.814377, 36.067951, 33.822441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607950, 36.061424, 33.700188>,  <31.263906, 36.050545, 33.496433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607950, 36.061424, 33.700188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457490, -0.400587, 0.793872,
		0.225650, -0.915855, -0.332102,
		0.860107, 0.027204, 0.509387,
		31.865982, 36.069584, 33.853004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160395, 35.466454, 33.969318>,  <31.263906, 36.050545, 33.496433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160395, 35.466454, 33.969318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448996, 35.702641, 34.113972>,  <31.622156, 35.844353, 34.200764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448996, 35.702641, 34.113972>,  <31.160395, 35.466454, 33.969318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448996, 35.702641, 34.113972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380064, -0.098847, 0.919663,
		0.578779, -0.800984, 0.153097,
		0.721503, 0.590469, 0.361636,
		31.665447, 35.879780, 34.222462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462164, 35.092300, 34.685478>,  <31.160395, 35.466454, 33.969318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462164, 35.092300, 34.685478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570257, 35.477356, 34.692345>,  <31.635113, 35.708389, 34.696465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570257, 35.477356, 34.692345>,  <31.462164, 35.092300, 34.685478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570257, 35.477356, 34.692345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199106, 0.038431, 0.979224,
		0.941983, -0.268036, 0.202053,
		0.270233, 0.962642, 0.017166,
		31.651327, 35.766148, 34.697495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048065, 35.113201, 35.152363>,  <31.462164, 35.092300, 34.685478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048065, 35.113201, 35.152363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887293, 35.476990, 35.109818>,  <31.790831, 35.695263, 35.084290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887293, 35.476990, 35.109818>,  <32.048065, 35.113201, 35.152363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887293, 35.476990, 35.109818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121261, 0.062272, 0.990665,
		0.907607, 0.411073, 0.085255,
		-0.401927, 0.909473, -0.106366,
		31.766714, 35.749832, 35.077908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467236, 35.668644, 35.629395>,  <32.048065, 35.113201, 35.152363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467236, 35.668644, 35.629395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089458, 35.761341, 35.536167>,  <31.862793, 35.816959, 35.480232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089458, 35.761341, 35.536167>,  <32.467236, 35.668644, 35.629395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089458, 35.761341, 35.536167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200478, 0.155742, 0.967240,
		0.260453, 0.960228, -0.100630,
		-0.944443, 0.231746, -0.233069,
		31.806126, 35.830864, 35.466248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366264, 36.264492, 36.042591>,  <32.467236, 35.668644, 35.629395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366264, 36.264492, 36.042591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004589, 36.124779, 35.944256>,  <31.787582, 36.040951, 35.885254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004589, 36.124779, 35.944256>,  <32.366264, 36.264492, 36.042591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004589, 36.124779, 35.944256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358634, 0.308230, 0.881122,
		-0.231991, 0.884869, -0.403965,
		-0.904191, -0.349288, -0.245837,
		31.733332, 36.019993, 35.870506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076527, 36.092812, 36.040146>,  <32.366264, 36.264492, 36.042591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076527, 36.092812, 36.040146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381889, 36.186634, 36.280876>,  <33.565109, 36.242928, 36.425312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381889, 36.186634, 36.280876>,  <33.076527, 36.092812, 36.040146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381889, 36.186634, 36.280876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571680, 0.188319, -0.798572,
		-0.300642, 0.953688, 0.009676,
		0.763411, 0.234552, 0.601821,
		33.610912, 36.257000, 36.461422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378777, 36.799549, 35.808254>,  <33.076527, 36.092812, 36.040146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378777, 36.799549, 35.808254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638985, 36.527817, 35.944092>,  <33.795109, 36.364777, 36.025593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638985, 36.527817, 35.944092>,  <33.378777, 36.799549, 35.808254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638985, 36.527817, 35.944092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565475, 0.134736, -0.813685,
		0.507008, 0.721354, 0.471795,
		0.650523, -0.679334, 0.339595,
		33.834141, 36.324017, 36.045971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936417, 37.113392, 35.547211>,  <33.378777, 36.799549, 35.808254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936417, 37.113392, 35.547211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014622, 36.725018, 35.602417>,  <34.061546, 36.491993, 35.635540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014622, 36.725018, 35.602417>,  <33.936417, 37.113392, 35.547211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014622, 36.725018, 35.602417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699550, 0.039441, -0.713494,
		0.687316, 0.236050, 0.686933,
		0.195514, -0.970940, 0.138020,
		34.073277, 36.433735, 35.643822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781345, 37.019478, 35.699875>,  <33.936417, 37.113392, 35.547211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781345, 37.019478, 35.699875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619808, 36.687641, 35.545631>,  <34.522888, 36.488541, 35.453087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619808, 36.687641, 35.545631>,  <34.781345, 37.019478, 35.699875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619808, 36.687641, 35.545631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775147, -0.086437, -0.625839,
		0.485860, -0.551640, 0.677962,
		-0.403839, -0.829591, -0.385606,
		34.498657, 36.438763, 35.429951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358059, 36.732784, 35.411514>,  <34.781345, 37.019478, 35.699875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358059, 36.732784, 35.411514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082836, 36.491856, 35.249634>,  <34.917702, 36.347298, 35.152504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082836, 36.491856, 35.249634>,  <35.358059, 36.732784, 35.411514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082836, 36.491856, 35.249634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595550, -0.150079, -0.789174,
		0.414600, -0.784019, 0.461976,
		-0.688061, -0.602321, -0.404700,
		34.876419, 36.311161, 35.128223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689617, 36.061661, 35.142609>,  <35.358059, 36.732784, 35.411514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689617, 36.061661, 35.142609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352619, 36.146832, 34.944672>,  <35.150421, 36.197933, 34.825909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352619, 36.146832, 34.944672>,  <35.689617, 36.061661, 35.142609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352619, 36.146832, 34.944672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434559, -0.274271, -0.857866,
		-0.318388, -0.937782, 0.138540,
		-0.842489, 0.212931, -0.494846,
		35.099873, 36.210709, 34.796219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758202, 35.594067, 34.676010>,  <35.689617, 36.061661, 35.142609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758202, 35.594067, 34.676010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471466, 35.836819, 34.538696>,  <35.299427, 35.982471, 34.456306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471466, 35.836819, 34.538696>,  <35.758202, 35.594067, 34.676010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471466, 35.836819, 34.538696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275157, -0.206158, -0.939035,
		-0.640652, -0.767592, -0.019206,
		-0.716836, 0.606879, -0.343284,
		35.256416, 36.018883, 34.435711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459587, 35.214344, 34.135426>,  <35.758202, 35.594067, 34.676010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459587, 35.214344, 34.135426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388538, 35.599686, 34.055035>,  <35.345909, 35.830891, 34.006798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388538, 35.599686, 34.055035>,  <35.459587, 35.214344, 34.135426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388538, 35.599686, 34.055035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431542, -0.107297, -0.895689,
		-0.884433, -0.245826, -0.396671,
		-0.177622, 0.963357, -0.200981,
		35.335251, 35.888691, 33.994740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307350, 35.209755, 33.485126>,  <35.459587, 35.214344, 34.135426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307350, 35.209755, 33.485126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355904, 35.604221, 33.530262>,  <35.385036, 35.840900, 33.557343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355904, 35.604221, 33.530262>,  <35.307350, 35.209755, 33.485126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355904, 35.604221, 33.530262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448231, 0.046971, -0.892683,
		-0.885638, 0.158940, -0.436330,
		0.121388, 0.986170, 0.112841,
		35.392319, 35.900074, 33.564114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130634, 35.400909, 32.886833>,  <35.307350, 35.209755, 33.485126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130634, 35.400909, 32.886833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352242, 35.697533, 33.038181>,  <35.485207, 35.875507, 33.128990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352242, 35.697533, 33.038181>,  <35.130634, 35.400909, 32.886833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352242, 35.697533, 33.038181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432865, 0.131634, -0.891796,
		-0.711124, 0.657850, -0.248066,
		0.554014, 0.741556, 0.378368,
		35.518444, 35.919998, 33.151691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041473, 36.007809, 32.511024>,  <35.130634, 35.400909, 32.886833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041473, 36.007809, 32.511024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411522, 36.018600, 32.662506>,  <35.633553, 36.025078, 32.753395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411522, 36.018600, 32.662506>,  <35.041473, 36.007809, 32.511024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411522, 36.018600, 32.662506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357257, 0.275719, -0.892382,
		-0.128495, 0.960860, 0.245434,
		0.925125, 0.026984, 0.378702,
		35.689060, 36.026695, 32.776115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348907, 36.441410, 32.036736>,  <35.041473, 36.007809, 32.511024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348907, 36.441410, 32.036736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673302, 36.323479, 32.238873>,  <35.867939, 36.252720, 32.360157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673302, 36.323479, 32.238873>,  <35.348907, 36.441410, 32.036736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673302, 36.323479, 32.238873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573433, 0.229192, -0.786541,
		0.116077, 0.927656, 0.354938,
		0.810988, -0.294832, 0.505344,
		35.916599, 36.235027, 32.390476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927166, 36.938286, 31.859179>,  <35.348907, 36.441410, 32.036736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927166, 36.938286, 31.859179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103840, 36.599079, 31.976326>,  <36.209846, 36.395554, 32.046616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103840, 36.599079, 31.976326>,  <35.927166, 36.938286, 31.859179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103840, 36.599079, 31.976326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606367, 0.041578, -0.794097,
		0.661234, 0.528329, 0.532576,
		0.441688, -0.848021, 0.292869,
		36.236347, 36.344673, 32.064186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575268, 37.065590, 31.743591>,  <35.927166, 36.938286, 31.859179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575268, 37.065590, 31.743591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539207, 36.667507, 31.758764>,  <36.517570, 36.428658, 31.767868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539207, 36.667507, 31.758764>,  <36.575268, 37.065590, 31.743591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539207, 36.667507, 31.758764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412471, -0.071976, -0.908123,
		0.906499, -0.066222, 0.416982,
		-0.090151, -0.995206, 0.037932,
		36.512161, 36.368946, 31.770144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208344, 36.866528, 31.458025>,  <36.575268, 37.065590, 31.743591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208344, 36.866528, 31.458025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989159, 36.532219, 31.471952>,  <36.857647, 36.331635, 31.480309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989159, 36.532219, 31.471952>,  <37.208344, 36.866528, 31.458025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989159, 36.532219, 31.471952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482268, -0.349657, -0.803217,
		0.683484, -0.423343, 0.594668,
		-0.547967, -0.835775, 0.034820,
		36.824768, 36.281487, 31.482399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701672, 36.410492, 31.399303>,  <37.208344, 36.866528, 31.458025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701672, 36.410492, 31.399303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365177, 36.257294, 31.246656>,  <37.163280, 36.165375, 31.155067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365177, 36.257294, 31.246656>,  <37.701672, 36.410492, 31.399303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365177, 36.257294, 31.246656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515408, -0.354865, -0.780017,
		0.163318, -0.852870, 0.495924,
		-0.841239, -0.382994, -0.381620,
		37.112804, 36.142395, 31.132170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836464, 35.648949, 31.087917>,  <37.701672, 36.410492, 31.399303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836464, 35.648949, 31.087917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499313, 35.743652, 30.894627>,  <37.297024, 35.800472, 30.778652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499313, 35.743652, 30.894627>,  <37.836464, 35.648949, 31.087917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499313, 35.743652, 30.894627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374761, -0.386157, -0.842874,
		-0.386157, -0.891532, 0.236755,
		0.842874, -0.236755, 0.483228,
		37.246452, 35.814678, 30.749659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641750, 35.053841, 30.796925>,  <37.836464, 35.648949, 31.087917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641750, 35.053841, 30.796925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440678, 35.331478, 30.590803>,  <37.320034, 35.498062, 30.467131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440678, 35.331478, 30.590803>,  <37.641750, 35.053841, 30.796925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440678, 35.331478, 30.590803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351298, -0.380633, -0.855399,
		-0.789871, -0.611022, -0.052496,
		-0.502686, 0.694097, -0.515302,
		37.289871, 35.539707, 30.436213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354164, 34.631943, 30.225767>,  <37.641750, 35.053841, 30.796925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354164, 34.631943, 30.225767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361908, 35.019657, 30.127691>,  <37.366554, 35.252285, 30.068846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361908, 35.019657, 30.127691>,  <37.354164, 34.631943, 30.225767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361908, 35.019657, 30.127691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419406, -0.230488, -0.878051,
		-0.907593, -0.085838, -0.410984,
		0.019357, 0.969282, -0.245190,
		37.367714, 35.310440, 30.054134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990837, 34.672691, 29.590206>,  <37.354164, 34.631943, 30.225767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990837, 34.672691, 29.590206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224228, 34.997150, 29.606222>,  <37.364262, 35.191826, 29.615831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224228, 34.997150, 29.606222>,  <36.990837, 34.672691, 29.590206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224228, 34.997150, 29.606222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208554, -0.102002, -0.972677,
		-0.784897, 0.575882, -0.228683,
		0.583474, 0.811144, 0.040042,
		37.399269, 35.240494, 29.618235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688099, 34.908226, 28.980755>,  <36.990837, 34.672691, 29.590206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688099, 34.908226, 28.980755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030277, 35.080822, 29.095318>,  <37.235584, 35.184380, 29.164055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030277, 35.080822, 29.095318>,  <36.688099, 34.908226, 28.980755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030277, 35.080822, 29.095318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401389, -0.202935, -0.893143,
		-0.327258, 0.878997, -0.346794,
		0.855447, 0.431487, 0.286408,
		37.286911, 35.210270, 29.181240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938316, 35.345604, 28.476294>,  <36.688099, 34.908226, 28.980755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938316, 35.345604, 28.476294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292992, 35.293056, 28.653616>,  <37.505798, 35.261528, 28.760010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292992, 35.293056, 28.653616>,  <36.938316, 35.345604, 28.476294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292992, 35.293056, 28.653616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410778, -0.216267, -0.885714,
		0.212231, 0.967455, -0.137797,
		0.886690, -0.131372, 0.443308,
		37.558998, 35.253643, 28.786608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449280, 35.600174, 28.014071>,  <36.938316, 35.345604, 28.476294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449280, 35.600174, 28.014071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659405, 35.351402, 28.246361>,  <37.785480, 35.202137, 28.385735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659405, 35.351402, 28.246361>,  <37.449280, 35.600174, 28.014071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659405, 35.351402, 28.246361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419882, -0.404139, -0.812632,
		0.740097, 0.670724, 0.048839,
		0.525314, -0.621933, 0.580728,
		37.816998, 35.164822, 28.420580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173069, 35.517910, 27.668306>,  <37.449280, 35.600174, 28.014071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173069, 35.517910, 27.668306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149719, 35.208645, 27.920912>,  <38.135712, 35.023087, 28.072475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149719, 35.208645, 27.920912>,  <38.173069, 35.517910, 27.668306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149719, 35.208645, 27.920912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586192, -0.538595, -0.605222,
		0.808067, 0.334860, 0.484662,
		-0.058372, -0.773165, 0.631513,
		38.132206, 34.976696, 28.110365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836624, 35.226192, 27.751112>,  <38.173069, 35.517910, 27.668306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836624, 35.226192, 27.751112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590454, 34.933773, 27.868975>,  <38.442753, 34.758324, 27.939692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590454, 34.933773, 27.868975>,  <38.836624, 35.226192, 27.751112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590454, 34.933773, 27.868975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396065, -0.610039, -0.686283,
		0.681455, -0.305655, 0.664976,
		-0.615428, -0.731045, 0.294655,
		38.405827, 34.714458, 27.957371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280258, 34.550312, 27.891418>,  <38.836624, 35.226192, 27.751112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280258, 34.550312, 27.891418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899094, 34.431595, 27.866489>,  <38.670395, 34.360367, 27.851532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899094, 34.431595, 27.866489>,  <39.280258, 34.550312, 27.891418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899094, 34.431595, 27.866489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271253, -0.742235, -0.612788,
		0.135612, -0.600835, 0.787786,
		-0.952907, -0.296791, -0.062322,
		38.613220, 34.342556, 27.847794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326878, 33.887135, 27.945080>,  <39.280258, 34.550312, 27.891418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326878, 33.887135, 27.945080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961536, 33.905018, 27.783197>,  <38.742332, 33.915749, 27.686068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961536, 33.905018, 27.783197>,  <39.326878, 33.887135, 27.945080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961536, 33.905018, 27.783197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296266, -0.608860, -0.735878,
		-0.279306, -0.792017, 0.542860,
		-0.913354, 0.044704, -0.404706,
		38.687531, 33.918430, 27.661785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057888, 33.214630, 27.941916>,  <39.326878, 33.887135, 27.945080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057888, 33.214630, 27.941916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877136, 33.417835, 27.648594>,  <38.768684, 33.539757, 27.472601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877136, 33.417835, 27.648594>,  <39.057888, 33.214630, 27.941916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877136, 33.417835, 27.648594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264848, -0.708554, -0.654070,
		-0.851859, -0.489773, 0.185633,
		-0.451876, 0.508010, -0.733303,
		38.741573, 33.570240, 27.428602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695023, 32.704155, 27.593708>,  <39.057888, 33.214630, 27.941916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695023, 32.704155, 27.593708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696110, 33.011318, 27.337488>,  <38.696762, 33.195618, 27.183756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696110, 33.011318, 27.337488>,  <38.695023, 32.704155, 27.593708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696110, 33.011318, 27.337488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046843, -0.639946, -0.766990,
		-0.998899, -0.027923, -0.037708,
		0.002714, 0.767912, -0.640550,
		38.696922, 33.241692, 27.145323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317635, 32.503628, 27.038181>,  <38.695023, 32.704155, 27.593708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317635, 32.503628, 27.038181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518867, 32.814693, 26.887373>,  <38.639606, 33.001331, 26.796888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518867, 32.814693, 26.887373>,  <38.317635, 32.503628, 27.038181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518867, 32.814693, 26.887373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142107, -0.504746, -0.851491,
		-0.852474, 0.374794, -0.364442,
		0.503084, 0.777664, -0.377022,
		38.669792, 33.047993, 26.774267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023159, 32.754356, 26.333706>,  <38.317635, 32.503628, 27.038181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023159, 32.754356, 26.333706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404476, 32.875156, 26.336071>,  <38.633266, 32.947636, 26.337490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404476, 32.875156, 26.336071>,  <38.023159, 32.754356, 26.333706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404476, 32.875156, 26.336071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153306, -0.466873, -0.870934,
		-0.260263, 0.831159, -0.491364,
		0.953289, 0.302001, 0.005912,
		38.690464, 32.965755, 26.337845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144989, 32.965748, 25.675787>,  <38.023159, 32.754356, 26.333706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144989, 32.965748, 25.675787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499794, 32.895245, 25.846497>,  <38.712677, 32.852943, 25.948921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499794, 32.895245, 25.846497>,  <38.144989, 32.965748, 25.675787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499794, 32.895245, 25.846497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242673, -0.608378, -0.755636,
		0.392825, 0.773828, -0.496869,
		0.887017, -0.176256, 0.426773,
		38.765900, 32.842369, 25.974529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700073, 33.000015, 25.145006>,  <38.144989, 32.965748, 25.675787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700073, 33.000015, 25.145006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878201, 32.797298, 25.440266>,  <38.985077, 32.675671, 25.617420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878201, 32.797298, 25.440266>,  <38.700073, 33.000015, 25.145006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878201, 32.797298, 25.440266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399473, -0.625350, -0.670343,
		0.801322, 0.593382, -0.076028,
		0.445314, -0.506790, 0.738146,
		39.011795, 32.645260, 25.661709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406464, 32.956734, 24.962093>,  <38.700073, 33.000015, 25.145006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406464, 32.956734, 24.962093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338200, 32.660938, 25.222563>,  <39.297241, 32.483459, 25.378845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338200, 32.660938, 25.222563>,  <39.406464, 32.956734, 24.962093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338200, 32.660938, 25.222563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391007, -0.657434, -0.644123,
		0.904427, 0.144685, 0.401346,
		-0.170663, -0.739491, 0.651174,
		39.287003, 32.439091, 25.417915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028267, 32.615822, 24.896610>,  <39.406464, 32.956734, 24.962093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028267, 32.615822, 24.896610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772362, 32.358292, 25.064508>,  <39.618816, 32.203773, 25.165247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772362, 32.358292, 25.064508>,  <40.028267, 32.615822, 24.896610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772362, 32.358292, 25.064508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523086, -0.764885, -0.375942,
		0.563098, -0.020952, 0.826125,
		-0.639767, -0.643826, 0.419745,
		39.580433, 32.165142, 25.190432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348759, 31.954678, 25.054789>,  <40.028267, 32.615822, 24.896610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348759, 31.954678, 25.054789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972198, 31.820944, 25.072598>,  <39.746262, 31.740704, 25.083282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972198, 31.820944, 25.072598>,  <40.348759, 31.954678, 25.054789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972198, 31.820944, 25.072598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273853, -0.834716, -0.477758,
		0.196894, -0.437571, 0.877362,
		-0.941402, -0.334336, 0.044520,
		39.689777, 31.720644, 25.085953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403877, 31.287275, 25.074579>,  <40.348759, 31.954678, 25.054789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403877, 31.287275, 25.074579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031155, 31.351606, 24.944424>,  <39.807522, 31.390205, 24.866331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031155, 31.351606, 24.944424>,  <40.403877, 31.287275, 25.074579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031155, 31.351606, 24.944424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058843, -0.817680, -0.572658,
		-0.358162, -0.552751, 0.752453,
		-0.931803, 0.160828, -0.325388,
		39.751614, 31.399855, 24.846807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154541, 30.615772, 24.968391>,  <40.403877, 31.287275, 25.074579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154541, 30.615772, 24.968391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887512, 30.841707, 24.774361>,  <39.727295, 30.977268, 24.657942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887512, 30.841707, 24.774361>,  <40.154541, 30.615772, 24.968391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887512, 30.841707, 24.774361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007917, -0.646090, -0.763220,
		-0.744501, -0.513346, 0.426841,
		-0.667574, 0.564840, -0.485078,
		39.687241, 31.011158, 24.628838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214710, 29.973080, 24.886345>,  <40.154541, 30.615772, 24.968391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214710, 29.973080, 24.886345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527004, 29.743975, 24.986267>,  <40.714378, 29.606512, 25.046221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527004, 29.743975, 24.986267>,  <40.214710, 29.973080, 24.886345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527004, 29.743975, 24.986267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085059, 0.298641, 0.950567,
		-0.619051, -0.763386, 0.184440,
		0.780731, -0.572761, 0.249807,
		40.761223, 29.572145, 25.061209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996655, 29.496134, 25.294308>,  <40.214710, 29.973080, 24.886345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996655, 29.496134, 25.294308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381081, 29.509382, 25.404043>,  <40.611736, 29.517330, 25.469885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381081, 29.509382, 25.404043>,  <39.996655, 29.496134, 25.294308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381081, 29.509382, 25.404043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273927, 0.244816, 0.930070,
		-0.036357, -0.969004, 0.244356,
		0.961064, 0.033121, 0.274337,
		40.669399, 29.519318, 25.486345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983818, 29.236063, 26.009697>,  <39.996655, 29.496134, 25.294308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983818, 29.236063, 26.009697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330276, 29.432196, 25.970980>,  <40.538151, 29.549875, 25.947750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330276, 29.432196, 25.970980>,  <39.983818, 29.236063, 26.009697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330276, 29.432196, 25.970980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183054, 0.491434, 0.851460,
		0.465060, -0.719771, 0.515411,
		0.866147, 0.490328, -0.096789,
		40.590118, 29.579296, 25.941942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280369, 29.254219, 26.707376>,  <39.983818, 29.236063, 26.009697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280369, 29.254219, 26.707376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506882, 29.546902, 26.555624>,  <40.642788, 29.722511, 26.464573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506882, 29.546902, 26.555624>,  <40.280369, 29.254219, 26.707376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506882, 29.546902, 26.555624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235211, 0.584619, 0.776464,
		0.789939, -0.350461, 0.503163,
		0.566280, 0.731708, -0.379381,
		40.676765, 29.766415, 26.441811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726624, 29.436207, 27.260818>,  <40.280369, 29.254219, 26.707376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726624, 29.436207, 27.260818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673359, 29.734343, 26.999517>,  <40.641399, 29.913223, 26.842737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673359, 29.734343, 26.999517>,  <40.726624, 29.436207, 27.260818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673359, 29.734343, 26.999517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261622, 0.609309, 0.748530,
		0.955941, 0.270579, 0.113862,
		-0.133160, 0.745338, -0.653253,
		40.633411, 29.957945, 26.803541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098740, 29.944839, 27.645172>,  <40.726624, 29.436207, 27.260818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098740, 29.944839, 27.645172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927025, 30.169090, 27.361931>,  <40.823994, 30.303640, 27.191986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927025, 30.169090, 27.361931>,  <41.098740, 29.944839, 27.645172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927025, 30.169090, 27.361931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015951, 0.788605, 0.614693,
		0.903026, 0.252586, -0.347482,
		-0.429289, 0.560626, -0.708102,
		40.798237, 30.337278, 27.149500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473526, 30.639282, 27.662256>,  <41.098740, 29.944839, 27.645172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473526, 30.639282, 27.662256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114769, 30.676504, 27.489321>,  <40.899513, 30.698837, 27.385559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114769, 30.676504, 27.489321>,  <41.473526, 30.639282, 27.662256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114769, 30.676504, 27.489321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215684, 0.761418, 0.611329,
		0.386077, 0.641548, -0.662843,
		-0.896897, 0.093056, -0.432338,
		40.845699, 30.704420, 27.359619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435032, 31.368505, 27.385174>,  <41.473526, 30.639282, 27.662256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435032, 31.368505, 27.385174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058327, 31.239546, 27.423424>,  <40.832302, 31.162170, 27.446375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058327, 31.239546, 27.423424>,  <41.435032, 31.368505, 27.385174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058327, 31.239546, 27.423424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143056, 0.641444, 0.753714,
		-0.304336, 0.696139, -0.650208,
		-0.941761, -0.322398, 0.095627,
		40.775799, 31.142826, 27.452112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930286, 32.002563, 27.323135>,  <41.435032, 31.368505, 27.385174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930286, 32.002563, 27.323135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719090, 31.723057, 27.516193>,  <40.592373, 31.555351, 27.632029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719090, 31.723057, 27.516193>,  <40.930286, 32.002563, 27.323135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719090, 31.723057, 27.516193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233652, 0.665910, 0.708498,
		-0.816476, 0.261309, -0.514863,
		-0.527990, -0.698771, 0.482645,
		40.560692, 31.513426, 27.660986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167854, 32.217945, 27.369041>,  <40.930286, 32.002563, 27.323135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167854, 32.217945, 27.369041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215809, 31.931589, 27.644176>,  <40.244583, 31.759775, 27.809258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215809, 31.931589, 27.644176>,  <40.167854, 32.217945, 27.369041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215809, 31.931589, 27.644176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527085, 0.541228, 0.655174,
		-0.841313, -0.441098, -0.312450,
		0.119889, -0.715894, 0.687839,
		40.251774, 31.716822, 27.850529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516941, 32.163982, 27.568567>,  <40.167854, 32.217945, 27.369041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516941, 32.163982, 27.568567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746708, 32.021236, 27.863237>,  <39.884567, 31.935589, 28.040039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746708, 32.021236, 27.863237>,  <39.516941, 32.163982, 27.568567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746708, 32.021236, 27.863237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565541, 0.477610, 0.672348,
		-0.591780, -0.802830, 0.072527,
		0.574421, -0.356865, 0.736674,
		39.919033, 31.914177, 28.084240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121937, 32.201542, 28.174969>,  <39.516941, 32.163982, 27.568567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121937, 32.201542, 28.174969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448170, 32.106926, 28.386204>,  <39.643909, 32.050156, 28.512945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448170, 32.106926, 28.386204>,  <39.121937, 32.201542, 28.174969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448170, 32.106926, 28.386204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422595, 0.379935, 0.822838,
		-0.395271, -0.894259, 0.209909,
		0.815582, -0.236537, 0.528087,
		39.692844, 32.035965, 28.544630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823864, 31.913082, 28.727621>,  <39.121937, 32.201542, 28.174969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823864, 31.913082, 28.727621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187317, 32.054516, 28.816488>,  <39.405388, 32.139378, 28.869808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187317, 32.054516, 28.816488>,  <38.823864, 31.913082, 28.727621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187317, 32.054516, 28.816488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324464, 0.262876, 0.908636,
		0.262876, -0.897705, 0.353584,
		-0.908636, -0.353584, -0.222170,
		39.459908, 32.160591, 28.883139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984985, 31.704561, 29.434359>,  <38.823864, 31.913082, 28.727621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984985, 31.704561, 29.434359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216900, 32.026669, 29.384733>,  <39.356049, 32.219933, 29.354958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216900, 32.026669, 29.384733>,  <38.984985, 31.704561, 29.434359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216900, 32.026669, 29.384733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304328, 0.355279, 0.883833,
		0.755802, -0.474675, 0.451051,
		0.579783, 0.805270, -0.124064,
		39.390835, 32.268250, 29.347515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285164, 31.697041, 30.085724>,  <38.984985, 31.704561, 29.434359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285164, 31.697041, 30.085724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312988, 32.062218, 29.924877>,  <39.329685, 32.281322, 29.828369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312988, 32.062218, 29.924877>,  <39.285164, 31.697041, 30.085724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312988, 32.062218, 29.924877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481895, 0.383697, 0.787753,
		0.873463, 0.138980, 0.466633,
		0.069564, 0.912941, -0.402119,
		39.333858, 32.336102, 29.804241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608791, 32.128113, 30.565533>,  <39.285164, 31.697041, 30.085724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608791, 32.128113, 30.565533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410763, 32.391155, 30.338390>,  <39.291946, 32.548981, 30.202105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410763, 32.391155, 30.338390>,  <39.608791, 32.128113, 30.565533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410763, 32.391155, 30.338390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208076, 0.544817, 0.812329,
		0.843570, 0.520318, -0.132891,
		-0.495070, 0.657605, -0.567857,
		39.262241, 32.588436, 30.168034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663898, 32.853378, 30.933008>,  <39.608791, 32.128113, 30.565533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663898, 32.853378, 30.933008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376312, 32.874168, 30.655767>,  <39.203762, 32.886642, 30.489424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376312, 32.874168, 30.655767>,  <39.663898, 32.853378, 30.933008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376312, 32.874168, 30.655767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472540, 0.694730, 0.542270,
		0.509701, 0.717391, -0.474927,
		-0.718965, 0.051974, -0.693100,
		39.160622, 32.889759, 30.447838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542530, 33.563396, 30.797888>,  <39.663898, 32.853378, 30.933008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542530, 33.563396, 30.797888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211075, 33.380402, 30.668848>,  <39.012203, 33.270603, 30.591425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211075, 33.380402, 30.668848>,  <39.542530, 33.563396, 30.797888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211075, 33.380402, 30.668848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559535, 0.659520, 0.501950,
		-0.016877, 0.596438, -0.802482,
		-0.828635, -0.457488, -0.322597,
		38.962486, 33.243156, 30.572069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086205, 34.078163, 30.607805>,  <39.542530, 33.563396, 30.797888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086205, 34.078163, 30.607805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879673, 33.749687, 30.705008>,  <38.755753, 33.552601, 30.763329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879673, 33.749687, 30.705008>,  <39.086205, 34.078163, 30.607805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879673, 33.749687, 30.705008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528781, 0.528914, 0.663808,
		-0.673640, 0.214248, -0.707324,
		-0.516333, -0.821187, 0.243007,
		38.724773, 33.503330, 30.777910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491745, 34.350513, 30.679642>,  <39.086205, 34.078163, 30.607805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491745, 34.350513, 30.679642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468208, 34.014305, 30.895071>,  <38.454086, 33.812580, 31.024328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468208, 34.014305, 30.895071>,  <38.491745, 34.350513, 30.679642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468208, 34.014305, 30.895071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653807, 0.440143, 0.615475,
		-0.754370, -0.315909, -0.575437,
		-0.058841, -0.840521, 0.538574,
		38.450558, 33.762150, 31.056643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829082, 34.364559, 30.953030>,  <38.491745, 34.350513, 30.679642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829082, 34.364559, 30.953030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024300, 34.092781, 31.172180>,  <38.141430, 33.929714, 31.303671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024300, 34.092781, 31.172180>,  <37.829082, 34.364559, 30.953030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024300, 34.092781, 31.172180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584924, 0.211301, 0.783081,
		-0.647829, -0.702641, -0.294302,
		0.488038, -0.679446, 0.547878,
		38.170712, 33.888947, 31.336544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310875, 34.130554, 31.511656>,  <37.829082, 34.364559, 30.953030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310875, 34.130554, 31.511656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652287, 34.011448, 31.682692>,  <37.857132, 33.939983, 31.785313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652287, 34.011448, 31.682692>,  <37.310875, 34.130554, 31.511656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652287, 34.011448, 31.682692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358138, 0.260797, 0.896505,
		-0.378459, -0.918326, 0.115957,
		0.853525, -0.297762, 0.427589,
		37.908344, 33.922119, 31.810968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133457, 33.656502, 32.156147>,  <37.310875, 34.130554, 31.511656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133457, 33.656502, 32.156147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509289, 33.788937, 32.190975>,  <37.734787, 33.868397, 32.211872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509289, 33.788937, 32.190975>,  <37.133457, 33.656502, 32.156147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509289, 33.788937, 32.190975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163895, 0.211734, 0.963487,
		0.300565, -0.919537, 0.253204,
		0.939574, 0.331089, 0.087068,
		37.791161, 33.888264, 32.217094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266426, 33.316978, 32.702908>,  <37.133457, 33.656502, 32.156147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266426, 33.316978, 32.702908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517326, 33.628052, 32.686047>,  <37.667866, 33.814693, 32.675930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517326, 33.628052, 32.686047>,  <37.266426, 33.316978, 32.702908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517326, 33.628052, 32.686047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169757, 0.189336, 0.967127,
		0.760095, -0.599472, 0.250777,
		0.627247, 0.777679, -0.042149,
		37.705502, 33.861355, 32.673401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607887, 33.342293, 33.357170>,  <37.266426, 33.316978, 32.702908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607887, 33.342293, 33.357170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680115, 33.707451, 33.210739>,  <37.723450, 33.926548, 33.122879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680115, 33.707451, 33.210739>,  <37.607887, 33.342293, 33.357170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680115, 33.707451, 33.210739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197470, 0.398268, 0.895761,
		0.963536, -0.089452, 0.252183,
		0.180564, 0.912897, -0.366082,
		37.734283, 33.981319, 33.100914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908501, 33.658375, 33.907387>,  <37.607887, 33.342293, 33.357170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908501, 33.658375, 33.907387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805637, 33.975567, 33.686462>,  <37.743919, 34.165882, 33.553909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805637, 33.975567, 33.686462>,  <37.908501, 33.658375, 33.907387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805637, 33.975567, 33.686462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058299, 0.557760, 0.827952,
		0.964608, 0.245118, -0.097205,
		-0.257163, 0.792982, -0.552310,
		37.728489, 34.213463, 33.520771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366344, 34.270981, 34.096115>,  <37.908501, 33.658375, 33.907387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366344, 34.270981, 34.096115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028362, 34.407314, 33.931252>,  <37.825573, 34.489113, 33.832333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028362, 34.407314, 33.931252>,  <38.366344, 34.270981, 34.096115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028362, 34.407314, 33.931252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206430, 0.503086, 0.839220,
		0.493386, 0.794190, -0.354729,
		-0.844959, 0.340833, -0.412160,
		37.774876, 34.509563, 33.807602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364113, 34.930733, 34.283485>,  <38.366344, 34.270981, 34.096115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364113, 34.930733, 34.283485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988888, 34.846638, 34.173325>,  <37.763752, 34.796181, 34.107227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988888, 34.846638, 34.173325>,  <38.364113, 34.930733, 34.283485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988888, 34.846638, 34.173325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346378, 0.588006, 0.730938,
		0.008264, 0.781056, -0.624407,
		-0.938059, -0.210240, -0.275400,
		37.707470, 34.783566, 34.090706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043789, 35.575520, 34.298698>,  <38.364113, 34.930733, 34.283485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043789, 35.575520, 34.298698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751930, 35.302341, 34.312588>,  <37.576817, 35.138435, 34.320923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751930, 35.302341, 34.312588>,  <38.043789, 35.575520, 34.298698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751930, 35.302341, 34.312588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373144, 0.440190, 0.816699,
		-0.573044, 0.582944, -0.576019,
		-0.729647, -0.682942, 0.034726,
		37.533035, 35.097458, 34.323006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372051, 35.949303, 34.520611>,  <38.043789, 35.575520, 34.298698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372051, 35.949303, 34.520611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287956, 35.567822, 34.606636>,  <37.237499, 35.338932, 34.658253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287956, 35.567822, 34.606636>,  <37.372051, 35.949303, 34.520611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287956, 35.567822, 34.606636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277452, 0.269139, 0.922272,
		-0.937453, 0.134230, -0.321191,
		-0.210242, -0.953701, 0.215063,
		37.224884, 35.281712, 34.671154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725594, 35.967121, 34.929886>,  <37.372051, 35.949303, 34.520611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725594, 35.967121, 34.929886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900562, 35.624641, 35.039860>,  <37.005543, 35.419155, 35.105843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900562, 35.624641, 35.039860>,  <36.725594, 35.967121, 34.929886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900562, 35.624641, 35.039860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091018, 0.262012, 0.960763,
		-0.894641, -0.445278, 0.036679,
		0.437417, -0.856199, 0.274935,
		37.031788, 35.367783, 35.122341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356747, 35.624992, 35.438114>,  <36.725594, 35.967121, 34.929886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356747, 35.624992, 35.438114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708359, 35.446331, 35.504803>,  <36.919327, 35.339134, 35.544815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708359, 35.446331, 35.504803>,  <36.356747, 35.624992, 35.438114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708359, 35.446331, 35.504803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070002, 0.224991, 0.971843,
		-0.471592, -0.865954, 0.166508,
		0.879034, -0.446657, 0.166722,
		36.972069, 35.312332, 35.554821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393753, 35.461304, 36.102737>,  <36.356747, 35.624992, 35.438114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393753, 35.461304, 36.102737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785366, 35.427769, 36.028484>,  <37.020336, 35.407646, 35.983932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785366, 35.427769, 36.028484>,  <36.393753, 35.461304, 36.102737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785366, 35.427769, 36.028484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203426, 0.356079, 0.912045,
		-0.010363, -0.930687, 0.365669,
		0.979035, -0.083838, -0.185636,
		37.079075, 35.402618, 35.972794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680923, 34.968208, 36.624374>,  <36.393753, 35.461304, 36.102737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680923, 34.968208, 36.624374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000359, 35.174671, 36.500546>,  <37.192020, 35.298550, 36.426247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000359, 35.174671, 36.500546>,  <36.680923, 34.968208, 36.624374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000359, 35.174671, 36.500546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273250, 0.147358, 0.950589,
		0.536270, -0.843723, -0.023361,
		0.798592, 0.516156, -0.309571,
		37.239937, 35.329517, 36.407673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226524, 34.710114, 37.008118>,  <36.680923, 34.968208, 36.624374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226524, 34.710114, 37.008118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361233, 35.062687, 36.875656>,  <37.442059, 35.274231, 36.796177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361233, 35.062687, 36.875656>,  <37.226524, 34.710114, 37.008118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361233, 35.062687, 36.875656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444427, 0.161263, 0.881180,
		0.830104, -0.443928, -0.337424,
		0.336767, 0.881432, -0.331158,
		37.462261, 35.327118, 36.776310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939270, 34.708225, 37.214878>,  <37.226524, 34.710114, 37.008118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939270, 34.708225, 37.214878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785519, 35.075314, 37.174789>,  <37.693268, 35.295567, 37.150734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785519, 35.075314, 37.174789>,  <37.939270, 34.708225, 37.214878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785519, 35.075314, 37.174789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310553, 0.230779, 0.922116,
		0.869372, 0.323320, -0.373708,
		-0.384382, 0.917718, -0.100225,
		37.670204, 35.350628, 37.144722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358215, 35.048092, 37.591312>,  <37.939270, 34.708225, 37.214878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358215, 35.048092, 37.591312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068207, 35.322948, 37.572647>,  <37.894199, 35.487862, 37.561447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068207, 35.322948, 37.572647>,  <38.358215, 35.048092, 37.591312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068207, 35.322948, 37.572647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127373, 0.200363, 0.971407,
		0.676843, 0.698349, -0.232791,
		-0.725024, 0.687141, -0.046663,
		37.850700, 35.529091, 37.558647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624702, 35.685539, 37.884697>,  <38.358215, 35.048092, 37.591312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624702, 35.685539, 37.884697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224926, 35.691185, 37.896755>,  <37.985058, 35.694572, 37.903992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224926, 35.691185, 37.896755>,  <38.624702, 35.685539, 37.884697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224926, 35.691185, 37.896755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032979, 0.297214, 0.954241,
		0.004512, 0.954706, -0.297515,
		-0.999446, 0.014118, 0.030144,
		37.925091, 35.695419, 37.905800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492020, 36.431969, 38.100967>,  <38.624702, 35.685539, 37.884697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492020, 36.431969, 38.100967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193295, 36.186680, 38.203907>,  <38.014057, 36.039509, 38.265671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193295, 36.186680, 38.203907>,  <38.492020, 36.431969, 38.100967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193295, 36.186680, 38.203907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171625, 0.196150, 0.965438,
		-0.642504, 0.765172, -0.041244,
		-0.746816, -0.613219, 0.257349,
		37.969250, 36.002716, 38.281113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047897, 36.745674, 38.693077>,  <38.492020, 36.431969, 38.100967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047897, 36.745674, 38.693077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976711, 36.352673, 38.715054>,  <37.934002, 36.116871, 38.728241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976711, 36.352673, 38.715054>,  <38.047897, 36.745674, 38.693077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976711, 36.352673, 38.715054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215624, 0.015544, 0.976353,
		-0.960123, 0.185602, 0.209084,
		-0.177963, -0.982502, 0.054945,
		37.923321, 36.057922, 38.731537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680477, 36.588779, 39.292717>,  <38.047897, 36.745674, 38.693077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680477, 36.588779, 39.292717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872871, 36.252380, 39.193623>,  <37.988308, 36.050541, 39.134167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872871, 36.252380, 39.193623>,  <37.680477, 36.588779, 39.292717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872871, 36.252380, 39.193623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480324, 0.016388, 0.876938,
		-0.733443, -0.540791, 0.411833,
		0.480989, -0.840997, -0.247736,
		38.017170, 36.000080, 39.119301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582558, 36.145168, 39.910175>,  <37.680477, 36.588779, 39.292717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582558, 36.145168, 39.910175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914871, 36.032951, 39.717888>,  <38.114258, 35.965622, 39.602516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914871, 36.032951, 39.717888>,  <37.582558, 36.145168, 39.910175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914871, 36.032951, 39.717888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415695, -0.261593, 0.871072,
		-0.370130, -0.923505, -0.100705,
		0.830783, -0.280547, -0.480720,
		38.164108, 35.948788, 39.573673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938305, 35.550621, 40.170135>,  <37.582558, 36.145168, 39.910175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938305, 35.550621, 40.170135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304573, 35.607990, 40.019951>,  <38.524334, 35.642414, 39.929840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304573, 35.607990, 40.019951>,  <37.938305, 35.550621, 40.170135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304573, 35.607990, 40.019951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395466, -0.488321, 0.777913,
		-0.071775, -0.860797, -0.503862,
		0.915672, 0.143425, -0.375465,
		38.579273, 35.651016, 39.907310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283283, 34.900490, 39.990746>,  <37.938305, 35.550621, 40.170135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283283, 34.900490, 39.990746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505112, 35.210533, 40.111843>,  <38.638210, 35.396561, 40.184502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505112, 35.210533, 40.111843>,  <38.283283, 34.900490, 39.990746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505112, 35.210533, 40.111843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299922, -0.525549, 0.796144,
		0.776206, -0.350720, -0.523927,
		0.554573, 0.775109, 0.302746,
		38.671482, 35.443066, 40.202667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090164, 34.700615, 40.272972>,  <38.283283, 34.900490, 39.990746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090164, 34.700615, 40.272972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904640, 35.021408, 40.423542>,  <38.793324, 35.213886, 40.513882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904640, 35.021408, 40.423542>,  <39.090164, 34.700615, 40.272972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904640, 35.021408, 40.423542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001180, -0.425445, 0.904983,
		0.885932, 0.419300, 0.198274,
		-0.463814, 0.801987, 0.376421,
		38.765495, 35.262005, 40.536469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226372, 34.707939, 41.020180>,  <39.090164, 34.700615, 40.272972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226372, 34.707939, 41.020180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900871, 34.919933, 40.924747>,  <38.705570, 35.047131, 40.867489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900871, 34.919933, 40.924747>,  <39.226372, 34.707939, 41.020180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900871, 34.919933, 40.924747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433077, -0.279152, 0.857041,
		0.387622, 0.800742, 0.456686,
		-0.813753, 0.529988, -0.238577,
		38.656746, 35.078930, 40.853176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808136, 34.986622, 40.707386>,  <39.226372, 34.707939, 41.020180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808136, 34.986622, 40.707386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045231, 34.886963, 41.013744>,  <40.187489, 34.827168, 41.197559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045231, 34.886963, 41.013744>,  <39.808136, 34.986622, 40.707386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045231, 34.886963, 41.013744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524438, -0.602322, -0.601808,
		0.611250, 0.758377, -0.226358,
		0.592737, -0.249145, 0.765891,
		40.223053, 34.812218, 41.243511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536007, 34.961163, 40.469940>,  <39.808136, 34.986622, 40.707386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536007, 34.961163, 40.469940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518112, 34.742638, 40.804493>,  <40.507374, 34.611523, 41.005226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518112, 34.742638, 40.804493>,  <40.536007, 34.961163, 40.469940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518112, 34.742638, 40.804493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569846, -0.701613, -0.427802,
		0.820532, 0.457472, 0.342703,
		-0.044737, -0.546314, 0.836385,
		40.504692, 34.578743, 41.055408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038792, 35.443180, 40.057972>,  <40.536007, 34.961163, 40.469940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038792, 35.443180, 40.057972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360687, 35.235302, 39.943214>,  <41.553825, 35.110577, 39.874359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360687, 35.235302, 39.943214>,  <41.038792, 35.443180, 40.057972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360687, 35.235302, 39.943214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238309, 0.159805, -0.957952,
		0.543690, 0.839273, 0.004753,
		0.804742, -0.519696, -0.286891,
		41.602108, 35.079391, 39.857147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011063, 35.577412, 39.270416>,  <41.038792, 35.443180, 40.057972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011063, 35.577412, 39.270416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329800, 35.345905, 39.339767>,  <41.521042, 35.207001, 39.381378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329800, 35.345905, 39.339767>,  <41.011063, 35.577412, 39.270416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329800, 35.345905, 39.339767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219421, 0.009845, -0.975581,
		0.562929, 0.815432, 0.134840,
		0.796847, -0.578770, 0.173381,
		41.568855, 35.172276, 39.391781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555481, 35.817631, 38.907726>,  <41.011063, 35.577412, 39.270416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555481, 35.817631, 38.907726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631973, 35.429508, 38.966965>,  <41.677868, 35.196632, 39.002506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631973, 35.429508, 38.966965>,  <41.555481, 35.817631, 38.907726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631973, 35.429508, 38.966965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286858, -0.089045, -0.953826,
		0.938693, 0.224879, 0.261313,
		0.191227, -0.970309, 0.148094,
		41.689342, 35.138416, 39.011395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157097, 35.765774, 38.473072>,  <41.555481, 35.817631, 38.907726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157097, 35.765774, 38.473072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962135, 35.417423, 38.498390>,  <41.845158, 35.208412, 38.513580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962135, 35.417423, 38.498390>,  <42.157097, 35.765774, 38.473072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962135, 35.417423, 38.498390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197606, -0.180619, -0.963498,
		0.850521, -0.457110, 0.260126,
		-0.487408, -0.870878, 0.063293,
		41.815914, 35.156158, 38.517380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657894, 35.241852, 38.170307>,  <42.157097, 35.765774, 38.473072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.657894, 35.241852, 38.170307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269070, 35.181847, 38.098091>,  <42.035774, 35.145844, 38.054760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269070, 35.181847, 38.098091>,  <42.657894, 35.241852, 38.170307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269070, 35.181847, 38.098091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195598, -0.092461, -0.976316,
		0.129765, -0.984352, 0.119220,
		-0.972061, -0.150010, -0.180539,
		41.977451, 35.136845, 38.043930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570587, 34.743149, 37.621704>,  <42.657894, 35.241852, 38.170307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570587, 34.743149, 37.621704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217789, 34.931446, 37.630489>,  <42.006107, 35.044422, 37.635761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217789, 34.931446, 37.630489>,  <42.570587, 34.743149, 37.621704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217789, 34.931446, 37.630489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056095, -0.058600, -0.996704,
		-0.467901, -0.880324, 0.078091,
		-0.881999, 0.470740, 0.021963,
		41.953190, 35.072666, 37.637077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335697, 34.500996, 36.996948>,  <42.570587, 34.743149, 37.621704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335697, 34.500996, 36.996948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085209, 34.807892, 37.052353>,  <41.934917, 34.992031, 37.085594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085209, 34.807892, 37.052353>,  <42.335697, 34.500996, 36.996948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085209, 34.807892, 37.052353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086330, 0.108330, -0.990359,
		-0.774851, -0.632142, -0.001603,
		-0.626221, 0.767243, 0.138513,
		41.897343, 35.038063, 37.093906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969505, 34.682758, 36.246582>,  <42.335697, 34.500996, 36.996948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969505, 34.682758, 36.246582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876759, 34.994961, 36.478806>,  <41.821110, 35.182281, 36.618141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876759, 34.994961, 36.478806>,  <41.969505, 34.682758, 36.246582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876759, 34.994961, 36.478806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078773, 0.609934, -0.788527,
		-0.969553, -0.137101, -0.202906,
		-0.231868, 0.780502, 0.580564,
		41.807198, 35.229111, 36.652973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338730, 34.969597, 35.992233>,  <41.969505, 34.682758, 36.246582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338730, 34.969597, 35.992233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.540829, 35.255527, 36.185623>,  <41.662090, 35.427086, 36.301655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.540829, 35.255527, 36.185623>,  <41.338730, 34.969597, 35.992233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540829, 35.255527, 36.185623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097117, 0.509581, -0.854924,
		-0.857491, 0.478904, 0.188044,
		0.505250, 0.714827, 0.483471,
		41.692402, 35.469975, 36.330666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064461, 35.624680, 35.820896>,  <41.338730, 34.969597, 35.992233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064461, 35.624680, 35.820896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.444122, 35.684029, 35.931965>,  <41.671917, 35.719639, 35.998604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.444122, 35.684029, 35.931965>,  <41.064461, 35.624680, 35.820896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444122, 35.684029, 35.931965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140841, 0.588696, -0.795991,
		-0.281563, 0.794622, 0.537864,
		0.949150, 0.148368, 0.277670,
		41.728867, 35.728539, 36.015266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157486, 36.316593, 35.542141>,  <41.064461, 35.624680, 35.820896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157486, 36.316593, 35.542141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510098, 36.133179, 35.587116>,  <41.721664, 36.023129, 35.614101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510098, 36.133179, 35.587116>,  <41.157486, 36.316593, 35.542141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510098, 36.133179, 35.587116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406541, 0.616148, -0.674601,
		0.240049, 0.640395, 0.729569,
		0.881533, -0.458537, 0.112441,
		41.774559, 35.995617, 35.620850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431728, 36.937542, 35.543266>,  <41.157486, 36.316593, 35.542141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431728, 36.937542, 35.543266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672615, 36.633991, 35.444122>,  <41.817146, 36.451859, 35.384636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672615, 36.633991, 35.444122>,  <41.431728, 36.937542, 35.543266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672615, 36.633991, 35.444122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320226, 0.514023, -0.795761,
		0.731292, 0.399852, 0.552567,
		0.602218, -0.758881, -0.247858,
		41.853279, 36.406326, 35.369766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136238, 37.117718, 35.498638>,  <41.431728, 36.937542, 35.543266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136238, 37.117718, 35.498638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044933, 36.833832, 35.232044>,  <41.990150, 36.663502, 35.072086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044933, 36.833832, 35.232044>,  <42.136238, 37.117718, 35.498638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044933, 36.833832, 35.232044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231920, 0.625214, -0.745198,
		0.945573, -0.324674, 0.021883,
		-0.228265, -0.709714, -0.666484,
		41.976456, 36.620918, 35.032101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584389, 36.895958, 34.943886>,  <42.136238, 37.117718, 35.498638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584389, 36.895958, 34.943886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232380, 36.782204, 34.791733>,  <42.021175, 36.713951, 34.700443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232380, 36.782204, 34.791733>,  <42.584389, 36.895958, 34.943886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232380, 36.782204, 34.791733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161966, 0.573190, -0.803256,
		0.446464, -0.768491, -0.458359,
		-0.880021, -0.284386, -0.380378,
		41.968372, 36.696888, 34.677620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654472, 36.583599, 34.169079>,  <42.584389, 36.895958, 34.943886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654472, 36.583599, 34.169079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353046, 36.817181, 34.289829>,  <42.172192, 36.957329, 34.362278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353046, 36.817181, 34.289829>,  <42.654472, 36.583599, 34.169079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353046, 36.817181, 34.289829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106461, 0.561568, -0.820553,
		-0.648692, -0.586205, -0.485348,
		-0.753568, 0.583956, 0.301877,
		42.126976, 36.992367, 34.380394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116383, 36.130547, 34.404770>,  <42.654472, 36.583599, 34.169079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116383, 36.130547, 34.404770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459511, 36.225296, 34.587212>,  <42.665390, 36.282146, 34.696678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459511, 36.225296, 34.587212>,  <42.116383, 36.130547, 34.404770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459511, 36.225296, 34.587212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337384, -0.409918, 0.847431,
		0.387703, -0.880827, -0.271718,
		0.857823, 0.236878, 0.456103,
		42.716858, 36.296360, 34.724041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398037, 35.563629, 34.658264>,  <42.116383, 36.130547, 34.404770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398037, 35.563629, 34.658264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.535538, 35.831039, 34.922058>,  <42.618038, 35.991486, 35.080334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.535538, 35.831039, 34.922058>,  <42.398037, 35.563629, 34.658264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.535538, 35.831039, 34.922058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373979, -0.546725, 0.749154,
		0.861381, -0.504152, 0.062078,
		0.343748, 0.668523, 0.659480,
		42.638660, 36.031597, 35.119904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926044, 35.311234, 35.107571>,  <42.398037, 35.563629, 34.658264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926044, 35.311234, 35.107571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.681938, 35.600704, 35.236488>,  <42.535477, 35.774387, 35.313839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.681938, 35.600704, 35.236488>,  <42.926044, 35.311234, 35.107571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681938, 35.600704, 35.236488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361925, -0.616581, 0.699169,
		0.704690, 0.310033, 0.638194,
		-0.610264, 0.723676, 0.322290,
		42.498859, 35.817806, 35.333176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.044422, 35.532787, 35.843773>,  <42.926044, 35.311234, 35.107571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.044422, 35.532787, 35.843773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.674614, 35.673092, 35.784122>,  <42.452728, 35.757275, 35.748333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.674614, 35.673092, 35.784122>,  <43.044422, 35.532787, 35.843773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.674614, 35.673092, 35.784122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270748, -0.329009, 0.904682,
		0.268262, 0.876768, 0.399141,
		-0.924517, 0.350758, -0.149123,
		42.397259, 35.778320, 35.739388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936123, 35.968349, 36.384010>,  <43.044422, 35.532787, 35.843773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936123, 35.968349, 36.384010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.566471, 35.871727, 36.265598>,  <42.344681, 35.813751, 36.194550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.566471, 35.871727, 36.265598>,  <42.936123, 35.968349, 36.384010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566471, 35.871727, 36.265598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208610, -0.330117, 0.920600,
		-0.320104, 0.912509, 0.254679,
		-0.924130, -0.241560, -0.296030,
		42.289230, 35.799259, 36.176788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548775, 36.243832, 36.934895>,  <42.936123, 35.968349, 36.384010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548775, 36.243832, 36.934895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302773, 35.987705, 36.750824>,  <42.155170, 35.834030, 36.640381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302773, 35.987705, 36.750824>,  <42.548775, 36.243832, 36.934895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302773, 35.987705, 36.750824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434594, -0.211696, 0.875393,
		-0.657945, 0.738363, -0.148082,
		-0.615010, -0.640316, -0.460173,
		42.118271, 35.795612, 36.612774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732388, 36.385094, 37.050587>,  <42.548775, 36.243832, 36.934895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732388, 36.385094, 37.050587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783180, 36.006950, 36.930466>,  <41.813656, 35.780064, 36.858391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783180, 36.006950, 36.930466>,  <41.732388, 36.385094, 37.050587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783180, 36.006950, 36.930466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428027, -0.325339, 0.843177,
		-0.894802, 0.021475, -0.445947,
		0.126977, -0.945354, -0.300305,
		41.821274, 35.723343, 36.840374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143848, 36.112255, 37.400856>,  <41.732388, 36.385094, 37.050587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143848, 36.112255, 37.400856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347301, 35.781815, 37.303822>,  <41.469372, 35.583549, 37.245602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347301, 35.781815, 37.303822>,  <41.143848, 36.112255, 37.400856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347301, 35.781815, 37.303822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388819, -0.471781, 0.791354,
		-0.768190, -0.308182, -0.561167,
		0.508629, -0.826103, -0.242591,
		41.499889, 35.533985, 37.231045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735226, 35.492153, 37.493507>,  <41.143848, 36.112255, 37.400856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735226, 35.492153, 37.493507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112366, 35.369404, 37.545460>,  <41.338650, 35.295753, 37.576633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112366, 35.369404, 37.545460>,  <40.735226, 35.492153, 37.493507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112366, 35.369404, 37.545460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260597, -0.436110, 0.861335,
		-0.207672, -0.845955, -0.491154,
		0.942847, -0.306868, 0.129885,
		41.395222, 35.277344, 37.584427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391438, 34.849014, 37.539001>,  <40.735226, 35.492153, 37.493507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391438, 34.849014, 37.539001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735020, 34.916607, 37.732346>,  <40.941170, 34.957161, 37.848351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735020, 34.916607, 37.732346>,  <40.391438, 34.849014, 37.539001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735020, 34.916607, 37.732346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390420, -0.394643, 0.831763,
		0.331306, -0.903163, -0.273009,
		0.858958, 0.168980, 0.483360,
		40.992706, 34.967300, 37.877354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793877, 34.221382, 37.836620>,  <40.391438, 34.849014, 37.539001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793877, 34.221382, 37.836620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843086, 34.566971, 38.031933>,  <40.872612, 34.774323, 38.149120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843086, 34.566971, 38.031933>,  <40.793877, 34.221382, 37.836620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843086, 34.566971, 38.031933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400546, -0.406940, 0.820953,
		0.907980, -0.296577, 0.295996,
		0.123024, 0.863969, 0.488286,
		40.879993, 34.826160, 38.178417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292606, 33.747883, 37.441719>,  <40.793877, 34.221382, 37.836620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292606, 33.747883, 37.441719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894123, 33.766178, 37.471325>,  <40.655033, 33.777157, 37.489086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894123, 33.766178, 37.471325>,  <41.292606, 33.747883, 37.441719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894123, 33.766178, 37.471325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086781, -0.583486, -0.807473,
		0.006250, -0.810834, 0.585243,
		-0.996208, 0.045741, 0.074012,
		40.595261, 33.779900, 37.493530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791965, 33.124184, 37.710033>,  <41.292606, 33.747883, 37.441719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791965, 33.124184, 37.710033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739071, 33.257771, 37.336727>,  <41.707333, 33.337921, 37.112743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739071, 33.257771, 37.336727>,  <41.791965, 33.124184, 37.710033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739071, 33.257771, 37.336727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636918, -0.692805, -0.338168,
		-0.759506, -0.639130, -0.121096,
		-0.132237, 0.333969, -0.933262,
		41.699398, 33.357960, 37.056747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518791, 32.711666, 37.050491>,  <41.791965, 33.124184, 37.710033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518791, 32.711666, 37.050491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.733204, 33.005760, 36.884552>,  <41.861851, 33.182217, 36.784988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.733204, 33.005760, 36.884552>,  <41.518791, 32.711666, 37.050491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.733204, 33.005760, 36.884552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648876, -0.673182, -0.354663,
		-0.540032, -0.079079, -0.837921,
		0.536027, 0.735237, -0.414852,
		41.894012, 33.226330, 36.760098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932362, 32.380119, 36.432438>,  <41.518791, 32.711666, 37.050491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932362, 32.380119, 36.432438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.093327, 32.741058, 36.494183>,  <42.189907, 32.957623, 36.531227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.093327, 32.741058, 36.494183>,  <41.932362, 32.380119, 36.432438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.093327, 32.741058, 36.494183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853249, -0.308604, -0.420393,
		-0.331706, 0.300880, -0.894116,
		0.402416, 0.902350, 0.154360,
		42.214050, 33.011765, 36.540489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097038, 32.583389, 35.777458>,  <41.932362, 32.380119, 36.432438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097038, 32.583389, 35.777458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360783, 32.722969, 36.043835>,  <42.519028, 32.806717, 36.203663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360783, 32.722969, 36.043835>,  <42.097038, 32.583389, 35.777458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.360783, 32.722969, 36.043835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746976, -0.203566, -0.632921,
		-0.085294, 0.914765, -0.394880,
		0.659357, 0.348950, 0.665944,
		42.558590, 32.827656, 36.243618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268703, 33.272629, 35.352768>,  <42.097038, 32.583389, 35.777458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268703, 33.272629, 35.352768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.050194, 33.460640, 35.075447>,  <41.919090, 33.573444, 34.909054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.050194, 33.460640, 35.075447>,  <42.268703, 33.272629, 35.352768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050194, 33.460640, 35.075447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208318, -0.725468, -0.655973,
		-0.811290, -0.502765, 0.298387,
		-0.546270, 0.470025, -0.693300,
		41.886311, 33.601646, 34.867458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660439, 32.856335, 35.061302>,  <42.268703, 33.272629, 35.352768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660439, 32.856335, 35.061302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873013, 33.100338, 34.826195>,  <42.000557, 33.246738, 34.685131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873013, 33.100338, 34.826195>,  <41.660439, 32.856335, 35.061302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873013, 33.100338, 34.826195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198121, -0.764121, -0.613894,
		-0.823605, 0.209795, -0.526935,
		0.531434, 0.610004, -0.587770,
		42.032444, 33.283340, 34.649864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.590954, 32.581810, 34.346619>,  <41.660439, 32.856335, 35.061302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.590954, 32.581810, 34.346619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.896809, 32.838139, 34.319252>,  <42.080322, 32.991936, 34.302834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.896809, 32.838139, 34.319252>,  <41.590954, 32.581810, 34.346619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896809, 32.838139, 34.319252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498702, -0.655587, -0.567011,
		-0.408206, 0.399437, -0.820864,
		0.764633, 0.640824, -0.068415,
		42.126198, 33.030384, 34.298729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781769, 32.375896, 33.664093>,  <41.590954, 32.581810, 34.346619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781769, 32.375896, 33.664093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068638, 32.578693, 33.855347>,  <42.240761, 32.700371, 33.970100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068638, 32.578693, 33.855347>,  <41.781769, 32.375896, 33.664093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068638, 32.578693, 33.855347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696853, -0.528990, -0.484320,
		0.007383, 0.680534, -0.732679,
		0.717176, 0.506994, 0.478137,
		42.283791, 32.730793, 33.998787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254242, 32.774410, 33.167671>,  <41.781769, 32.375896, 33.664093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254242, 32.774410, 33.167671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466389, 32.729580, 33.503803>,  <42.593678, 32.702682, 33.705482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466389, 32.729580, 33.503803>,  <42.254242, 32.774410, 33.167671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466389, 32.729580, 33.503803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735702, -0.431691, -0.521906,
		0.421254, 0.895032, -0.146502,
		0.530366, -0.112072, 0.840328,
		42.625500, 32.695957, 33.755901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898144, 32.907272, 33.086494>,  <42.254242, 32.774410, 33.167671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898144, 32.907272, 33.086494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.893482, 32.623379, 33.368244>,  <42.890686, 32.453041, 33.537292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.893482, 32.623379, 33.368244>,  <42.898144, 32.907272, 33.086494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.893482, 32.623379, 33.368244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633247, -0.550401, -0.544111,
		0.773862, 0.439703, 0.455849,
		-0.011653, -0.709732, 0.704375,
		42.889988, 32.410458, 33.579556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.582569, 32.793354, 33.438808>,  <42.898144, 32.907272, 33.086494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.582569, 32.793354, 33.438808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395107, 32.442486, 33.480640>,  <43.282631, 32.231964, 33.505737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395107, 32.442486, 33.480640>,  <43.582569, 32.793354, 33.438808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395107, 32.442486, 33.480640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691542, -0.437959, -0.574423,
		0.549667, -0.196885, 0.811851,
		-0.468653, -0.877170, 0.104577,
		43.254513, 32.179337, 33.512012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.122524, 32.234749, 33.666000>,  <43.582569, 32.793354, 33.438808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.122524, 32.234749, 33.666000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835079, 32.048088, 33.459763>,  <43.662613, 31.936090, 33.336021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835079, 32.048088, 33.459763>,  <44.122524, 32.234749, 33.666000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.835079, 32.048088, 33.459763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695255, -0.466320, -0.546961,
		0.014811, -0.751519, 0.659545,
		-0.718611, -0.466653, -0.515591,
		43.619495, 31.908092, 33.305084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.382515, 31.545601, 33.717491>,  <44.122524, 32.234749, 33.666000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.382515, 31.545601, 33.717491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.203106, 31.699873, 33.394981>,  <44.095463, 31.792437, 33.201477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.203106, 31.699873, 33.394981>,  <44.382515, 31.545601, 33.717491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.203106, 31.699873, 33.394981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824832, -0.168802, -0.539590,
		-0.344211, -0.907058, -0.242413,
		-0.448520, 0.385683, -0.806274,
		44.068550, 31.815578, 33.153099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.357273, 31.081064, 33.167583>,  <44.382515, 31.545601, 33.717491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.357273, 31.081064, 33.167583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.361774, 31.432459, 32.976528>,  <44.364475, 31.643295, 32.861897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.361774, 31.432459, 32.976528>,  <44.357273, 31.081064, 33.167583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.361774, 31.432459, 32.976528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843245, -0.265057, -0.467636,
		-0.537412, -0.397499, -0.743762,
		0.011255, 0.878487, -0.477634,
		44.365150, 31.696005, 32.833237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.580582, 30.957754, 32.572830>,  <44.357273, 31.081064, 33.167583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.580582, 30.957754, 32.572830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.632946, 31.354055, 32.587109>,  <44.664364, 31.591835, 32.595676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.632946, 31.354055, 32.587109>,  <44.580582, 30.957754, 32.572830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.632946, 31.354055, 32.587109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937029, -0.111890, -0.330843,
		-0.323789, 0.076758, -0.943010,
		0.130908, 0.990752, 0.035696,
		44.672218, 31.651281, 32.597816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.836880, 31.192167, 31.919930>,  <44.580582, 30.957754, 32.572830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.836880, 31.192167, 31.919930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.952461, 31.471338, 32.182045>,  <45.021809, 31.638842, 32.339314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.952461, 31.471338, 32.182045>,  <44.836880, 31.192167, 31.919930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.952461, 31.471338, 32.182045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955937, -0.173264, -0.236990,
		-0.051864, 0.694892, -0.717241,
		0.288955, 0.697929, 0.655287,
		45.039146, 31.680717, 32.378632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.251057, 31.704979, 31.585060>,  <44.836880, 31.192167, 31.919930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.251057, 31.704979, 31.585060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.326397, 31.634642, 31.971552>,  <45.371601, 31.592440, 32.203445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.326397, 31.634642, 31.971552>,  <45.251057, 31.704979, 31.585060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.326397, 31.634642, 31.971552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936510, -0.264120, -0.230629,
		0.295756, 0.948324, 0.114932,
		0.188355, -0.175844, 0.966230,
		45.382904, 31.581888, 32.261421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.682705, 32.121140, 31.972656>,  <45.251057, 31.704979, 31.585060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.682705, 32.121140, 31.972656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.704090, 31.731443, 32.060287>,  <45.716923, 31.497625, 32.112865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.704090, 31.731443, 32.060287>,  <45.682705, 32.121140, 31.972656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.704090, 31.731443, 32.060287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997979, 0.044588, -0.045273,
		0.034339, 0.221057, 0.974656,
		0.053466, -0.974241, 0.219079,
		45.720131, 31.439171, 32.126011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.220444, 31.965603, 32.579746>,  <45.682705, 32.121140, 31.972656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.220444, 31.965603, 32.579746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.171818, 31.665445, 32.319859>,  <46.142643, 31.485352, 32.163925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.171818, 31.665445, 32.319859>,  <46.220444, 31.965603, 32.579746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.171818, 31.665445, 32.319859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986109, -0.165947, 0.007161,
		-0.113192, -0.639822, 0.760141,
		-0.121562, -0.750392, -0.649718,
		46.135349, 31.440327, 32.124943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.582138, 32.541676, 32.581566>,  <46.220444, 31.965603, 32.579746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.582138, 32.541676, 32.581566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.184742, 32.530807, 32.537327>,  <45.946304, 32.524284, 32.510784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.184742, 32.530807, 32.537327>,  <46.582138, 32.541676, 32.581566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.184742, 32.530807, 32.537327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097913, 0.699763, 0.707633,
		0.058160, 0.713858, -0.697871,
		-0.993494, -0.027174, -0.110594,
		45.886692, 32.522655, 32.504150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.295841, 33.190727, 32.751881>,  <46.582138, 32.541676, 32.581566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.295841, 33.190727, 32.751881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.988026, 32.936203, 32.773510>,  <45.803337, 32.783489, 32.786488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.988026, 32.936203, 32.773510>,  <46.295841, 33.190727, 32.751881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.988026, 32.936203, 32.773510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360512, 0.502750, 0.785667,
		-0.527113, 0.585106, -0.616282,
		-0.769534, -0.636312, 0.054069,
		45.757164, 32.745308, 32.789730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.962437, 33.861389, 32.609940>,  <46.295841, 33.190727, 32.751881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.962437, 33.861389, 32.609940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.834976, 33.494953, 32.512585>,  <45.758499, 33.275093, 32.454170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.834976, 33.494953, 32.512585>,  <45.962437, 33.861389, 32.609940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.834976, 33.494953, 32.512585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165221, 0.199164, -0.965937,
		0.933362, -0.348009, 0.087894,
		-0.318649, -0.916091, -0.243390,
		45.739380, 33.220127, 32.439568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.353748, 33.685314, 32.022507>,  <45.962437, 33.861389, 32.609940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.353748, 33.685314, 32.022507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.995232, 33.507965, 32.026081>,  <45.780121, 33.401554, 32.028225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.995232, 33.507965, 32.026081>,  <46.353748, 33.685314, 32.022507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.995232, 33.507965, 32.026081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116264, 0.215492, -0.969560,
		0.427955, -0.870046, -0.244693,
		-0.896291, -0.443377, 0.008934,
		45.726345, 33.374954, 32.028763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.166325, 34.437542, 32.045692>,  <46.353748, 33.685314, 32.022507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.166325, 34.437542, 32.045692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.855732, 34.617081, 32.222607>,  <45.669376, 34.724804, 32.328754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.855732, 34.617081, 32.222607>,  <46.166325, 34.437542, 32.045692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.855732, 34.617081, 32.222607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609531, 0.356930, 0.707865,
		0.159856, 0.819230, -0.550733,
		-0.776478, 0.448846, 0.442289,
		45.622787, 34.751736, 32.355293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.272713, 35.149433, 32.190033>,  <46.166325, 34.437542, 32.045692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.272713, 35.149433, 32.190033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016640, 35.017799, 32.467701>,  <45.862995, 34.938820, 32.634300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016640, 35.017799, 32.467701>,  <46.272713, 35.149433, 32.190033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.016640, 35.017799, 32.467701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601251, 0.347821, 0.719387,
		-0.478182, 0.877910, -0.024809,
		-0.640186, -0.329082, 0.694166,
		45.824585, 34.919075, 32.675949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.108814, 35.622261, 32.689133>,  <46.272713, 35.149433, 32.190033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.108814, 35.622261, 32.689133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.031807, 35.274128, 32.870445>,  <45.985603, 35.065250, 32.979233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.031807, 35.274128, 32.870445>,  <46.108814, 35.622261, 32.689133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.031807, 35.274128, 32.870445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487472, 0.316074, 0.813922,
		-0.851651, 0.377655, 0.363412,
		-0.192516, -0.870330, 0.453281,
		45.974052, 35.013027, 33.006428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.895977, 35.695824, 33.480881>,  <46.108814, 35.622261, 32.689133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.895977, 35.695824, 33.480881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.049282, 35.328350, 33.519119>,  <46.141266, 35.107868, 33.542061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.049282, 35.328350, 33.519119>,  <45.895977, 35.695824, 33.480881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.049282, 35.328350, 33.519119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390403, 0.254923, 0.884647,
		-0.837077, -0.301729, 0.456358,
		0.383260, -0.918680, 0.095594,
		46.164261, 35.052746, 33.547798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.706837, 35.201801, 34.159027>,  <45.895977, 35.695824, 33.480881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.706837, 35.201801, 34.159027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.077953, 35.123135, 34.032204>,  <46.300625, 35.075935, 33.956108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.077953, 35.123135, 34.032204>,  <45.706837, 35.201801, 34.159027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.077953, 35.123135, 34.032204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362166, 0.270494, 0.892003,
		-0.089667, -0.942419, 0.322188,
		0.927791, -0.196669, -0.317058,
		46.356289, 35.064133, 33.937088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.187805, 34.912693, 34.717224>,  <45.706837, 35.201801, 34.159027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.187805, 34.912693, 34.717224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.480171, 34.947750, 34.446499>,  <46.655590, 34.968784, 34.284065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.480171, 34.947750, 34.446499>,  <46.187805, 34.912693, 34.717224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.480171, 34.947750, 34.446499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667805, 0.112589, 0.735772,
		0.140686, -0.989769, 0.023766,
		0.730920, 0.087642, -0.676812,
		46.699448, 34.974045, 34.243454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.809132, 34.367832, 34.719448>,  <46.187805, 34.912693, 34.717224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.809132, 34.367832, 34.719448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.880497, 34.752277, 34.635128>,  <46.923317, 34.982944, 34.584538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.880497, 34.752277, 34.635128>,  <46.809132, 34.367832, 34.719448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.880497, 34.752277, 34.635128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378080, 0.130825, 0.916483,
		0.908418, -0.243215, -0.340034,
		0.178418, 0.961109, -0.210799,
		46.934021, 35.040611, 34.571888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.475212, 34.446281, 34.710583>,  <46.809132, 34.367832, 34.719448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.475212, 34.446281, 34.710583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.351006, 34.815609, 34.800968>,  <47.276482, 35.037205, 34.855198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.351006, 34.815609, 34.800968>,  <47.475212, 34.446281, 34.710583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.351006, 34.815609, 34.800968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656862, 0.036593, 0.753122,
		0.687105, 0.382281, -0.617857,
		-0.310514, 0.923321, 0.225963,
		47.257851, 35.092606, 34.868755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.002762, 34.978680, 34.712559>,  <47.475212, 34.446281, 34.710583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.002762, 34.978680, 34.712559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.710892, 35.035843, 34.980034>,  <47.535770, 35.070141, 35.140518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.710892, 35.035843, 34.980034>,  <48.002762, 34.978680, 34.712559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.710892, 35.035843, 34.980034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676328, 0.006735, 0.736570,
		0.100759, 0.989713, -0.101568,
		-0.729677, 0.142910, 0.668692,
		47.491989, 35.078716, 35.180641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.708649, 30.095058, 30.250465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.539410, 29.734379, 30.286095>,  <36.437866, 29.517971, 30.307472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.539410, 29.734379, 30.286095>,  <36.708649, 30.095058, 30.250465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539410, 29.734379, 30.286095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542047, 0.330654, 0.772563,
		-0.726069, 0.278586, -0.628660,
		-0.423094, -0.901697, 0.089071,
		36.412483, 29.463869, 30.312817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992607, 30.170412, 30.346756>,  <36.708649, 30.095058, 30.250465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992607, 30.170412, 30.346756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.047131, 29.786428, 30.444651>,  <36.079845, 29.556038, 30.503387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.047131, 29.786428, 30.444651>,  <35.992607, 30.170412, 30.346756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047131, 29.786428, 30.444651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648141, 0.100420, 0.754870,
		-0.749222, -0.261516, -0.608503,
		0.136305, -0.959961, 0.244736,
		36.088020, 29.498440, 30.518072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495960, 30.211176, 30.840092>,  <35.992607, 30.170412, 30.346756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495960, 30.211176, 30.840092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.633183, 29.837055, 30.874798>,  <35.715515, 29.612583, 30.895622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.633183, 29.837055, 30.874798>,  <35.495960, 30.211176, 30.840092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633183, 29.837055, 30.874798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622272, -0.157098, 0.766875,
		-0.703627, -0.317072, -0.635904,
		0.343054, -0.935300, 0.086767,
		35.736099, 29.556465, 30.900827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942894, 29.863033, 30.865538>,  <35.495960, 30.211176, 30.840092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942894, 29.863033, 30.865538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.208851, 29.618904, 31.037785>,  <35.368423, 29.472427, 31.141132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.208851, 29.618904, 31.037785>,  <34.942894, 29.863033, 30.865538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208851, 29.618904, 31.037785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513952, 0.044522, 0.856663,
		-0.542013, -0.790901, -0.284075,
		0.664888, -0.610323, 0.430616,
		35.408318, 29.435808, 31.166969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535561, 29.372219, 31.367924>,  <34.942894, 29.863033, 30.865538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535561, 29.372219, 31.367924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.922955, 29.363741, 31.467184>,  <35.155392, 29.358654, 31.526741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.922955, 29.363741, 31.467184>,  <34.535561, 29.372219, 31.367924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922955, 29.363741, 31.467184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241277, 0.167232, 0.955939,
		-0.061762, -0.985690, 0.156848,
		0.968489, -0.021197, 0.248153,
		35.213501, 29.357382, 31.541630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475689, 29.132917, 32.020840>,  <34.535561, 29.372219, 31.367924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475689, 29.132917, 32.020840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.838409, 29.300951, 32.006729>,  <35.056042, 29.401772, 31.998262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.838409, 29.300951, 32.006729>,  <34.475689, 29.132917, 32.020840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838409, 29.300951, 32.006729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133403, 0.365326, 0.921271,
		0.399905, -0.830699, 0.387317,
		0.906796, 0.420091, -0.035278,
		35.110451, 29.426975, 31.996147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816879, 28.981651, 32.678463>,  <34.475689, 29.132917, 32.020840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816879, 28.981651, 32.678463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.001328, 29.310606, 32.545170>,  <35.111996, 29.507978, 32.465195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.001328, 29.310606, 32.545170>,  <34.816879, 28.981651, 32.678463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001328, 29.310606, 32.545170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017913, 0.384097, 0.923119,
		0.887156, -0.419702, 0.191847,
		0.461122, 0.822387, -0.333236,
		35.139664, 29.557322, 32.445198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319164, 29.156141, 33.124924>,  <34.816879, 28.981651, 32.678463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319164, 29.156141, 33.124924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.231449, 29.503490, 32.947006>,  <35.178822, 29.711901, 32.840256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.231449, 29.503490, 32.947006>,  <35.319164, 29.156141, 33.124924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231449, 29.503490, 32.947006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042751, 0.446903, 0.893560,
		0.974724, 0.214960, -0.060875,
		-0.219285, 0.868372, -0.444797,
		35.165665, 29.764002, 32.813568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733349, 29.609913, 33.532131>,  <35.319164, 29.156141, 33.124924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733349, 29.609913, 33.532131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.450035, 29.809595, 33.332481>,  <35.280045, 29.929405, 33.212692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.450035, 29.809595, 33.332481>,  <35.733349, 29.609913, 33.532131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450035, 29.809595, 33.332481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154470, 0.580308, 0.799613,
		0.688815, 0.643455, -0.333914,
		-0.708288, 0.499206, -0.499120,
		35.237549, 29.959356, 33.182747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906567, 30.320053, 33.573830>,  <35.733349, 29.609913, 33.532131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906567, 30.320053, 33.573830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.515114, 30.319534, 33.491581>,  <35.280243, 30.319223, 33.442234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.515114, 30.319534, 33.491581>,  <35.906567, 30.320053, 33.573830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515114, 30.319534, 33.491581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162579, 0.617121, 0.769889,
		0.125892, 0.786867, -0.604146,
		-0.978631, -0.001299, -0.205619,
		35.221523, 30.319145, 33.429893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676140, 31.047197, 33.536861>,  <35.906567, 30.320053, 33.573830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676140, 31.047197, 33.536861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.353100, 30.827635, 33.623100>,  <35.159275, 30.695898, 33.674843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.353100, 30.827635, 33.623100>,  <35.676140, 31.047197, 33.536861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353100, 30.827635, 33.623100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141440, 0.535198, 0.832801,
		-0.572515, 0.642079, -0.509864,
		-0.807602, -0.548906, 0.215593,
		35.110821, 30.662964, 33.687778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092098, 31.492649, 33.589962>,  <35.676140, 31.047197, 33.536861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092098, 31.492649, 33.589962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.030075, 31.157295, 33.798985>,  <34.992859, 30.956083, 33.924400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.030075, 31.157295, 33.798985>,  <35.092098, 31.492649, 33.589962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030075, 31.157295, 33.798985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162603, 0.543402, 0.823574,
		-0.974431, 0.042734, -0.220584,
		-0.155060, -0.838384, 0.522559,
		34.983559, 30.905781, 33.955753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850529, 31.731491, 34.166779>,  <35.092098, 31.492649, 33.589962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850529, 31.731491, 34.166779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.841476, 31.347916, 34.279861>,  <34.836044, 31.117771, 34.347713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.841476, 31.347916, 34.279861>,  <34.850529, 31.731491, 34.166779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841476, 31.347916, 34.279861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355131, 0.272051, 0.894355,
		-0.934543, -0.080160, -0.346705,
		-0.022630, -0.958938, 0.282711,
		34.834686, 31.060234, 34.364674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193745, 31.462029, 34.405025>,  <34.850529, 31.731491, 34.166779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193745, 31.462029, 34.405025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.471771, 31.243549, 34.592022>,  <34.638588, 31.112461, 34.704220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.471771, 31.243549, 34.592022>,  <34.193745, 31.462029, 34.405025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471771, 31.243549, 34.592022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341754, 0.321060, 0.883246,
		-0.632521, -0.773683, 0.036493,
		0.695069, -0.546200, 0.467487,
		34.680294, 31.079689, 34.732269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958691, 31.138590, 35.041943>,  <34.193745, 31.462029, 34.405025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958691, 31.138590, 35.041943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.354542, 31.124969, 35.097767>,  <34.592052, 31.116796, 35.131264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.354542, 31.124969, 35.097767>,  <33.958691, 31.138590, 35.041943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354542, 31.124969, 35.097767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131929, 0.169063, 0.976736,
		-0.056855, -0.985017, 0.162817,
		0.989627, -0.034052, 0.139564,
		34.651428, 31.114754, 35.139637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998695, 30.660904, 35.583351>,  <33.958691, 31.138590, 35.041943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998695, 30.660904, 35.583351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.331394, 30.882641, 35.571354>,  <34.531013, 31.015684, 35.564156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.331394, 30.882641, 35.571354>,  <33.998695, 30.660904, 35.583351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331394, 30.882641, 35.571354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118240, 0.229673, 0.966059,
		0.542418, -0.799970, 0.256575,
		0.831746, 0.554345, -0.029990,
		34.580917, 31.048944, 35.562355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296093, 30.532324, 36.236126>,  <33.998695, 30.660904, 35.583351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296093, 30.532324, 36.236126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.515823, 30.845486, 36.119305>,  <34.647663, 31.033382, 36.049210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.515823, 30.845486, 36.119305>,  <34.296093, 30.532324, 36.236126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515823, 30.845486, 36.119305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058500, 0.384688, 0.921191,
		0.833557, -0.488950, 0.257120,
		0.549328, 0.782907, -0.292055,
		34.680622, 31.080359, 36.031689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935867, 30.557400, 36.730297>,  <34.296093, 30.532324, 36.236126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935867, 30.557400, 36.730297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.876904, 30.924608, 36.583054>,  <34.841526, 31.144934, 36.494705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.876904, 30.924608, 36.583054>,  <34.935867, 30.557400, 36.730297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876904, 30.924608, 36.583054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046501, 0.378198, 0.924556,
		0.987982, 0.119169, -0.098439,
		-0.147408, 0.918022, -0.368111,
		34.832680, 31.200014, 36.472622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501915, 30.967627, 37.068359>,  <34.935867, 30.557400, 36.730297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501915, 30.967627, 37.068359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.183170, 31.182108, 36.957012>,  <34.991924, 31.310797, 36.890205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.183170, 31.182108, 36.957012>,  <35.501915, 30.967627, 37.068359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183170, 31.182108, 36.957012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000461, 0.461292, 0.887248,
		0.604156, 0.706890, -0.367835,
		-0.796866, 0.536205, -0.278367,
		34.944111, 31.342970, 36.873501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667030, 31.631056, 37.308353>,  <35.501915, 30.967627, 37.068359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667030, 31.631056, 37.308353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.271034, 31.605330, 37.258095>,  <35.033436, 31.589893, 37.227940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.271034, 31.605330, 37.258095>,  <35.667030, 31.631056, 37.308353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271034, 31.605330, 37.258095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141028, 0.413986, 0.899292,
		-0.005826, 0.908008, -0.418912,
		-0.989988, -0.064318, -0.125643,
		34.974037, 31.586035, 37.220402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466976, 32.398018, 37.437332>,  <35.667030, 31.631056, 37.308353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466976, 32.398018, 37.437332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.146450, 32.161594, 37.474297>,  <34.954132, 32.019741, 37.496475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.146450, 32.161594, 37.474297>,  <35.466976, 32.398018, 37.437332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146450, 32.161594, 37.474297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231460, 0.448754, 0.863161,
		-0.551646, 0.670278, -0.496401,
		-0.801320, -0.591056, 0.092411,
		34.906055, 31.984278, 37.502018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296783, 32.424171, 37.598072>,  <35.466976, 32.398018, 37.437332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296783, 32.424171, 37.598072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.579426, 32.706608, 37.616566>,  <36.749012, 32.876072, 37.627663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.579426, 32.706608, 37.616566>,  <36.296783, 32.424171, 37.598072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579426, 32.706608, 37.616566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456236, -0.404667, -0.792523,
		-0.540886, 0.581097, -0.608086,
		0.706606, 0.706095, 0.046238,
		36.791409, 32.918438, 37.630436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518265, 32.490528, 36.898418>,  <36.296783, 32.424171, 37.598072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518265, 32.490528, 36.898418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.789448, 32.663082, 37.136505>,  <36.952156, 32.766617, 37.279358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.789448, 32.663082, 37.136505>,  <36.518265, 32.490528, 36.898418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789448, 32.663082, 37.136505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706813, -0.160072, -0.689052,
		-0.201971, 0.887852, -0.413432,
		0.677955, 0.431387, 0.595215,
		36.992836, 32.792500, 37.315071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955841, 32.891335, 36.371384>,  <36.518265, 32.490528, 36.898418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955841, 32.891335, 36.371384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.130833, 32.825989, 36.725090>,  <37.235828, 32.786781, 36.937313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.130833, 32.825989, 36.725090>,  <36.955841, 32.891335, 36.371384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130833, 32.825989, 36.725090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822161, -0.325645, -0.466911,
		0.364233, 0.931272, -0.008152,
		0.437476, -0.163362, 0.884267,
		37.262077, 32.776981, 36.990372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604527, 33.150665, 36.336605>,  <36.955841, 32.891335, 36.371384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604527, 33.150665, 36.336605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.671207, 32.900513, 36.641529>,  <37.711216, 32.750423, 36.824482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.671207, 32.900513, 36.641529>,  <37.604527, 33.150665, 36.336605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671207, 32.900513, 36.641529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696128, -0.472885, -0.540171,
		0.698295, 0.620711, 0.356514,
		0.166700, -0.625378, 0.762308,
		37.721218, 32.712898, 36.870220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321632, 33.141659, 36.520226>,  <37.604527, 33.150665, 36.336605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321632, 33.141659, 36.520226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.147026, 32.804462, 36.645966>,  <38.042263, 32.602142, 36.721409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.147026, 32.804462, 36.645966>,  <38.321632, 33.141659, 36.520226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147026, 32.804462, 36.645966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619765, -0.535022, -0.574145,
		0.652183, -0.055804, 0.756005,
		-0.436518, -0.842993, 0.314347,
		38.016071, 32.551563, 36.740269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858013, 32.723846, 36.628937>,  <38.321632, 33.141659, 36.520226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858013, 32.723846, 36.628937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.541706, 32.482704, 36.586521>,  <38.351921, 32.338020, 36.561069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.541706, 32.482704, 36.586521>,  <38.858013, 32.723846, 36.628937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541706, 32.482704, 36.586521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532283, -0.591705, -0.605442,
		0.302248, -0.535211, 0.788794,
		-0.790772, -0.602855, -0.106042,
		38.304474, 32.301849, 36.554710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133373, 32.064018, 36.720833>,  <38.858013, 32.723846, 36.628937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133373, 32.064018, 36.720833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.779911, 32.011322, 36.541142>,  <38.567833, 31.979706, 36.433327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.779911, 32.011322, 36.541142>,  <39.133373, 32.064018, 36.720833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779911, 32.011322, 36.541142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397444, -0.718187, -0.571179,
		-0.247386, -0.683266, 0.686984,
		-0.883651, -0.131736, -0.449229,
		38.514816, 31.971802, 36.406372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027981, 31.255507, 36.745102>,  <39.133373, 32.064018, 36.720833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027981, 31.255507, 36.745102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.807293, 31.445683, 36.471004>,  <38.674881, 31.559788, 36.306545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.807293, 31.445683, 36.471004>,  <39.027981, 31.255507, 36.745102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807293, 31.445683, 36.471004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346859, -0.616384, -0.706937,
		-0.758481, -0.627715, 0.175161,
		-0.551721, 0.475442, -0.685244,
		38.641777, 31.588316, 36.265430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979393, 30.746056, 36.278400>,  <39.027981, 31.255507, 36.745102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979393, 30.746056, 36.278400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.856976, 31.067127, 36.073639>,  <38.783524, 31.259769, 35.950783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.856976, 31.067127, 36.073639>,  <38.979393, 30.746056, 36.278400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856976, 31.067127, 36.073639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067983, -0.517903, -0.852734,
		-0.949586, -0.295778, 0.103934,
		-0.306047, 0.802678, -0.511901,
		38.765160, 31.307930, 35.920067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407608, 30.551809, 35.936424>,  <38.979393, 30.746056, 36.278400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407608, 30.551809, 35.936424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.501740, 30.885897, 35.737617>,  <38.558220, 31.086349, 35.618332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.501740, 30.885897, 35.737617>,  <38.407608, 30.551809, 35.936424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501740, 30.885897, 35.737617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007709, -0.509763, -0.860281,
		-0.971885, 0.206281, -0.113524,
		0.235330, 0.835219, -0.497021,
		38.572338, 31.136463, 35.588512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964039, 30.524466, 35.434929>,  <38.407608, 30.551809, 35.936424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964039, 30.524466, 35.434929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.241989, 30.773149, 35.290359>,  <38.408760, 30.922359, 35.203617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.241989, 30.773149, 35.290359>,  <37.964039, 30.524466, 35.434929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241989, 30.773149, 35.290359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092558, -0.421077, -0.902290,
		-0.713149, 0.660430, -0.235052,
		0.694875, 0.621712, -0.361419,
		38.450451, 30.959663, 35.181934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757988, 30.716324, 34.761230>,  <37.964039, 30.524466, 35.434929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757988, 30.716324, 34.761230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151997, 30.784365, 34.749969>,  <38.388401, 30.825190, 34.743214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151997, 30.784365, 34.749969>,  <37.757988, 30.716324, 34.761230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151997, 30.784365, 34.749969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038180, -0.374447, -0.926462,
		-0.168137, 0.911512, -0.375334,
		0.985024, 0.170103, -0.028157,
		38.447502, 30.835396, 34.741524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840981, 31.045687, 34.084591>,  <37.757988, 30.716324, 34.761230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840981, 31.045687, 34.084591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.176151, 30.874083, 34.219543>,  <38.377254, 30.771120, 34.300514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.176151, 30.874083, 34.219543>,  <37.840981, 31.045687, 34.084591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176151, 30.874083, 34.219543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101899, -0.484324, -0.868934,
		0.536183, 0.762484, -0.362114,
		0.837929, -0.429009, 0.337382,
		38.427528, 30.745380, 34.320759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342972, 31.136789, 33.634987>,  <37.840981, 31.045687, 34.084591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342972, 31.136789, 33.634987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.468781, 30.804455, 33.818634>,  <38.544266, 30.605055, 33.928822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.468781, 30.804455, 33.818634>,  <38.342972, 31.136789, 33.634987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468781, 30.804455, 33.818634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012400, -0.480025, -0.877167,
		0.949170, 0.281581, -0.140675,
		0.314521, -0.830836, 0.459116,
		38.563137, 30.555204, 33.956367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981003, 30.861042, 33.283138>,  <38.342972, 31.136789, 33.634987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981003, 30.861042, 33.283138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.792507, 30.556099, 33.460560>,  <38.679409, 30.373133, 33.567013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.792507, 30.556099, 33.460560>,  <38.981003, 30.861042, 33.283138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792507, 30.556099, 33.460560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148804, -0.564405, -0.811975,
		0.869361, -0.316635, 0.379413,
		-0.471243, -0.762358, 0.443555,
		38.651134, 30.327391, 33.593628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322739, 30.274239, 33.141022>,  <38.981003, 30.861042, 33.283138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322739, 30.274239, 33.141022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.994843, 30.093323, 33.281570>,  <38.798103, 29.984774, 33.365898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.994843, 30.093323, 33.281570>,  <39.322739, 30.274239, 33.141022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994843, 30.093323, 33.281570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108179, -0.724726, -0.680492,
		0.562427, -0.519815, 0.643014,
		-0.819739, -0.452288, 0.351373,
		38.748920, 29.957636, 33.386982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527115, 29.524431, 33.196934>,  <39.322739, 30.274239, 33.141022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527115, 29.524431, 33.196934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.134823, 29.591957, 33.157600>,  <38.899448, 29.632473, 33.133999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.134823, 29.591957, 33.157600>,  <39.527115, 29.524431, 33.196934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134823, 29.591957, 33.157600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009848, -0.545402, -0.838117,
		-0.195119, -0.820998, 0.536555,
		-0.980730, 0.168816, -0.098333,
		38.840603, 29.642603, 33.128101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314789, 28.864948, 33.006939>,  <39.527115, 29.524431, 33.196934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314789, 28.864948, 33.006939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.033718, 29.128401, 32.899269>,  <38.865078, 29.286472, 32.834667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.033718, 29.128401, 32.899269>,  <39.314789, 28.864948, 33.006939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033718, 29.128401, 32.899269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072538, -0.442650, -0.893756,
		-0.707806, -0.608492, 0.358814,
		-0.702673, 0.658633, -0.269172,
		38.822918, 29.325991, 32.818516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655937, 28.444975, 32.883888>,  <39.314789, 28.864948, 33.006939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655937, 28.444975, 32.883888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.637268, 28.797239, 32.695309>,  <38.626064, 29.008598, 32.582161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.637268, 28.797239, 32.695309>,  <38.655937, 28.444975, 32.883888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637268, 28.797239, 32.695309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281396, -0.464438, -0.839710,
		-0.958456, 0.093469, 0.269492,
		-0.046676, 0.880659, -0.471445,
		38.623264, 29.061438, 32.553875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.161209, 28.258297, 32.222450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.343590, 28.608486, 32.158375>,  <38.453018, 28.818600, 32.119930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.343590, 28.608486, 32.158375>,  <38.161209, 28.258297, 32.222450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343590, 28.608486, 32.158375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085482, -0.222232, -0.971239,
		-0.885891, 0.429144, -0.176163,
		0.455950, 0.875471, -0.160189,
		38.480373, 28.871128, 32.110317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953350, 28.383289, 31.532696>,  <38.161209, 28.258297, 32.222450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953350, 28.383289, 31.532696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.267433, 28.616146, 31.617134>,  <38.455883, 28.755859, 31.667797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.267433, 28.616146, 31.617134>,  <37.953350, 28.383289, 31.532696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267433, 28.616146, 31.617134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315932, -0.083420, -0.945107,
		-0.532577, 0.808796, -0.249420,
		0.785206, 0.582142, 0.211097,
		38.502995, 28.790789, 31.680464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931820, 28.873789, 31.049236>,  <37.953350, 28.383289, 31.532696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931820, 28.873789, 31.049236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.311451, 28.882019, 31.174978>,  <38.539230, 28.886957, 31.250423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.311451, 28.882019, 31.174978>,  <37.931820, 28.873789, 31.049236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311451, 28.882019, 31.174978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314167, -0.135602, -0.939633,
		0.023296, 0.990550, -0.135161,
		0.949082, 0.020574, 0.314357,
		38.596176, 28.888191, 31.269285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242855, 29.419716, 30.653011>,  <37.931820, 28.873789, 31.049236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242855, 29.419716, 30.653011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.501328, 29.143192, 30.782343>,  <38.656410, 28.977278, 30.859941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.501328, 29.143192, 30.782343>,  <38.242855, 29.419716, 30.653011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501328, 29.143192, 30.782343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275105, -0.184183, -0.943607,
		0.711876, 0.698690, 0.071167,
		0.646181, -0.691310, 0.323329,
		38.695183, 28.935799, 30.879341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745266, 29.509438, 30.245459>,  <38.242855, 29.419716, 30.653011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745266, 29.509438, 30.245459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.842075, 29.145891, 30.381332>,  <38.900162, 28.927763, 30.462856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.842075, 29.145891, 30.381332>,  <38.745266, 29.509438, 30.245459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842075, 29.145891, 30.381332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228682, -0.286797, -0.930297,
		0.942937, 0.302830, 0.138431,
		0.242021, -0.908868, 0.339683,
		38.914680, 28.873230, 30.483238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332245, 29.428394, 29.923998>,  <38.745266, 29.509438, 30.245459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332245, 29.428394, 29.923998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.227959, 29.054619, 30.021038>,  <39.165386, 28.830355, 30.079262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.227959, 29.054619, 30.021038>,  <39.332245, 29.428394, 29.923998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227959, 29.054619, 30.021038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227573, -0.303694, -0.925192,
		0.938211, -0.186000, 0.291830,
		-0.260713, -0.934438, 0.242601,
		39.149746, 28.774288, 30.093819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876678, 28.975401, 29.538050>,  <39.332245, 29.428394, 29.923998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876678, 28.975401, 29.538050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.565445, 28.754379, 29.657566>,  <39.378704, 28.621765, 29.729275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.565445, 28.754379, 29.657566>,  <39.876678, 28.975401, 29.538050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565445, 28.754379, 29.657566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006303, -0.482497, -0.875875,
		0.628134, -0.679617, 0.378903,
		-0.778079, -0.552555, 0.298789,
		39.332020, 28.588614, 29.747202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112457, 28.262638, 29.740290>,  <39.876678, 28.975401, 29.538050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112457, 28.262638, 29.740290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.733356, 28.266857, 29.612755>,  <39.505898, 28.269388, 29.536234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.733356, 28.266857, 29.612755>,  <40.112457, 28.262638, 29.740290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733356, 28.266857, 29.612755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245859, -0.612710, -0.751093,
		-0.203278, -0.790238, 0.578103,
		-0.947750, 0.010549, -0.318837,
		39.449032, 28.270021, 29.517103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982403, 27.664963, 29.589518>,  <40.112457, 28.262638, 29.740290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982403, 27.664963, 29.589518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.725182, 27.871901, 29.363657>,  <39.570847, 27.996063, 29.228140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.725182, 27.871901, 29.363657>,  <39.982403, 27.664963, 29.589518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725182, 27.871901, 29.363657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223014, -0.578856, -0.784341,
		-0.732628, -0.630300, 0.256861,
		-0.643056, 0.517346, -0.564651,
		39.532265, 28.027105, 29.194262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707211, 27.203241, 29.114559>,  <39.982403, 27.664963, 29.589518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707211, 27.203241, 29.114559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.601742, 27.541798, 28.929474>,  <39.538460, 27.744930, 28.818422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.601742, 27.541798, 28.929474>,  <39.707211, 27.203241, 29.114559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601742, 27.541798, 28.929474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043245, -0.468832, -0.882228,
		-0.963642, -0.252631, 0.087017,
		-0.263674, 0.846389, -0.462711,
		39.522640, 27.795713, 28.790661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179874, 27.004406, 28.642756>,  <39.707211, 27.203241, 29.114559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179874, 27.004406, 28.642756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.342800, 27.347446, 28.517143>,  <39.440556, 27.553270, 28.441776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.342800, 27.347446, 28.517143>,  <39.179874, 27.004406, 28.642756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342800, 27.347446, 28.517143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196255, -0.418007, -0.886991,
		-0.891951, 0.299656, -0.338570,
		0.407317, 0.857599, -0.314033,
		39.464996, 27.604727, 28.422934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867832, 27.092049, 28.039129>,  <39.179874, 27.004406, 28.642756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867832, 27.092049, 28.039129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.191673, 27.324553, 28.006424>,  <39.385979, 27.464056, 27.986801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.191673, 27.324553, 28.006424>,  <38.867832, 27.092049, 28.039129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191673, 27.324553, 28.006424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029296, -0.179135, -0.983388,
		-0.586252, 0.793754, -0.162056,
		0.809599, 0.581261, -0.081765,
		39.434551, 27.498932, 27.981895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746494, 27.430099, 27.472956>,  <38.867832, 27.092049, 28.039129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746494, 27.430099, 27.472956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.139221, 27.496170, 27.510363>,  <39.374859, 27.535812, 27.532806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.139221, 27.496170, 27.510363>,  <38.746494, 27.430099, 27.472956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139221, 27.496170, 27.510363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126641, -0.203053, -0.970944,
		-0.141390, 0.965135, -0.220279,
		0.981820, 0.165178, 0.093516,
		39.433765, 27.545723, 27.538418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921906, 27.957550, 26.964346>,  <38.746494, 27.430099, 27.472956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921906, 27.957550, 26.964346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.249454, 27.748587, 27.059450>,  <39.445984, 27.623209, 27.116512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.249454, 27.748587, 27.059450>,  <38.921906, 27.957550, 26.964346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249454, 27.748587, 27.059450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205273, -0.120285, -0.971285,
		0.536008, 0.844168, 0.008738,
		0.818877, -0.522410, 0.237759,
		39.495117, 27.591864, 27.130777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372406, 28.116173, 26.503284>,  <38.921906, 27.957550, 26.964346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372406, 28.116173, 26.503284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.560928, 27.788599, 26.634260>,  <39.674042, 27.592054, 26.712845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.560928, 27.788599, 26.634260>,  <39.372406, 28.116173, 26.503284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560928, 27.788599, 26.634260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263170, -0.223765, -0.938441,
		0.841789, 0.528468, 0.110056,
		0.471310, -0.818932, 0.327440,
		39.702320, 27.542919, 26.732492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958351, 28.106260, 26.142157>,  <39.372406, 28.116173, 26.503284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958351, 28.106260, 26.142157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.913437, 27.736938, 26.289070>,  <39.886490, 27.515345, 26.377218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.913437, 27.736938, 26.289070>,  <39.958351, 28.106260, 26.142157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913437, 27.736938, 26.289070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178472, -0.382349, -0.906618,
		0.977517, -0.036251, 0.207717,
		-0.112286, -0.923307, 0.367283,
		39.879749, 27.459946, 26.399256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605358, 27.754608, 25.979855>,  <39.958351, 28.106260, 26.142157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605358, 27.754608, 25.979855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.316505, 27.482655, 26.030886>,  <40.143192, 27.319483, 26.061504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.316505, 27.482655, 26.030886>,  <40.605358, 27.754608, 25.979855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316505, 27.482655, 26.030886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209995, -0.391180, -0.896036,
		0.659108, -0.620269, 0.425257,
		-0.722135, -0.679886, 0.127577,
		40.099865, 27.278688, 26.069159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934444, 27.096289, 25.723303>,  <40.605358, 27.754608, 25.979855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934444, 27.096289, 25.723303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.534519, 27.089293, 25.719872>,  <40.294563, 27.085094, 25.717812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.534519, 27.089293, 25.719872>,  <40.934444, 27.096289, 25.723303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534519, 27.089293, 25.719872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014808, -0.396073, -0.918100,
		0.012661, -0.918053, 0.396256,
		-0.999810, -0.017491, -0.008580,
		40.234577, 27.084045, 25.717299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748127, 26.439766, 25.420551>,  <40.934444, 27.096289, 25.723303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748127, 26.439766, 25.420551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.417171, 26.663874, 25.404902>,  <40.218597, 26.798338, 25.395512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.417171, 26.663874, 25.404902>,  <40.748127, 26.439766, 25.420551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417171, 26.663874, 25.404902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121425, -0.246459, -0.961516,
		-0.548350, -0.790795, 0.271948,
		-0.827387, 0.560269, -0.039123,
		40.168957, 26.831955, 25.393164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247704, 26.070181, 24.956779>,  <40.748127, 26.439766, 25.420551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247704, 26.070181, 24.956779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.111343, 26.446217, 24.958633>,  <40.029526, 26.671837, 24.959745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.111343, 26.446217, 24.958633>,  <40.247704, 26.070181, 24.956779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111343, 26.446217, 24.958633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241586, -0.082841, -0.966837,
		-0.908527, -0.330717, 0.255353,
		-0.340903, 0.940087, 0.004633,
		40.009071, 26.728243, 24.960024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697079, 26.036848, 24.563301>,  <40.247704, 26.070181, 24.956779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697079, 26.036848, 24.563301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.769939, 26.430147, 24.566076>,  <39.813656, 26.666126, 24.567741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.769939, 26.430147, 24.566076>,  <39.697079, 26.036848, 24.563301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769939, 26.430147, 24.566076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110101, 0.027408, -0.993542,
		-0.977087, 0.180212, 0.113248,
		0.182152, 0.983246, 0.006939,
		39.824585, 26.725121, 24.568157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145538, 26.401897, 24.131699>,  <39.697079, 26.036848, 24.563301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145538, 26.401897, 24.131699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.472881, 26.631582, 24.141291>,  <39.669285, 26.769394, 24.147045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.472881, 26.631582, 24.141291>,  <39.145538, 26.401897, 24.131699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472881, 26.631582, 24.141291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010059, 0.027404, -0.999574,
		-0.574625, 0.818248, 0.016650,
		0.818355, 0.574212, 0.023978,
		39.718388, 26.803846, 24.148483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121284, 27.036947, 23.630922>,  <39.145538, 26.401897, 24.131699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121284, 27.036947, 23.630922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.501373, 26.933018, 23.699713>,  <39.729427, 26.870659, 23.740988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.501373, 26.933018, 23.699713>,  <39.121284, 27.036947, 23.630922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501373, 26.933018, 23.699713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190938, 0.049399, -0.980358,
		0.246226, 0.964391, 0.096551,
		0.950219, -0.259825, 0.171976,
		39.786438, 26.855070, 23.751305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486591, 27.415770, 23.292727>,  <39.121284, 27.036947, 23.630922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486591, 27.415770, 23.292727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.727139, 27.100737, 23.346500>,  <39.871468, 26.911716, 23.378765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.727139, 27.100737, 23.346500>,  <39.486591, 27.415770, 23.292727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727139, 27.100737, 23.346500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195536, -0.018065, -0.980530,
		0.774676, 0.615945, 0.143137,
		0.601367, -0.787582, 0.134434,
		39.907547, 26.864462, 23.386831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835400, 27.539358, 22.895906>,  <39.486591, 27.415770, 23.292727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835400, 27.539358, 22.895906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.461689, 27.411623, 22.832472>,  <38.237461, 27.334982, 22.794411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.461689, 27.411623, 22.832472>,  <38.835400, 27.539358, 22.895906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461689, 27.411623, 22.832472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162794, -0.013662, 0.986566,
		-0.317216, 0.947542, -0.039222,
		-0.934276, -0.319339, -0.158588,
		38.181408, 27.315821, 22.784895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337933, 28.084654, 23.123056>,  <38.835400, 27.539358, 22.895906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337933, 28.084654, 23.123056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.156773, 27.728268, 23.136120>,  <38.048077, 27.514437, 23.143957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.156773, 27.728268, 23.136120>,  <38.337933, 28.084654, 23.123056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156773, 27.728268, 23.136120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279058, 0.176450, 0.943924,
		-0.846766, 0.418385, -0.328544,
		-0.452895, -0.890965, 0.032658,
		38.020905, 27.460978, 23.145918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645153, 28.298016, 23.438772>,  <38.337933, 28.084654, 23.123056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645153, 28.298016, 23.438772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.676292, 27.908855, 23.525862>,  <37.694977, 27.675360, 23.578115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.676292, 27.908855, 23.525862>,  <37.645153, 28.298016, 23.438772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676292, 27.908855, 23.525862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418088, 0.166398, 0.893037,
		-0.905065, -0.160552, -0.393803,
		0.077851, -0.972900, 0.217725,
		37.699646, 27.616985, 23.591179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962837, 28.069948, 23.780598>,  <37.645153, 28.298016, 23.438772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962837, 28.069948, 23.780598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.223942, 27.774281, 23.846973>,  <37.380604, 27.596880, 23.886799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.223942, 27.774281, 23.846973>,  <36.962837, 28.069948, 23.780598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223942, 27.774281, 23.846973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183995, 0.057792, 0.981227,
		-0.734881, -0.671037, -0.098279,
		0.652759, -0.739168, 0.165938,
		37.419769, 27.552530, 23.896755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586708, 27.459818, 24.184942>,  <36.962837, 28.069948, 23.780598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586708, 27.459818, 24.184942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.977493, 27.428347, 24.264296>,  <37.211964, 27.409464, 24.311907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.977493, 27.428347, 24.264296>,  <36.586708, 27.459818, 24.184942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977493, 27.428347, 24.264296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205027, -0.087947, 0.974797,
		-0.059249, -0.993013, -0.102052,
		0.976961, -0.078679, 0.198384,
		37.270580, 27.404743, 24.323811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637890, 26.917402, 24.712975>,  <36.586708, 27.459818, 24.184942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637890, 26.917402, 24.712975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.976463, 27.129574, 24.731731>,  <37.179607, 27.256876, 24.742985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.976463, 27.129574, 24.731731>,  <36.637890, 26.917402, 24.712975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976463, 27.129574, 24.731731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101929, 0.074960, 0.991963,
		0.522650, -0.844410, 0.117515,
		0.846432, 0.530428, 0.046892,
		37.230392, 27.288702, 24.745798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024002, 26.621527, 25.159124>,  <36.637890, 26.917402, 24.712975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024002, 26.621527, 25.159124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.233105, 26.961889, 25.138416>,  <37.358566, 27.166107, 25.125992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.233105, 26.961889, 25.138416>,  <37.024002, 26.621527, 25.159124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233105, 26.961889, 25.138416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180150, -0.050910, 0.982321,
		0.833230, -0.522841, -0.179905,
		0.522757, 0.850909, -0.051770,
		37.389931, 27.217161, 25.122885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603306, 26.488220, 25.565552>,  <37.024002, 26.621527, 25.159124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603306, 26.488220, 25.565552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.548672, 26.884451, 25.561565>,  <37.515892, 27.122190, 25.559174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.548672, 26.884451, 25.561565>,  <37.603306, 26.488220, 25.565552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548672, 26.884451, 25.561565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013736, 0.011953, 0.999834,
		0.990533, 0.136424, -0.015240,
		-0.136583, 0.990579, -0.009966,
		37.507698, 27.181625, 25.558575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237465, 26.796783, 26.032341>,  <37.603306, 26.488220, 25.565552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237465, 26.796783, 26.032341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.933620, 27.050940, 25.976803>,  <37.751316, 27.203432, 25.943480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.933620, 27.050940, 25.976803>,  <38.237465, 26.796783, 26.032341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933620, 27.050940, 25.976803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102760, 0.328054, 0.939053,
		0.642213, 0.699044, -0.314485,
		-0.759608, 0.635388, -0.138847,
		37.705738, 27.241556, 25.935148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399555, 27.308964, 26.445198>,  <38.237465, 26.796783, 26.032341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399555, 27.308964, 26.445198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.006710, 27.358831, 26.388754>,  <37.771004, 27.388752, 26.354887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.006710, 27.358831, 26.388754>,  <38.399555, 27.308964, 26.445198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006710, 27.358831, 26.388754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089025, 0.352915, 0.931410,
		0.165920, 0.927312, -0.335504,
		-0.982113, 0.124671, -0.141110,
		37.712078, 27.396233, 26.346420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245316, 27.989435, 26.716232>,  <38.399555, 27.308964, 26.445198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245316, 27.989435, 26.716232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.877220, 27.832901, 26.714462>,  <37.656364, 27.738979, 26.713400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.877220, 27.832901, 26.714462>,  <38.245316, 27.989435, 26.716232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877220, 27.832901, 26.714462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182432, 0.418931, 0.889503,
		-0.346241, 0.819361, -0.456908,
		-0.920237, -0.391337, -0.004427,
		37.601151, 27.715500, 26.713135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747845, 28.541178, 26.899904>,  <38.245316, 27.989435, 26.716232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747845, 28.541178, 26.899904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.573963, 28.188801, 26.974710>,  <37.469635, 27.977375, 27.019594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.573963, 28.188801, 26.974710>,  <37.747845, 28.541178, 26.899904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573963, 28.188801, 26.974710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285526, 0.331766, 0.899114,
		-0.854114, 0.337447, -0.395751,
		-0.434700, -0.880943, 0.187016,
		37.443554, 27.924519, 27.030815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020119, 28.762035, 27.106340>,  <37.747845, 28.541178, 26.899904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020119, 28.762035, 27.106340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.080841, 28.397074, 27.258381>,  <37.117275, 28.178097, 27.349606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.080841, 28.397074, 27.258381>,  <37.020119, 28.762035, 27.106340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080841, 28.397074, 27.258381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302319, 0.323266, 0.896717,
		-0.941041, -0.251040, -0.226762,
		0.151807, -0.912402, 0.380101,
		37.126385, 28.123354, 27.372412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475677, 28.739000, 27.508158>,  <37.020119, 28.762035, 27.106340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475677, 28.739000, 27.508158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.731709, 28.461203, 27.639597>,  <36.885326, 28.294523, 27.718460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.731709, 28.461203, 27.639597>,  <36.475677, 28.739000, 27.508158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731709, 28.461203, 27.639597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151107, 0.305546, 0.940111,
		-0.753304, -0.651398, 0.090630,
		0.640078, -0.694494, 0.328599,
		36.923733, 28.252855, 27.738176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200130, 28.543251, 28.124201>,  <36.475677, 28.739000, 27.508158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200130, 28.543251, 28.124201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.561665, 28.376736, 28.163773>,  <36.778584, 28.276827, 28.187515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.561665, 28.376736, 28.163773>,  <36.200130, 28.543251, 28.124201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561665, 28.376736, 28.163773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058600, 0.108602, 0.992357,
		-0.423851, -0.902723, 0.073764,
		0.903834, -0.416288, 0.098931,
		36.832813, 28.251850, 28.193453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105919, 28.057367, 28.582155>,  <36.200130, 28.543251, 28.124201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105919, 28.057367, 28.582155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.497852, 28.135410, 28.599379>,  <36.733013, 28.182236, 28.609713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.497852, 28.135410, 28.599379>,  <36.105919, 28.057367, 28.582155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497852, 28.135410, 28.599379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072232, 0.144978, 0.986795,
		0.186286, -0.970008, 0.156147,
		0.979837, 0.195105, 0.043058,
		36.791801, 28.193943, 28.612295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391285, 27.685272, 29.063210>,  <36.105919, 28.057367, 28.582155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391285, 27.685272, 29.063210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.671406, 27.967552, 29.020193>,  <36.839478, 28.136921, 28.994383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.671406, 27.967552, 29.020193>,  <36.391285, 27.685272, 29.063210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671406, 27.967552, 29.020193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036097, 0.185465, 0.981987,
		0.712935, -0.683804, 0.155355,
		0.700300, 0.705701, -0.107541,
		36.881496, 28.179262, 28.987930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690346, 27.667194, 29.764681>,  <36.391285, 27.685272, 29.063210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690346, 27.667194, 29.764681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.820656, 28.012018, 29.609388>,  <36.898842, 28.218912, 29.516212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.820656, 28.012018, 29.609388>,  <36.690346, 27.667194, 29.764681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820656, 28.012018, 29.609388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169102, 0.457137, 0.873173,
		0.930203, -0.218804, 0.294698,
		0.325772, 0.862062, -0.388230,
		36.918388, 28.270638, 29.492920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237602, 27.943008, 30.293423>,  <36.690346, 27.667194, 29.764681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237602, 27.943008, 30.293423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.109356, 28.249893, 30.071218>,  <37.032410, 28.434023, 29.937895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.109356, 28.249893, 30.071218>,  <37.237602, 27.943008, 30.293423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109356, 28.249893, 30.071218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181406, 0.525883, 0.830987,
		0.929676, 0.367200, -0.029430,
		-0.320615, 0.767210, -0.555513,
		37.013172, 28.480057, 29.904564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528759, 28.452709, 30.609529>,  <37.237602, 27.943008, 30.293423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528759, 28.452709, 30.609529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.223309, 28.597277, 30.395519>,  <37.040039, 28.684017, 30.267113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.223309, 28.597277, 30.395519>,  <37.528759, 28.452709, 30.609529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223309, 28.597277, 30.395519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367286, 0.438360, 0.820330,
		0.531016, 0.822933, -0.201999,
		-0.763625, 0.361417, -0.535028,
		36.994221, 28.705702, 30.235010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.618324, 30.267883, 34.741470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.273354, 30.406874, 34.594238>,  <39.066372, 30.490269, 34.505901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.273354, 30.406874, 34.594238>,  <39.618324, 30.267883, 34.741470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273354, 30.406874, 34.594238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009519, 0.738168, 0.674549,
		0.506094, 0.578245, -0.639923,
		-0.862426, 0.347477, -0.368078,
		39.014626, 30.511116, 34.483814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729744, 30.984970, 34.699615>,  <39.618324, 30.267883, 34.741470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729744, 30.984970, 34.699615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.331070, 30.954348, 34.710674>,  <39.091866, 30.935974, 34.717308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.331070, 30.954348, 34.710674>,  <39.729744, 30.984970, 34.699615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331070, 30.954348, 34.710674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035659, 0.715971, 0.697219,
		-0.073169, 0.693920, -0.716325,
		-0.996682, -0.076558, 0.027642,
		39.032066, 30.931379, 34.718967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467899, 31.702980, 34.792522>,  <39.729744, 30.984970, 34.699615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467899, 31.702980, 34.792522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.151817, 31.486553, 34.907639>,  <38.962170, 31.356697, 34.976707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.151817, 31.486553, 34.907639>,  <39.467899, 31.702980, 34.792522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151817, 31.486553, 34.907639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162559, 0.637836, 0.752821,
		-0.590890, 0.548100, -0.591976,
		-0.790205, -0.541066, 0.287792,
		38.914757, 31.324234, 34.993977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952763, 32.186981, 34.916641>,  <39.467899, 31.702980, 34.792522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952763, 32.186981, 34.916641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.860012, 31.854521, 35.118797>,  <38.804359, 31.655045, 35.240089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.860012, 31.854521, 35.118797>,  <38.952763, 32.186981, 34.916641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860012, 31.854521, 35.118797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190923, 0.548331, 0.814175,
		-0.953824, 0.092300, -0.285832,
		-0.231879, -0.831152, 0.505390,
		38.790447, 31.605175, 35.270412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429012, 32.377945, 35.204308>,  <38.952763, 32.186981, 34.916641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429012, 32.377945, 35.204308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.501747, 32.032696, 35.392754>,  <38.545387, 31.825546, 35.505821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.501747, 32.032696, 35.392754>,  <38.429012, 32.377945, 35.204308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501747, 32.032696, 35.392754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418153, 0.365750, 0.831490,
		-0.889990, -0.348195, -0.294411,
		0.181840, -0.863126, 0.471113,
		38.556301, 31.773758, 35.534088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877357, 31.927319, 35.249874>,  <38.429012, 32.377945, 35.204308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877357, 31.927319, 35.249874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.111748, 31.838299, 35.561543>,  <38.252380, 31.784887, 35.748543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.111748, 31.838299, 35.561543>,  <37.877357, 31.927319, 35.249874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111748, 31.838299, 35.561543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743376, 0.235088, 0.626199,
		-0.322534, -0.946153, -0.027683,
		0.585973, -0.222549, 0.779171,
		38.287540, 31.771534, 35.795296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404789, 31.613853, 35.788296>,  <37.877357, 31.927319, 35.249874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404789, 31.613853, 35.788296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.741196, 31.704069, 35.985001>,  <37.943039, 31.758198, 36.103024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.741196, 31.704069, 35.985001>,  <37.404789, 31.613853, 35.788296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741196, 31.704069, 35.985001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540932, 0.366322, 0.757100,
		-0.009389, -0.902741, 0.430082,
		0.841013, 0.225537, 0.491761,
		37.993500, 31.771730, 36.132530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210781, 31.539722, 36.475353>,  <37.404789, 31.613853, 35.788296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210781, 31.539722, 36.475353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.542034, 31.763853, 36.481377>,  <37.740788, 31.898331, 36.484993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.542034, 31.763853, 36.481377>,  <37.210781, 31.539722, 36.475353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542034, 31.763853, 36.481377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403238, 0.576869, 0.710367,
		0.389348, -0.594354, 0.703670,
		0.828135, 0.560326, 0.015063,
		37.790474, 31.931952, 36.485897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391682, 31.473015, 37.112118>,  <37.210781, 31.539722, 36.475353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391682, 31.473015, 37.112118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.585014, 31.800617, 36.988426>,  <37.701015, 31.997179, 36.914211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.585014, 31.800617, 36.988426>,  <37.391682, 31.473015, 37.112118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585014, 31.800617, 36.988426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339668, 0.500997, 0.796007,
		0.806856, -0.279700, 0.520337,
		0.483331, 0.819005, -0.309228,
		37.730015, 32.046318, 36.895657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543480, 31.734129, 37.740978>,  <37.391682, 31.473015, 37.112118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543480, 31.734129, 37.740978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.582329, 32.025246, 37.469425>,  <37.605640, 32.199917, 37.306492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.582329, 32.025246, 37.469425>,  <37.543480, 31.734129, 37.740978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582329, 32.025246, 37.469425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397131, 0.653795, 0.644079,
		0.912608, 0.207050, 0.352529,
		0.097125, 0.727792, -0.678885,
		37.611465, 32.243584, 37.265759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965496, 32.437168, 38.009647>,  <37.543480, 31.734129, 37.740978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965496, 32.437168, 38.009647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.733280, 32.547863, 37.703342>,  <37.593952, 32.614281, 37.519562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.733280, 32.547863, 37.703342>,  <37.965496, 32.437168, 38.009647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733280, 32.547863, 37.703342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368245, 0.749555, 0.550057,
		0.726201, 0.601318, -0.333239,
		-0.580540, 0.276739, -0.765760,
		37.559116, 32.630886, 37.473614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942783, 33.155762, 38.049660>,  <37.965496, 32.437168, 38.009647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942783, 33.155762, 38.049660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.640579, 33.063633, 37.804333>,  <37.459255, 33.008354, 37.657135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.640579, 33.063633, 37.804333>,  <37.942783, 33.155762, 38.049660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640579, 33.063633, 37.804333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557367, 0.717971, 0.416966,
		0.344307, 0.656864, -0.670808,
		-0.755510, -0.230322, -0.613316,
		37.413925, 32.994537, 37.620338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743965, 33.843498, 37.793953>,  <37.942783, 33.155762, 38.049660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743965, 33.843498, 37.793953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.458225, 33.565765, 37.759090>,  <37.286781, 33.399124, 37.738171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.458225, 33.565765, 37.759090>,  <37.743965, 33.843498, 37.793953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458225, 33.565765, 37.759090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657777, 0.623738, 0.422232,
		-0.238806, 0.358954, -0.902288,
		-0.714353, -0.694336, -0.087159,
		37.243919, 33.357464, 37.732941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602242, 34.536423, 38.079716>,  <37.743965, 33.843498, 37.793953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602242, 34.536423, 38.079716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.400105, 34.194077, 38.035686>,  <37.278820, 33.988670, 38.009270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.400105, 34.194077, 38.035686>,  <37.602242, 34.536423, 38.079716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400105, 34.194077, 38.035686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296062, 0.291785, -0.909510,
		0.810538, -0.427028, -0.400843,
		-0.505347, -0.855867, -0.110076,
		37.248501, 33.937317, 38.002663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453762, 34.888050, 38.715611>,  <37.602242, 34.536423, 38.079716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453762, 34.888050, 38.715611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.562820, 35.270374, 38.759602>,  <37.628254, 35.499767, 38.785995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.562820, 35.270374, 38.759602>,  <37.453762, 34.888050, 38.715611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562820, 35.270374, 38.759602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314440, 0.196556, -0.928705,
		-0.909282, 0.218623, 0.354134,
		0.272643, 0.955808, 0.109981,
		37.644615, 35.557117, 38.792595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823792, 35.360104, 38.448174>,  <37.453762, 34.888050, 38.715611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823792, 35.360104, 38.448174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.180431, 35.536594, 38.407463>,  <37.394417, 35.642490, 38.383038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.180431, 35.536594, 38.407463>,  <36.823792, 35.360104, 38.448174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180431, 35.536594, 38.407463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213107, 0.210551, -0.954072,
		-0.399533, 0.872345, 0.281757,
		0.891604, 0.441228, -0.101780,
		37.447914, 35.668964, 38.376930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670902, 35.790104, 37.972748>,  <36.823792, 35.360104, 38.448174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670902, 35.790104, 37.972748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.070202, 35.791496, 37.949139>,  <37.309784, 35.792332, 37.934975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.070202, 35.791496, 37.949139>,  <36.670902, 35.790104, 37.972748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070202, 35.791496, 37.949139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059090, 0.026593, -0.997898,
		-0.001902, 0.999640, 0.026752,
		0.998251, 0.003479, -0.059019,
		37.369678, 35.792542, 37.931435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904446, 36.390049, 37.489780>,  <36.670902, 35.790104, 37.972748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904446, 36.390049, 37.489780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.191715, 36.111828, 37.498074>,  <37.364079, 35.944897, 37.503048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.191715, 36.111828, 37.498074>,  <36.904446, 36.390049, 37.489780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191715, 36.111828, 37.498074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035629, -0.066513, -0.997149,
		0.694946, 0.715392, -0.072550,
		0.718178, -0.695550, 0.020734,
		37.407169, 35.903164, 37.504295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341473, 36.543480, 36.948181>,  <36.904446, 36.390049, 37.489780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341473, 36.543480, 36.948181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.417072, 36.154812, 37.004940>,  <37.462433, 35.921612, 37.038998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.417072, 36.154812, 37.004940>,  <37.341473, 36.543480, 36.948181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417072, 36.154812, 37.004940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011722, -0.142263, -0.989760,
		0.981906, 0.188731, -0.015498,
		0.189004, -0.971670, 0.141901,
		37.473774, 35.863312, 37.047512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910309, 36.478168, 36.493202>,  <37.341473, 36.543480, 36.948181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910309, 36.478168, 36.493202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.772614, 36.116047, 36.592739>,  <37.689999, 35.898773, 36.652462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.772614, 36.116047, 36.592739>,  <37.910309, 36.478168, 36.493202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772614, 36.116047, 36.592739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033085, -0.276576, -0.960422,
		0.938301, -0.322378, 0.125159,
		-0.344234, -0.905306, 0.248846,
		37.669342, 35.844456, 36.667393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306385, 36.009621, 36.059574>,  <37.910309, 36.478168, 36.493202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306385, 36.009621, 36.059574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.962719, 35.826088, 36.150173>,  <37.756519, 35.715969, 36.204533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.962719, 35.826088, 36.150173>,  <38.306385, 36.009621, 36.059574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962719, 35.826088, 36.150173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023573, -0.477672, -0.878222,
		0.511152, -0.749200, 0.421216,
		-0.859167, -0.458834, 0.226502,
		37.704967, 35.688438, 36.218124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362522, 35.467411, 35.641518>,  <38.306385, 36.009621, 36.059574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362522, 35.467411, 35.641518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.976322, 35.446823, 35.743629>,  <37.744602, 35.434471, 35.804897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.976322, 35.446823, 35.743629>,  <38.362522, 35.467411, 35.641518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976322, 35.446823, 35.743629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206946, -0.443395, -0.872109,
		0.158078, -0.894847, 0.417444,
		-0.965497, -0.051473, 0.255276,
		37.686672, 35.431381, 35.820213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146717, 34.764339, 35.589310>,  <38.362522, 35.467411, 35.641518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146717, 34.764339, 35.589310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.793968, 34.952824, 35.582912>,  <37.582317, 35.065914, 35.579075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.793968, 34.952824, 35.582912>,  <38.146717, 34.764339, 35.589310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793968, 34.952824, 35.582912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221834, -0.444615, -0.867818,
		-0.416036, -0.761760, 0.496625,
		-0.881875, 0.471211, -0.015992,
		37.529408, 35.094189, 35.578114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674744, 34.187782, 35.320179>,  <38.146717, 34.764339, 35.589310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674744, 34.187782, 35.320179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.494324, 34.541115, 35.269131>,  <37.386070, 34.753113, 35.238503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.494324, 34.541115, 35.269131>,  <37.674744, 34.187782, 35.320179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494324, 34.541115, 35.269131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272531, -0.272482, -0.922757,
		-0.849871, -0.381427, 0.363637,
		-0.451049, 0.883327, -0.127624,
		37.359009, 34.806114, 35.230843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058887, 34.052135, 34.990849>,  <37.674744, 34.187782, 35.320179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058887, 34.052135, 34.990849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.126366, 34.433109, 34.889332>,  <37.166851, 34.661694, 34.828423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.126366, 34.433109, 34.889332>,  <37.058887, 34.052135, 34.990849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126366, 34.433109, 34.889332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142672, -0.231172, -0.962395,
		-0.975288, 0.198559, 0.096888,
		0.168694, 0.952436, -0.253789,
		37.176975, 34.718842, 34.813194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613899, 34.168007, 34.379181>,  <37.058887, 34.052135, 34.990849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613899, 34.168007, 34.379181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.897854, 34.449478, 34.367180>,  <37.068226, 34.618362, 34.359978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.897854, 34.449478, 34.367180>,  <36.613899, 34.168007, 34.379181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897854, 34.449478, 34.367180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111861, -0.154701, -0.981608,
		-0.695378, 0.693473, -0.188534,
		0.709885, 0.703678, -0.030003,
		37.110821, 34.660583, 34.358177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417824, 34.627266, 33.816830>,  <36.613899, 34.168007, 34.379181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417824, 34.627266, 33.816830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.809784, 34.650993, 33.893009>,  <37.044960, 34.665230, 33.938717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.809784, 34.650993, 33.893009>,  <36.417824, 34.627266, 33.816830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809784, 34.650993, 33.893009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198575, -0.199732, -0.959518,
		-0.018881, 0.978053, -0.207498,
		0.979904, 0.059320, 0.190445,
		37.103756, 34.668789, 33.950142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669121, 35.069965, 33.324524>,  <36.417824, 34.627266, 33.816830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669121, 35.069965, 33.324524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.991299, 34.882324, 33.469410>,  <37.184605, 34.769741, 33.556343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.991299, 34.882324, 33.469410>,  <36.669121, 35.069965, 33.324524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991299, 34.882324, 33.469410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330366, -0.152044, -0.931526,
		0.492051, 0.869959, 0.032511,
		0.805446, -0.469099, 0.362219,
		37.232933, 34.741596, 33.578075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902405, 35.725773, 32.967648>,  <36.669121, 35.069965, 33.324524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902405, 35.725773, 32.967648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.591045, 35.907761, 32.794624>,  <36.404232, 36.016953, 32.690811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.591045, 35.907761, 32.794624>,  <36.902405, 35.725773, 32.967648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591045, 35.907761, 32.794624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429038, 0.117466, 0.895616,
		0.458289, 0.882725, 0.103764,
		-0.778394, 0.454970, -0.432556,
		36.357529, 36.044250, 32.664856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790916, 36.257969, 33.351791>,  <36.902405, 35.725773, 32.967648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790916, 36.257969, 33.351791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.443130, 36.214405, 33.159058>,  <36.234459, 36.188267, 33.043419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.443130, 36.214405, 33.159058>,  <36.790916, 36.257969, 33.351791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443130, 36.214405, 33.159058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492445, 0.114065, 0.862837,
		-0.039012, 0.987485, -0.152809,
		-0.869469, -0.108911, -0.481832,
		36.182289, 36.181732, 33.014507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340561, 36.884911, 33.616821>,  <36.790916, 36.257969, 33.351791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340561, 36.884911, 33.616821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.103699, 36.599586, 33.466866>,  <35.961582, 36.428391, 33.376892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.103699, 36.599586, 33.466866>,  <36.340561, 36.884911, 33.616821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103699, 36.599586, 33.466866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541223, 0.007374, 0.840847,
		-0.597020, 0.700810, -0.390426,
		-0.592153, -0.713310, -0.374892,
		35.926052, 36.385593, 33.354397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722523, 37.154369, 33.679443>,  <36.340561, 36.884911, 33.616821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722523, 37.154369, 33.679443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.659481, 36.761017, 33.643402>,  <35.621655, 36.525005, 33.621777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.659481, 36.761017, 33.643402>,  <35.722523, 37.154369, 33.679443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659481, 36.761017, 33.643402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617609, 0.026962, 0.786023,
		-0.770531, 0.179535, -0.611595,
		-0.157608, -0.983382, -0.090107,
		35.612198, 36.466003, 33.616371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063404, 37.128448, 33.939957>,  <35.722523, 37.154369, 33.679443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063404, 37.128448, 33.939957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.147396, 36.737415, 33.933765>,  <35.197792, 36.502796, 33.930050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.147396, 36.737415, 33.933765>,  <35.063404, 37.128448, 33.939957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147396, 36.737415, 33.933765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740241, -0.169298, 0.650678,
		-0.638712, -0.125170, -0.759196,
		0.209976, -0.977584, -0.015476,
		35.210388, 36.444141, 33.929123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395573, 36.754658, 33.926281>,  <35.063404, 37.128448, 33.939957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395573, 36.754658, 33.926281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.673965, 36.522228, 34.095020>,  <34.841003, 36.382771, 34.196266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.673965, 36.522228, 34.095020>,  <34.395573, 36.754658, 33.926281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673965, 36.522228, 34.095020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629745, -0.211678, 0.747405,
		-0.345002, -0.785839, -0.513254,
		0.695985, -0.581075, 0.421849,
		34.882763, 36.347908, 34.221577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987148, 36.161266, 34.152477>,  <34.395573, 36.754658, 33.926281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987148, 36.161266, 34.152477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.317760, 36.174397, 34.377251>,  <34.516129, 36.182274, 34.512115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.317760, 36.174397, 34.377251>,  <33.987148, 36.161266, 34.152477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317760, 36.174397, 34.377251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555646, -0.112038, 0.823836,
		0.089999, -0.993162, -0.074364,
		0.826534, 0.032825, 0.561929,
		34.565720, 36.184242, 34.545830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947231, 35.525749, 34.583588>,  <33.987148, 36.161266, 34.152477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947231, 35.525749, 34.583588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.223297, 35.758812, 34.755253>,  <34.388935, 35.898651, 34.858253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.223297, 35.758812, 34.755253>,  <33.947231, 35.525749, 34.583588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223297, 35.758812, 34.755253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473598, -0.084731, 0.876656,
		0.547155, -0.808288, 0.217468,
		0.690164, 0.582659, 0.429164,
		34.430347, 35.933609, 34.884003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188873, 35.189686, 35.189991>,  <33.947231, 35.525749, 34.583588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188873, 35.189686, 35.189991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.289997, 35.568947, 35.267040>,  <34.350670, 35.796501, 35.313271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.289997, 35.568947, 35.267040>,  <34.188873, 35.189686, 35.189991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289997, 35.568947, 35.267040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442020, -0.063908, 0.894726,
		0.860643, -0.311335, 0.402944,
		0.252808, 0.948149, 0.192618,
		34.365841, 35.853390, 35.324825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450279, 35.223751, 35.882545>,  <34.188873, 35.189686, 35.189991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450279, 35.223751, 35.882545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.319363, 35.595730, 35.815514>,  <34.240814, 35.818916, 35.775295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.319363, 35.595730, 35.815514>,  <34.450279, 35.223751, 35.882545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319363, 35.595730, 35.815514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480259, -0.010975, 0.877058,
		0.813776, 0.367536, 0.450206,
		-0.327291, 0.929945, -0.167581,
		34.221176, 35.874714, 35.765240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616760, 35.770477, 36.496613>,  <34.450279, 35.223751, 35.882545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616760, 35.770477, 36.496613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.289753, 35.834175, 36.275234>,  <34.093548, 35.872395, 36.142406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.289753, 35.834175, 36.275234>,  <34.616760, 35.770477, 36.496613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289753, 35.834175, 36.275234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566348, -0.047962, 0.822769,
		0.104473, 0.986074, 0.129396,
		-0.817518, 0.159240, -0.553451,
		34.044498, 35.881947, 36.109200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256844, 36.254223, 36.953251>,  <34.616760, 35.770477, 36.496613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256844, 36.254223, 36.953251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.032322, 36.060638, 36.684708>,  <33.897610, 35.944489, 36.523582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.032322, 36.060638, 36.684708>,  <34.256844, 36.254223, 36.953251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032322, 36.060638, 36.684708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724113, -0.105612, 0.681548,
		-0.400745, 0.868693, -0.291162,
		-0.561306, -0.483961, -0.671355,
		33.863930, 35.915451, 36.483299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.548271, 35.822407, 29.427488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186840, 35.668736, 29.351646>,  <37.969982, 35.576534, 29.306141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186840, 35.668736, 29.351646>,  <38.548271, 35.822407, 29.427488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186840, 35.668736, 29.351646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326866, 0.332108, 0.884795,
		-0.276947, 0.861460, -0.425660,
		-0.903581, -0.384175, -0.189606,
		37.915764, 35.553482, 29.294765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020844, 36.386230, 29.484184>,  <38.548271, 35.822407, 29.427488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020844, 36.386230, 29.484184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810665, 36.047592, 29.518080>,  <37.684559, 35.844410, 29.538418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810665, 36.047592, 29.518080>,  <38.020844, 36.386230, 29.484184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810665, 36.047592, 29.518080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427650, 0.348889, 0.833902,
		-0.735545, 0.401929, -0.545369,
		-0.525443, -0.846599, 0.084738,
		37.653034, 35.793613, 29.543501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407467, 36.549614, 29.721272>,  <38.020844, 36.386230, 29.484184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407467, 36.549614, 29.721272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371758, 36.164055, 29.821613>,  <37.350330, 35.932720, 29.881819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371758, 36.164055, 29.821613>,  <37.407467, 36.549614, 29.721272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371758, 36.164055, 29.821613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605047, 0.252548, 0.755075,
		-0.791169, -0.084369, -0.605751,
		-0.089276, -0.963899, 0.250855,
		37.344975, 35.874886, 29.896870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659695, 36.444729, 29.787439>,  <37.407467, 36.549614, 29.721272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659695, 36.444729, 29.787439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862106, 36.164806, 29.989117>,  <36.983551, 35.996853, 30.110123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862106, 36.164806, 29.989117>,  <36.659695, 36.444729, 29.787439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862106, 36.164806, 29.989117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643713, 0.082665, 0.760789,
		-0.574084, -0.709534, -0.408643,
		0.506025, -0.699806, 0.504193,
		37.013912, 35.954865, 30.140375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166977, 36.022240, 30.162008>,  <36.659695, 36.444729, 29.787439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166977, 36.022240, 30.162008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517403, 35.974678, 30.348930>,  <36.727657, 35.946140, 30.461082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517403, 35.974678, 30.348930>,  <36.166977, 36.022240, 30.162008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517403, 35.974678, 30.348930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480782, -0.141273, 0.865385,
		-0.036884, -0.982803, -0.180933,
		0.876064, -0.118908, 0.467303,
		36.780224, 35.939007, 30.489120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968731, 35.635269, 30.723291>,  <36.166977, 36.022240, 30.162008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968731, 35.635269, 30.723291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325329, 35.760365, 30.854401>,  <36.539288, 35.835423, 30.933067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325329, 35.760365, 30.854401>,  <35.968731, 35.635269, 30.723291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325329, 35.760365, 30.854401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328787, -0.051120, 0.943020,
		0.311678, -0.948461, 0.057253,
		0.891491, 0.312742, 0.327775,
		36.592777, 35.854187, 30.952734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131306, 35.216873, 31.216572>,  <35.968731, 35.635269, 30.723291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131306, 35.216873, 31.216572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353176, 35.535141, 31.313936>,  <36.486298, 35.726101, 31.372355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353176, 35.535141, 31.313936>,  <36.131306, 35.216873, 31.216572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353176, 35.535141, 31.313936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298447, -0.082823, 0.950826,
		0.776700, -0.600046, 0.191525,
		0.554676, 0.795667, 0.243410,
		36.519581, 35.773842, 31.386959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330658, 35.075554, 31.881922>,  <36.131306, 35.216873, 31.216572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330658, 35.075554, 31.881922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418491, 35.464748, 31.853422>,  <36.471191, 35.698265, 31.836323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418491, 35.464748, 31.853422>,  <36.330658, 35.075554, 31.881922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418491, 35.464748, 31.853422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337776, 0.144335, 0.930094,
		0.915254, -0.180166, 0.360346,
		0.219582, 0.972989, -0.071247,
		36.484367, 35.756645, 31.832048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600880, 35.198860, 32.479961>,  <36.330658, 35.075554, 31.881922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600880, 35.198860, 32.479961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517235, 35.567852, 32.350155>,  <36.467049, 35.789246, 32.272270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517235, 35.567852, 32.350155>,  <36.600880, 35.198860, 32.479961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517235, 35.567852, 32.350155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055290, 0.320172, 0.945745,
		0.976328, 0.215708, -0.015948,
		-0.209110, 0.922475, -0.324519,
		36.454502, 35.844593, 32.252800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229343, 35.120602, 32.716431>,  <36.600880, 35.198860, 32.479961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229343, 35.120602, 32.716431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402565, 34.857708, 32.963173>,  <37.506496, 34.699974, 33.111217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402565, 34.857708, 32.963173>,  <37.229343, 35.120602, 32.716431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402565, 34.857708, 32.963173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391657, -0.479176, -0.785491,
		0.811832, 0.581755, 0.049901,
		0.433051, -0.657231, 0.616858,
		37.532482, 34.660538, 33.148232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888645, 35.135700, 32.572762>,  <37.229343, 35.120602, 32.716431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888645, 35.135700, 32.572762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832645, 34.779564, 32.746052>,  <37.799046, 34.565880, 32.850025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832645, 34.779564, 32.746052>,  <37.888645, 35.135700, 32.572762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832645, 34.779564, 32.746052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461601, -0.445769, -0.766951,
		0.875970, 0.092604, 0.473392,
		-0.140001, -0.890345, 0.433227,
		37.790646, 34.512459, 32.876019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575287, 34.794041, 32.547058>,  <37.888645, 35.135700, 32.572762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575287, 34.794041, 32.547058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278473, 34.527187, 32.573330>,  <38.100384, 34.367077, 32.589092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278473, 34.527187, 32.573330>,  <38.575287, 34.794041, 32.547058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278473, 34.527187, 32.573330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459453, -0.577484, -0.674845,
		0.488141, -0.470582, 0.735031,
		-0.742039, -0.667132, 0.065683,
		38.055862, 34.327049, 32.593037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954636, 34.229778, 32.587593>,  <38.575287, 34.794041, 32.547058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954636, 34.229778, 32.587593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587536, 34.124077, 32.468998>,  <38.367275, 34.060658, 32.397842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587536, 34.124077, 32.468998>,  <38.954636, 34.229778, 32.587593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587536, 34.124077, 32.468998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394249, -0.516022, -0.760453,
		0.047956, -0.814797, 0.577760,
		-0.917751, -0.264250, -0.296487,
		38.312210, 34.044804, 32.380051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068878, 33.635296, 32.330017>,  <38.954636, 34.229778, 32.587593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068878, 33.635296, 32.330017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715080, 33.741650, 32.176666>,  <38.502804, 33.805462, 32.084656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715080, 33.741650, 32.176666>,  <39.068878, 33.635296, 32.330017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715080, 33.741650, 32.176666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166434, -0.587852, -0.791663,
		-0.435857, -0.764028, 0.475700,
		-0.884493, 0.265879, -0.383380,
		38.449734, 33.821415, 32.061653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770378, 32.973736, 32.119789>,  <39.068878, 33.635296, 32.330017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770378, 32.973736, 32.119789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596230, 33.244839, 31.882776>,  <38.491741, 33.407501, 31.740568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596230, 33.244839, 31.882776>,  <38.770378, 32.973736, 32.119789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596230, 33.244839, 31.882776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110175, -0.613128, -0.782263,
		-0.893483, -0.405860, 0.192268,
		-0.435374, 0.677756, -0.592535,
		38.465618, 33.448166, 31.705015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299831, 32.561356, 31.592524>,  <38.770378, 32.973736, 32.119789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299831, 32.561356, 31.592524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354439, 32.930313, 31.447998>,  <38.387203, 33.151688, 31.361282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354439, 32.930313, 31.447998>,  <38.299831, 32.561356, 31.592524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354439, 32.930313, 31.447998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168190, -0.381015, -0.909143,
		-0.976256, 0.063342, -0.207152,
		0.136515, 0.922397, -0.361315,
		38.395393, 33.207031, 31.339603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895931, 32.543678, 31.002903>,  <38.299831, 32.561356, 31.592524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895931, 32.543678, 31.002903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154922, 32.845009, 30.956810>,  <38.310318, 33.025806, 30.929153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154922, 32.845009, 30.956810>,  <37.895931, 32.543678, 31.002903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154922, 32.845009, 30.956810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314577, -0.401922, -0.859942,
		-0.694128, 0.520543, -0.497213,
		0.647478, 0.753322, -0.115234,
		38.349167, 33.071007, 30.922239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911617, 32.648811, 30.290571>,  <37.895931, 32.543678, 31.002903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911617, 32.648811, 30.290571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232826, 32.874325, 30.367832>,  <38.425552, 33.009632, 30.414188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232826, 32.874325, 30.367832>,  <37.911617, 32.648811, 30.290571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232826, 32.874325, 30.367832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459551, -0.379439, -0.803019,
		-0.379439, 0.733603, -0.563784,
		0.803019, 0.563784, 0.193155,
		38.473732, 33.043461, 30.425779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226585, 33.018990, 29.632500>,  <37.911617, 32.648811, 30.290571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226585, 33.018990, 29.632500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532017, 33.020321, 29.890783>,  <38.715275, 33.021122, 30.045753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532017, 33.020321, 29.890783>,  <38.226585, 33.018990, 29.632500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532017, 33.020321, 29.890783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628573, -0.232735, -0.742112,
		0.147807, 0.972534, -0.179804,
		0.763577, 0.003330, 0.645709,
		38.761089, 33.021320, 30.084496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709282, 33.335419, 29.255421>,  <38.226585, 33.018990, 29.632500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709282, 33.335419, 29.255421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888729, 33.122406, 29.542517>,  <38.996399, 32.994598, 29.714775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888729, 33.122406, 29.542517>,  <38.709282, 33.335419, 29.255421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888729, 33.122406, 29.542517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774574, -0.168953, -0.609499,
		0.445839, 0.829379, 0.336686,
		0.448622, -0.532527, 0.717742,
		39.023315, 32.962646, 29.757839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391239, 33.531342, 29.289831>,  <38.709282, 33.335419, 29.255421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391239, 33.531342, 29.289831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387547, 33.162437, 29.444420>,  <39.385330, 32.941097, 29.537172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387547, 33.162437, 29.444420>,  <39.391239, 33.531342, 29.289831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387547, 33.162437, 29.444420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640694, -0.302191, -0.705828,
		0.767741, 0.241092, 0.593674,
		-0.009233, -0.922256, 0.386470,
		39.384777, 32.885761, 29.560360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025436, 33.330185, 29.033918>,  <39.391239, 33.531342, 29.289831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025436, 33.330185, 29.033918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836296, 32.997639, 29.150703>,  <39.722813, 32.798111, 29.220776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836296, 32.997639, 29.150703>,  <40.025436, 33.330185, 29.033918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836296, 32.997639, 29.150703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586805, -0.544289, -0.599508,
		0.657325, -0.112149, 0.745216,
		-0.472847, -0.831368, 0.291965,
		39.694443, 32.748230, 29.238293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571476, 32.826836, 28.995216>,  <40.025436, 33.330185, 29.033918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571476, 32.826836, 28.995216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221310, 32.634583, 28.974653>,  <40.011211, 32.519230, 28.962315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221310, 32.634583, 28.974653>,  <40.571476, 32.826836, 28.995216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221310, 32.634583, 28.974653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371640, -0.601241, -0.707384,
		0.309081, -0.638361, 0.704957,
		-0.875416, -0.480629, -0.051408,
		39.958683, 32.490395, 28.959230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.328289, 27.536070, 28.567640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.606049, 27.823488, 28.583141>,  <33.772705, 27.995939, 28.592442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.606049, 27.823488, 28.583141>,  <33.328289, 27.536070, 28.567640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606049, 27.823488, 28.583141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379713, 0.320145, 0.867943,
		0.611249, -0.617415, 0.495150,
		0.694401, 0.718544, 0.038752,
		33.814369, 28.039051, 28.594767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672886, 27.430140, 29.232141>,  <33.328289, 27.536070, 28.567640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672886, 27.430140, 29.232141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.725006, 27.807602, 29.110466>,  <33.756279, 28.034081, 29.037460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.725006, 27.807602, 29.110466>,  <33.672886, 27.430140, 29.232141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725006, 27.807602, 29.110466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286518, 0.329555, 0.899612,
		0.949173, -0.030066, 0.313317,
		0.130302, 0.943658, -0.304190,
		33.764095, 28.090700, 29.019209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905468, 27.771824, 29.816353>,  <33.672886, 27.430140, 29.232141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905468, 27.771824, 29.816353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.880707, 28.081553, 29.564449>,  <33.865849, 28.267389, 29.413307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.880707, 28.081553, 29.564449>,  <33.905468, 27.771824, 29.816353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880707, 28.081553, 29.564449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167872, 0.613902, 0.771326,
		0.983863, 0.153466, 0.091985,
		-0.061902, 0.774321, -0.629758,
		33.862137, 28.313848, 29.375523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384529, 28.256369, 29.923122>,  <33.905468, 27.771824, 29.816353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384529, 28.256369, 29.923122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.090420, 28.459373, 29.743433>,  <33.913956, 28.581177, 29.635618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.090420, 28.459373, 29.743433>,  <34.384529, 28.256369, 29.923122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090420, 28.459373, 29.743433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213750, 0.455338, 0.864279,
		0.643182, 0.731503, -0.226317,
		-0.735274, 0.507513, -0.449224,
		33.869839, 28.611628, 29.608665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394855, 28.943823, 30.152163>,  <34.384529, 28.256369, 29.923122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394855, 28.943823, 30.152163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.011040, 28.912077, 30.044100>,  <33.780750, 28.893030, 29.979261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.011040, 28.912077, 30.044100>,  <34.394855, 28.943823, 30.152163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011040, 28.912077, 30.044100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277209, 0.434568, 0.856916,
		0.049393, 0.897135, -0.438986,
		-0.959539, -0.079365, -0.270159,
		33.723179, 28.888268, 29.963053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100452, 29.622334, 29.944666>,  <34.394855, 28.943823, 30.152163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100452, 29.622334, 29.944666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.759750, 29.433773, 30.036142>,  <33.555328, 29.320637, 30.091028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.759750, 29.433773, 30.036142>,  <34.100452, 29.622334, 29.944666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759750, 29.433773, 30.036142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255815, 0.755080, 0.603666,
		-0.457249, 0.455671, -0.763732,
		-0.851752, -0.471400, 0.228693,
		33.504223, 29.292353, 30.104750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682415, 30.031879, 30.209967>,  <34.100452, 29.622334, 29.944666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682415, 30.031879, 30.209967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.483364, 29.720966, 30.363956>,  <33.363934, 29.534418, 30.456350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.483364, 29.720966, 30.363956>,  <33.682415, 30.031879, 30.209967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483364, 29.720966, 30.363956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420087, 0.604270, 0.677041,
		-0.758879, 0.175191, -0.627225,
		-0.497625, -0.777281, 0.384972,
		33.334076, 29.487782, 30.479448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072697, 30.280020, 30.317987>,  <33.682415, 30.031879, 30.209967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072697, 30.280020, 30.317987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.095604, 29.972998, 30.573355>,  <33.109348, 29.788784, 30.726576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.095604, 29.972998, 30.573355>,  <33.072697, 30.280020, 30.317987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095604, 29.972998, 30.573355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314333, 0.593084, 0.741246,
		-0.947584, -0.243127, -0.207302,
		0.057269, -0.767555, 0.638420,
		33.112785, 29.742731, 30.764881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702847, 30.549749, 30.825718>,  <33.072697, 30.280020, 30.317987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702847, 30.549749, 30.825718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.877491, 30.220369, 30.970659>,  <32.982277, 30.022741, 31.057623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.877491, 30.220369, 30.970659>,  <32.702847, 30.549749, 30.825718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877491, 30.220369, 30.970659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297868, 0.247738, 0.921900,
		-0.848907, -0.510448, -0.137114,
		0.436614, -0.823450, 0.362352,
		33.008476, 29.973335, 31.079365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141403, 30.077347, 31.142990>,  <32.702847, 30.549749, 30.825718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141403, 30.077347, 31.142990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.499313, 30.019337, 31.311913>,  <32.714062, 29.984531, 31.413265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.499313, 30.019337, 31.311913>,  <32.141403, 30.077347, 31.142990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499313, 30.019337, 31.311913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346362, 0.371452, 0.861427,
		-0.281794, -0.917056, 0.282136,
		0.894777, -0.145024, 0.422306,
		32.767746, 29.975830, 31.438604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993448, 29.895613, 31.826645>,  <32.141403, 30.077347, 31.142990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993448, 29.895613, 31.826645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.383255, 29.982716, 31.848173>,  <32.617138, 30.034977, 31.861090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.383255, 29.982716, 31.848173>,  <31.993448, 29.895613, 31.826645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383255, 29.982716, 31.848173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137448, 0.390074, 0.910467,
		0.177267, -0.894664, 0.410064,
		0.974518, 0.217759, 0.053823,
		32.675610, 30.048044, 31.864321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236313, 29.701414, 32.443382>,  <31.993448, 29.895613, 31.826645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236313, 29.701414, 32.443382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.532333, 29.953079, 32.348316>,  <32.709946, 30.104078, 32.291279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.532333, 29.953079, 32.348316>,  <32.236313, 29.701414, 32.443382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532333, 29.953079, 32.348316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099566, 0.246988, 0.963890,
		0.665143, -0.736988, 0.120140,
		0.740049, 0.629163, -0.237661,
		32.754349, 30.141829, 32.277020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927242, 29.534330, 32.905399>,  <32.236313, 29.701414, 32.443382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927242, 29.534330, 32.905399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.945671, 29.918619, 32.795933>,  <32.956730, 30.149193, 32.730251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.945671, 29.918619, 32.795933>,  <32.927242, 29.534330, 32.905399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945671, 29.918619, 32.795933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141074, 0.264956, 0.953885,
		0.988926, -0.082554, -0.123326,
		0.046071, 0.960720, -0.273668,
		32.959492, 30.206835, 32.713833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441517, 29.830114, 33.347523>,  <32.927242, 29.534330, 32.905399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441517, 29.830114, 33.347523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.225655, 30.137194, 33.209297>,  <33.096138, 30.321442, 33.126362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.225655, 30.137194, 33.209297>,  <33.441517, 29.830114, 33.347523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225655, 30.137194, 33.209297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057883, 0.375663, 0.924947,
		0.839896, 0.519151, -0.158291,
		-0.539651, 0.767697, -0.345568,
		33.063759, 30.367502, 33.105625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965069, 30.385109, 33.163296>,  <33.441517, 29.830114, 33.347523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965069, 30.385109, 33.163296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.353031, 30.346010, 33.252495>,  <34.585808, 30.322552, 33.306015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.353031, 30.346010, 33.252495>,  <33.965069, 30.385109, 33.163296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353031, 30.346010, 33.252495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199592, -0.205353, -0.958120,
		0.139446, 0.973795, -0.179664,
		0.969906, -0.097746, 0.222997,
		34.644005, 30.316687, 33.319393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259567, 30.607941, 32.568233>,  <33.965069, 30.385109, 33.163296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259567, 30.607941, 32.568233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.568707, 30.461025, 32.775234>,  <34.754189, 30.372875, 32.899433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.568707, 30.461025, 32.775234>,  <34.259567, 30.607941, 32.568233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568707, 30.461025, 32.775234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484758, -0.184581, -0.854950,
		0.409536, 0.911607, 0.035394,
		0.772845, -0.367291, 0.517502,
		34.800560, 30.350838, 32.930485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874954, 30.845171, 32.127579>,  <34.259567, 30.607941, 32.568233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874954, 30.845171, 32.127579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.989735, 30.534864, 32.352379>,  <35.058601, 30.348680, 32.487259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.989735, 30.534864, 32.352379>,  <34.874954, 30.845171, 32.127579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989735, 30.534864, 32.352379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469517, -0.397480, -0.788393,
		0.834993, 0.490100, 0.250177,
		0.286951, -0.775765, 0.562004,
		35.075821, 30.302135, 32.520981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578613, 30.705362, 31.908072>,  <34.874954, 30.845171, 32.127579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578613, 30.705362, 31.908072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.421749, 30.376696, 32.073517>,  <35.327629, 30.179497, 32.172783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.421749, 30.376696, 32.073517>,  <35.578613, 30.705362, 31.908072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421749, 30.376696, 32.073517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464999, -0.565021, -0.681563,
		0.793717, -0.074951, 0.603652,
		-0.392159, -0.821666, 0.413615,
		35.304100, 30.130196, 32.197601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212616, 30.128342, 31.953369>,  <35.578613, 30.705362, 31.908072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212616, 30.128342, 31.953369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.877670, 29.910290, 31.969601>,  <35.676701, 29.779459, 31.979340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.877670, 29.910290, 31.969601>,  <36.212616, 30.128342, 31.953369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877670, 29.910290, 31.969601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225666, -0.412341, -0.882638,
		0.497886, -0.729935, 0.468299,
		-0.837368, -0.545132, 0.040577,
		35.626461, 29.746750, 31.981773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443089, 29.497324, 31.815874>,  <36.212616, 30.128342, 31.953369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443089, 29.497324, 31.815874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.054974, 29.436855, 31.740305>,  <35.822105, 29.400574, 31.694963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.054974, 29.436855, 31.740305>,  <36.443089, 29.497324, 31.815874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054974, 29.436855, 31.740305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228579, -0.316622, -0.920599,
		0.079354, -0.936428, 0.341769,
		-0.970286, -0.151174, -0.188922,
		35.763889, 29.391502, 31.683628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358418, 28.731720, 31.678778>,  <36.443089, 29.497324, 31.815874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358418, 28.731720, 31.678778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.071022, 28.964338, 31.526159>,  <35.898582, 29.103909, 31.434587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.071022, 28.964338, 31.526159>,  <36.358418, 28.731720, 31.678778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071022, 28.964338, 31.526159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315337, -0.216589, -0.923933,
		-0.619947, -0.784152, -0.027765,
		-0.718491, 0.581545, -0.381545,
		35.855476, 29.138802, 31.411695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221455, 28.366428, 31.090601>,  <36.358418, 28.731720, 31.678778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221455, 28.366428, 31.090601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.084187, 28.736822, 31.027632>,  <36.001823, 28.959059, 30.989849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.084187, 28.736822, 31.027632>,  <36.221455, 28.366428, 31.090601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084187, 28.736822, 31.027632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235732, -0.077330, -0.968737,
		-0.909210, -0.369554, -0.191747,
		-0.343173, 0.925986, -0.157425,
		35.981236, 29.014618, 30.980404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854969, 28.254128, 30.587292>,  <36.221455, 28.366428, 31.090601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854969, 28.254128, 30.587292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.962357, 28.639431, 30.584347>,  <36.026791, 28.870613, 30.582579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.962357, 28.639431, 30.584347>,  <35.854969, 28.254128, 30.587292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962357, 28.639431, 30.584347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365911, -0.109050, -0.924239,
		-0.891085, 0.245438, -0.381744,
		0.268472, 0.963259, -0.007364,
		36.042896, 28.928410, 30.582138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685081, 28.557371, 30.026354>,  <35.854969, 28.254128, 30.587292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685081, 28.557371, 30.026354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.008324, 28.750080, 30.161919>,  <36.202271, 28.865705, 30.243258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.008324, 28.750080, 30.161919>,  <35.685081, 28.557371, 30.026354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008324, 28.750080, 30.161919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467653, -0.174916, -0.866432,
		-0.358142, 0.858662, -0.366653,
		0.808105, 0.481773, 0.338911,
		36.250755, 28.894611, 30.263592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924133, 29.059793, 29.586348>,  <35.685081, 28.557371, 30.026354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924133, 29.059793, 29.586348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.257439, 28.962515, 29.784954>,  <36.457420, 28.904148, 29.904118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.257439, 28.962515, 29.784954>,  <35.924133, 29.059793, 29.586348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257439, 28.962515, 29.784954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497559, -0.061701, -0.865233,
		0.241057, 0.968013, 0.069591,
		0.833262, -0.243196, 0.496517,
		36.507416, 28.889557, 29.933908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438713, 29.378162, 29.226086>,  <35.924133, 29.059793, 29.586348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438713, 29.378162, 29.226086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.618877, 29.095299, 29.444099>,  <36.726974, 28.925581, 29.574907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.618877, 29.095299, 29.444099>,  <36.438713, 29.378162, 29.226086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618877, 29.095299, 29.444099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506763, -0.300110, -0.808162,
		0.735068, 0.640204, 0.223190,
		0.450407, -0.707158, 0.545033,
		36.753998, 28.883152, 29.607609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220779, 29.444683, 29.102240>,  <36.438713, 29.378162, 29.226086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220779, 29.444683, 29.102240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.134800, 29.066813, 29.201344>,  <37.083214, 28.840090, 29.260807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.134800, 29.066813, 29.201344>,  <37.220779, 29.444683, 29.102240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134800, 29.066813, 29.201344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427880, -0.319138, -0.845618,
		0.877906, -0.075748, 0.472804,
		-0.214944, -0.944676, 0.247762,
		37.070316, 28.783409, 29.275673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837006, 29.059557, 28.999559>,  <37.220779, 29.444683, 29.102240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837006, 29.059557, 28.999559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.534863, 28.798506, 28.975845>,  <37.353577, 28.641874, 28.961617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.534863, 28.798506, 28.975845>,  <37.837006, 29.059557, 28.999559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534863, 28.798506, 28.975845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308404, -0.274200, -0.910880,
		0.578210, -0.706321, 0.408391,
		-0.755354, -0.652629, -0.059287,
		37.308258, 28.602716, 28.958059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200108, 28.342201, 29.186737>,  <37.837006, 29.059557, 28.999559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200108, 28.342201, 29.186737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.577995, 28.282467, 29.303490>,  <38.804729, 28.246626, 29.373541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.577995, 28.282467, 29.303490>,  <38.200108, 28.342201, 29.186737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577995, 28.282467, 29.303490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228246, 0.339542, 0.912477,
		-0.235374, -0.928660, 0.286688,
		0.944724, -0.149338, 0.291882,
		38.861412, 28.237665, 29.391054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198063, 27.966993, 29.841946>,  <38.200108, 28.342201, 29.186737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198063, 27.966993, 29.841946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.557793, 28.141268, 29.827003>,  <38.773628, 28.245832, 29.818037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.557793, 28.141268, 29.827003>,  <38.198063, 27.966993, 29.841946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557793, 28.141268, 29.827003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094318, 0.276684, 0.956321,
		0.426995, -0.856517, 0.289921,
		0.899322, 0.435689, -0.037358,
		38.827591, 28.271975, 29.815796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672905, 27.634075, 30.328121>,  <38.198063, 27.966993, 29.841946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672905, 27.634075, 30.328121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.819122, 27.999271, 30.255650>,  <38.906853, 28.218390, 30.212166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.819122, 27.999271, 30.255650>,  <38.672905, 27.634075, 30.328121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819122, 27.999271, 30.255650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141245, 0.137986, 0.980311,
		0.920015, -0.383937, -0.078515,
		0.365544, 0.912991, -0.181179,
		38.928787, 28.273169, 30.201296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224155, 27.677139, 30.886879>,  <38.672905, 27.634075, 30.328121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224155, 27.677139, 30.886879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.118290, 28.047647, 30.779562>,  <39.054771, 28.269953, 30.715172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.118290, 28.047647, 30.779562>,  <39.224155, 27.677139, 30.886879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118290, 28.047647, 30.779562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050306, 0.291096, 0.955370,
		0.963029, 0.239351, -0.123638,
		-0.264660, 0.926269, -0.268293,
		39.038891, 28.325527, 30.699074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495857, 28.029491, 31.395126>,  <39.224155, 27.677139, 30.886879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495857, 28.029491, 31.395126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.255219, 28.305204, 31.233646>,  <39.110836, 28.470633, 31.136759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.255219, 28.305204, 31.233646>,  <39.495857, 28.029491, 31.395126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255219, 28.305204, 31.233646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197104, 0.361664, 0.911235,
		0.774103, 0.627763, -0.081714,
		-0.601593, 0.689284, -0.403700,
		39.074741, 28.511990, 31.112537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705017, 28.666359, 31.755194>,  <39.495857, 28.029491, 31.395126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705017, 28.666359, 31.755194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.360737, 28.789774, 31.593206>,  <39.154167, 28.863823, 31.496014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.360737, 28.789774, 31.593206>,  <39.705017, 28.666359, 31.755194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360737, 28.789774, 31.593206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232970, 0.468583, 0.852147,
		0.452678, 0.827790, -0.331430,
		-0.860702, 0.308535, -0.404967,
		39.102528, 28.882334, 31.471716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624260, 29.466146, 31.845112>,  <39.705017, 28.666359, 31.755194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624260, 29.466146, 31.845112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.266479, 29.296545, 31.788292>,  <39.051811, 29.194784, 31.754200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.266479, 29.296545, 31.788292>,  <39.624260, 29.466146, 31.845112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266479, 29.296545, 31.788292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355681, 0.482073, 0.800685,
		-0.271014, 0.766699, -0.582000,
		-0.894451, -0.424003, -0.142052,
		38.998146, 29.169344, 31.745676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117897, 30.023355, 31.871511>,  <39.624260, 29.466146, 31.845112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117897, 30.023355, 31.871511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.927864, 29.677736, 31.938110>,  <38.813843, 29.470366, 31.978069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.927864, 29.677736, 31.938110>,  <39.117897, 30.023355, 31.871511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927864, 29.677736, 31.938110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415934, 0.387246, 0.822824,
		-0.775433, 0.321657, -0.543360,
		-0.475081, -0.864047, 0.166495,
		38.785339, 29.418522, 31.988058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376259, 30.181105, 32.002903>,  <39.117897, 30.023355, 31.871511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376259, 30.181105, 32.002903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.474331, 29.838526, 32.184624>,  <38.533176, 29.632978, 32.293655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.474331, 29.838526, 32.184624>,  <38.376259, 30.181105, 32.002903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474331, 29.838526, 32.184624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359964, 0.354680, 0.862918,
		-0.900172, -0.375105, -0.221327,
		0.245185, -0.856445, 0.454298,
		38.547886, 29.581593, 32.320911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850430, 30.128130, 32.425636>,  <38.376259, 30.181105, 32.002903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850430, 30.128130, 32.425636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.119968, 29.866140, 32.562420>,  <38.281693, 29.708946, 32.644489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.119968, 29.866140, 32.562420>,  <37.850430, 30.128130, 32.425636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119968, 29.866140, 32.562420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002788, 0.460558, 0.887625,
		-0.738866, -0.599077, 0.308519,
		0.673847, -0.654976, 0.341961,
		38.322121, 29.669647, 32.665009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604168, 29.940323, 33.072624>,  <37.850430, 30.128130, 32.425636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604168, 29.940323, 33.072624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.976955, 29.798748, 33.104027>,  <38.200626, 29.713804, 33.122868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.976955, 29.798748, 33.104027>,  <37.604168, 29.940323, 33.072624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976955, 29.798748, 33.104027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059349, 0.362573, 0.930063,
		-0.357647, -0.862131, 0.358913,
		0.931969, -0.353936, 0.078506,
		38.256546, 29.692568, 33.127579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618717, 29.410118, 33.628349>,  <37.604168, 29.940323, 33.072624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618717, 29.410118, 33.628349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.966118, 29.593367, 33.552631>,  <38.174557, 29.703316, 33.507202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.966118, 29.593367, 33.552631>,  <37.618717, 29.410118, 33.628349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966118, 29.593367, 33.552631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038881, 0.317738, 0.947381,
		0.494160, -0.830161, 0.258144,
		0.868501, 0.458121, -0.189291,
		38.226669, 29.730803, 33.495846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071239, 29.315109, 34.234402>,  <37.618717, 29.410118, 33.628349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071239, 29.315109, 34.234402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.234612, 29.623089, 34.038292>,  <38.332634, 29.807877, 33.920628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.234612, 29.623089, 34.038292>,  <38.071239, 29.315109, 34.234402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234612, 29.623089, 34.038292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194408, 0.451419, 0.870877,
		0.891849, -0.451002, 0.034687,
		0.408425, 0.769947, -0.490275,
		38.357140, 29.854073, 33.891209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673195, 29.419821, 34.533051>,  <38.071239, 29.315109, 34.234402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673195, 29.419821, 34.533051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.586536, 29.762749, 34.346260>,  <38.534542, 29.968506, 34.234184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.586536, 29.762749, 34.346260>,  <38.673195, 29.419821, 34.533051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586536, 29.762749, 34.346260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128742, 0.499249, 0.856841,
		0.967724, 0.125513, -0.218533,
		-0.216647, 0.857320, -0.466977,
		38.521542, 30.019945, 34.206165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.831829, 31.971281, 29.094618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.470261, 31.994951, 28.925184>,  <40.253319, 32.009151, 28.823524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.470261, 31.994951, 28.925184>,  <40.831829, 31.971281, 29.094618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470261, 31.994951, 28.925184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199981, -0.816975, -0.540888,
		-0.378064, -0.573629, 0.726648,
		-0.903922, 0.059174, -0.423584,
		40.199085, 32.012703, 28.798109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515072, 31.430477, 29.122288>,  <40.831829, 31.971281, 29.094618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515072, 31.430477, 29.122288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.350891, 31.587687, 28.793154>,  <40.252384, 31.682013, 28.595673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.350891, 31.587687, 28.793154>,  <40.515072, 31.430477, 29.122288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350891, 31.587687, 28.793154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229779, -0.828655, -0.510423,
		-0.882458, -0.398574, 0.249813,
		-0.410450, 0.393025, -0.822838,
		40.227757, 31.705593, 28.546303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409725, 30.795437, 28.761606>,  <40.515072, 31.430477, 29.122288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409725, 30.795437, 28.761606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.375229, 31.072563, 28.475231>,  <40.354530, 31.238840, 28.303406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.375229, 31.072563, 28.475231>,  <40.409725, 30.795437, 28.761606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375229, 31.072563, 28.475231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033595, -0.716184, -0.697102,
		-0.995707, -0.084173, 0.038492,
		-0.086245, 0.692817, -0.715938,
		40.349354, 31.280409, 28.260450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926811, 30.526749, 28.213358>,  <40.409725, 30.795437, 28.761606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926811, 30.526749, 28.213358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.091404, 30.840523, 28.027739>,  <40.190159, 31.028788, 27.916367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.091404, 30.840523, 28.027739>,  <39.926811, 30.526749, 28.213358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091404, 30.840523, 28.027739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084705, -0.539860, -0.837482,
		-0.907472, 0.305303, -0.288589,
		0.411484, 0.784437, -0.464047,
		40.214848, 31.075853, 27.888525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550476, 30.774668, 27.543596>,  <39.926811, 30.526749, 28.213358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550476, 30.774668, 27.543596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.936520, 30.871803, 27.504421>,  <40.168144, 30.930084, 27.480917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.936520, 30.871803, 27.504421>,  <39.550476, 30.774668, 27.543596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936520, 30.871803, 27.504421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057767, -0.562269, -0.824934,
		-0.255394, 0.790494, -0.556680,
		0.965110, 0.242841, -0.097936,
		40.226051, 30.944656, 27.475040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654861, 30.957132, 26.878956>,  <39.550476, 30.774668, 27.543596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654861, 30.957132, 26.878956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.024879, 30.868097, 27.002081>,  <40.246891, 30.814676, 27.075956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.024879, 30.868097, 27.002081>,  <39.654861, 30.957132, 26.878956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024879, 30.868097, 27.002081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169458, -0.483424, -0.858828,
		0.339968, 0.846615, -0.409469,
		0.925044, -0.222587, 0.307814,
		40.302391, 30.801321, 27.094425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975559, 30.834579, 26.266731>,  <39.654861, 30.957132, 26.878956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975559, 30.834579, 26.266731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.240883, 30.684006, 26.525442>,  <40.400078, 30.593660, 26.680670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.240883, 30.684006, 26.525442>,  <39.975559, 30.834579, 26.266731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240883, 30.684006, 26.525442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497594, -0.423682, -0.756897,
		0.558952, 0.823887, -0.093718,
		0.663305, -0.376435, 0.646779,
		40.439873, 30.571075, 26.719477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686798, 30.974943, 26.001139>,  <39.975559, 30.834579, 26.266731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686798, 30.974943, 26.001139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.695091, 30.667206, 26.256538>,  <40.700066, 30.482563, 26.409779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.695091, 30.667206, 26.256538>,  <40.686798, 30.974943, 26.001139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695091, 30.667206, 26.256538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497749, -0.545920, -0.673957,
		0.867073, 0.331786, 0.371621,
		0.020734, -0.769344, 0.638498,
		40.701313, 30.436403, 26.448088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376774, 30.728178, 26.072912>,  <40.686798, 30.974943, 26.001139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376774, 30.728178, 26.072912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.143028, 30.416334, 26.163006>,  <41.002781, 30.229229, 26.217062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.143028, 30.416334, 26.163006>,  <41.376774, 30.728178, 26.072912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143028, 30.416334, 26.163006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568651, -0.591413, -0.571722,
		0.578927, -0.206013, 0.788925,
		-0.584362, -0.779609, 0.225236,
		40.967720, 30.182451, 26.230576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766426, 30.193056, 25.815496>,  <41.376774, 30.728178, 26.072912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766426, 30.193056, 25.815496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.413254, 30.013208, 25.869562>,  <41.201347, 29.905300, 25.902002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.413254, 30.013208, 25.869562>,  <41.766426, 30.193056, 25.815496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413254, 30.013208, 25.869562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187988, -0.602373, -0.775762,
		0.430216, -0.659539, 0.616379,
		-0.882936, -0.449617, 0.135165,
		41.148373, 29.878323, 25.910112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932178, 29.549435, 25.750177>,  <41.766426, 30.193056, 25.815496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932178, 29.549435, 25.750177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.543850, 29.520983, 25.658579>,  <41.310852, 29.503912, 25.603621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.543850, 29.520983, 25.658579>,  <41.932178, 29.549435, 25.750177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543850, 29.520983, 25.658579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223185, -0.617199, -0.754489,
		-0.087669, -0.783586, 0.615067,
		-0.970826, -0.071129, -0.228994,
		41.252602, 29.499645, 25.589880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749664, 28.908308, 25.500257>,  <41.932178, 29.549435, 25.750177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749664, 28.908308, 25.500257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.466381, 29.130053, 25.325390>,  <41.296410, 29.263100, 25.220469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.466381, 29.130053, 25.325390>,  <41.749664, 28.908308, 25.500257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466381, 29.130053, 25.325390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164719, -0.472388, -0.865862,
		-0.686516, -0.685224, 0.243237,
		-0.708212, 0.554362, -0.437171,
		41.253918, 29.296362, 25.194239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411942, 28.433340, 25.056721>,  <41.749664, 28.908308, 25.500257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411942, 28.433340, 25.056721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.340916, 28.810469, 24.943899>,  <41.298298, 29.036747, 24.876205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.340916, 28.810469, 24.943899>,  <41.411942, 28.433340, 25.056721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340916, 28.810469, 24.943899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242506, -0.235852, -0.941045,
		-0.953762, -0.235499, -0.186760,
		-0.177567, 0.942823, -0.282056,
		41.287647, 29.093315, 24.859282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099903, 28.275320, 24.403145>,  <41.411942, 28.433340, 25.056721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099903, 28.275320, 24.403145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.292366, 28.033957, 24.148777>,  <41.407845, 27.889139, 23.996157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.292366, 28.033957, 24.148777>,  <41.099903, 28.275320, 24.403145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292366, 28.033957, 24.148777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786209, -0.023851, 0.617500,
		-0.387771, -0.797077, 0.462928,
		0.481153, -0.603407, -0.635918,
		41.436710, 27.852934, 23.958002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675285, 27.747667, 24.336058>,  <41.099903, 28.275320, 24.403145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675285, 27.747667, 24.336058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.386837, 27.479319, 24.266878>,  <40.213768, 27.318310, 24.225370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.386837, 27.479319, 24.266878>,  <40.675285, 27.747667, 24.336058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386837, 27.479319, 24.266878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288052, 0.063296, 0.955521,
		-0.630087, 0.738866, -0.238890,
		-0.721122, -0.670873, -0.172950,
		40.170502, 27.278057, 24.214993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107346, 28.009398, 24.679268>,  <40.675285, 27.747667, 24.336058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107346, 28.009398, 24.679268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.034306, 27.619398, 24.628616>,  <39.990482, 27.385399, 24.598227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.034306, 27.619398, 24.628616>,  <40.107346, 28.009398, 24.679268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034306, 27.619398, 24.628616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153659, -0.098911, 0.983161,
		-0.971106, 0.198982, -0.131756,
		-0.182599, -0.974999, -0.126628,
		39.979527, 27.326899, 24.590628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455772, 27.933443, 24.998861>,  <40.107346, 28.009398, 24.679268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455772, 27.933443, 24.998861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.638245, 27.577568, 24.991350>,  <39.747730, 27.364042, 24.986843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.638245, 27.577568, 24.991350>,  <39.455772, 27.933443, 24.998861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638245, 27.577568, 24.991350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142785, -0.094008, 0.985279,
		-0.878355, -0.446788, -0.169919,
		0.456185, -0.889687, -0.018778,
		39.775101, 27.310661, 24.985716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051682, 27.486818, 25.362377>,  <39.455772, 27.933443, 24.998861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051682, 27.486818, 25.362377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.409981, 27.309523, 25.376127>,  <39.624958, 27.203146, 25.384377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.409981, 27.309523, 25.376127>,  <39.051682, 27.486818, 25.362377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409981, 27.309523, 25.376127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064899, -0.053881, 0.996436,
		-0.439808, -0.894782, -0.077030,
		0.895744, -0.443240, 0.034373,
		39.678703, 27.176550, 25.386438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964760, 26.779743, 25.822737>,  <39.051682, 27.486818, 25.362377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964760, 26.779743, 25.822737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.350441, 26.882874, 25.797932>,  <39.581848, 26.944752, 25.783049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.350441, 26.882874, 25.797932>,  <38.964760, 26.779743, 25.822737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350441, 26.882874, 25.797932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086463, -0.084588, 0.992658,
		0.250687, -0.962482, -0.103852,
		0.964199, 0.257826, -0.062014,
		39.639702, 26.960220, 25.779327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278698, 26.312902, 26.321009>,  <38.964760, 26.779743, 25.822737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278698, 26.312902, 26.321009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.517040, 26.621637, 26.232258>,  <39.660046, 26.806877, 26.179007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.517040, 26.621637, 26.232258>,  <39.278698, 26.312902, 26.321009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517040, 26.621637, 26.232258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081636, 0.216636, 0.972833,
		0.798935, -0.597777, 0.066073,
		0.595851, 0.771837, -0.221878,
		39.695797, 26.853188, 26.165695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726879, 26.241964, 26.820768>,  <39.278698, 26.312902, 26.321009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726879, 26.241964, 26.820768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.783302, 26.616766, 26.692940>,  <39.817158, 26.841646, 26.616241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.783302, 26.616766, 26.692940>,  <39.726879, 26.241964, 26.820768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783302, 26.616766, 26.692940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188560, 0.291464, 0.937814,
		0.971879, -0.192545, -0.135568,
		0.141058, 0.937003, -0.319574,
		39.825619, 26.897867, 26.597067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224415, 26.426638, 27.271725>,  <39.726879, 26.241964, 26.820768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224415, 26.426638, 27.271725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.063766, 26.760397, 27.120737>,  <39.967377, 26.960653, 27.030146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.063766, 26.760397, 27.120737>,  <40.224415, 26.426638, 27.271725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063766, 26.760397, 27.120737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122648, 0.359451, 0.925069,
		0.907557, 0.417822, -0.042025,
		-0.401620, 0.834398, -0.377467,
		39.943279, 27.010715, 27.007498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552456, 26.971169, 27.554222>,  <40.224415, 26.426638, 27.271725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552456, 26.971169, 27.554222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.233559, 27.162867, 27.407398>,  <40.042221, 27.277885, 27.319304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.233559, 27.162867, 27.407398>,  <40.552456, 26.971169, 27.554222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233559, 27.162867, 27.407398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144862, 0.438402, 0.887028,
		0.586024, 0.760347, -0.280087,
		-0.797239, 0.479246, -0.367060,
		39.994389, 27.306641, 27.297279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683403, 27.695044, 27.780436>,  <40.552456, 26.971169, 27.554222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683403, 27.695044, 27.780436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.296829, 27.627947, 27.702602>,  <40.064884, 27.587688, 27.655903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.296829, 27.627947, 27.702602>,  <40.683403, 27.695044, 27.780436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296829, 27.627947, 27.702602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251022, 0.455392, 0.854170,
		-0.054668, 0.874346, -0.482214,
		-0.966436, -0.167743, -0.194585,
		40.006897, 27.577623, 27.644226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384933, 28.327402, 27.838594>,  <40.683403, 27.695044, 27.780436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384933, 28.327402, 27.838594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.085819, 28.069571, 27.902262>,  <39.906349, 27.914871, 27.940462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.085819, 28.069571, 27.902262>,  <40.384933, 28.327402, 27.838594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085819, 28.069571, 27.902262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311505, 0.552321, 0.773244,
		-0.586328, 0.528640, -0.613807,
		-0.747786, -0.644579, 0.159168,
		39.861485, 27.876198, 27.950012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877560, 28.722607, 27.974756>,  <40.384933, 28.327402, 27.838594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877560, 28.722607, 27.974756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.739395, 28.373642, 28.113083>,  <39.656498, 28.164263, 28.196079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.739395, 28.373642, 28.113083>,  <39.877560, 28.722607, 27.974756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739395, 28.373642, 28.113083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331361, 0.458143, 0.824806,
		-0.878004, 0.170306, -0.447330,
		-0.345411, -0.872411, 0.345818,
		39.635773, 28.111919, 28.216829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383827, 28.964684, 28.309031>,  <39.877560, 28.722607, 27.974756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383827, 28.964684, 28.309031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.416012, 28.589832, 28.444862>,  <39.435322, 28.364922, 28.526361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.416012, 28.589832, 28.444862>,  <39.383827, 28.964684, 28.309031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416012, 28.589832, 28.444862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327789, 0.296860, 0.896899,
		-0.941319, -0.183474, -0.283296,
		0.080458, -0.937129, 0.339581,
		39.440147, 28.308693, 28.546736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665104, 28.765701, 28.573534>,  <39.383827, 28.964684, 28.309031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665104, 28.765701, 28.573534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.938442, 28.540520, 28.759489>,  <39.102448, 28.405411, 28.871061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.938442, 28.540520, 28.759489>,  <38.665104, 28.765701, 28.573534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938442, 28.540520, 28.759489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381699, 0.267324, 0.884784,
		-0.622366, -0.782063, -0.032203,
		0.683349, -0.562952, 0.464886,
		39.143448, 28.371634, 28.898954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010303, 28.641989, 28.416302>,  <38.665104, 28.765701, 28.573534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010303, 28.641989, 28.416302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.649643, 28.490639, 28.500067>,  <37.433247, 28.399828, 28.550325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.649643, 28.490639, 28.500067>,  <38.010303, 28.641989, 28.416302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649643, 28.490639, 28.500067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001362, -0.481746, -0.876310,
		0.432457, -0.790413, 0.433853,
		-0.901653, -0.378375, 0.209411,
		37.379147, 28.377127, 28.562889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065216, 27.931396, 28.402052>,  <38.010303, 28.641989, 28.416302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065216, 27.931396, 28.402052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.693584, 28.052725, 28.317375>,  <37.470608, 28.125523, 28.266569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.693584, 28.052725, 28.317375>,  <38.065216, 27.931396, 28.402052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693584, 28.052725, 28.317375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042814, -0.480281, -0.876069,
		-0.367401, -0.822999, 0.433232,
		-0.929077, 0.303320, -0.211692,
		37.414860, 28.143721, 28.253868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705971, 27.305531, 28.180515>,  <38.065216, 27.931396, 28.402052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705971, 27.305531, 28.180515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.492985, 27.612408, 28.037466>,  <37.365192, 27.796534, 27.951637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.492985, 27.612408, 28.037466>,  <37.705971, 27.305531, 28.180515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492985, 27.612408, 28.037466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167631, -0.509705, -0.843861,
		-0.829687, -0.389378, 0.400006,
		-0.532465, 0.767194, -0.357624,
		37.333244, 27.842566, 27.930180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220276, 26.911587, 27.813227>,  <37.705971, 27.305531, 28.180515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220276, 26.911587, 27.813227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.202324, 27.286797, 27.675768>,  <37.191555, 27.511923, 27.593292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.202324, 27.286797, 27.675768>,  <37.220276, 26.911587, 27.813227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202324, 27.286797, 27.675768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145336, -0.334202, -0.931228,
		-0.988364, -0.091736, -0.121331,
		-0.044878, 0.938026, -0.343646,
		37.188862, 27.568205, 27.572674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806976, 26.875505, 27.271973>,  <37.220276, 26.911587, 27.813227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806976, 26.875505, 27.271973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.986500, 27.221584, 27.182531>,  <37.094215, 27.429232, 27.128866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.986500, 27.221584, 27.182531>,  <36.806976, 26.875505, 27.271973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986500, 27.221584, 27.182531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231743, -0.354349, -0.905943,
		-0.863055, 0.354778, -0.359539,
		0.448811, 0.865199, -0.223605,
		37.121143, 27.481144, 27.115450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506065, 27.104080, 26.625509>,  <36.806976, 26.875505, 27.271973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506065, 27.104080, 26.625509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.857876, 27.289665, 26.667789>,  <37.068962, 27.401016, 26.693157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.857876, 27.289665, 26.667789>,  <36.506065, 27.104080, 26.625509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857876, 27.289665, 26.667789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133264, -0.026921, -0.990715,
		-0.456810, 0.885445, -0.085507,
		0.879526, 0.463963, 0.105700,
		37.121735, 27.428854, 26.699499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443165, 27.707829, 26.156643>,  <36.506065, 27.104080, 26.625509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443165, 27.707829, 26.156643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.824265, 27.603975, 26.219704>,  <37.052925, 27.541664, 26.257540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.824265, 27.603975, 26.219704>,  <36.443165, 27.707829, 26.156643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824265, 27.603975, 26.219704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174771, 0.044066, -0.983623,
		0.248432, 0.964702, 0.087360,
		0.952752, -0.259632, 0.157654,
		37.110088, 27.526085, 26.267000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169685, 28.305986, 26.248480>,  <36.443165, 27.707829, 26.156643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169685, 28.305986, 26.248480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.786289, 28.418003, 26.227034>,  <35.556252, 28.485214, 26.214167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.786289, 28.418003, 26.227034>,  <36.169685, 28.305986, 26.248480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786289, 28.418003, 26.227034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143688, -0.311990, 0.939157,
		0.246276, 0.907876, 0.339278,
		-0.958489, 0.280042, -0.053615,
		35.498741, 28.502016, 26.210949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033924, 28.625370, 26.924370>,  <36.169685, 28.305986, 26.248480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033924, 28.625370, 26.924370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.669743, 28.536619, 26.784742>,  <35.451233, 28.483368, 26.700966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.669743, 28.536619, 26.784742>,  <36.033924, 28.625370, 26.924370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669743, 28.536619, 26.784742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324838, -0.138858, 0.935521,
		-0.256042, 0.965137, 0.054350,
		-0.910452, -0.221878, -0.349066,
		35.396606, 28.470057, 26.680023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538227, 29.022236, 27.182467>,  <36.033924, 28.625370, 26.924370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538227, 29.022236, 27.182467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.343857, 28.683167, 27.097307>,  <35.227234, 28.479725, 27.046211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.343857, 28.683167, 27.097307>,  <35.538227, 29.022236, 27.182467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343857, 28.683167, 27.097307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483127, 0.057528, 0.873658,
		-0.728330, 0.527389, -0.437489,
		-0.485925, -0.847674, -0.212897,
		35.198078, 28.428864, 27.033438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791683, 29.120039, 27.216644>,  <35.538227, 29.022236, 27.182467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791683, 29.120039, 27.216644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.833385, 28.723688, 27.250807>,  <34.858406, 28.485878, 27.271305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.833385, 28.723688, 27.250807>,  <34.791683, 29.120039, 27.216644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833385, 28.723688, 27.250807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617639, 0.002799, 0.786457,
		-0.779521, -0.134745, -0.611712,
		0.104259, -0.990876, 0.085406,
		34.864662, 28.426426, 27.276428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066391, 28.847040, 27.253395>,  <34.791683, 29.120039, 27.216644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066391, 28.847040, 27.253395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.280239, 28.539255, 27.393169>,  <34.408546, 28.354584, 27.477034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.280239, 28.539255, 27.393169>,  <34.066391, 28.847040, 27.253395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280239, 28.539255, 27.393169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575276, -0.028464, 0.817464,
		-0.619062, -0.638057, -0.457871,
		0.534621, -0.769463, 0.349438,
		34.440624, 28.308416, 27.498001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525692, 28.390388, 27.430222>,  <34.066391, 28.847040, 27.253395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525692, 28.390388, 27.430222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.847370, 28.264431, 27.631863>,  <34.040375, 28.188856, 27.752848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.847370, 28.264431, 27.631863>,  <33.525692, 28.390388, 27.430222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847370, 28.264431, 27.631863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567689, -0.155666, 0.808392,
		-0.176089, -0.936273, -0.303949,
		0.804190, -0.314898, 0.504100,
		34.088627, 28.169964, 27.783092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239555, 27.956602, 27.941597>,  <33.525692, 28.390388, 27.430222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239555, 27.956602, 27.941597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.611629, 28.056704, 28.049025>,  <33.834873, 28.116764, 28.113482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.611629, 28.056704, 28.049025>,  <33.239555, 27.956602, 27.941597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611629, 28.056704, 28.049025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333800, 0.272182, 0.902494,
		0.152749, -0.929135, 0.336713,
		0.930186, 0.250249, 0.268570,
		33.890686, 28.131779, 28.129595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.900745, 31.811895, 23.960640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.116154, 31.552309, 24.175615>,  <39.245399, 31.396557, 24.304600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.116154, 31.552309, 24.175615>,  <38.900745, 31.811895, 23.960640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116154, 31.552309, 24.175615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330043, 0.424401, 0.843182,
		-0.775284, -0.631449, 0.014362,
		0.538521, -0.648965, 0.537437,
		39.277710, 31.357620, 24.336847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394871, 31.443924, 24.523891>,  <38.900745, 31.811895, 23.960640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394871, 31.443924, 24.523891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.782719, 31.433208, 24.621149>,  <39.015427, 31.426779, 24.679502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.782719, 31.433208, 24.621149>,  <38.394871, 31.443924, 24.523891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782719, 31.433208, 24.621149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209895, 0.419332, 0.883235,
		-0.125618, -0.907438, 0.400970,
		0.969621, -0.026788, 0.243143,
		39.073605, 31.425173, 24.694092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509960, 31.214016, 25.172226>,  <38.394871, 31.443924, 24.523891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509960, 31.214016, 25.172226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.869820, 31.386496, 25.144804>,  <39.085735, 31.489985, 25.128351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.869820, 31.386496, 25.144804>,  <38.509960, 31.214016, 25.172226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869820, 31.386496, 25.144804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239786, 0.619167, 0.747753,
		0.364878, -0.656276, 0.660429,
		0.899648, 0.431200, -0.068555,
		39.139713, 31.515856, 25.124237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744308, 31.299776, 25.835434>,  <38.509960, 31.214016, 25.172226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744308, 31.299776, 25.835434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.967976, 31.563015, 25.633745>,  <39.102177, 31.720959, 25.512732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.967976, 31.563015, 25.633745>,  <38.744308, 31.299776, 25.835434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967976, 31.563015, 25.633745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026451, 0.593718, 0.804238,
		0.828634, -0.463039, 0.314579,
		0.559165, 0.658098, -0.504223,
		39.135727, 31.760445, 25.482479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124859, 31.606182, 26.350342>,  <38.744308, 31.299776, 25.835434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124859, 31.606182, 26.350342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.189491, 31.875031, 26.061304>,  <39.228271, 32.036339, 25.887882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.189491, 31.875031, 26.061304>,  <39.124859, 31.606182, 26.350342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189491, 31.875031, 26.061304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113510, 0.740014, 0.662944,
		0.980309, -0.025099, 0.195867,
		0.161583, 0.672123, -0.722593,
		39.237965, 32.076668, 25.844526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629784, 32.052116, 26.637726>,  <39.124859, 31.606182, 26.350342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629784, 32.052116, 26.637726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.433468, 32.234715, 26.340878>,  <39.315678, 32.344273, 26.162769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.433468, 32.234715, 26.340878>,  <39.629784, 32.052116, 26.637726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433468, 32.234715, 26.340878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040499, 0.862791, 0.503937,
		0.870338, 0.217270, -0.441933,
		-0.490786, 0.456493, -0.742121,
		39.286232, 32.371662, 26.118240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022694, 32.742756, 26.495241>,  <39.629784, 32.052116, 26.637726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022694, 32.742756, 26.495241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.649570, 32.786388, 26.357853>,  <39.425697, 32.812569, 26.275419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.649570, 32.786388, 26.357853>,  <40.022694, 32.742756, 26.495241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649570, 32.786388, 26.357853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096159, 0.843190, 0.528946,
		0.347313, 0.526432, -0.776043,
		-0.932806, 0.109086, -0.343472,
		39.369728, 32.819115, 26.254812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941132, 33.381779, 26.434458>,  <40.022694, 32.742756, 26.495241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941132, 33.381779, 26.434458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.558571, 33.270466, 26.399012>,  <39.329033, 33.203678, 26.377745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.558571, 33.270466, 26.399012>,  <39.941132, 33.381779, 26.434458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558571, 33.270466, 26.399012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266605, 0.708026, 0.653927,
		-0.119237, 0.649042, -0.751350,
		-0.956402, -0.278286, -0.088615,
		39.271652, 33.186981, 26.372427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486038, 33.964733, 26.283484>,  <39.941132, 33.381779, 26.434458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486038, 33.964733, 26.283484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.223839, 33.701313, 26.431341>,  <39.066521, 33.543262, 26.520056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.223839, 33.701313, 26.431341>,  <39.486038, 33.964733, 26.283484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223839, 33.701313, 26.431341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465757, 0.737827, 0.488552,
		-0.594468, 0.148080, -0.790367,
		-0.655499, -0.658547, 0.369645,
		39.027187, 33.503750, 26.542234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773998, 34.253845, 26.256359>,  <39.486038, 33.964733, 26.283484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773998, 34.253845, 26.256359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.745674, 33.950268, 26.515274>,  <38.728680, 33.768120, 26.670624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.745674, 33.950268, 26.515274>,  <38.773998, 34.253845, 26.256359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745674, 33.950268, 26.515274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284665, 0.637308, 0.716103,
		-0.956008, -0.133552, -0.261175,
		-0.070812, -0.758948, 0.647289,
		38.724430, 33.722584, 26.709461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118191, 34.247616, 26.500933>,  <38.773998, 34.253845, 26.256359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118191, 34.247616, 26.500933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.317902, 34.054699, 26.788853>,  <38.437729, 33.938950, 26.961605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.317902, 34.054699, 26.788853>,  <38.118191, 34.247616, 26.500933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317902, 34.054699, 26.788853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328308, 0.663500, 0.672295,
		-0.801832, -0.571979, 0.172930,
		0.499278, -0.482294, 0.719801,
		38.467686, 33.910011, 27.004793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596268, 34.175808, 27.074331>,  <38.118191, 34.247616, 26.500933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596268, 34.175808, 27.074331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.940308, 34.082863, 27.255983>,  <38.146732, 34.027096, 27.364975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.940308, 34.082863, 27.255983>,  <37.596268, 34.175808, 27.074331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940308, 34.082863, 27.255983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243995, 0.594408, 0.766254,
		-0.447989, -0.769861, 0.454555,
		0.860100, -0.232364, 0.454130,
		38.198338, 34.013153, 27.392223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955566, 33.682903, 27.040268>,  <37.596268, 34.175808, 27.074331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955566, 33.682903, 27.040268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.569397, 33.765018, 26.976011>,  <36.337696, 33.814289, 26.937456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.569397, 33.765018, 26.976011>,  <36.955566, 33.682903, 27.040268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569397, 33.765018, 26.976011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015013, -0.571447, -0.820502,
		-0.260241, -0.794546, 0.548608,
		-0.965427, 0.205292, -0.160643,
		36.279770, 33.826607, 26.927818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502098, 33.072693, 26.912128>,  <36.955566, 33.682903, 27.040268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502098, 33.072693, 26.912128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.313316, 33.372181, 26.725931>,  <36.200047, 33.551872, 26.614212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.313316, 33.372181, 26.725931>,  <36.502098, 33.072693, 26.912128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313316, 33.372181, 26.725931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038371, -0.510049, -0.859289,
		-0.880790, -0.423402, 0.211989,
		-0.471950, 0.748719, -0.465493,
		36.171730, 33.596798, 26.586283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216850, 32.729050, 26.347412>,  <36.502098, 33.072693, 26.912128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216850, 32.729050, 26.347412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.137657, 33.102669, 26.228516>,  <36.090141, 33.326839, 26.157177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.137657, 33.102669, 26.228516>,  <36.216850, 32.729050, 26.347412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137657, 33.102669, 26.228516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077503, -0.317212, -0.945182,
		-0.977137, -0.164091, 0.135193,
		-0.197981, 0.934051, -0.297243,
		36.078262, 33.382885, 26.139343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586964, 32.835880, 25.791561>,  <36.216850, 32.729050, 26.347412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586964, 32.835880, 25.791561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.883003, 33.100883, 25.745375>,  <36.060627, 33.259888, 25.717663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.883003, 33.100883, 25.745375>,  <35.586964, 32.835880, 25.791561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883003, 33.100883, 25.745375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000871, -0.172644, -0.984984,
		-0.672498, 0.728885, -0.128351,
		0.740099, 0.662511, -0.115467,
		36.105034, 33.299637, 25.710735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272831, 33.104382, 25.165251>,  <35.586964, 32.835880, 25.791561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272831, 33.104382, 25.165251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.656590, 33.205135, 25.216042>,  <35.886845, 33.265587, 25.246515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.656590, 33.205135, 25.216042>,  <35.272831, 33.104382, 25.165251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656590, 33.205135, 25.216042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201488, -0.296912, -0.933406,
		-0.197407, 0.921086, -0.335606,
		0.959392, 0.251881, 0.126975,
		35.944408, 33.280701, 25.254135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336632, 33.574574, 24.593119>,  <35.272831, 33.104382, 25.165251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336632, 33.574574, 24.593119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.705235, 33.463444, 24.701666>,  <35.926395, 33.396767, 24.766794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.705235, 33.463444, 24.701666>,  <35.336632, 33.574574, 24.593119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705235, 33.463444, 24.701666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125999, -0.447077, -0.885577,
		0.367362, 0.850255, -0.376977,
		0.921504, -0.277829, 0.271370,
		35.981686, 33.380096, 24.783077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871799, 33.775955, 24.153580>,  <35.336632, 33.574574, 24.593119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871799, 33.775955, 24.153580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.049679, 33.461014, 24.324377>,  <36.156406, 33.272049, 24.426855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.049679, 33.461014, 24.324377>,  <35.871799, 33.775955, 24.153580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049679, 33.461014, 24.324377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110608, -0.424799, -0.898505,
		0.888826, 0.446791, -0.101819,
		0.444696, -0.787352, 0.426991,
		36.183086, 33.224808, 24.452475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322853, 33.584023, 23.648979>,  <35.871799, 33.775955, 24.153580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322853, 33.584023, 23.648979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.312717, 33.277420, 23.905672>,  <36.306637, 33.093456, 24.059689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.312717, 33.277420, 23.905672>,  <36.322853, 33.584023, 23.648979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312717, 33.277420, 23.905672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158087, -0.636934, -0.754536,
		0.987100, 0.082330, 0.137315,
		-0.025340, -0.766510, 0.641733,
		36.305115, 33.047466, 24.098192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886089, 33.104187, 23.344444>,  <36.322853, 33.584023, 23.648979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886089, 33.104187, 23.344444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.660881, 32.889793, 23.596071>,  <36.525757, 32.761158, 23.747047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.660881, 32.889793, 23.596071>,  <36.886089, 33.104187, 23.344444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660881, 32.889793, 23.596071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105224, -0.801472, -0.588702,
		0.819716, -0.265259, 0.507645,
		-0.563022, -0.535985, 0.629068,
		36.491974, 32.728996, 23.784792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244766, 32.456493, 23.457870>,  <36.886089, 33.104187, 23.344444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244766, 32.456493, 23.457870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.852772, 32.399303, 23.513277>,  <36.617577, 32.364990, 23.546520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.852772, 32.399303, 23.513277>,  <37.244766, 32.456493, 23.457870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852772, 32.399303, 23.513277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049836, -0.849863, -0.524642,
		0.192729, -0.507238, 0.839979,
		-0.979986, -0.142975, 0.138515,
		36.558777, 32.356411, 23.554831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157452, 31.743265, 23.337458>,  <37.244766, 32.456493, 23.457870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157452, 31.743265, 23.337458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.770210, 31.841415, 23.357725>,  <36.537865, 31.900307, 23.369884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.770210, 31.841415, 23.357725>,  <37.157452, 31.743265, 23.337458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770210, 31.841415, 23.357725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222468, -0.748802, -0.624342,
		-0.115260, -0.615699, 0.779506,
		-0.968103, 0.245377, 0.050667,
		36.479778, 31.915028, 23.372925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908085, 31.124989, 23.433775>,  <37.157452, 31.743265, 23.337458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908085, 31.124989, 23.433775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.583107, 31.327305, 23.317766>,  <36.388119, 31.448694, 23.248161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.583107, 31.327305, 23.317766>,  <36.908085, 31.124989, 23.433775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583107, 31.327305, 23.317766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316591, -0.800413, -0.509028,
		-0.489597, -0.321739, 0.810419,
		-0.812444, 0.505790, -0.290020,
		36.339375, 31.479042, 23.230761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256474, 30.878138, 23.696051>,  <36.908085, 31.124989, 23.433775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256474, 30.878138, 23.696051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.152653, 31.082314, 23.368128>,  <36.090359, 31.204819, 23.171375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.152653, 31.082314, 23.368128>,  <36.256474, 30.878138, 23.696051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152653, 31.082314, 23.368128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437931, -0.818810, -0.371168,
		-0.860725, 0.262680, 0.436064,
		-0.259555, 0.510439, -0.819806,
		36.074787, 31.235445, 23.122187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732075, 31.324099, 24.057783>,  <36.256474, 30.878138, 23.696051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732075, 31.324099, 24.057783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.591408, 30.979372, 23.911577>,  <35.507008, 30.772535, 23.823854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.591408, 30.979372, 23.911577>,  <35.732075, 31.324099, 24.057783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591408, 30.979372, 23.911577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090933, -0.357160, 0.929606,
		-0.931698, 0.360150, 0.047234,
		-0.351668, -0.861817, -0.365515,
		35.485909, 30.720827, 23.801924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270454, 31.087614, 24.529781>,  <35.732075, 31.324099, 24.057783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270454, 31.087614, 24.529781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.361881, 30.758507, 24.321625>,  <35.416737, 30.561043, 24.196730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.361881, 30.758507, 24.321625>,  <35.270454, 31.087614, 24.529781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361881, 30.758507, 24.321625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187054, -0.561699, 0.805919,
		-0.955389, -0.086864, -0.282287,
		0.228565, -0.822769, -0.520393,
		35.430450, 30.511677, 24.165506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649582, 30.679754, 24.673134>,  <35.270454, 31.087614, 24.529781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649582, 30.679754, 24.673134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.957920, 30.453871, 24.555216>,  <35.142921, 30.318340, 24.484465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.957920, 30.453871, 24.555216>,  <34.649582, 30.679754, 24.673134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957920, 30.453871, 24.555216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197211, -0.651579, 0.732497,
		-0.605728, -0.506505, -0.613633,
		0.770844, -0.564709, -0.294792,
		35.189175, 30.284458, 24.466778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438393, 30.081835, 24.714148>,  <34.649582, 30.679754, 24.673134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438393, 30.081835, 24.714148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.832340, 30.013239, 24.704103>,  <35.068707, 29.972082, 24.698076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.832340, 30.013239, 24.704103>,  <34.438393, 30.081835, 24.714148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832340, 30.013239, 24.704103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100994, -0.685583, 0.720955,
		-0.140852, -0.707508, -0.692527,
		0.984866, -0.171489, -0.025112,
		35.127800, 29.961792, 24.696569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469334, 29.344337, 24.792381>,  <34.438393, 30.081835, 24.714148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469334, 29.344337, 24.792381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.849060, 29.423597, 24.889975>,  <35.076897, 29.471153, 24.948530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.849060, 29.423597, 24.889975>,  <34.469334, 29.344337, 24.792381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849060, 29.423597, 24.889975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061282, -0.644670, 0.762001,
		0.308279, -0.738335, -0.599855,
		0.949320, 0.198149, 0.243985,
		35.133858, 29.483042, 24.963171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880394, 28.649773, 24.746979>,  <34.469334, 29.344337, 24.792381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880394, 28.649773, 24.746979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.063519, 28.901085, 24.998589>,  <35.173393, 29.051872, 25.149553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.063519, 28.901085, 24.998589>,  <34.880394, 28.649773, 24.746979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063519, 28.901085, 24.998589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224846, -0.766346, 0.601796,
		0.860146, -0.134076, -0.492110,
		0.457813, 0.628281, 0.629023,
		35.200863, 29.089569, 25.187296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378353, 28.198614, 25.036943>,  <34.880394, 28.649773, 24.746979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378353, 28.198614, 25.036943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.391605, 28.531445, 25.258411>,  <35.399555, 28.731142, 25.391293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.391605, 28.531445, 25.258411>,  <35.378353, 28.198614, 25.036943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391605, 28.531445, 25.258411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028581, -0.554537, 0.831668,
		0.999043, -0.011727, -0.042153,
		0.033128, 0.832076, 0.553671,
		35.401543, 28.781067, 25.424513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942757, 28.132515, 25.582941>,  <35.378353, 28.198614, 25.036943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942757, 28.132515, 25.582941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.675610, 28.405855, 25.700912>,  <35.515320, 28.569859, 25.771696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.675610, 28.405855, 25.700912>,  <35.942757, 28.132515, 25.582941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675610, 28.405855, 25.700912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132835, -0.499341, 0.856162,
		0.732329, 0.532627, 0.424268,
		-0.667869, 0.683350, 0.294930,
		35.475250, 28.610861, 25.789391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738701, 28.152908, 25.697111>,  <35.942757, 28.132515, 25.582941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738701, 28.152908, 25.697111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.011219, 27.876671, 25.794199>,  <37.174732, 27.710928, 25.852451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.011219, 27.876671, 25.794199>,  <36.738701, 28.152908, 25.697111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011219, 27.876671, 25.794199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265237, -0.076149, -0.961172,
		0.682261, 0.719224, 0.131290,
		0.681300, -0.690592, 0.242718,
		37.215611, 27.669493, 25.867014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496788, 28.458490, 25.514107>,  <36.738701, 28.152908, 25.697111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496788, 28.458490, 25.514107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.488384, 28.058586, 25.511595>,  <37.483341, 27.818644, 25.510088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.488384, 28.058586, 25.511595>,  <37.496788, 28.458490, 25.514107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488384, 28.058586, 25.511595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256545, 0.000683, -0.966532,
		0.966304, -0.021916, 0.256469,
		-0.021007, -0.999760, -0.006282,
		37.482082, 27.758657, 25.509710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021622, 28.336840, 25.092239>,  <37.496788, 28.458490, 25.514107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021622, 28.336840, 25.092239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.817894, 27.992880, 25.105890>,  <37.695656, 27.786505, 25.114080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.817894, 27.992880, 25.105890>,  <38.021622, 28.336840, 25.092239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817894, 27.992880, 25.105890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372004, -0.255753, -0.892302,
		0.776018, -0.441774, 0.450146,
		-0.509323, -0.859899, 0.034127,
		37.665096, 27.734911, 25.116129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384254, 27.902840, 24.662472>,  <38.021622, 28.336840, 25.092239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384254, 27.902840, 24.662472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.035229, 27.714323, 24.713881>,  <37.825813, 27.601213, 24.744726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.035229, 27.714323, 24.713881>,  <38.384254, 27.902840, 24.662472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035229, 27.714323, 24.713881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099968, -0.429803, -0.897371,
		0.478163, -0.770165, 0.422145,
		-0.872563, -0.471291, 0.128523,
		37.773460, 27.572935, 24.752438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468712, 27.130665, 24.616198>,  <38.384254, 27.902840, 24.662472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468712, 27.130665, 24.616198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.090824, 27.204834, 24.508036>,  <37.864090, 27.249336, 24.443138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.090824, 27.204834, 24.508036>,  <38.468712, 27.130665, 24.616198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090824, 27.204834, 24.508036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231000, -0.208862, -0.950271,
		-0.232687, -0.960204, 0.154482,
		-0.944720, 0.185430, -0.270406,
		37.807407, 27.260462, 24.426914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205143, 26.561949, 24.233021>,  <38.468712, 27.130665, 24.616198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205143, 26.561949, 24.233021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.981266, 26.878044, 24.133202>,  <37.846939, 27.067701, 24.073311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.981266, 26.878044, 24.133202>,  <38.205143, 26.561949, 24.233021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981266, 26.878044, 24.133202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159270, -0.192941, -0.968197,
		-0.813253, -0.581635, -0.017874,
		-0.559689, 0.790237, -0.249547,
		37.813358, 27.115116, 24.058338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804188, 26.328650, 23.742723>,  <38.205143, 26.561949, 24.233021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804188, 26.328650, 23.742723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.800911, 26.725187, 23.690315>,  <37.798946, 26.963110, 23.658871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.800911, 26.725187, 23.690315>,  <37.804188, 26.328650, 23.742723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800911, 26.725187, 23.690315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061180, -0.131276, -0.989456,
		-0.998093, -0.000088, 0.061725,
		-0.008190, 0.991346, -0.131021,
		37.798454, 27.022591, 23.651009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292328, 26.452286, 23.167778>,  <37.804188, 26.328650, 23.742723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292328, 26.452286, 23.167778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.527531, 26.775410, 23.151333>,  <37.668652, 26.969284, 23.141466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.527531, 26.775410, 23.151333>,  <37.292328, 26.452286, 23.167778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527531, 26.775410, 23.151333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149743, -0.158669, -0.975910,
		-0.794873, 0.567687, -0.214262,
		0.588009, 0.807809, -0.041115,
		37.703934, 27.017752, 23.138998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973152, 26.880474, 22.502754>,  <37.292328, 26.452286, 23.167778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973152, 26.880474, 22.502754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.344700, 26.993759, 22.598253>,  <37.567627, 27.061731, 22.655552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.344700, 26.993759, 22.598253>,  <36.973152, 26.880474, 22.502754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344700, 26.993759, 22.598253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275114, -0.095878, -0.956619,
		-0.248038, 0.954252, -0.166974,
		0.928865, 0.283215, 0.238747,
		37.623360, 27.078724, 22.669878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.185192, 31.145552, 38.090439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.323338, 31.508329, 37.993958>,  <34.406223, 31.725996, 37.936069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.323338, 31.508329, 37.993958>,  <34.185192, 31.145552, 38.090439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323338, 31.508329, 37.993958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065438, -0.233117, -0.970244,
		-0.936186, 0.350868, -0.021161,
		0.345360, 0.906945, -0.241201,
		34.426945, 31.780413, 37.921597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751900, 31.229149, 37.570316>,  <34.185192, 31.145552, 38.090439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751900, 31.229149, 37.570316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.081047, 31.452982, 37.530792>,  <34.278534, 31.587282, 37.507076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.081047, 31.452982, 37.530792>,  <33.751900, 31.229149, 37.570316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081047, 31.452982, 37.530792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006705, -0.164315, -0.986385,
		-0.568199, 0.812323, -0.131457,
		0.822864, 0.559582, -0.098810,
		34.327908, 31.620857, 37.501148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715153, 31.678808, 37.091492>,  <33.751900, 31.229149, 37.570316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715153, 31.678808, 37.091492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113838, 31.654560, 37.112972>,  <34.353050, 31.640011, 37.125862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113838, 31.654560, 37.112972>,  <33.715153, 31.678808, 37.091492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113838, 31.654560, 37.112972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052817, -0.016084, -0.998475,
		0.061393, 0.998031, -0.012829,
		0.996715, -0.060622, 0.053701,
		34.412853, 31.636374, 37.129082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982105, 32.076710, 36.487522>,  <33.715153, 31.678808, 37.091492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982105, 32.076710, 36.487522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.289494, 31.846762, 36.599930>,  <34.473927, 31.708794, 36.667374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.289494, 31.846762, 36.599930>,  <33.982105, 32.076710, 36.487522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289494, 31.846762, 36.599930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245827, -0.140239, -0.959115,
		0.590776, 0.806138, 0.033549,
		0.768474, -0.574870, 0.281020,
		34.520035, 31.674301, 36.684235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549980, 32.391384, 36.021080>,  <33.982105, 32.076710, 36.487522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549980, 32.391384, 36.021080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.640171, 32.023331, 36.149151>,  <34.694286, 31.802498, 36.225994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.640171, 32.023331, 36.149151>,  <34.549980, 32.391384, 36.021080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640171, 32.023331, 36.149151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231529, -0.268617, -0.935008,
		0.946338, 0.284952, 0.152471,
		0.225476, -0.920134, 0.320177,
		34.707813, 31.747290, 36.245205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159760, 32.205193, 35.684647>,  <34.549980, 32.391384, 36.021080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159760, 32.205193, 35.684647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.016655, 31.847179, 35.791172>,  <34.930790, 31.632372, 35.855087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.016655, 31.847179, 35.791172>,  <35.159760, 32.205193, 35.684647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016655, 31.847179, 35.791172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292139, -0.378156, -0.878438,
		0.886937, -0.236474, 0.396765,
		-0.357766, -0.895030, 0.266317,
		34.909325, 31.578671, 35.871067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657501, 31.760744, 35.580711>,  <35.159760, 32.205193, 35.684647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657501, 31.760744, 35.580711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.329838, 31.531744, 35.594692>,  <35.133240, 31.394344, 35.603081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.329838, 31.531744, 35.594692>,  <35.657501, 31.760744, 35.580711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329838, 31.531744, 35.594692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281762, -0.454740, -0.844880,
		0.499589, -0.682242, 0.533813,
		-0.819159, -0.572501, 0.034953,
		35.084091, 31.359993, 35.605179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866501, 30.930477, 35.462265>,  <35.657501, 31.760744, 35.580711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866501, 30.930477, 35.462265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.487366, 30.999216, 35.354885>,  <35.259884, 31.040459, 35.290459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.487366, 30.999216, 35.354885>,  <35.866501, 30.930477, 35.462265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487366, 30.999216, 35.354885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100412, -0.638337, -0.763180,
		-0.302509, -0.750329, 0.587787,
		-0.947843, 0.171848, -0.268445,
		35.203014, 31.050770, 35.274353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595238, 30.210928, 35.182686>,  <35.866501, 30.930477, 35.462265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595238, 30.210928, 35.182686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.320583, 30.470646, 35.051872>,  <35.155792, 30.626476, 34.973385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.320583, 30.470646, 35.051872>,  <35.595238, 30.210928, 35.182686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320583, 30.470646, 35.051872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143046, -0.561707, -0.814876,
		-0.712791, -0.512740, 0.478566,
		-0.686634, 0.649294, -0.327034,
		35.114594, 30.665434, 34.953762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200340, 29.840553, 34.817165>,  <35.595238, 30.210928, 35.182686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200340, 29.840553, 34.817165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.055740, 30.190134, 34.687225>,  <34.968979, 30.399881, 34.609261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.055740, 30.190134, 34.687225>,  <35.200340, 29.840553, 34.817165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055740, 30.190134, 34.687225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187149, -0.409335, -0.892984,
		-0.913396, -0.262021, 0.311534,
		-0.361502, 0.873951, -0.324848,
		34.947289, 30.452320, 34.589771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475292, 29.782455, 34.383575>,  <35.200340, 29.840553, 34.817165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475292, 29.782455, 34.383575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.613197, 30.139137, 34.266270>,  <34.695942, 30.353146, 34.195885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.613197, 30.139137, 34.266270>,  <34.475292, 29.782455, 34.383575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613197, 30.139137, 34.266270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006863, -0.314803, -0.949132,
		-0.938665, 0.325213, -0.114652,
		0.344763, 0.891704, -0.293263,
		34.716625, 30.406649, 34.178291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074810, 29.909342, 33.871819>,  <34.475292, 29.782455, 34.383575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074810, 29.909342, 33.871819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.379047, 30.163420, 33.818108>,  <34.561588, 30.315866, 33.785881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.379047, 30.163420, 33.818108>,  <34.074810, 29.909342, 33.871819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379047, 30.163420, 33.818108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125729, -0.347025, -0.929390,
		-0.636940, 0.690003, -0.343806,
		0.760591, 0.635193, -0.134281,
		34.607224, 30.353977, 33.777824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629726, 30.500267, 33.775997>,  <34.074810, 29.909342, 33.871819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629726, 30.500267, 33.775997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.309479, 30.643484, 33.583828>,  <33.117329, 30.729414, 33.468525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.309479, 30.643484, 33.583828>,  <33.629726, 30.500267, 33.775997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309479, 30.643484, 33.583828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222213, 0.567207, 0.793031,
		0.556439, 0.741675, -0.374557,
		-0.800622, 0.358042, -0.480426,
		33.069290, 30.750896, 33.439701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635773, 31.279366, 33.683308>,  <33.629726, 30.500267, 33.775997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635773, 31.279366, 33.683308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.246830, 31.186314, 33.675213>,  <33.013466, 31.130482, 33.670357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.246830, 31.186314, 33.675213>,  <33.635773, 31.279366, 33.683308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246830, 31.186314, 33.675213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161870, 0.609054, 0.776435,
		-0.168298, 0.758246, -0.629872,
		-0.972355, -0.232630, -0.020234,
		32.955124, 31.116524, 33.669144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359566, 31.840677, 33.739544>,  <33.635773, 31.279366, 33.683308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359566, 31.840677, 33.739544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.054611, 31.598230, 33.830219>,  <32.871639, 31.452763, 33.884624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.054611, 31.598230, 33.830219>,  <33.359566, 31.840677, 33.739544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054611, 31.598230, 33.830219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228689, 0.580052, 0.781819,
		-0.605365, 0.544208, -0.580837,
		-0.762388, -0.606117, 0.226689,
		32.825893, 31.416395, 33.898228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762245, 32.269608, 33.805920>,  <33.359566, 31.840677, 33.739544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762245, 32.269608, 33.805920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.664860, 31.940382, 34.011169>,  <32.606430, 31.742847, 34.134319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.664860, 31.940382, 34.011169>,  <32.762245, 32.269608, 33.805920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664860, 31.940382, 34.011169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417334, 0.566460, 0.710602,
		-0.875533, -0.041138, -0.481404,
		-0.243464, -0.823062, 0.513123,
		32.591820, 31.693464, 34.165108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068340, 32.369652, 34.012081>,  <32.762245, 32.269608, 33.805920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068340, 32.369652, 34.012081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.209198, 32.062103, 34.225555>,  <32.293713, 31.877573, 34.353642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.209198, 32.062103, 34.225555>,  <32.068340, 32.369652, 34.012081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209198, 32.062103, 34.225555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532500, 0.304344, 0.789822,
		-0.769700, -0.562321, -0.302253,
		0.352144, -0.768876, 0.533690,
		32.314842, 31.831440, 34.385662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579420, 32.093868, 34.273514>,  <32.068340, 32.369652, 34.012081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579420, 32.093868, 34.273514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.867794, 31.973108, 34.523029>,  <32.040817, 31.900652, 34.672737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.867794, 31.973108, 34.523029>,  <31.579420, 32.093868, 34.273514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867794, 31.973108, 34.523029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602954, 0.170457, 0.779352,
		-0.341617, -0.937976, -0.059145,
		0.720933, -0.301901, 0.623788,
		32.084072, 31.882538, 34.710167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231028, 31.730938, 34.930618>,  <31.579420, 32.093868, 34.273514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231028, 31.730938, 34.930618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.597342, 31.851044, 35.037338>,  <31.817129, 31.923107, 35.101372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.597342, 31.851044, 35.037338>,  <31.231028, 31.730938, 34.930618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597342, 31.851044, 35.037338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362576, 0.332096, 0.870776,
		0.172859, -0.894178, 0.412997,
		0.915783, 0.300264, 0.266802,
		31.872076, 31.941124, 35.117378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330708, 31.689018, 35.724480>,  <31.231028, 31.730938, 34.930618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330708, 31.689018, 35.724480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.639988, 31.919516, 35.618572>,  <31.825556, 32.057816, 35.555027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.639988, 31.919516, 35.618572>,  <31.330708, 31.689018, 35.724480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639988, 31.919516, 35.618572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088084, 0.511057, 0.855022,
		0.628014, -0.637782, 0.445908,
		0.773201, 0.576243, -0.264773,
		31.871948, 32.092388, 35.539139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791348, 31.703753, 36.258778>,  <31.330708, 31.689018, 35.724480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791348, 31.703753, 36.258778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.860085, 32.048573, 36.068058>,  <31.901327, 32.255463, 35.953625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.860085, 32.048573, 36.068058>,  <31.791348, 31.703753, 36.258778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860085, 32.048573, 36.068058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099114, 0.496676, 0.862258,
		0.980126, -0.100915, 0.170791,
		0.171843, 0.862049, -0.476803,
		31.911638, 32.307186, 35.925018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061718, 32.206276, 36.774921>,  <31.791348, 31.703753, 36.258778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061718, 32.206276, 36.774921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.987553, 32.452518, 36.468548>,  <31.943054, 32.600262, 36.284725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.987553, 32.452518, 36.468548>,  <32.061718, 32.206276, 36.774921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987553, 32.452518, 36.468548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196901, 0.740368, 0.642717,
		0.962732, 0.269980, -0.016060,
		-0.185412, 0.615602, -0.765935,
		31.931929, 32.637199, 36.238766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424549, 32.800213, 36.945610>,  <32.061718, 32.206276, 36.774921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424549, 32.800213, 36.945610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.162422, 32.911644, 36.664768>,  <32.005146, 32.978504, 36.496262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.162422, 32.911644, 36.664768>,  <32.424549, 32.800213, 36.945610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162422, 32.911644, 36.664768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290462, 0.765099, 0.574678,
		0.697277, 0.580530, -0.420462,
		-0.655314, 0.278582, -0.702108,
		31.965828, 32.995220, 36.454136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482269, 33.525597, 36.908340>,  <32.424549, 32.800213, 36.945610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482269, 33.525597, 36.908340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.119766, 33.458908, 36.752953>,  <31.902266, 33.418896, 36.659721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.119766, 33.458908, 36.752953>,  <32.482269, 33.525597, 36.908340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119766, 33.458908, 36.752953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341508, 0.830347, 0.440336,
		0.249150, 0.531722, -0.809442,
		-0.906254, -0.166721, -0.388468,
		31.847891, 33.408890, 36.636414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255169, 34.173470, 36.660839>,  <32.482269, 33.525597, 36.908340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255169, 34.173470, 36.660839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.931559, 33.944080, 36.712387>,  <31.737392, 33.806446, 36.743317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.931559, 33.944080, 36.712387>,  <32.255169, 34.173470, 36.660839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931559, 33.944080, 36.712387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495126, 0.783075, 0.376355,
		-0.316747, 0.240671, -0.917468,
		-0.809025, -0.573472, 0.128874,
		31.688850, 33.772038, 36.751049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688011, 34.610168, 36.370678>,  <32.255169, 34.173470, 36.660839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688011, 34.610168, 36.370678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.564651, 34.323711, 36.621124>,  <31.490635, 34.151836, 36.771393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.564651, 34.323711, 36.621124>,  <31.688011, 34.610168, 36.370678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564651, 34.323711, 36.621124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346234, 0.697560, 0.627321,
		-0.886009, -0.023316, -0.463082,
		-0.308401, -0.716147, 0.626117,
		31.472132, 34.108868, 36.808960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143984, 34.882568, 36.586040>,  <31.688011, 34.610168, 36.370678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143984, 34.882568, 36.586040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.302017, 34.629841, 36.852791>,  <31.396837, 34.478207, 37.012840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.302017, 34.629841, 36.852791>,  <31.143984, 34.882568, 36.586040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302017, 34.629841, 36.852791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016404, 0.730667, 0.682537,
		-0.918498, -0.258720, 0.299040,
		0.395085, -0.631814, 0.666873,
		31.420542, 34.440296, 37.052853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724258, 35.522419, 36.214252>,  <31.143984, 34.882568, 36.586040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724258, 35.522419, 36.214252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.951162, 35.845985, 36.152443>,  <31.087305, 36.040123, 36.115356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.951162, 35.845985, 36.152443>,  <30.724258, 35.522419, 36.214252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951162, 35.845985, 36.152443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088881, -0.246673, -0.965014,
		-0.818730, 0.533677, -0.211824,
		0.567258, 0.808913, -0.154525,
		31.121340, 36.088661, 36.106087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462795, 36.079334, 35.688034>,  <30.724258, 35.522419, 36.214252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462795, 36.079334, 35.688034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.861994, 36.059093, 35.703217>,  <31.101513, 36.046951, 35.712326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.861994, 36.059093, 35.703217>,  <30.462795, 36.079334, 35.688034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861994, 36.059093, 35.703217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027762, -0.188799, -0.981623,
		0.056835, 0.980711, -0.187016,
		0.997998, -0.050599, 0.037957,
		31.161392, 36.043915, 35.714603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755636, 36.613041, 35.406731>,  <30.462795, 36.079334, 35.688034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755636, 36.613041, 35.406731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.079744, 36.378998, 35.420097>,  <31.274208, 36.238571, 35.428116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.079744, 36.378998, 35.420097>,  <30.755636, 36.613041, 35.406731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079744, 36.378998, 35.420097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186253, 0.203023, -0.961297,
		0.555675, 0.785133, 0.273481,
		0.810268, -0.585105, 0.033418,
		31.322824, 36.203465, 35.430122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345484, 36.947624, 35.010265>,  <30.755636, 36.613041, 35.406731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345484, 36.947624, 35.010265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.446583, 36.561062, 35.028934>,  <31.507242, 36.329124, 35.040134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.446583, 36.561062, 35.028934>,  <31.345484, 36.947624, 35.010265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446583, 36.561062, 35.028934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604196, 0.119974, -0.787752,
		0.755690, 0.227298, 0.614222,
		0.252746, -0.966406, 0.046669,
		31.522406, 36.271141, 35.042934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011066, 36.968025, 34.759911>,  <31.345484, 36.947624, 35.010265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011066, 36.968025, 34.759911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.895206, 36.586193, 34.731953>,  <31.825689, 36.357094, 34.715179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.895206, 36.586193, 34.731953>,  <32.011066, 36.968025, 34.759911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895206, 36.586193, 34.731953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660432, -0.146476, -0.736461,
		0.692771, -0.259478, 0.672860,
		-0.289653, -0.954576, -0.069893,
		31.808311, 36.299820, 34.710983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649426, 36.502747, 34.759933>,  <32.011066, 36.968025, 34.759911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649426, 36.502747, 34.759933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.346485, 36.309376, 34.584332>,  <32.164722, 36.193352, 34.478970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.346485, 36.309376, 34.584332>,  <32.649426, 36.502747, 34.759933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346485, 36.309376, 34.584332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594873, -0.233453, -0.769172,
		0.269351, -0.843682, 0.464383,
		-0.757348, -0.483426, -0.439003,
		32.119282, 36.164349, 34.452629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959736, 35.946281, 34.505970>,  <32.649426, 36.502747, 34.759933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959736, 35.946281, 34.505970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.621796, 35.981220, 34.294838>,  <32.419033, 36.002182, 34.168159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.621796, 35.981220, 34.294838>,  <32.959736, 35.946281, 34.505970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621796, 35.981220, 34.294838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518820, -0.107106, -0.848148,
		-0.130616, -0.990403, 0.045171,
		-0.844846, 0.087346, -0.527831,
		32.368343, 36.007423, 34.136490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017746, 35.425529, 34.064075>,  <32.959736, 35.946281, 34.505970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017746, 35.425529, 34.064075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.753918, 35.664982, 33.882263>,  <32.595619, 35.808655, 33.773174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.753918, 35.664982, 33.882263>,  <33.017746, 35.425529, 34.064075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753918, 35.664982, 33.882263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432452, -0.192377, -0.880895,
		-0.614773, -0.777581, -0.131992,
		-0.659575, 0.598631, -0.454535,
		32.556046, 35.844570, 33.745903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712219, 35.088963, 33.454746>,  <33.017746, 35.425529, 34.064075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712219, 35.088963, 33.454746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.648430, 35.480148, 33.400841>,  <32.610157, 35.714859, 33.368496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.648430, 35.480148, 33.400841>,  <32.712219, 35.088963, 33.454746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648430, 35.480148, 33.400841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443460, -0.050999, -0.894842,
		-0.881993, -0.202467, -0.425554,
		-0.159473, 0.977960, -0.134767,
		32.600590, 35.773537, 33.360409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442955, 35.090088, 32.700062>,  <32.712219, 35.088963, 33.454746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442955, 35.090088, 32.700062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.568512, 35.459534, 32.788063>,  <32.643848, 35.681202, 32.840866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.568512, 35.459534, 32.788063>,  <32.442955, 35.090088, 32.700062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568512, 35.459534, 32.788063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476398, 0.047225, -0.877961,
		-0.821289, 0.380397, -0.425185,
		0.313894, 0.923617, 0.220006,
		32.662682, 35.736618, 32.854065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162762, 35.635788, 32.152702>,  <32.442955, 35.090088, 32.700062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162762, 35.635788, 32.152702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.484112, 35.788975, 32.335098>,  <32.676922, 35.880886, 32.444534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.484112, 35.788975, 32.335098>,  <32.162762, 35.635788, 32.152702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484112, 35.788975, 32.335098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489279, 0.011932, -0.872046,
		-0.339406, 0.923685, -0.177792,
		0.803374, 0.382968, 0.455989,
		32.725124, 35.903866, 32.471893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357704, 36.170189, 31.691479>,  <32.162762, 35.635788, 32.152702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357704, 36.170189, 31.691479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.692310, 36.118252, 31.904415>,  <32.893074, 36.087090, 32.032177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.692310, 36.118252, 31.904415>,  <32.357704, 36.170189, 31.691479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692310, 36.118252, 31.904415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546251, 0.121188, -0.828809,
		0.043105, 0.984100, 0.172304,
		0.836512, -0.129847, 0.532342,
		32.943264, 36.079296, 32.064117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834213, 36.690083, 31.502380>,  <32.357704, 36.170189, 31.691479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834213, 36.690083, 31.502380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.062325, 36.397816, 31.652533>,  <33.199192, 36.222454, 31.742624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.062325, 36.397816, 31.652533>,  <32.834213, 36.690083, 31.502380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062325, 36.397816, 31.652533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618980, 0.081793, -0.781136,
		0.540047, 0.677816, 0.498913,
		0.570274, -0.730668, 0.375383,
		33.233406, 36.178616, 31.765148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451382, 36.849628, 31.279575>,  <32.834213, 36.690083, 31.502380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451382, 36.849628, 31.279575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.523144, 36.472832, 31.393040>,  <33.566200, 36.246754, 31.461119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.523144, 36.472832, 31.393040>,  <33.451382, 36.849628, 31.279575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523144, 36.472832, 31.393040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537153, -0.147767, -0.830441,
		0.824185, 0.301353, 0.479485,
		0.179404, -0.941993, 0.283660,
		33.576965, 36.190235, 31.478138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195267, 36.763828, 31.212788>,  <33.451382, 36.849628, 31.279575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195267, 36.763828, 31.212788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.016884, 36.407692, 31.176090>,  <33.909855, 36.194008, 31.154072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.016884, 36.407692, 31.176090>,  <34.195267, 36.763828, 31.212788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016884, 36.407692, 31.176090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631197, -0.240159, -0.737505,
		0.634599, -0.386800, 0.669081,
		-0.445953, -0.890342, -0.091742,
		33.883099, 36.140591, 31.148567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756233, 36.338055, 31.090670>,  <34.195267, 36.763828, 31.212788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756233, 36.338055, 31.090670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.427849, 36.136520, 30.983208>,  <34.230820, 36.015598, 30.918730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.427849, 36.136520, 30.983208>,  <34.756233, 36.338055, 31.090670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427849, 36.136520, 30.983208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456335, -0.296142, -0.839082,
		0.343200, -0.811448, 0.473039,
		-0.820958, -0.503837, -0.268656,
		34.181561, 35.985371, 30.902611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106499, 35.722363, 31.031708>,  <34.756233, 36.338055, 31.090670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106499, 35.722363, 31.031708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754841, 35.701481, 30.842236>,  <34.543846, 35.688953, 30.728552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754841, 35.701481, 30.842236>,  <35.106499, 35.722363, 31.031708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754841, 35.701481, 30.842236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450228, -0.416755, -0.789690,
		-0.156184, -0.907518, 0.389893,
		-0.879148, -0.052204, -0.473681,
		34.491096, 35.685818, 30.700130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052433, 35.056084, 30.845383>,  <35.106499, 35.722363, 31.031708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052433, 35.056084, 30.845383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.774128, 35.199608, 30.596491>,  <34.607143, 35.285725, 30.447155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.774128, 35.199608, 30.596491>,  <35.052433, 35.056084, 30.845383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774128, 35.199608, 30.596491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406925, -0.516946, -0.753113,
		-0.591887, -0.777187, 0.213660,
		-0.695760, 0.358814, -0.622230,
		34.565399, 35.307251, 30.409822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770489, 34.424168, 30.437099>,  <35.052433, 35.056084, 30.845383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770489, 34.424168, 30.437099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.731743, 34.767979, 30.236366>,  <34.708496, 34.974266, 30.115927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.731743, 34.767979, 30.236366>,  <34.770489, 34.424168, 30.437099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731743, 34.767979, 30.236366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440561, -0.415094, -0.795992,
		-0.892482, -0.298189, -0.338466,
		-0.096861, 0.859523, -0.501834,
		34.702686, 35.025837, 30.085815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424824, 34.106361, 29.852236>,  <34.770489, 34.424168, 30.437099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424824, 34.106361, 29.852236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.538242, 34.473911, 29.742500>,  <34.606293, 34.694443, 29.676659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.538242, 34.473911, 29.742500>,  <34.424824, 34.106361, 29.852236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538242, 34.473911, 29.742500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452972, -0.380490, -0.806253,
		-0.845231, 0.104346, -0.524115,
		0.283550, 0.918879, -0.274336,
		34.623306, 34.749577, 29.660200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228058, 34.208916, 29.114063>,  <34.424824, 34.106361, 29.852236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228058, 34.208916, 29.114063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523380, 34.471012, 29.178017>,  <34.700573, 34.628269, 29.216389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523380, 34.471012, 29.178017>,  <34.228058, 34.208916, 29.114063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523380, 34.471012, 29.178017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378331, -0.206089, -0.902437,
		-0.558366, 0.726762, -0.400055,
		0.738305, 0.655243, 0.159883,
		34.744873, 34.667583, 29.225981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310181, 34.730080, 28.587181>,  <34.228058, 34.208916, 29.114063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310181, 34.730080, 28.587181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685112, 34.754303, 28.724438>,  <34.910072, 34.768837, 28.806791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685112, 34.754303, 28.724438>,  <34.310181, 34.730080, 28.587181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685112, 34.754303, 28.724438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340075, -0.373522, -0.863036,
		0.075907, 0.925643, -0.370707,
		0.937330, 0.060557, 0.343141,
		34.966312, 34.772469, 28.827379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733784, 34.947968, 28.019476>,  <34.310181, 34.730080, 28.587181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733784, 34.947968, 28.019476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015507, 34.807991, 28.266539>,  <35.184540, 34.724007, 28.414776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015507, 34.807991, 28.266539>,  <34.733784, 34.947968, 28.019476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015507, 34.807991, 28.266539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557081, -0.266847, -0.786418,
		0.440016, 0.897963, 0.007001,
		0.704306, -0.349937, 0.617655,
		35.226799, 34.703011, 28.451836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263988, 35.323223, 27.817684>,  <34.733784, 34.947968, 28.019476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263988, 35.323223, 27.817684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.437618, 35.015175, 28.004656>,  <35.541798, 34.830345, 28.116838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.437618, 35.015175, 28.004656>,  <35.263988, 35.323223, 27.817684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437618, 35.015175, 28.004656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482341, -0.239546, -0.842594,
		0.760869, 0.591213, 0.267479,
		0.434079, -0.770120, 0.467430,
		35.567841, 34.784138, 28.144884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999294, 35.369835, 27.755928>,  <35.263988, 35.323223, 27.817684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999294, 35.369835, 27.755928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.926567, 34.983921, 27.831966>,  <35.882931, 34.752373, 27.877590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.926567, 34.983921, 27.831966>,  <35.999294, 35.369835, 27.755928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926567, 34.983921, 27.831966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500643, -0.257210, -0.826559,
		0.846345, -0.055112, 0.529777,
		-0.181817, -0.964783, 0.190097,
		35.872021, 34.694485, 27.888996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554413, 35.009796, 27.633162>,  <35.999294, 35.369835, 27.755928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554413, 35.009796, 27.633162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.302982, 34.699337, 27.613195>,  <36.152122, 34.513062, 27.601215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.302982, 34.699337, 27.613195>,  <36.554413, 35.009796, 27.633162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302982, 34.699337, 27.613195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462598, -0.321510, -0.826217,
		0.625215, -0.542431, 0.561137,
		-0.628577, -0.776144, -0.049914,
		36.114410, 34.466496, 27.598221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973457, 34.454750, 27.309900>,  <36.554413, 35.009796, 27.633162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973457, 34.454750, 27.309900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.605679, 34.300045, 27.281523>,  <36.385014, 34.207222, 27.264496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.605679, 34.300045, 27.281523>,  <36.973457, 34.454750, 27.309900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605679, 34.300045, 27.281523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295779, -0.561371, -0.772902,
		0.259104, -0.731625, 0.630547,
		-0.919445, -0.386765, -0.070946,
		36.329845, 34.184017, 27.260239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369854, 33.965244, 27.741919>,  <36.973457, 34.454750, 27.309900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369854, 33.965244, 27.741919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.756115, 34.068882, 27.749731>,  <37.987873, 34.131065, 27.754419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.756115, 34.068882, 27.749731>,  <37.369854, 33.965244, 27.741919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756115, 34.068882, 27.749731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171779, 0.580216, 0.796142,
		0.194942, -0.772153, 0.604795,
		0.965655, 0.259092, 0.019531,
		38.045811, 34.146610, 27.755590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537861, 33.808952, 28.369591>,  <37.369854, 33.965244, 27.741919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537861, 33.808952, 28.369591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.795155, 34.080185, 28.227352>,  <37.949532, 34.242924, 28.142010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.795155, 34.080185, 28.227352>,  <37.537861, 33.808952, 28.369591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795155, 34.080185, 28.227352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142392, 0.562263, 0.814607,
		0.752312, -0.473350, 0.458221,
		0.643235, 0.678085, -0.355596,
		37.988125, 34.283611, 28.120674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950546, 33.990459, 28.910263>,  <37.537861, 33.808952, 28.369591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950546, 33.990459, 28.910263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.017532, 34.304382, 28.671589>,  <38.057724, 34.492737, 28.528385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.017532, 34.304382, 28.671589>,  <37.950546, 33.990459, 28.910263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017532, 34.304382, 28.671589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193674, 0.619628, 0.760626,
		0.966667, -0.011816, 0.255763,
		0.167465, 0.784806, -0.596686,
		38.067772, 34.539825, 28.492582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489033, 34.404751, 29.265951>,  <37.950546, 33.990459, 28.910263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489033, 34.404751, 29.265951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.279160, 34.637333, 29.017237>,  <38.153236, 34.776882, 28.868008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.279160, 34.637333, 29.017237>,  <38.489033, 34.404751, 29.265951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279160, 34.637333, 29.017237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282830, 0.569847, 0.771545,
		0.802944, 0.580675, -0.134533,
		-0.524680, 0.581457, -0.621787,
		38.121758, 34.811771, 28.830700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647736, 35.077351, 29.437489>,  <38.489033, 34.404751, 29.265951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647736, 35.077351, 29.437489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.311710, 35.120129, 29.224754>,  <38.110096, 35.145798, 29.097113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.311710, 35.120129, 29.224754>,  <38.647736, 35.077351, 29.437489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311710, 35.120129, 29.224754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334627, 0.669480, 0.663190,
		0.426982, 0.735090, -0.526620,
		-0.840066, 0.106949, -0.531837,
		38.059689, 35.152214, 29.065203>
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
