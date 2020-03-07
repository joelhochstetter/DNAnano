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
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
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
	<3.789038, 3.236999, 4.946909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.492088, 2.977647, 4.879401>,  <3.313919, 2.822036, 4.838896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.492088, 2.977647, 4.879401>,  <3.789038, 3.236999, 4.946909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.492088, 2.977647, 4.879401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535563, -0.422938, -0.730955,
		0.402558, -0.633029, 0.661227,
		-0.742374, -0.648381, -0.168770,
		3.269376, 2.783133, 4.828770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.963165, 2.554697, 4.991760>,  <3.789038, 3.236999, 4.946909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.963165, 2.554697, 4.991760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.663857, 2.594882, 4.729464>,  <3.484272, 2.618994, 4.572085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.663857, 2.594882, 4.729464>,  <3.963165, 2.554697, 4.991760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.663857, 2.594882, 4.729464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596325, -0.331236, -0.731218,
		-0.290668, -0.938184, 0.187944,
		-0.748270, 0.100466, -0.655742,
		3.439375, 2.625022, 4.532741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.571533, 1.958884, 4.710293>,  <3.963165, 2.554697, 4.991760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.571533, 1.958884, 4.710293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.602779, 2.263400, 4.452817>,  <3.621527, 2.446110, 4.298331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.602779, 2.263400, 4.452817>,  <3.571533, 1.958884, 4.710293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.602779, 2.263400, 4.452817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478600, -0.595033, -0.645661,
		-0.874551, -0.257634, -0.410835,
		0.078116, 0.761289, -0.643690,
		3.626214, 2.491787, 4.259710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.197847, 1.853358, 4.070820>,  <3.571533, 1.958884, 4.710293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.197847, 1.853358, 4.070820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.510170, 2.087098, 3.982388>,  <3.697564, 2.227341, 3.929329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.510170, 2.087098, 3.982388>,  <3.197847, 1.853358, 4.070820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.510170, 2.087098, 3.982388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278612, -0.642390, -0.713940,
		-0.559209, 0.495854, -0.664390,
		0.780808, 0.584348, -0.221079,
		3.744412, 2.262402, 3.916065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.134007, 1.915595, 3.336431>,  <3.197847, 1.853358, 4.070820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.134007, 1.915595, 3.336431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.517944, 1.985292, 3.424374>,  <3.748307, 2.027111, 3.477139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.517944, 1.985292, 3.424374>,  <3.134007, 1.915595, 3.336431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.517944, 1.985292, 3.424374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280478, -0.580733, -0.764252,
		-0.005488, 0.795229, -0.606285,
		0.959845, 0.174244, 0.219857,
		3.805898, 2.037565, 3.490331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.496686, 2.083142, 2.647005>,  <3.134007, 1.915595, 3.336431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.496686, 2.083142, 2.647005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.793266, 2.004174, 2.903528>,  <3.971214, 1.956793, 3.057442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.793266, 2.004174, 2.903528>,  <3.496686, 2.083142, 2.647005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.793266, 2.004174, 2.903528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400470, -0.636668, -0.658997,
		0.538402, 0.745438, -0.392996,
		0.741449, -0.197422, 0.641309,
		4.015701, 1.944947, 3.095921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.089967, 2.316148, 2.293439>,  <3.496686, 2.083142, 2.647005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.089967, 2.316148, 2.293439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.188648, 2.028291, 2.553056>,  <4.247857, 1.855577, 2.708826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.188648, 2.028291, 2.553056>,  <4.089967, 2.316148, 2.293439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.188648, 2.028291, 2.553056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525718, -0.463244, -0.713460,
		0.814100, 0.517225, 0.264045,
		0.246702, -0.719641, 0.649041,
		4.262659, 1.812399, 2.747768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.817142, 2.195734, 2.211976>,  <4.089967, 2.316148, 2.293439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.817142, 2.195734, 2.211976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.673077, 1.845752, 2.341428>,  <4.586637, 1.635763, 2.419099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.673077, 1.845752, 2.341428>,  <4.817142, 2.195734, 2.211976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.673077, 1.845752, 2.341428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572975, -0.481241, -0.663406,
		0.736194, -0.053503, 0.674652,
		-0.360164, -0.874954, 0.323630,
		4.565027, 1.583266, 2.438517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.941751, 0.079026, 1.535290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.278099, 0.155623, 1.737782>,  <4.479908, 0.201582, 1.859276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.278099, 0.155623, 1.737782>,  <3.941751, 0.079026, 1.535290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.278099, 0.155623, 1.737782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520796, 0.540887, 0.660464,
		-0.147338, -0.819006, 0.554545,
		0.840871, 0.191493, 0.506228,
		4.530360, 0.213072, 1.889650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.882678, 0.035170, 2.273540>,  <3.941751, 0.079026, 1.535290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.882678, 0.035170, 2.273540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.189789, 0.288615, 2.235487>,  <4.374055, 0.440683, 2.212655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.189789, 0.288615, 2.235487>,  <3.882678, 0.035170, 2.273540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.189789, 0.288615, 2.235487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402398, 0.592396, 0.697956,
		0.498590, -0.497595, 0.709794,
		0.767779, 0.633613, -0.095131,
		4.420122, 0.478699, 2.206947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.860372, 0.556603, 2.730821>,  <3.882678, 0.035170, 2.273540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.860372, 0.556603, 2.730821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.213272, 0.727733, 2.652233>,  <4.425012, 0.830410, 2.605080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.213272, 0.727733, 2.652233>,  <3.860372, 0.556603, 2.730821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.213272, 0.727733, 2.652233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184052, 0.697559, 0.692486,
		0.433311, -0.574786, 0.694164,
		0.882251, 0.427824, -0.196469,
		4.477947, 0.856080, 2.593292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.350247, 0.600643, 3.197958>,  <3.860372, 0.556603, 2.730821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.350247, 0.600643, 3.197958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.442833, 0.930279, 2.991154>,  <4.498384, 1.128060, 2.867071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.442833, 0.930279, 2.991154>,  <4.350247, 0.600643, 3.197958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.442833, 0.930279, 2.991154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124547, 0.552171, 0.824376,
		0.964838, -0.126421, 0.230445,
		0.231463, 0.824090, -0.517011,
		4.512272, 1.177506, 2.836051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.775457, 0.999041, 3.635269>,  <4.350247, 0.600643, 3.197958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.775457, 0.999041, 3.635269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.634651, 1.262494, 3.369249>,  <4.550168, 1.420566, 3.209638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.634651, 1.262494, 3.369249>,  <4.775457, 0.999041, 3.635269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.634651, 1.262494, 3.369249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103777, 0.678682, 0.727064,
		0.930223, 0.324955, -0.170555,
		-0.352016, 0.658632, -0.665048,
		4.529047, 1.460084, 3.169735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.988955, 1.616870, 3.868170>,  <4.775457, 0.999041, 3.635269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.988955, 1.616870, 3.868170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.696121, 1.739805, 3.624992>,  <4.520421, 1.813567, 3.479086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.696121, 1.739805, 3.624992>,  <4.988955, 1.616870, 3.868170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.696121, 1.739805, 3.624992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217498, 0.740276, 0.636150,
		0.645559, 0.597942, -0.475098,
		-0.732084, 0.307339, -0.607943,
		4.476496, 1.832007, 3.442609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.009445, 2.395977, 3.899658>,  <4.988955, 1.616870, 3.868170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.009445, 2.395977, 3.899658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.649101, 2.293532, 3.759453>,  <4.432895, 2.232065, 3.675329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.649101, 2.293532, 3.759453>,  <5.009445, 2.395977, 3.899658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.649101, 2.293532, 3.759453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416409, 0.738035, 0.530949,
		0.122708, 0.624268, -0.771513,
		-0.900859, -0.256113, -0.350514,
		4.378844, 2.216698, 3.654299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.668299, 3.003839, 3.458974>,  <5.009445, 2.395977, 3.899658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.668299, 3.003839, 3.458974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.407806, 2.756780, 3.635342>,  <4.251511, 2.608544, 3.741162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.407806, 2.756780, 3.635342>,  <4.668299, 3.003839, 3.458974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.407806, 2.756780, 3.635342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339214, 0.756658, 0.558930,
		-0.678847, 0.214427, -0.702274,
		-0.651231, -0.617648, 0.440918,
		4.212437, 2.571485, 3.767617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
