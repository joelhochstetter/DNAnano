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
	<24.136162, 35.312603, 35.249947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.210329, 34.945110, 35.389404>,  <24.254829, 34.724613, 35.473080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.210329, 34.945110, 35.389404>,  <24.136162, 35.312603, 35.249947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.210329, 34.945110, 35.389404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355151, -0.393469, -0.847968,
		0.916235, 0.033407, -0.399245,
		0.185419, -0.918731, 0.348646,
		24.265955, 34.669491, 35.493999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.467539, 34.837734, 34.753471>,  <24.136162, 35.312603, 35.249947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.467539, 34.837734, 34.753471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.246120, 34.653767, 35.031193>,  <24.113270, 34.543385, 35.197826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.246120, 34.653767, 35.031193>,  <24.467539, 34.837734, 34.753471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.246120, 34.653767, 35.031193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563676, -0.406804, -0.718874,
		0.613071, -0.789293, -0.034061,
		-0.553547, -0.459920, 0.694305,
		24.080057, 34.515789, 35.239483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.048838, 35.136395, 34.859921>,  <24.467539, 34.837734, 34.753471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.048838, 35.136395, 34.859921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396717, 35.228714, 34.685402>,  <25.605446, 35.284107, 34.580692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396717, 35.228714, 34.685402>,  <25.048838, 35.136395, 34.859921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396717, 35.228714, 34.685402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481182, 0.593338, -0.645301,
		0.109936, 0.771156, 0.627082,
		0.869700, 0.230799, -0.436296,
		25.657627, 35.297955, 34.554512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.038101, 35.851879, 34.762508>,  <25.048838, 35.136395, 34.859921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.038101, 35.851879, 34.762508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290375, 35.709820, 34.486507>,  <25.441740, 35.624584, 34.320908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290375, 35.709820, 34.486507>,  <25.038101, 35.851879, 34.762508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.290375, 35.709820, 34.486507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431284, 0.578779, -0.692105,
		0.645159, 0.734088, 0.211859,
		0.630686, -0.355146, -0.690005,
		25.479580, 35.603275, 34.279507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.314331, 36.491875, 34.468742>,  <25.038101, 35.851879, 34.762508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.314331, 36.491875, 34.468742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379707, 36.190903, 34.213512>,  <25.418932, 36.010319, 34.060375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379707, 36.190903, 34.213512>,  <25.314331, 36.491875, 34.468742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.379707, 36.190903, 34.213512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334215, 0.566300, -0.753395,
		0.928218, 0.336388, -0.158918,
		0.163438, -0.752428, -0.638076,
		25.428740, 35.965176, 34.022091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.899862, 36.651054, 33.998287>,  <25.314331, 36.491875, 34.468742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.899862, 36.651054, 33.998287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.627560, 36.417976, 33.820732>,  <25.464178, 36.278130, 33.714199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.627560, 36.417976, 33.820732>,  <25.899862, 36.651054, 33.998287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.627560, 36.417976, 33.820732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124108, 0.688975, -0.714080,
		0.721919, -0.431024, -0.541341,
		-0.680757, -0.582693, -0.443891,
		25.423334, 36.243168, 33.687565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074963, 36.376591, 33.358715>,  <25.899862, 36.651054, 33.998287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.074963, 36.376591, 33.358715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676352, 36.406879, 33.344856>,  <25.437185, 36.425053, 33.336540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676352, 36.406879, 33.344856>,  <26.074963, 36.376591, 33.358715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.676352, 36.406879, 33.344856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079311, 0.736200, -0.672101,
		-0.025383, -0.672515, -0.739649,
		-0.996526, 0.075722, -0.034651,
		25.377394, 36.429596, 33.334461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828827, 36.431507, 32.637550>,  <26.074963, 36.376591, 33.358715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828827, 36.431507, 32.637550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564655, 36.630150, 32.862839>,  <25.406153, 36.749336, 32.998013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564655, 36.630150, 32.862839>,  <25.828827, 36.431507, 32.637550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.564655, 36.630150, 32.862839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028520, 0.766118, -0.642067,
		-0.750349, -0.407975, -0.520128,
		-0.660427, 0.496608, 0.563220,
		25.366528, 36.779133, 33.031803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.380568, 36.728233, 32.151058>,  <25.828827, 36.431507, 32.637550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.380568, 36.728233, 32.151058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.306763, 36.945477, 32.478714>,  <25.262480, 37.075821, 32.675308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.306763, 36.945477, 32.478714>,  <25.380568, 36.728233, 32.151058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.306763, 36.945477, 32.478714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021642, 0.831001, -0.555849,
		-0.982592, -0.120289, -0.141576,
		-0.184512, 0.543109, 0.819139,
		25.251410, 37.108410, 32.724457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.831305, 37.209137, 31.976124>,  <25.380568, 36.728233, 32.151058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.831305, 37.209137, 31.976124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009562, 37.363419, 32.299267>,  <25.116516, 37.455986, 32.493153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009562, 37.363419, 32.299267>,  <24.831305, 37.209137, 31.976124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.009562, 37.363419, 32.299267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066446, 0.885682, -0.459513,
		-0.892741, 0.258458, 0.369070,
		0.445644, 0.385703, 0.807858,
		25.143255, 37.479130, 32.541626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.538879, 37.863873, 32.039139>,  <24.831305, 37.209137, 31.976124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.538879, 37.863873, 32.039139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.881632, 37.898617, 32.242393>,  <25.087284, 37.919464, 32.364346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.881632, 37.898617, 32.242393>,  <24.538879, 37.863873, 32.039139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.881632, 37.898617, 32.242393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094929, 0.942260, -0.321146,
		-0.506696, 0.323422, 0.799160,
		0.856883, 0.086861, 0.508141,
		25.138697, 37.924675, 32.394836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.490004, 38.429993, 32.403538>,  <24.538879, 37.863873, 32.039139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.490004, 38.429993, 32.403538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880573, 38.366650, 32.344856>,  <25.114914, 38.328644, 32.309647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880573, 38.366650, 32.344856>,  <24.490004, 38.429993, 32.403538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.880573, 38.366650, 32.344856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087987, 0.912542, -0.399406,
		0.197121, 0.377081, 0.904960,
		0.976423, -0.158356, -0.146703,
		25.173500, 38.319141, 32.300846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.858799, 38.992985, 32.609859>,  <24.490004, 38.429993, 32.403538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.858799, 38.992985, 32.609859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.083401, 38.808342, 32.335159>,  <25.218163, 38.697556, 32.170338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.083401, 38.808342, 32.335159>,  <24.858799, 38.992985, 32.609859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.083401, 38.808342, 32.335159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148498, 0.872678, -0.465169,
		0.814039, 0.159214, 0.558562,
		0.561506, -0.461611, -0.686750,
		25.251852, 38.669857, 32.129135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.702219, 39.092472, 32.665440>,  <24.858799, 38.992985, 32.609859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.702219, 39.092472, 32.665440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.527597, 39.052837, 32.307758>,  <25.422825, 39.029057, 32.093147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.527597, 39.052837, 32.307758>,  <25.702219, 39.092472, 32.665440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.527597, 39.052837, 32.307758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141209, 0.974051, -0.176872,
		0.888528, -0.203484, -0.411232,
		-0.436552, -0.099086, -0.894206,
		25.396631, 39.023113, 32.039497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346802, 38.845337, 32.314659>,  <25.702219, 39.092472, 32.665440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346802, 38.845337, 32.314659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670414, 38.622192, 32.388702>,  <26.864582, 38.488308, 32.433128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670414, 38.622192, 32.388702>,  <26.346802, 38.845337, 32.314659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670414, 38.622192, 32.388702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404668, -0.300259, 0.863764,
		-0.426278, -0.773718, -0.468666,
		0.809031, -0.557858, 0.185105,
		26.913124, 38.454834, 32.444233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.393833, 38.078407, 32.238647>,  <26.346802, 38.845337, 32.314659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.393833, 38.078407, 32.238647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.038521, 38.213219, 32.363464>,  <25.825333, 38.294106, 32.438354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.038521, 38.213219, 32.363464>,  <26.393833, 38.078407, 32.238647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.038521, 38.213219, 32.363464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036197, -0.728638, 0.683942,
		0.457873, 0.596237, 0.659434,
		-0.888280, 0.337028, 0.312042,
		25.772038, 38.314327, 32.457077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296032, 38.097759, 33.049377>,  <26.393833, 38.078407, 32.238647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296032, 38.097759, 33.049377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.948612, 38.037086, 32.860649>,  <25.740160, 38.000683, 32.747410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.948612, 38.037086, 32.860649>,  <26.296032, 38.097759, 33.049377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.948612, 38.037086, 32.860649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174365, -0.797628, 0.577396,
		-0.463921, 0.583765, 0.666330,
		-0.868547, -0.151681, -0.471825,
		25.688047, 37.991581, 32.719101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.751184, 38.015072, 33.547710>,  <26.296032, 38.097759, 33.049377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.751184, 38.015072, 33.547710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.573595, 37.857452, 33.225815>,  <25.467041, 37.762878, 33.032677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.573595, 37.857452, 33.225815>,  <25.751184, 38.015072, 33.547710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.573595, 37.857452, 33.225815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144366, -0.854919, 0.498268,
		-0.884333, 0.337396, 0.322675,
		-0.443974, -0.394052, -0.804742,
		25.440403, 37.739239, 32.984390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.116123, 37.840816, 33.809437>,  <25.751184, 38.015072, 33.547710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.116123, 37.840816, 33.809437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195417, 37.609589, 33.492821>,  <25.242994, 37.470852, 33.302849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195417, 37.609589, 33.492821>,  <25.116123, 37.840816, 33.809437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.195417, 37.609589, 33.492821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460421, -0.767843, 0.445454,
		-0.865284, 0.276139, -0.418367,
		0.198233, -0.578069, -0.791542,
		25.254887, 37.436169, 33.255360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.484859, 37.449306, 33.739063>,  <25.116123, 37.840816, 33.809437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.484859, 37.449306, 33.739063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.752499, 37.244438, 33.523659>,  <24.913082, 37.121517, 33.394417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.752499, 37.244438, 33.523659>,  <24.484859, 37.449306, 33.739063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.752499, 37.244438, 33.523659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268568, -0.842276, 0.467377,
		-0.692950, -0.168094, -0.701117,
		0.669098, -0.512167, -0.538510,
		24.953228, 37.090790, 33.362106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.149891, 36.854416, 33.502987>,  <24.484859, 37.449306, 33.739063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.149891, 36.854416, 33.502987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.541058, 36.775089, 33.529358>,  <24.775759, 36.727493, 33.545181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.541058, 36.775089, 33.529358>,  <24.149891, 36.854416, 33.502987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.541058, 36.775089, 33.529358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206551, -0.869142, 0.449366,
		-0.031813, -0.453061, -0.890912,
		0.977919, -0.198314, 0.065930,
		24.834433, 36.715595, 33.549137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.282930, 36.229656, 33.213566>,  <24.149891, 36.854416, 33.502987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.282930, 36.229656, 33.213566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.576933, 36.246803, 33.484249>,  <24.753334, 36.257092, 33.646660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.576933, 36.246803, 33.484249>,  <24.282930, 36.229656, 33.213566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.576933, 36.246803, 33.484249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130630, -0.970351, 0.203359,
		0.665359, -0.237868, -0.707613,
		0.735006, 0.042871, 0.676705,
		24.797434, 36.259666, 33.687260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.944254, 35.824566, 33.033375>,  <24.282930, 36.229656, 33.213566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.944254, 35.824566, 33.033375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.881710, 35.851116, 33.427563>,  <24.844185, 35.867046, 33.664074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.881710, 35.851116, 33.427563>,  <24.944254, 35.824566, 33.033375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.881710, 35.851116, 33.427563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461630, -0.886970, -0.013503,
		0.873184, -0.457033, 0.169326,
		-0.156358, 0.066376, 0.985467,
		24.834803, 35.871029, 33.723202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.933691, 35.052822, 33.380909>,  <24.944254, 35.824566, 33.033375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.933691, 35.052822, 33.380909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.142107, 35.388474, 33.443356>,  <25.267157, 35.589867, 33.480824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.142107, 35.388474, 33.443356>,  <24.933691, 35.052822, 33.380909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.142107, 35.388474, 33.443356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767089, -0.540580, 0.345467,
		0.374289, -0.060243, -0.925353,
		0.521040, 0.839133, 0.156121,
		25.298418, 35.640213, 33.490192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.573471, 34.886395, 33.187889>,  <24.933691, 35.052822, 33.380909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.573471, 34.886395, 33.187889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.557074, 35.191917, 33.445545>,  <25.547235, 35.375233, 33.600140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.557074, 35.191917, 33.445545>,  <25.573471, 34.886395, 33.187889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.557074, 35.191917, 33.445545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712284, -0.429765, 0.554936,
		0.700693, 0.481559, -0.526431,
		-0.040993, 0.763808, 0.644140,
		25.544775, 35.421059, 33.638786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.278624, 35.053589, 33.449852>,  <25.573471, 34.886395, 33.187889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.278624, 35.053589, 33.449852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.037966, 35.244267, 33.706223>,  <25.893572, 35.358673, 33.860043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.037966, 35.244267, 33.706223>,  <26.278624, 35.053589, 33.449852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.037966, 35.244267, 33.706223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523112, -0.371233, 0.767164,
		0.603637, 0.796835, -0.026016,
		-0.601645, 0.476698, 0.640924,
		25.857471, 35.387276, 33.898499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694427, 35.339657, 33.883930>,  <26.278624, 35.053589, 33.449852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694427, 35.339657, 33.883930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350082, 35.297489, 34.083050>,  <26.143475, 35.272190, 34.202522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350082, 35.297489, 34.083050>,  <26.694427, 35.339657, 33.883930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350082, 35.297489, 34.083050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492051, -0.421670, 0.761630,
		0.129619, 0.900601, 0.414869,
		-0.860863, -0.105415, 0.497798,
		26.091824, 35.265865, 34.232388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222237, 35.606926, 33.482334>,  <26.694427, 35.339657, 33.883930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222237, 35.606926, 33.482334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341209, 35.513237, 33.112106>,  <27.412594, 35.457024, 32.889969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341209, 35.513237, 33.112106>,  <27.222237, 35.606926, 33.482334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.341209, 35.513237, 33.112106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253418, 0.954034, -0.159992,
		0.920496, -0.186968, 0.343118,
		0.297433, -0.234224, -0.925566,
		27.430439, 35.442970, 32.834438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441124, 36.220139, 33.337013>,  <27.222237, 35.606926, 33.482334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441124, 36.220139, 33.337013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566055, 36.041931, 33.001404>,  <27.641014, 35.935005, 32.800037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566055, 36.041931, 33.001404>,  <27.441124, 36.220139, 33.337013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566055, 36.041931, 33.001404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216627, 0.893341, -0.393720,
		0.924945, -0.058784, 0.375529,
		0.312330, -0.445519, -0.839025,
		27.659754, 35.908276, 32.749695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139908, 36.419979, 33.154869>,  <27.441124, 36.220139, 33.337013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139908, 36.419979, 33.154869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854650, 36.366856, 32.879539>,  <27.683496, 36.334980, 32.714344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854650, 36.366856, 32.879539>,  <28.139908, 36.419979, 33.154869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854650, 36.366856, 32.879539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000682, 0.982021, -0.188768,
		0.701016, -0.134150, -0.700415,
		-0.713146, -0.132807, -0.688321,
		27.640707, 36.327015, 32.673042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628769, 36.266945, 32.599377>,  <28.139908, 36.419979, 33.154869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.628769, 36.266945, 32.599377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781082, 35.958397, 32.803337>,  <28.872471, 35.773270, 32.925713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781082, 35.958397, 32.803337>,  <28.628769, 36.266945, 32.599377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781082, 35.958397, 32.803337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138452, -0.592788, -0.793368,
		0.914239, 0.231506, -0.332522,
		0.380785, -0.771367, 0.509897,
		28.895317, 35.726986, 32.956306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119427, 35.944748, 32.166630>,  <28.628769, 36.266945, 32.599377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119427, 35.944748, 32.166630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974417, 35.671131, 32.419819>,  <28.887411, 35.506962, 32.571732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974417, 35.671131, 32.419819>,  <29.119427, 35.944748, 32.166630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974417, 35.671131, 32.419819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248634, -0.583576, -0.773059,
		0.898196, -0.437633, 0.041485,
		-0.362525, -0.684044, 0.632976,
		28.865660, 35.465919, 32.609711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301857, 35.346790, 31.863684>,  <29.119427, 35.944748, 32.166630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301857, 35.346790, 31.863684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023575, 35.232475, 32.127296>,  <28.856606, 35.163887, 32.285465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023575, 35.232475, 32.127296>,  <29.301857, 35.346790, 31.863684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023575, 35.232475, 32.127296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248390, -0.765150, -0.594011,
		0.674017, -0.576953, 0.461332,
		-0.695704, -0.285783, 0.659033,
		28.814863, 35.146740, 32.325005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.446886, 34.721432, 31.947668>,  <29.301857, 35.346790, 31.863684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.446886, 34.721432, 31.947668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068323, 34.737259, 32.075886>,  <28.841185, 34.746754, 32.152817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068323, 34.737259, 32.075886>,  <29.446886, 34.721432, 31.947668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068323, 34.737259, 32.075886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193449, -0.864193, -0.464487,
		0.258632, -0.501602, 0.825533,
		-0.946407, 0.039567, 0.320543,
		28.784401, 34.749130, 32.172050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315962, 34.064266, 32.134701>,  <29.446886, 34.721432, 31.947668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315962, 34.064266, 32.134701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967417, 34.236660, 32.040909>,  <28.758289, 34.340096, 31.984634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967417, 34.236660, 32.040909>,  <29.315962, 34.064266, 32.134701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967417, 34.236660, 32.040909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204491, -0.753428, -0.624923,
		-0.445993, -0.496587, 0.744642,
		-0.871363, 0.430984, -0.234477,
		28.706009, 34.365955, 31.970566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746855, 33.667614, 32.295128>,  <29.315962, 34.064266, 32.134701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746855, 33.667614, 32.295128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641592, 33.896374, 31.984341>,  <28.578434, 34.033630, 31.797869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641592, 33.896374, 31.984341>,  <28.746855, 33.667614, 32.295128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641592, 33.896374, 31.984341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430613, -0.790306, -0.435876,
		-0.863320, 0.219869, 0.454242,
		-0.263155, 0.571904, -0.776966,
		28.562645, 34.067944, 31.751251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321934, 33.984726, 32.890373>,  <28.746855, 33.667614, 32.295128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.321934, 33.984726, 32.890373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003731, 34.073273, 32.664749>,  <27.812809, 34.126400, 32.529373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003731, 34.073273, 32.664749>,  <28.321934, 33.984726, 32.890373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003731, 34.073273, 32.664749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174597, -0.807658, -0.563208,
		-0.580243, -0.546520, 0.603849,
		-0.795508, 0.221368, -0.564059,
		27.765078, 34.139683, 32.495533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802303, 33.411030, 32.724037>,  <28.321934, 33.984726, 32.890373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802303, 33.411030, 32.724037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.793184, 33.656536, 32.408375>,  <27.787714, 33.803841, 32.218975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.793184, 33.656536, 32.408375>,  <27.802303, 33.411030, 32.724037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793184, 33.656536, 32.408375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086193, -0.785220, -0.613189,
		-0.996018, -0.081998, -0.035003,
		-0.022795, 0.613764, -0.789160,
		27.786346, 33.840664, 32.171627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237209, 33.200218, 32.233524>,  <27.802303, 33.411030, 32.724037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237209, 33.200218, 32.233524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518608, 33.402973, 32.034264>,  <27.687447, 33.524624, 31.914705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518608, 33.402973, 32.034264>,  <27.237209, 33.200218, 32.233524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518608, 33.402973, 32.034264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043823, -0.730544, -0.681458,
		-0.709346, 0.457573, -0.536149,
		0.703497, 0.506885, -0.498156,
		27.729658, 33.555038, 31.884817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067745, 33.307392, 31.553364>,  <27.237209, 33.200218, 32.233524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067745, 33.307392, 31.553364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461456, 33.255779, 31.601608>,  <27.697683, 33.224812, 31.630554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461456, 33.255779, 31.601608>,  <27.067745, 33.307392, 31.553364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461456, 33.255779, 31.601608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011424, -0.727927, -0.685560,
		0.176257, 0.673403, -0.717956,
		0.984278, -0.129036, 0.120610,
		27.756741, 33.217068, 31.637791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.371021, 33.465580, 30.873539>,  <27.067745, 33.307392, 31.553364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.371021, 33.465580, 30.873539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616104, 33.241112, 31.096136>,  <27.763153, 33.106430, 31.229694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616104, 33.241112, 31.096136>,  <27.371021, 33.465580, 30.873539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616104, 33.241112, 31.096136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036885, -0.683072, -0.729419,
		0.789450, 0.467445, -0.397823,
		0.612706, -0.561166, 0.556493,
		27.799915, 33.072762, 31.263084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102739, 33.375000, 30.530544>,  <27.371021, 33.465580, 30.873539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102739, 33.375000, 30.530544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985285, 33.081100, 30.775143>,  <27.914812, 32.904762, 30.921902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985285, 33.081100, 30.775143>,  <28.102739, 33.375000, 30.530544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985285, 33.081100, 30.775143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169953, -0.669630, -0.722988,
		0.940688, -0.108370, 0.321499,
		-0.293636, -0.734746, 0.611495,
		27.897194, 32.860676, 30.958591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668430, 33.556881, 31.055267>,  <28.102739, 33.375000, 30.530544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668430, 33.556881, 31.055267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286953, 33.532188, 31.173018>,  <28.058065, 33.517372, 31.243668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286953, 33.532188, 31.173018>,  <28.668430, 33.556881, 31.055267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286953, 33.532188, 31.173018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123808, 0.811387, 0.571247,
		-0.274114, 0.581241, -0.766173,
		-0.953694, -0.061728, 0.294375,
		28.000845, 33.513672, 31.261330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359497, 34.203186, 30.928928>,  <28.668430, 33.556881, 31.055267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359497, 34.203186, 30.928928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169451, 34.020039, 31.229494>,  <28.055422, 33.910149, 31.409832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169451, 34.020039, 31.229494>,  <28.359497, 34.203186, 30.928928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169451, 34.020039, 31.229494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181077, 0.784798, 0.592708,
		-0.861089, 0.417669, -0.289961,
		-0.475117, -0.457869, 0.751412,
		28.026917, 33.882679, 31.454918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051950, 34.748238, 31.268810>,  <28.359497, 34.203186, 30.928928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.051950, 34.748238, 31.268810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982645, 34.457546, 31.534697>,  <27.941061, 34.283131, 31.694229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982645, 34.457546, 31.534697>,  <28.051950, 34.748238, 31.268810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982645, 34.457546, 31.534697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278687, 0.611164, 0.740818,
		-0.944623, 0.313606, 0.096636,
		-0.173265, -0.726725, 0.664718,
		27.930666, 34.239529, 31.734112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700127, 34.991554, 31.871874>,  <28.051950, 34.748238, 31.268810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700127, 34.991554, 31.871874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.962416, 34.708595, 31.977415>,  <28.119789, 34.538822, 32.040741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.962416, 34.708595, 31.977415>,  <27.700127, 34.991554, 31.871874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.962416, 34.708595, 31.977415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381925, 0.612253, 0.692300,
		-0.651275, -0.353185, 0.671641,
		0.655724, -0.707395, 0.263854,
		28.159132, 34.496376, 32.056572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515022, 34.718670, 32.508301>,  <27.700127, 34.991554, 31.871874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515022, 34.718670, 32.508301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.904013, 34.733051, 32.416214>,  <28.137407, 34.741680, 32.360962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.904013, 34.733051, 32.416214>,  <27.515022, 34.718670, 32.508301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.904013, 34.733051, 32.416214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182877, 0.494498, 0.849722,
		0.144392, -0.868435, 0.474312,
		0.972474, 0.035952, -0.230218,
		28.195755, 34.743835, 32.347149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798666, 34.741173, 33.124737>,  <27.515022, 34.718670, 32.508301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798666, 34.741173, 33.124737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108229, 34.846249, 32.894238>,  <28.293966, 34.909294, 32.755936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108229, 34.846249, 32.894238>,  <27.798666, 34.741173, 33.124737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108229, 34.846249, 32.894238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448380, 0.415312, 0.791500,
		0.447250, -0.870923, 0.203622,
		0.773901, 0.262698, -0.576252,
		28.340401, 34.925056, 32.721363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471779, 34.616592, 33.479298>,  <27.798666, 34.741173, 33.124737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471779, 34.616592, 33.479298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.598822, 34.886898, 33.213226>,  <28.675047, 35.049084, 33.053581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.598822, 34.886898, 33.213226>,  <28.471779, 34.616592, 33.479298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.598822, 34.886898, 33.213226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450216, 0.509917, 0.733001,
		0.834524, -0.532283, -0.142287,
		0.317609, 0.675766, -0.665180,
		28.694105, 35.089626, 33.013672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220987, 34.678905, 33.353668>,  <28.471779, 34.616592, 33.479298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220987, 34.678905, 33.353668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009680, 35.017853, 33.332104>,  <28.882896, 35.221222, 33.319164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009680, 35.017853, 33.332104>,  <29.220987, 34.678905, 33.353668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009680, 35.017853, 33.332104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472620, 0.346202, 0.810416,
		0.705382, 0.402638, -0.583369,
		-0.528268, 0.847365, -0.053910,
		28.851200, 35.272060, 33.315929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637760, 35.310993, 33.247601>,  <29.220987, 34.678905, 33.353668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637760, 35.310993, 33.247601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.302940, 35.395805, 33.449352>,  <29.102049, 35.446693, 33.570404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.302940, 35.395805, 33.449352>,  <29.637760, 35.310993, 33.247601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.302940, 35.395805, 33.449352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546965, 0.346856, 0.761919,
		-0.013398, 0.913639, -0.406306,
		-0.837048, 0.212027, 0.504376,
		29.051826, 35.459412, 33.600666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511461, 36.024467, 33.377033>,  <29.637760, 35.310993, 33.247601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511461, 36.024467, 33.377033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359499, 35.808941, 33.677792>,  <29.268322, 35.679626, 33.858246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359499, 35.808941, 33.677792>,  <29.511461, 36.024467, 33.377033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359499, 35.808941, 33.677792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584174, 0.490488, 0.646654,
		-0.717224, 0.684907, 0.128423,
		-0.379908, -0.538818, 0.751895,
		29.245527, 35.647297, 33.903358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818300, 36.357098, 32.680244>,  <29.511461, 36.024467, 33.377033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818300, 36.357098, 32.680244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209507, 36.412498, 32.742603>,  <30.444231, 36.445740, 32.780018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209507, 36.412498, 32.742603>,  <29.818300, 36.357098, 32.680244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209507, 36.412498, 32.742603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138221, 0.129208, -0.981937,
		-0.156143, 0.981897, 0.107223,
		0.978015, 0.138502, 0.155893,
		30.502913, 36.454048, 32.789371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064968, 36.991623, 32.457920>,  <29.818300, 36.357098, 32.680244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064968, 36.991623, 32.457920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390860, 36.759823, 32.449917>,  <30.586395, 36.620743, 32.445114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390860, 36.759823, 32.449917>,  <30.064968, 36.991623, 32.457920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390860, 36.759823, 32.449917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133498, 0.221049, -0.966083,
		0.564266, 0.784424, 0.257456,
		0.814728, -0.579497, -0.020011,
		30.635279, 36.585972, 32.443913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206789, 37.779564, 32.626564>,  <30.064968, 36.991623, 32.457920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206789, 37.779564, 32.626564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311176, 38.165451, 32.640503>,  <30.373810, 38.396984, 32.648869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311176, 38.165451, 32.640503>,  <30.206789, 37.779564, 32.626564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311176, 38.165451, 32.640503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900909, -0.230422, -0.367788,
		-0.346781, 0.127380, -0.929256,
		0.260970, 0.964718, 0.034851,
		30.389467, 38.454865, 32.650959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111895, 37.308254, 33.191151>,  <30.206789, 37.779564, 32.626564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111895, 37.308254, 33.191151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990011, 37.057602, 33.478062>,  <29.916882, 36.907211, 33.650208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990011, 37.057602, 33.478062>,  <30.111895, 37.308254, 33.191151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990011, 37.057602, 33.478062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918301, 0.006549, 0.395829,
		-0.252735, 0.779290, 0.573439,
		-0.304710, -0.626629, 0.717278,
		29.898598, 36.869614, 33.693245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141712, 37.616978, 33.863026>,  <30.111895, 37.308254, 33.191151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141712, 37.616978, 33.863026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197561, 37.225742, 33.924786>,  <30.231071, 36.991001, 33.961842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197561, 37.225742, 33.924786>,  <30.141712, 37.616978, 33.863026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197561, 37.225742, 33.924786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945737, 0.177925, 0.271891,
		-0.293407, 0.108063, 0.949860,
		0.139623, -0.978093, 0.154403,
		30.239449, 36.932316, 33.971107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303293, 37.574482, 34.564301>,  <30.141712, 37.616978, 33.863026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303293, 37.574482, 34.564301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473339, 37.269260, 34.369560>,  <30.575367, 37.086128, 34.252716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473339, 37.269260, 34.369560>,  <30.303293, 37.574482, 34.564301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473339, 37.269260, 34.369560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898275, 0.421781, 0.123302,
		0.111258, -0.489743, 0.864739,
		0.425117, -0.763055, -0.486851,
		30.600874, 37.040344, 34.223503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784243, 37.249378, 34.975590>,  <30.303293, 37.574482, 34.564301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784243, 37.249378, 34.975590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890827, 37.224773, 34.590836>,  <30.954777, 37.210011, 34.359985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890827, 37.224773, 34.590836>,  <30.784243, 37.249378, 34.975590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890827, 37.224773, 34.590836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876466, 0.430664, 0.215257,
		0.401007, -0.900414, 0.168669,
		0.266460, -0.061514, -0.961881,
		30.970764, 37.206318, 34.302273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421238, 36.854389, 34.907913>,  <30.784243, 37.249378, 34.975590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421238, 36.854389, 34.907913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381567, 37.113556, 34.605824>,  <31.357765, 37.269054, 34.424568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381567, 37.113556, 34.605824>,  <31.421238, 36.854389, 34.907913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381567, 37.113556, 34.605824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828617, 0.474008, 0.297842,
		0.550960, -0.596257, -0.583884,
		-0.099175, 0.647916, -0.755228,
		31.351814, 37.307930, 34.379253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974255, 37.407497, 35.069309>,  <31.421238, 36.854389, 34.907913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974255, 37.407497, 35.069309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134293, 37.591042, 35.386642>,  <32.230316, 37.701168, 35.577042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134293, 37.591042, 35.386642>,  <31.974255, 37.407497, 35.069309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134293, 37.591042, 35.386642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569800, 0.553445, -0.607475,
		-0.717811, 0.695087, -0.040029,
		0.400094, 0.458860, 0.793330,
		32.254322, 37.728699, 35.624641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150051, 36.757523, 34.572975>,  <31.974255, 37.407497, 35.069309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150051, 36.757523, 34.572975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377922, 36.437611, 34.648682>,  <32.514645, 36.245663, 34.694107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377922, 36.437611, 34.648682>,  <32.150051, 36.757523, 34.572975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377922, 36.437611, 34.648682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380786, 0.052768, -0.923156,
		0.728334, 0.597971, 0.334605,
		0.569677, -0.799779, 0.189267,
		32.548824, 36.197678, 34.705463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368286, 36.451511, 34.026596>,  <32.150051, 36.757523, 34.572975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368286, 36.451511, 34.026596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628155, 36.253201, 34.257118>,  <32.784077, 36.134216, 34.395432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628155, 36.253201, 34.257118>,  <32.368286, 36.451511, 34.026596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628155, 36.253201, 34.257118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583587, -0.160574, -0.796017,
		0.487184, 0.853478, 0.185006,
		0.649675, -0.495774, 0.576307,
		32.823059, 36.104469, 34.430012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122005, 36.625332, 33.855278>,  <32.368286, 36.451511, 34.026596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122005, 36.625332, 33.855278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090923, 36.248531, 33.985874>,  <33.072273, 36.022449, 34.064232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090923, 36.248531, 33.985874>,  <33.122005, 36.625332, 33.855278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090923, 36.248531, 33.985874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705145, -0.283436, -0.649949,
		0.704792, 0.179719, 0.686272,
		-0.077706, -0.942001, 0.326491,
		33.067612, 35.965931, 34.083820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729404, 36.438061, 34.075558>,  <33.122005, 36.625332, 33.855278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729404, 36.438061, 34.075558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577606, 36.076588, 33.996227>,  <33.486526, 35.859703, 33.948627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577606, 36.076588, 33.996227>,  <33.729404, 36.438061, 34.075558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577606, 36.076588, 33.996227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706795, -0.144849, -0.692431,
		0.597012, -0.402954, 0.693689,
		-0.379498, -0.903685, -0.198330,
		33.463757, 35.805481, 33.936729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309792, 36.001225, 33.947983>,  <33.729404, 36.438061, 34.075558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309792, 36.001225, 33.947983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990692, 35.827587, 33.780579>,  <33.799232, 35.723404, 33.680134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990692, 35.827587, 33.780579>,  <34.309792, 36.001225, 33.947983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990692, 35.827587, 33.780579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593115, -0.439845, -0.674352,
		0.108651, -0.786193, 0.608355,
		-0.797753, -0.434094, -0.418513,
		33.751366, 35.697361, 33.655025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495033, 35.223866, 33.764755>,  <34.309792, 36.001225, 33.947983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495033, 35.223866, 33.764755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178627, 35.323883, 33.541409>,  <33.988785, 35.383896, 33.407402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178627, 35.323883, 33.541409>,  <34.495033, 35.223866, 33.764755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178627, 35.323883, 33.541409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404093, -0.471717, -0.783704,
		-0.459359, -0.845551, 0.272089,
		-0.791011, 0.250052, -0.558369,
		33.941322, 35.398899, 33.373898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283836, 34.631420, 33.408279>,  <34.495033, 35.223866, 33.764755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283836, 34.631420, 33.408279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196869, 34.969360, 33.212746>,  <34.144688, 35.172123, 33.095425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196869, 34.969360, 33.212746>,  <34.283836, 34.631420, 33.408279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196869, 34.969360, 33.212746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274369, -0.427722, -0.861264,
		-0.936723, -0.321375, -0.138805,
		-0.217419, 0.844850, -0.488833,
		34.131641, 35.222816, 33.066097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847958, 34.537495, 32.836693>,  <34.283836, 34.631420, 33.408279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847958, 34.537495, 32.836693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049313, 34.864891, 32.725925>,  <34.170124, 35.061329, 32.659466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049313, 34.864891, 32.725925>,  <33.847958, 34.537495, 32.836693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049313, 34.864891, 32.725925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187536, -0.416333, -0.889661,
		-0.843465, 0.395912, -0.363072,
		0.503386, 0.818487, -0.276914,
		34.200329, 35.110435, 32.642853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618305, 34.872990, 32.235565>,  <33.847958, 34.537495, 32.836693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618305, 34.872990, 32.235565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006260, 34.969112, 32.219692>,  <34.239033, 35.026787, 32.210167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006260, 34.969112, 32.219692>,  <33.618305, 34.872990, 32.235565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006260, 34.969112, 32.219692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042129, -0.325999, -0.944431,
		-0.239888, 0.914319, -0.326306,
		0.969886, 0.240304, -0.039684,
		34.297226, 35.041203, 32.207787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710789, 35.035305, 31.611715>,  <33.618305, 34.872990, 32.235565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710789, 35.035305, 31.611715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096909, 35.011772, 31.713491>,  <34.328579, 34.997654, 31.774557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096909, 35.011772, 31.713491>,  <33.710789, 35.035305, 31.611715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096909, 35.011772, 31.713491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213173, -0.385322, -0.897822,
		0.150859, 0.920905, -0.359409,
		0.965297, -0.058828, 0.254442,
		34.386497, 34.994125, 31.789824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080555, 35.313469, 30.999264>,  <33.710789, 35.035305, 31.611715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080555, 35.313469, 30.999264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379333, 35.141159, 31.201851>,  <34.558601, 35.037773, 31.323402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379333, 35.141159, 31.201851>,  <34.080555, 35.313469, 30.999264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379333, 35.141159, 31.201851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440895, -0.249270, -0.862251,
		0.497680, 0.867353, 0.003735,
		0.746944, -0.430771, 0.506468,
		34.603416, 35.011929, 31.353792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709324, 35.604858, 30.746389>,  <34.080555, 35.313469, 30.999264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709324, 35.604858, 30.746389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801826, 35.258026, 30.922886>,  <34.857327, 35.049927, 31.028784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801826, 35.258026, 30.922886>,  <34.709324, 35.604858, 30.746389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801826, 35.258026, 30.922886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587093, -0.237277, -0.773964,
		0.775785, 0.438032, 0.454186,
		0.231254, -0.867080, 0.441242,
		34.871204, 34.997902, 31.055258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430237, 35.583485, 30.740738>,  <34.709324, 35.604858, 30.746389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430237, 35.583485, 30.740738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275581, 35.214771, 30.752203>,  <35.182789, 34.993542, 30.759083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275581, 35.214771, 30.752203>,  <35.430237, 35.583485, 30.740738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275581, 35.214771, 30.752203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507297, -0.238535, -0.828101,
		0.770168, -0.305637, 0.559846,
		-0.386641, -0.921785, 0.028664,
		35.159588, 34.938236, 30.760801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003811, 35.094158, 30.633612>,  <35.430237, 35.583485, 30.740738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003811, 35.094158, 30.633612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662033, 34.911869, 30.533823>,  <35.456966, 34.802494, 30.473949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662033, 34.911869, 30.533823>,  <36.003811, 35.094158, 30.633612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662033, 34.911869, 30.533823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445605, -0.395941, -0.802911,
		0.267132, -0.797210, 0.541384,
		-0.854445, -0.455726, -0.249472,
		35.405701, 34.775150, 30.458981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276272, 34.468517, 30.417206>,  <36.003811, 35.094158, 30.633612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276272, 34.468517, 30.417206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895393, 34.491993, 30.297281>,  <35.666866, 34.506077, 30.225327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895393, 34.491993, 30.297281>,  <36.276272, 34.468517, 30.417206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895393, 34.491993, 30.297281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243229, -0.448187, -0.860214,
		-0.184854, -0.892012, 0.412486,
		-0.952191, 0.058686, -0.299812,
		35.609737, 34.509598, 30.207338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203663, 33.882107, 30.141382>,  <36.276272, 34.468517, 30.417206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203663, 33.882107, 30.141382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926262, 34.122585, 29.982582>,  <35.759819, 34.266872, 29.887302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926262, 34.122585, 29.982582>,  <36.203663, 33.882107, 30.141382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926262, 34.122585, 29.982582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250483, -0.315463, -0.915282,
		-0.675507, -0.734194, 0.068185,
		-0.693505, 0.601200, -0.397001,
		35.718212, 34.302944, 29.863482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905724, 33.478867, 29.611568>,  <36.203663, 33.882107, 30.141382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905724, 33.478867, 29.611568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810627, 33.856953, 29.522085>,  <35.753567, 34.083805, 29.468395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810627, 33.856953, 29.522085>,  <35.905724, 33.478867, 29.611568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810627, 33.856953, 29.522085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256117, -0.161161, -0.953117,
		-0.936954, -0.283893, -0.203770,
		-0.237744, 0.945215, -0.223710,
		35.739304, 34.140518, 29.454971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493328, 33.430199, 29.038616>,  <35.905724, 33.478867, 29.611568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493328, 33.430199, 29.038616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610508, 33.812611, 29.033251>,  <35.680817, 34.042057, 29.030031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610508, 33.812611, 29.033251>,  <35.493328, 33.430199, 29.038616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610508, 33.812611, 29.033251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177410, -0.068136, -0.981776,
		-0.939524, 0.285232, -0.189571,
		0.292950, 0.956034, -0.013413,
		35.698395, 34.099422, 29.029226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959972, 33.855164, 28.594543>,  <35.493328, 33.430199, 29.038616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959972, 33.855164, 28.594543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306419, 34.054752, 28.606380>,  <35.514286, 34.174503, 28.613483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306419, 34.054752, 28.606380>,  <34.959972, 33.855164, 28.594543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306419, 34.054752, 28.606380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013075, 0.081800, -0.996563,
		-0.499674, 0.862751, 0.077372,
		0.866115, 0.498968, 0.029593,
		35.566254, 34.204441, 28.615259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972950, 34.182201, 27.991114>,  <34.959972, 33.855164, 28.594543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972950, 34.182201, 27.991114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347679, 34.270500, 28.099649>,  <35.572517, 34.323479, 28.164772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347679, 34.270500, 28.099649>,  <34.972950, 34.182201, 27.991114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347679, 34.270500, 28.099649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232704, 0.185847, -0.954625,
		-0.261160, 0.957461, 0.122738,
		0.936827, 0.220748, 0.271341,
		35.628727, 34.336723, 28.181051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217552, 34.833984, 27.774160>,  <34.972950, 34.182201, 27.991114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217552, 34.833984, 27.774160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568630, 34.648842, 27.823811>,  <35.779278, 34.537754, 27.853601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568630, 34.648842, 27.823811>,  <35.217552, 34.833984, 27.774160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568630, 34.648842, 27.823811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226342, 0.172095, -0.958724,
		0.422394, 0.869565, 0.255812,
		0.877697, -0.462860, 0.124127,
		35.831940, 34.509983, 27.861050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678192, 35.317371, 27.618149>,  <35.217552, 34.833984, 27.774160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678192, 35.317371, 27.618149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879467, 34.973648, 27.581503>,  <36.000233, 34.767414, 27.559515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879467, 34.973648, 27.581503>,  <35.678192, 35.317371, 27.618149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879467, 34.973648, 27.581503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213239, 0.226200, -0.950454,
		0.837457, 0.458717, 0.297058,
		0.503184, -0.859309, -0.091616,
		36.030422, 34.715855, 27.554018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227295, 35.507179, 27.204969>,  <35.678192, 35.317371, 27.618149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227295, 35.507179, 27.204969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241573, 35.109116, 27.168327>,  <36.250141, 34.870277, 27.146341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241573, 35.109116, 27.168327>,  <36.227295, 35.507179, 27.204969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241573, 35.109116, 27.168327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647178, 0.092866, -0.756661,
		0.761503, -0.032276, 0.647357,
		0.035695, -0.995155, -0.091606,
		36.252281, 34.810570, 27.140846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957878, 35.319401, 27.121830>,  <36.227295, 35.507179, 27.204969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957878, 35.319401, 27.121830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755817, 35.002029, 26.986010>,  <36.634583, 34.811607, 26.904518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755817, 35.002029, 26.986010>,  <36.957878, 35.319401, 27.121830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755817, 35.002029, 26.986010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461423, 0.084185, -0.883177,
		0.729322, -0.602815, 0.323580,
		-0.505152, -0.793427, -0.339551,
		36.604271, 34.764000, 26.884144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374081, 34.983654, 26.678112>,  <36.957878, 35.319401, 27.121830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374081, 34.983654, 26.678112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045261, 34.779320, 26.577482>,  <36.847969, 34.656719, 26.517103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045261, 34.779320, 26.577482>,  <37.374081, 34.983654, 26.678112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045261, 34.779320, 26.577482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394842, -0.193021, -0.898244,
		0.410294, -0.837730, 0.360370,
		-0.822045, -0.510834, -0.251576,
		36.798649, 34.626068, 26.502010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586609, 34.291840, 26.437178>,  <37.374081, 34.983654, 26.678112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586609, 34.291840, 26.437178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238457, 34.395962, 26.269999>,  <37.029564, 34.458435, 26.169691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238457, 34.395962, 26.269999>,  <37.586609, 34.291840, 26.437178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238457, 34.395962, 26.269999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377834, -0.191190, -0.905918,
		-0.315723, -0.946408, 0.068055,
		-0.870379, 0.260306, -0.417948,
		36.977345, 34.474052, 26.144613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394451, 33.758526, 25.889774>,  <37.586609, 34.291840, 26.437178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394451, 33.758526, 25.889774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197807, 34.099838, 25.820223>,  <37.079823, 34.304626, 25.778492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197807, 34.099838, 25.820223>,  <37.394451, 33.758526, 25.889774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197807, 34.099838, 25.820223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351040, 0.011453, -0.936291,
		-0.796927, -0.521326, -0.305166,
		-0.491607, 0.853281, -0.173879,
		37.050323, 34.355824, 25.768059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143726, 33.716194, 25.166553>,  <37.394451, 33.758526, 25.889774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143726, 33.716194, 25.166553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094070, 34.108757, 25.225100>,  <37.064278, 34.344296, 25.260227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094070, 34.108757, 25.225100>,  <37.143726, 33.716194, 25.166553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094070, 34.108757, 25.225100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147368, 0.164105, -0.975373,
		-0.981261, -0.099512, -0.165000,
		-0.124138, 0.981411, 0.146365,
		37.056828, 34.403179, 25.269009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753426, 33.927898, 24.589458>,  <37.143726, 33.716194, 25.166553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753426, 33.927898, 24.589458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880398, 34.274395, 24.743795>,  <36.956581, 34.482292, 24.836397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880398, 34.274395, 24.743795>,  <36.753426, 33.927898, 24.589458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880398, 34.274395, 24.743795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315080, 0.287422, -0.904496,
		-0.894408, 0.408681, -0.181699,
		0.317426, 0.866238, 0.385840,
		36.975624, 34.534267, 24.859547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347015, 34.437351, 24.227295>,  <36.753426, 33.927898, 24.589458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347015, 34.437351, 24.227295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686573, 34.603371, 24.358208>,  <36.890308, 34.702980, 24.436756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686573, 34.603371, 24.358208>,  <36.347015, 34.437351, 24.227295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686573, 34.603371, 24.358208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194989, 0.329615, -0.923760,
		-0.491281, 0.847992, 0.198879,
		0.848895, 0.415047, 0.327283,
		36.941242, 34.727886, 24.456392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367241, 35.054260, 23.918316>,  <36.347015, 34.437351, 24.227295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367241, 35.054260, 23.918316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749260, 35.041821, 24.036245>,  <36.978470, 35.034359, 24.107002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749260, 35.041821, 24.036245>,  <36.367241, 35.054260, 23.918316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749260, 35.041821, 24.036245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284940, 0.370815, -0.883915,
		-0.081838, 0.928186, 0.363007,
		0.955046, -0.031098, 0.294823,
		37.035774, 35.032490, 24.124693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662987, 35.655689, 23.698187>,  <36.367241, 35.054260, 23.918316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662987, 35.655689, 23.698187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971851, 35.416512, 23.784191>,  <37.157169, 35.273006, 23.835794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971851, 35.416512, 23.784191>,  <36.662987, 35.655689, 23.698187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971851, 35.416512, 23.784191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532878, 0.425028, -0.731705,
		0.346131, 0.679571, 0.646821,
		0.772162, -0.597942, 0.215012,
		37.203499, 35.237129, 23.848696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191559, 36.152100, 23.666658>,  <36.662987, 35.655689, 23.698187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191559, 36.152100, 23.666658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359188, 35.792210, 23.617880>,  <37.459766, 35.576275, 23.588612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359188, 35.792210, 23.617880>,  <37.191559, 36.152100, 23.666658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359188, 35.792210, 23.617880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554917, 0.360112, -0.749924,
		0.718642, 0.246601, 0.650186,
		0.419072, -0.899726, -0.121948,
		37.484909, 35.522293, 23.581295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954811, 36.296581, 23.658945>,  <37.191559, 36.152100, 23.666658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954811, 36.296581, 23.658945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848644, 35.946297, 23.497612>,  <37.784943, 35.736126, 23.400812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848644, 35.946297, 23.497612>,  <37.954811, 36.296581, 23.658945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848644, 35.946297, 23.497612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537534, 0.212876, -0.815929,
		0.800380, -0.433370, 0.414224,
		-0.265421, -0.875713, -0.403333,
		37.769016, 35.683582, 23.376612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490242, 36.082260, 23.266661>,  <37.954811, 36.296581, 23.658945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490242, 36.082260, 23.266661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188393, 35.868313, 23.114626>,  <38.007282, 35.739944, 23.023405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188393, 35.868313, 23.114626>,  <38.490242, 36.082260, 23.266661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188393, 35.868313, 23.114626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406024, 0.074412, -0.910828,
		0.515454, -0.841654, 0.161015,
		-0.754620, -0.534866, -0.380087,
		37.962006, 35.707851, 23.000599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896442, 35.645233, 22.998753>,  <38.490242, 36.082260, 23.266661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896442, 35.645233, 22.998753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537540, 35.650784, 22.822239>,  <38.322197, 35.654114, 22.716330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537540, 35.650784, 22.822239>,  <38.896442, 35.645233, 22.998753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537540, 35.650784, 22.822239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437272, -0.110119, -0.892562,
		-0.060978, -0.993822, 0.092738,
		-0.897260, 0.013875, -0.441285,
		38.268364, 35.654949, 22.689854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940460, 35.172028, 22.476151>,  <38.896442, 35.645233, 22.998753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940460, 35.172028, 22.476151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629581, 35.394642, 22.358686>,  <38.443054, 35.528210, 22.288208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629581, 35.394642, 22.358686>,  <38.940460, 35.172028, 22.476151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629581, 35.394642, 22.358686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439648, 0.146376, -0.886162,
		-0.450195, -0.817829, -0.358442,
		-0.777196, 0.556534, -0.293659,
		38.396423, 35.561604, 22.270588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828739, 34.966427, 21.750820>,  <38.940460, 35.172028, 22.476151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828739, 34.966427, 21.750820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609570, 35.295254, 21.812771>,  <38.478069, 35.492550, 21.849941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609570, 35.295254, 21.812771>,  <38.828739, 34.966427, 21.750820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609570, 35.295254, 21.812771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271389, 0.349815, -0.896648,
		-0.791283, -0.449261, -0.414771,
		-0.547923, 0.822067, 0.154878,
		38.445194, 35.541874, 21.859234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221737, 34.921463, 21.238333>,  <38.828739, 34.966427, 21.750820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221737, 34.921463, 21.238333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298859, 35.299500, 21.343882>,  <38.345131, 35.526321, 21.407211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298859, 35.299500, 21.343882>,  <38.221737, 34.921463, 21.238333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298859, 35.299500, 21.343882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015866, 0.271886, -0.962199,
		-0.981109, 0.181332, 0.067416,
		0.192806, 0.945091, 0.263873,
		38.356701, 35.583027, 21.423044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722473, 35.278042, 20.819803>,  <38.221737, 34.921463, 21.238333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722473, 35.278042, 20.819803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013531, 35.536201, 20.912746>,  <38.188168, 35.691097, 20.968512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013531, 35.536201, 20.912746>,  <37.722473, 35.278042, 20.819803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013531, 35.536201, 20.912746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080646, 0.416879, -0.905377,
		-0.681193, 0.640058, 0.355390,
		0.727648, 0.645398, 0.232357,
		38.231827, 35.729820, 20.982454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562595, 35.850258, 20.364702>,  <37.722473, 35.278042, 20.819803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562595, 35.850258, 20.364702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946159, 35.899178, 20.467102>,  <38.176296, 35.928528, 20.528542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946159, 35.899178, 20.467102>,  <37.562595, 35.850258, 20.364702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946159, 35.899178, 20.467102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171246, 0.469921, -0.865938,
		-0.226201, 0.874195, 0.429669,
		0.958910, 0.122297, 0.256000,
		38.233833, 35.935867, 20.543901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712536, 36.550941, 20.390291>,  <37.562595, 35.850258, 20.364702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712536, 36.550941, 20.390291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068020, 36.376148, 20.334810>,  <38.281311, 36.271271, 20.301521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068020, 36.376148, 20.334810>,  <37.712536, 36.550941, 20.390291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068020, 36.376148, 20.334810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234499, 0.693230, -0.681501,
		0.393957, 0.573132, 0.718553,
		0.888712, -0.436982, -0.138704,
		38.334633, 36.245052, 20.293200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097187, 37.060356, 20.279512>,  <37.712536, 36.550941, 20.390291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097187, 37.060356, 20.279512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319847, 36.776150, 20.107317>,  <38.453442, 36.605629, 20.004000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319847, 36.776150, 20.107317>,  <38.097187, 37.060356, 20.279512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319847, 36.776150, 20.107317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224876, 0.627716, -0.745254,
		0.799735, 0.318036, 0.509192,
		0.556646, -0.710511, -0.430487,
		38.486839, 36.562996, 19.978170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693298, 37.400185, 20.044273>,  <38.097187, 37.060356, 20.279512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693298, 37.400185, 20.044273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650043, 37.063587, 19.832537>,  <38.624088, 36.861629, 19.705496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650043, 37.063587, 19.832537>,  <38.693298, 37.400185, 20.044273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650043, 37.063587, 19.832537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118897, 0.517694, -0.847264,
		0.987000, -0.154561, 0.044067,
		-0.108140, -0.841489, -0.529341,
		38.617599, 36.811142, 19.673735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299305, 37.484879, 19.640175>,  <38.693298, 37.400185, 20.044273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299305, 37.484879, 19.640175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055779, 37.233841, 19.446074>,  <38.909664, 37.083218, 19.329613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055779, 37.233841, 19.446074>,  <39.299305, 37.484879, 19.640175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055779, 37.233841, 19.446074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157998, 0.503502, -0.849425,
		0.777420, -0.593811, -0.207380,
		-0.608814, -0.627594, -0.485253,
		38.873135, 37.045563, 19.300497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667191, 37.271599, 19.056932>,  <39.299305, 37.484879, 19.640175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667191, 37.271599, 19.056932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287373, 37.174534, 18.977446>,  <39.059483, 37.116295, 18.929754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287373, 37.174534, 18.977446>,  <39.667191, 37.271599, 19.056932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287373, 37.174534, 18.977446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046561, 0.517492, -0.854420,
		0.310169, -0.820559, -0.480082,
		-0.949541, -0.242661, -0.198716,
		39.002510, 37.101734, 18.917831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741329, 36.987469, 18.466879>,  <39.667191, 37.271599, 19.056932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741329, 36.987469, 18.466879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349327, 37.066635, 18.475103>,  <39.114128, 37.114136, 18.480038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349327, 37.066635, 18.475103>,  <39.741329, 36.987469, 18.466879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349327, 37.066635, 18.475103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067994, 0.430193, -0.900173,
		-0.187005, -0.880774, -0.435048,
		-0.980003, 0.197918, 0.020561,
		39.055325, 37.126011, 18.481272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333092, 36.669449, 17.815746>,  <39.741329, 36.987469, 18.466879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333092, 36.669449, 17.815746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106983, 36.964180, 17.964096>,  <38.971317, 37.141018, 18.053106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106983, 36.964180, 17.964096>,  <39.333092, 36.669449, 17.815746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106983, 36.964180, 17.964096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064616, 0.408665, -0.910394,
		-0.822369, -0.538587, -0.183396,
		-0.565274, 0.736829, 0.370874,
		38.937401, 37.185230, 18.075359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836704, 36.782639, 17.268200>,  <39.333092, 36.669449, 17.815746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836704, 36.782639, 17.268200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834846, 37.107655, 17.501354>,  <38.833733, 37.302666, 17.641247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834846, 37.107655, 17.501354>,  <38.836704, 36.782639, 17.268200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834846, 37.107655, 17.501354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120473, 0.578193, -0.806957,
		-0.992706, -0.073969, 0.095204,
		-0.004644, 0.812540, 0.582887,
		38.833454, 37.351418, 17.676220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347927, 37.073959, 16.853832>,  <38.836704, 36.782639, 17.268200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347927, 37.073959, 16.853832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507599, 37.318829, 17.126858>,  <38.603401, 37.465752, 17.290674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507599, 37.318829, 17.126858>,  <38.347927, 37.073959, 16.853832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507599, 37.318829, 17.126858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101192, 0.710486, -0.696397,
		-0.911270, 0.347060, 0.221667,
		0.399183, 0.612175, 0.682565,
		38.627354, 37.502480, 17.331627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918278, 37.720932, 16.954544>,  <38.347927, 37.073959, 16.853832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918278, 37.720932, 16.954544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302212, 37.788116, 17.044434>,  <38.532574, 37.828426, 17.098368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302212, 37.788116, 17.044434>,  <37.918278, 37.720932, 16.954544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302212, 37.788116, 17.044434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048751, 0.688946, -0.723171,
		-0.276288, 0.705083, 0.653088,
		0.959837, 0.167965, 0.224721,
		38.590164, 37.838505, 17.111851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975231, 38.348228, 16.608974>,  <37.918278, 37.720932, 16.954544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975231, 38.348228, 16.608974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760639, 38.672501, 16.702776>,  <37.631886, 38.867062, 16.759056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760639, 38.672501, 16.702776>,  <37.975231, 38.348228, 16.608974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760639, 38.672501, 16.702776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840599, 0.537931, 0.063425,
		-0.074730, 0.231150, -0.970044,
		-0.536478, 0.810679, 0.234504,
		37.599697, 38.915703, 16.773127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097931, 39.089294, 16.185606>,  <37.975231, 38.348228, 16.608974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097931, 39.089294, 16.185606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959682, 39.135071, 16.558155>,  <37.876736, 39.162537, 16.781685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959682, 39.135071, 16.558155>,  <38.097931, 39.089294, 16.185606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959682, 39.135071, 16.558155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918401, 0.244947, 0.310709,
		-0.192579, 0.962759, -0.189760,
		-0.345619, 0.114440, 0.931371,
		37.855995, 39.169403, 16.837566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067219, 39.837364, 16.435442>,  <38.097931, 39.089294, 16.185606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067219, 39.837364, 16.435442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143539, 39.531178, 16.681255>,  <38.189331, 39.347466, 16.828743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143539, 39.531178, 16.681255>,  <38.067219, 39.837364, 16.435442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143539, 39.531178, 16.681255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965701, 0.258689, 0.022399,
		-0.176119, 0.589180, 0.788574,
		0.190799, -0.765471, 0.614532,
		38.200779, 39.301537, 16.865616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543388, 39.991035, 16.918819>,  <38.067219, 39.837364, 16.435442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543388, 39.991035, 16.918819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611176, 39.602188, 16.983643>,  <38.651848, 39.368877, 17.022537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611176, 39.602188, 16.983643>,  <38.543388, 39.991035, 16.918819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611176, 39.602188, 16.983643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934229, 0.210821, 0.287698,
		-0.313843, 0.102644, 0.943910,
		0.169466, -0.972121, 0.162058,
		38.662014, 39.310551, 17.032259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241337, 39.791943, 16.721554>,  <38.543388, 39.991035, 16.918819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241337, 39.791943, 16.721554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160515, 40.169567, 16.825796>,  <39.112022, 40.396141, 16.888342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160515, 40.169567, 16.825796>,  <39.241337, 39.791943, 16.721554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160515, 40.169567, 16.825796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338353, -0.316999, 0.886018,
		0.919070, 0.090848, 0.383479,
		-0.202056, 0.944065, 0.260606,
		39.099899, 40.452785, 16.903978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672676, 40.011654, 17.287601>,  <39.241337, 39.791943, 16.721554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672676, 40.011654, 17.287601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324429, 40.206818, 17.262415>,  <39.115479, 40.323917, 17.247303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324429, 40.206818, 17.262415>,  <39.672676, 40.011654, 17.287601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324429, 40.206818, 17.262415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272148, -0.371037, 0.887844,
		0.409824, 0.790112, 0.455816,
		-0.870620, 0.487909, -0.062968,
		39.063244, 40.353191, 17.243525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531258, 40.374943, 17.909952>,  <39.672676, 40.011654, 17.287601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531258, 40.374943, 17.909952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175388, 40.271404, 17.759499>,  <38.961868, 40.209282, 17.669226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175388, 40.271404, 17.759499>,  <39.531258, 40.374943, 17.909952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175388, 40.271404, 17.759499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368918, -0.077875, 0.926194,
		-0.269032, 0.962775, -0.026210,
		-0.889675, -0.258845, -0.376136,
		38.908485, 40.193752, 17.646658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907578, 40.875687, 18.168346>,  <39.531258, 40.374943, 17.909952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907578, 40.875687, 18.168346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855434, 40.488361, 18.083143>,  <38.824150, 40.255966, 18.032022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855434, 40.488361, 18.083143>,  <38.907578, 40.875687, 18.168346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855434, 40.488361, 18.083143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344960, -0.157121, 0.925373,
		-0.929521, 0.194109, -0.313548,
		-0.130358, -0.968316, -0.213007,
		38.816326, 40.197868, 18.019241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245186, 40.782566, 18.161936>,  <38.907578, 40.875687, 18.168346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245186, 40.782566, 18.161936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471859, 40.466969, 18.256893>,  <38.607864, 40.277611, 18.313868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471859, 40.466969, 18.256893>,  <38.245186, 40.782566, 18.161936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471859, 40.466969, 18.256893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396041, -0.008184, 0.918197,
		-0.722508, -0.614347, -0.317111,
		0.566686, -0.788994, 0.237393,
		38.641865, 40.230270, 18.328112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861893, 40.358620, 18.466263>,  <38.245186, 40.782566, 18.161936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861893, 40.358620, 18.466263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211281, 40.194218, 18.570662>,  <38.420914, 40.095577, 18.633301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211281, 40.194218, 18.570662>,  <37.861893, 40.358620, 18.466263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211281, 40.194218, 18.570662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327237, -0.098675, 0.939776,
		-0.360497, -0.906278, -0.220686,
		0.873475, -0.411003, 0.260995,
		38.473324, 40.070915, 18.648960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657124, 39.900227, 18.985987>,  <37.861893, 40.358620, 18.466263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657124, 39.900227, 18.985987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053677, 39.935642, 19.024616>,  <38.291607, 39.956894, 19.047794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053677, 39.935642, 19.024616>,  <37.657124, 39.900227, 18.985987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053677, 39.935642, 19.024616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090668, -0.068462, 0.993525,
		0.094582, -0.993717, -0.059844,
		0.991380, 0.088543, 0.096574,
		38.351089, 39.962204, 19.053589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786137, 39.374413, 19.321661>,  <37.657124, 39.900227, 18.985987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786137, 39.374413, 19.321661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115028, 39.589561, 19.396101>,  <38.312363, 39.718651, 19.440765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115028, 39.589561, 19.396101>,  <37.786137, 39.374413, 19.321661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115028, 39.589561, 19.396101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052096, -0.254478, 0.965674,
		0.566769, -0.803699, -0.181218,
		0.822228, 0.537873, 0.186100,
		38.361698, 39.750923, 19.451931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116314, 38.945824, 19.727638>,  <37.786137, 39.374413, 19.321661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116314, 38.945824, 19.727638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257347, 39.310932, 19.810123>,  <38.341969, 39.529999, 19.859615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257347, 39.310932, 19.810123>,  <38.116314, 38.945824, 19.727638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257347, 39.310932, 19.810123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049892, -0.201716, 0.978172,
		0.934448, -0.355180, -0.025583,
		0.352587, 0.912775, 0.206214,
		38.363125, 39.584766, 19.871988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593838, 38.809387, 20.270185>,  <38.116314, 38.945824, 19.727638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593838, 38.809387, 20.270185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525055, 39.203224, 20.282951>,  <38.483784, 39.439526, 20.290611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525055, 39.203224, 20.282951>,  <38.593838, 38.809387, 20.270185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525055, 39.203224, 20.282951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058831, -0.042602, 0.997359,
		0.983346, 0.169624, 0.065250,
		-0.171956, 0.984588, 0.031913,
		38.473469, 39.498600, 20.292524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078575, 39.090816, 20.683386>,  <38.593838, 38.809387, 20.270185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078575, 39.090816, 20.683386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762451, 39.335876, 20.686794>,  <38.572777, 39.482914, 20.688839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762451, 39.335876, 20.686794>,  <39.078575, 39.090816, 20.683386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762451, 39.335876, 20.686794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015914, 0.006621, 0.999851,
		0.612506, 0.790324, -0.014982,
		-0.790305, 0.612654, 0.008522,
		38.525360, 39.519672, 20.689350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150436, 39.538605, 21.355053>,  <39.078575, 39.090816, 20.683386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150436, 39.538605, 21.355053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770439, 39.619534, 21.259901>,  <38.542442, 39.668091, 21.202810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770439, 39.619534, 21.259901>,  <39.150436, 39.538605, 21.355053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770439, 39.619534, 21.259901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223039, 0.093572, 0.970308,
		0.218575, 0.974838, -0.043766,
		-0.949989, 0.202323, -0.237880,
		38.485443, 39.680229, 21.188538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924454, 40.106499, 21.682165>,  <39.150436, 39.538605, 21.355053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924454, 40.106499, 21.682165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590324, 39.899178, 21.608856>,  <38.389847, 39.774784, 21.564871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590324, 39.899178, 21.608856>,  <38.924454, 40.106499, 21.682165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590324, 39.899178, 21.608856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279149, 0.112691, 0.953613,
		-0.473609, 0.847739, -0.238818,
		-0.835327, -0.518305, -0.183274,
		38.339725, 39.743687, 21.553875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513695, 40.375046, 22.155054>,  <38.924454, 40.106499, 21.682165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513695, 40.375046, 22.155054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340069, 40.037819, 22.028046>,  <38.235893, 39.835484, 21.951841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340069, 40.037819, 22.028046>,  <38.513695, 40.375046, 22.155054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340069, 40.037819, 22.028046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339843, -0.173176, 0.924401,
		-0.834321, 0.509160, -0.211341,
		-0.434068, -0.843070, -0.317519,
		38.209846, 39.784897, 21.932791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097218, 40.369541, 22.595343>,  <38.513695, 40.375046, 22.155054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097218, 40.369541, 22.595343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065449, 39.998436, 22.449495>,  <38.046387, 39.775772, 22.361986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065449, 39.998436, 22.449495>,  <38.097218, 40.369541, 22.595343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065449, 39.998436, 22.449495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338597, -0.318920, 0.885236,
		-0.937573, 0.193769, -0.288807,
		-0.079425, -0.927763, -0.364621,
		38.041622, 39.720108, 22.340109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453716, 40.165283, 22.786469>,  <38.097218, 40.369541, 22.595343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453716, 40.165283, 22.786469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657215, 39.829510, 22.710012>,  <37.779316, 39.628048, 22.664139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657215, 39.829510, 22.710012>,  <37.453716, 40.165283, 22.786469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657215, 39.829510, 22.710012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363732, -0.410811, 0.836023,
		-0.780306, -0.355799, -0.514325,
		0.508746, -0.839430, -0.191142,
		37.809837, 39.577682, 22.652670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949062, 39.688122, 22.856844>,  <37.453716, 40.165283, 22.786469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949062, 39.688122, 22.856844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296280, 39.490688, 22.878286>,  <37.504612, 39.372227, 22.891151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296280, 39.490688, 22.878286>,  <36.949062, 39.688122, 22.856844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296280, 39.490688, 22.878286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361421, -0.554173, 0.749844,
		-0.340405, -0.670272, -0.659439,
		0.868044, -0.493586, 0.053607,
		37.556694, 39.342613, 22.894369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737881, 38.957230, 22.823154>,  <36.949062, 39.688122, 22.856844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737881, 38.957230, 22.823154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087433, 39.015438, 23.008690>,  <37.297165, 39.050365, 23.120012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087433, 39.015438, 23.008690>,  <36.737881, 38.957230, 22.823154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087433, 39.015438, 23.008690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304448, -0.580029, 0.755565,
		0.378995, -0.801491, -0.462573,
		0.873885, 0.145526, 0.463840,
		37.349598, 39.059097, 23.147842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852779, 38.333847, 23.077114>,  <36.737881, 38.957230, 22.823154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852779, 38.333847, 23.077114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101101, 38.574604, 23.278044>,  <37.250092, 38.719059, 23.398602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101101, 38.574604, 23.278044>,  <36.852779, 38.333847, 23.077114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101101, 38.574604, 23.278044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057193, -0.604264, 0.794729,
		0.781881, -0.522096, -0.340702,
		0.620799, 0.601897, 0.502323,
		37.287342, 38.755173, 23.428741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391083, 37.875160, 23.388687>,  <36.852779, 38.333847, 23.077114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391083, 37.875160, 23.388687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328754, 38.220554, 23.580568>,  <37.291359, 38.427792, 23.695698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328754, 38.220554, 23.580568>,  <37.391083, 37.875160, 23.388687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328754, 38.220554, 23.580568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037329, -0.490435, 0.870678,
		0.987080, 0.117760, 0.108651,
		-0.155817, 0.863485, 0.479703,
		37.282009, 38.479599, 23.724480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768719, 37.781300, 23.977949>,  <37.391083, 37.875160, 23.388687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768719, 37.781300, 23.977949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536770, 38.089767, 24.083050>,  <37.397598, 38.274849, 24.146111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536770, 38.089767, 24.083050>,  <37.768719, 37.781300, 23.977949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536770, 38.089767, 24.083050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050660, -0.356020, 0.933104,
		0.813130, 0.527771, 0.245514,
		-0.579874, 0.771172, 0.262754,
		37.362808, 38.321117, 24.161877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927597, 37.737698, 24.728725>,  <37.768719, 37.781300, 23.977949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927597, 37.737698, 24.728725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622917, 37.996098, 24.708740>,  <37.440109, 38.151138, 24.696749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622917, 37.996098, 24.708740>,  <37.927597, 37.737698, 24.728725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622917, 37.996098, 24.708740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264006, -0.239019, 0.934436,
		0.591708, 0.724947, 0.352609,
		-0.761697, 0.646004, -0.049961,
		37.394409, 38.189899, 24.693752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911411, 38.270962, 25.334064>,  <37.927597, 37.737698, 24.728725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911411, 38.270962, 25.334064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547218, 38.223454, 25.175619>,  <37.328701, 38.194950, 25.080551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547218, 38.223454, 25.175619>,  <37.911411, 38.270962, 25.334064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547218, 38.223454, 25.175619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375051, -0.166369, 0.911953,
		-0.174215, 0.978884, 0.106932,
		-0.910487, -0.118771, -0.396115,
		37.274071, 38.187820, 25.056784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521355, 38.841717, 25.563225>,  <37.911411, 38.270962, 25.334064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521355, 38.841717, 25.563225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269943, 38.539459, 25.489511>,  <37.119099, 38.358105, 25.445284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269943, 38.539459, 25.489511>,  <37.521355, 38.841717, 25.563225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269943, 38.539459, 25.489511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334295, 0.048516, 0.941219,
		-0.702283, 0.653187, -0.283101,
		-0.628527, -0.755641, -0.184286,
		37.081387, 38.312767, 25.434225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901028, 39.002663, 25.813725>,  <37.521355, 38.841717, 25.563225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901028, 39.002663, 25.813725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854748, 38.606682, 25.781189>,  <36.826981, 38.369095, 25.761667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854748, 38.606682, 25.781189>,  <36.901028, 39.002663, 25.813725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854748, 38.606682, 25.781189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595952, 0.003672, 0.803012,
		-0.794641, 0.141384, -0.590386,
		-0.115701, -0.989948, -0.081340,
		36.820038, 38.309696, 25.756786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207817, 38.902401, 26.056728>,  <36.901028, 39.002663, 25.813725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207817, 38.902401, 26.056728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384724, 38.546577, 26.102489>,  <36.490868, 38.333084, 26.129946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384724, 38.546577, 26.102489>,  <36.207817, 38.902401, 26.056728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384724, 38.546577, 26.102489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354777, -0.056365, 0.933250,
		-0.823732, -0.453332, -0.340523,
		0.442266, -0.889558, 0.114402,
		36.517403, 38.279709, 26.136810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805553, 38.544537, 26.526243>,  <36.207817, 38.902401, 26.056728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805553, 38.544537, 26.526243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151772, 38.344284, 26.531853>,  <36.359505, 38.224133, 26.535219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151772, 38.344284, 26.531853>,  <35.805553, 38.544537, 26.526243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151772, 38.344284, 26.531853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099125, -0.143794, 0.984631,
		-0.490920, -0.853635, -0.174086,
		0.865547, -0.500631, 0.014025,
		36.411434, 38.194096, 26.536060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695362, 38.001221, 26.910254>,  <35.805553, 38.544537, 26.526243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695362, 38.001221, 26.910254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092499, 37.973000, 26.948803>,  <36.330780, 37.956066, 26.971933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092499, 37.973000, 26.948803>,  <35.695362, 38.001221, 26.910254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092499, 37.973000, 26.948803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103392, -0.103694, 0.989221,
		-0.059789, -0.992104, -0.110245,
		0.992842, -0.070543, 0.096376,
		36.390350, 37.951836, 26.977715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853348, 37.354015, 27.188559>,  <35.695362, 38.001221, 26.910254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853348, 37.354015, 27.188559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162498, 37.587486, 27.288139>,  <36.347988, 37.727570, 27.347887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162498, 37.587486, 27.288139>,  <35.853348, 37.354015, 27.188559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162498, 37.587486, 27.288139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283491, -0.033391, 0.958393,
		0.567708, -0.811297, 0.139660,
		0.772878, 0.583680, 0.248952,
		36.394363, 37.762589, 27.362825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037792, 37.070698, 27.841572>,  <35.853348, 37.354015, 27.188559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037792, 37.070698, 27.841572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219261, 37.427139, 27.845800>,  <36.328144, 37.641003, 27.848337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219261, 37.427139, 27.845800>,  <36.037792, 37.070698, 27.841572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219261, 37.427139, 27.845800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294913, 0.138932, 0.945370,
		0.840955, -0.432008, 0.325829,
		0.453676, 0.891104, 0.010569,
		36.355366, 37.694469, 27.848970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303848, 37.143539, 28.497274>,  <36.037792, 37.070698, 27.841572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303848, 37.143539, 28.497274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234272, 37.507614, 28.346914>,  <36.192528, 37.726059, 28.256699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234272, 37.507614, 28.346914>,  <36.303848, 37.143539, 28.497274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234272, 37.507614, 28.346914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443351, 0.268466, 0.855199,
		0.879310, 0.315410, 0.356836,
		-0.173940, 0.910188, -0.375902,
		36.182091, 37.780670, 28.234144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594650, 37.758110, 28.860241>,  <36.303848, 37.143539, 28.497274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594650, 37.758110, 28.860241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311333, 37.962017, 28.664911>,  <36.141342, 38.084362, 28.547714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311333, 37.962017, 28.664911>,  <36.594650, 37.758110, 28.860241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311333, 37.962017, 28.664911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319298, 0.385598, 0.865658,
		0.629579, 0.769060, -0.110349,
		-0.708293, 0.509765, -0.488324,
		36.098846, 38.114948, 28.518414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712837, 38.424294, 29.044083>,  <36.594650, 37.758110, 28.860241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712837, 38.424294, 29.044083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330704, 38.385109, 28.932549>,  <36.101425, 38.361599, 28.865629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330704, 38.385109, 28.932549>,  <36.712837, 38.424294, 29.044083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330704, 38.385109, 28.932549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286917, 0.533645, 0.795551,
		0.070868, 0.840016, -0.537913,
		-0.955331, -0.097957, -0.278833,
		36.044106, 38.355721, 28.848898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367821, 39.105488, 29.197651>,  <36.712837, 38.424294, 29.044083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367821, 39.105488, 29.197651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063148, 38.852734, 29.140282>,  <35.880344, 38.701080, 29.105860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063148, 38.852734, 29.140282>,  <36.367821, 39.105488, 29.197651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063148, 38.852734, 29.140282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535686, 0.489559, 0.688021,
		-0.364535, 0.600880, -0.711377,
		-0.761679, -0.631882, -0.143422,
		35.834644, 38.663170, 29.097256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786594, 39.455990, 29.207052>,  <36.367821, 39.105488, 29.197651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786594, 39.455990, 29.207052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651344, 39.089363, 29.292446>,  <35.570194, 38.869385, 29.343683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651344, 39.089363, 29.292446>,  <35.786594, 39.455990, 29.207052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651344, 39.089363, 29.292446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506780, 0.368477, 0.779358,
		-0.792999, 0.155329, -0.589089,
		-0.338123, -0.916569, 0.213484,
		35.549908, 38.814392, 29.356491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187256, 39.602203, 29.561953>,  <35.786594, 39.455990, 29.207052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187256, 39.602203, 29.561953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292854, 39.228073, 29.656168>,  <35.356213, 39.003597, 29.712698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292854, 39.228073, 29.656168>,  <35.187256, 39.602203, 29.561953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292854, 39.228073, 29.656168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375322, 0.125340, 0.918381,
		-0.888504, -0.330851, -0.317958,
		0.263994, -0.935322, 0.235540,
		35.372051, 38.947475, 29.726830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537067, 39.269676, 29.806242>,  <35.187256, 39.602203, 29.561953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537067, 39.269676, 29.806242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859936, 39.083820, 29.951889>,  <35.053658, 38.972309, 30.039278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859936, 39.083820, 29.951889>,  <34.537067, 39.269676, 29.806242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859936, 39.083820, 29.951889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461551, -0.112200, 0.879990,
		-0.368021, -0.878365, -0.305018,
		0.807175, -0.464636, 0.364119,
		35.102089, 38.944431, 30.061125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265236, 38.842056, 30.428577>,  <34.537067, 39.269676, 29.806242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265236, 38.842056, 30.428577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659218, 38.804466, 30.486574>,  <34.895607, 38.781910, 30.521372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659218, 38.804466, 30.486574>,  <34.265236, 38.842056, 30.428577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659218, 38.804466, 30.486574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160354, -0.184635, 0.969637,
		-0.064349, -0.978304, -0.196927,
		0.984960, -0.093973, 0.144994,
		34.954704, 38.776272, 30.530073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333275, 38.059635, 30.659000>,  <34.265236, 38.842056, 30.428577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333275, 38.059635, 30.659000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652618, 38.265255, 30.784460>,  <34.844223, 38.388626, 30.859735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652618, 38.265255, 30.784460>,  <34.333275, 38.059635, 30.659000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652618, 38.265255, 30.784460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199097, -0.266239, 0.943121,
		0.568318, -0.815395, -0.110208,
		0.798358, 0.514051, 0.313651,
		34.892124, 38.419472, 30.878555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685387, 37.620060, 31.071150>,  <34.333275, 38.059635, 30.659000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685387, 37.620060, 31.071150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831871, 37.977699, 31.174286>,  <34.919762, 38.192284, 31.236168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831871, 37.977699, 31.174286>,  <34.685387, 37.620060, 31.071150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831871, 37.977699, 31.174286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017430, -0.270448, 0.962577,
		0.930368, -0.357001, -0.083457,
		0.366211, 0.894096, 0.257839,
		34.941734, 38.245930, 31.251638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260578, 37.505623, 31.488546>,  <34.685387, 37.620060, 31.071150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260578, 37.505623, 31.488546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125046, 37.872200, 31.573711>,  <35.043728, 38.092144, 31.624811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125046, 37.872200, 31.573711>,  <35.260578, 37.505623, 31.488546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125046, 37.872200, 31.573711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018050, -0.219928, 0.975349,
		0.940674, 0.334321, 0.057976,
		-0.338831, 0.916439, 0.212915,
		35.023396, 38.147133, 31.637587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602757, 37.668816, 32.047371>,  <35.260578, 37.505623, 31.488546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602757, 37.668816, 32.047371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323933, 37.954464, 32.073101>,  <35.156639, 38.125851, 32.088539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323933, 37.954464, 32.073101>,  <35.602757, 37.668816, 32.047371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323933, 37.954464, 32.073101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119319, -0.203999, 0.971672,
		0.707011, 0.669642, 0.227408,
		-0.697064, 0.714117, 0.064329,
		35.114815, 38.168697, 32.092400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719486, 38.033436, 32.687992>,  <35.602757, 37.668816, 32.047371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719486, 38.033436, 32.687992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340305, 38.115963, 32.590977>,  <35.112797, 38.165478, 32.532768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340305, 38.115963, 32.590977>,  <35.719486, 38.033436, 32.687992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340305, 38.115963, 32.590977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271008, -0.122870, 0.954703,
		0.167168, 0.970740, 0.172388,
		-0.947950, 0.206315, -0.242538,
		35.055920, 38.177856, 32.518215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118141, 37.612907, 33.182407>,  <35.719486, 38.033436, 32.687992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118141, 37.612907, 33.182407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059269, 37.354328, 33.481857>,  <36.023945, 37.199181, 33.661526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059269, 37.354328, 33.481857>,  <36.118141, 37.612907, 33.182407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059269, 37.354328, 33.481857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231285, -0.758379, -0.609400,
		0.961688, 0.083452, 0.261135,
		-0.147183, -0.646450, 0.748625,
		36.015114, 37.160393, 33.706444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787148, 37.773209, 32.906883>,  <36.118141, 37.612907, 33.182407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787148, 37.773209, 32.906883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181702, 37.731064, 32.957378>,  <37.418434, 37.705776, 32.987675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181702, 37.731064, 32.957378>,  <36.787148, 37.773209, 32.906883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181702, 37.731064, 32.957378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162744, 0.515871, -0.841065,
		0.023494, 0.850162, 0.525997,
		0.986389, -0.105363, 0.126239,
		37.477619, 37.699455, 32.995251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126324, 38.392242, 32.690674>,  <36.787148, 37.773209, 32.906883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126324, 38.392242, 32.690674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434818, 38.139359, 32.660984>,  <37.619915, 37.987629, 32.643169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434818, 38.139359, 32.660984>,  <37.126324, 38.392242, 32.690674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434818, 38.139359, 32.660984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288776, 0.451400, -0.844302,
		0.567281, 0.629721, 0.530702,
		0.771233, -0.632211, -0.074222,
		37.666187, 37.949696, 32.638718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694000, 38.817127, 32.490097>,  <37.126324, 38.392242, 32.690674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694000, 38.817127, 32.490097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833820, 38.452209, 32.404743>,  <37.917713, 38.233257, 32.353531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833820, 38.452209, 32.404743>,  <37.694000, 38.817127, 32.490097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833820, 38.452209, 32.404743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294158, 0.323093, -0.899490,
		0.889542, 0.251650, 0.381296,
		0.349551, -0.912295, -0.213380,
		37.938686, 38.178520, 32.340729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352581, 38.967030, 32.224186>,  <37.694000, 38.817127, 32.490097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352581, 38.967030, 32.224186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247494, 38.606609, 32.086155>,  <38.184441, 38.390358, 32.003334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247494, 38.606609, 32.086155>,  <38.352581, 38.967030, 32.224186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247494, 38.606609, 32.086155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367383, 0.237287, -0.899291,
		0.892193, -0.363037, 0.268692,
		-0.262718, -0.901054, -0.345080,
		38.168678, 38.336292, 31.982632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934933, 38.655308, 31.972895>,  <38.352581, 38.967030, 32.224186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934933, 38.655308, 31.972895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641029, 38.453827, 31.791166>,  <38.464687, 38.332939, 31.682129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641029, 38.453827, 31.791166>,  <38.934933, 38.655308, 31.972895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641029, 38.453827, 31.791166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371468, 0.261621, -0.890823,
		0.567574, -0.823307, -0.005118,
		-0.734759, -0.503707, -0.454322,
		38.420601, 38.302715, 31.654869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270893, 38.382721, 31.335909>,  <38.934933, 38.655308, 31.972895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270893, 38.382721, 31.335909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884491, 38.313995, 31.258644>,  <38.652649, 38.272758, 31.212284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884491, 38.313995, 31.258644>,  <39.270893, 38.382721, 31.335909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884491, 38.313995, 31.258644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113679, 0.388757, -0.914300,
		0.232183, -0.905178, -0.356010,
		-0.966006, -0.171814, -0.193163,
		38.594688, 38.262451, 31.200695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190876, 38.108406, 30.636444>,  <39.270893, 38.382721, 31.335909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190876, 38.108406, 30.636444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826141, 38.255253, 30.709961>,  <38.607300, 38.343361, 30.754070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826141, 38.255253, 30.709961>,  <39.190876, 38.108406, 30.636444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826141, 38.255253, 30.709961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038514, 0.369198, -0.928552,
		-0.408746, -0.853765, -0.322508,
		-0.911836, 0.367121, 0.183790,
		38.552589, 38.365391, 30.765099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806545, 37.824425, 30.036444>,  <39.190876, 38.108406, 30.636444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806545, 37.824425, 30.036444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623211, 38.130054, 30.218042>,  <38.513210, 38.313435, 30.327002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623211, 38.130054, 30.218042>,  <38.806545, 37.824425, 30.036444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623211, 38.130054, 30.218042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067504, 0.479406, -0.874993,
		-0.886210, -0.431691, -0.168152,
		-0.458340, 0.764077, 0.453995,
		38.485710, 38.359276, 30.354240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398010, 38.215672, 29.497446>,  <38.806545, 37.824425, 30.036444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398010, 38.215672, 29.497446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398220, 38.500019, 29.778776>,  <38.398346, 38.670628, 29.947575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398220, 38.500019, 29.778776>,  <38.398010, 38.215672, 29.497446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398220, 38.500019, 29.778776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093727, 0.700266, -0.707703,
		-0.995598, -0.065547, 0.066997,
		0.000528, 0.710867, 0.703326,
		38.398380, 38.713280, 29.989775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806023, 38.742073, 29.347298>,  <38.398010, 38.215672, 29.497446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806023, 38.742073, 29.347298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078526, 38.933365, 29.568993>,  <38.242027, 39.048141, 29.702009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078526, 38.933365, 29.568993>,  <37.806023, 38.742073, 29.347298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078526, 38.933365, 29.568993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006990, 0.752825, -0.658183,
		-0.732007, 0.452268, 0.509528,
		0.681261, 0.478233, 0.554235,
		38.282906, 39.076836, 29.735264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599689, 39.418663, 29.289278>,  <37.806023, 38.742073, 29.347298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599689, 39.418663, 29.289278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979443, 39.426514, 29.414686>,  <38.207294, 39.431225, 29.489931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979443, 39.426514, 29.414686>,  <37.599689, 39.418663, 29.289278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979443, 39.426514, 29.414686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229194, 0.639261, -0.734041,
		-0.214825, 0.768739, 0.602403,
		0.949379, 0.019624, 0.313520,
		38.264256, 39.432400, 29.508741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824947, 40.142097, 29.337173>,  <37.599689, 39.418663, 29.289278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824947, 40.142097, 29.337173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165276, 39.936749, 29.292370>,  <38.369473, 39.813538, 29.265488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165276, 39.936749, 29.292370>,  <37.824947, 40.142097, 29.337173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165276, 39.936749, 29.292370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242499, 0.572746, -0.783043,
		0.466147, 0.639069, 0.611799,
		0.850824, -0.513374, -0.112010,
		38.420525, 39.782738, 29.258766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280228, 40.625050, 29.132114>,  <37.824947, 40.142097, 29.337173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280228, 40.625050, 29.132114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511497, 40.313171, 29.035961>,  <38.650261, 40.126045, 28.978270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511497, 40.313171, 29.035961>,  <38.280228, 40.625050, 29.132114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511497, 40.313171, 29.035961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124341, 0.375378, -0.918494,
		0.806380, 0.501165, 0.313984,
		0.578179, -0.779696, -0.240382,
		38.684952, 40.079262, 28.963846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792217, 40.919617, 28.776672>,  <38.280228, 40.625050, 29.132114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792217, 40.919617, 28.776672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825928, 40.532040, 28.683672>,  <38.846153, 40.299496, 28.627872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825928, 40.532040, 28.683672>,  <38.792217, 40.919617, 28.776672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825928, 40.532040, 28.683672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189455, 0.244656, -0.950921,
		0.978266, 0.036093, 0.204189,
		0.084278, -0.968938, -0.232501,
		38.851212, 40.241360, 28.613922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509087, 40.735622, 28.349115>,  <38.792217, 40.919617, 28.776672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509087, 40.735622, 28.349115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221424, 40.468281, 28.273098>,  <39.048824, 40.307877, 28.227488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221424, 40.468281, 28.273098>,  <39.509087, 40.735622, 28.349115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221424, 40.468281, 28.273098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206419, 0.055663, -0.976879,
		0.663478, -0.741759, 0.097930,
		-0.719158, -0.668352, -0.190044,
		39.005676, 40.267776, 28.216085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825768, 40.277592, 27.875048>,  <39.509087, 40.735622, 28.349115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825768, 40.277592, 27.875048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430916, 40.236427, 27.826078>,  <39.194004, 40.211727, 27.796698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430916, 40.236427, 27.826078>,  <39.825768, 40.277592, 27.875048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430916, 40.236427, 27.826078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125964, -0.028634, -0.991621,
		0.098548, -0.994278, 0.041229,
		-0.987128, -0.102916, -0.122422,
		39.134777, 40.205551, 27.789352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720264, 39.772747, 27.390099>,  <39.825768, 40.277592, 27.875048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720264, 39.772747, 27.390099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377384, 39.977798, 27.370459>,  <39.171654, 40.100830, 27.358675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377384, 39.977798, 27.370459>,  <39.720264, 39.772747, 27.390099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377384, 39.977798, 27.370459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003469, -0.089593, -0.995972,
		-0.514964, -0.853923, 0.075021,
		-0.857205, 0.512629, -0.049100,
		39.120224, 40.131588, 27.355728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302689, 39.431610, 26.920145>,  <39.720264, 39.772747, 27.390099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302689, 39.431610, 26.920145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091816, 39.771469, 26.914623>,  <38.965294, 39.975384, 26.911310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091816, 39.771469, 26.914623>,  <39.302689, 39.431610, 26.920145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091816, 39.771469, 26.914623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257216, -0.175034, -0.950370,
		-0.809892, -0.497463, 0.310816,
		-0.527177, 0.849643, -0.013803,
		38.933662, 40.026363, 26.910482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614922, 39.296597, 26.632193>,  <39.302689, 39.431610, 26.920145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614922, 39.296597, 26.632193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723232, 39.679768, 26.594135>,  <38.788219, 39.909672, 26.571301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723232, 39.679768, 26.594135>,  <38.614922, 39.296597, 26.632193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723232, 39.679768, 26.594135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233945, -0.030389, -0.971775,
		-0.933782, 0.285395, 0.215873,
		0.270779, 0.957928, -0.095144,
		38.804466, 39.967148, 26.565592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198521, 39.534115, 26.084726>,  <38.614922, 39.296597, 26.632193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198521, 39.534115, 26.084726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505131, 39.789619, 26.111340>,  <38.689095, 39.942921, 26.127308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505131, 39.789619, 26.111340>,  <38.198521, 39.534115, 26.084726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505131, 39.789619, 26.111340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089422, -0.003563, -0.995987,
		-0.635963, 0.769395, -0.059851,
		0.766521, 0.638763, 0.066535,
		38.735088, 39.981247, 26.131300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174774, 39.953098, 25.535519>,  <38.198521, 39.534115, 26.084726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174774, 39.953098, 25.535519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545658, 40.056282, 25.644133>,  <38.768188, 40.118191, 25.709301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545658, 40.056282, 25.644133>,  <38.174774, 39.953098, 25.535519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545658, 40.056282, 25.644133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281373, -0.001274, -0.959598,
		-0.247192, 0.966155, -0.073764,
		0.927214, 0.257960, 0.271535,
		38.823822, 40.133671, 25.725594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379818, 40.501259, 25.039951>,  <38.174774, 39.953098, 25.535519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379818, 40.501259, 25.039951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706673, 40.336433, 25.201189>,  <38.902786, 40.237537, 25.297932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706673, 40.336433, 25.201189>,  <38.379818, 40.501259, 25.039951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706673, 40.336433, 25.201189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433943, -0.020573, -0.900706,
		0.379444, 0.910921, 0.162002,
		0.817139, -0.412067, 0.403094,
		38.951813, 40.212814, 25.322117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954788, 40.822941, 24.637445>,  <38.379818, 40.501259, 25.039951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954788, 40.822941, 24.637445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101433, 40.493610, 24.810757>,  <39.189419, 40.296013, 24.914743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101433, 40.493610, 24.810757>,  <38.954788, 40.822941, 24.637445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101433, 40.493610, 24.810757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523575, -0.202389, -0.827591,
		0.769069, 0.530257, 0.356876,
		0.366609, -0.823326, 0.433280,
		39.211414, 40.246613, 24.940741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659966, 40.730259, 24.400496>,  <38.954788, 40.822941, 24.637445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659966, 40.730259, 24.400496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597168, 40.365257, 24.551588>,  <39.559490, 40.146255, 24.642242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597168, 40.365257, 24.551588>,  <39.659966, 40.730259, 24.400496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597168, 40.365257, 24.551588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598386, -0.392166, -0.698670,
		0.785675, 0.116339, 0.607602,
		-0.156998, -0.912508, 0.377730,
		39.550068, 40.091503, 24.664907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293228, 40.430435, 24.560360>,  <39.659966, 40.730259, 24.400496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293228, 40.430435, 24.560360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041100, 40.123840, 24.511066>,  <39.889824, 39.939884, 24.481491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041100, 40.123840, 24.511066>,  <40.293228, 40.430435, 24.560360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041100, 40.123840, 24.511066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560492, -0.339474, -0.755385,
		0.537161, -0.545206, 0.643590,
		-0.630322, -0.766490, -0.123232,
		39.852001, 39.893894, 24.474096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711964, 39.879253, 24.534628>,  <40.293228, 40.430435, 24.560360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711964, 39.879253, 24.534628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401730, 39.783993, 24.300789>,  <40.215591, 39.726837, 24.160486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401730, 39.783993, 24.300789>,  <40.711964, 39.879253, 24.534628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401730, 39.783993, 24.300789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630100, -0.347860, -0.694238,
		-0.038022, -0.906794, 0.419856,
		-0.775582, -0.238155, -0.584598,
		40.169056, 39.712547, 24.125410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965775, 39.363876, 24.140450>,  <40.711964, 39.879253, 24.534628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965775, 39.363876, 24.140450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623005, 39.428299, 23.944592>,  <40.417343, 39.466953, 23.827078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623005, 39.428299, 23.944592>,  <40.965775, 39.363876, 24.140450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623005, 39.428299, 23.944592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423765, -0.320680, -0.847106,
		-0.293439, -0.933397, 0.206553,
		-0.856923, 0.161044, -0.489641,
		40.365929, 39.476616, 23.797699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817444, 38.713699, 23.890453>,  <40.965775, 39.363876, 24.140450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817444, 38.713699, 23.890453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658787, 39.017395, 23.684063>,  <40.563591, 39.199612, 23.560228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658787, 39.017395, 23.684063>,  <40.817444, 38.713699, 23.890453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658787, 39.017395, 23.684063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327905, -0.407814, -0.852154,
		-0.857410, -0.507193, -0.087201,
		-0.396645, 0.759239, -0.515975,
		40.539795, 39.245167, 23.529270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460510, 38.399044, 23.448902>,  <40.817444, 38.713699, 23.890453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460510, 38.399044, 23.448902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543537, 38.762192, 23.303194>,  <40.593353, 38.980080, 23.215769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543537, 38.762192, 23.303194>,  <40.460510, 38.399044, 23.448902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543537, 38.762192, 23.303194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123984, -0.393796, -0.910798,
		-0.970331, 0.143891, -0.194301,
		0.207571, 0.907866, -0.364272,
		40.605808, 39.034550, 23.193913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048828, 38.408817, 22.923315>,  <40.460510, 38.399044, 23.448902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048828, 38.408817, 22.923315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324821, 38.689404, 22.851912>,  <40.490417, 38.857758, 22.809071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324821, 38.689404, 22.851912>,  <40.048828, 38.408817, 22.923315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324821, 38.689404, 22.851912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042327, -0.285295, -0.957505,
		-0.722587, 0.653106, -0.226540,
		0.689983, 0.701469, -0.178506,
		40.531815, 38.899845, 22.798359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929939, 38.732922, 22.224567>,  <40.048828, 38.408817, 22.923315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929939, 38.732922, 22.224567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301994, 38.865208, 22.288406>,  <40.525227, 38.944580, 22.326710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301994, 38.865208, 22.288406>,  <39.929939, 38.732922, 22.224567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301994, 38.865208, 22.288406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197542, -0.084265, -0.976666,
		-0.309553, 0.939960, -0.143709,
		0.930137, 0.330718, 0.159597,
		40.581036, 38.964424, 22.336285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073322, 39.206253, 21.716354>,  <39.929939, 38.732922, 22.224567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073322, 39.206253, 21.716354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435303, 39.094097, 21.844387>,  <40.652489, 39.026806, 21.921206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435303, 39.094097, 21.844387>,  <40.073322, 39.206253, 21.716354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435303, 39.094097, 21.844387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313139, -0.070504, -0.947087,
		0.288116, 0.957295, 0.023997,
		0.904949, -0.280385, 0.320080,
		40.706787, 39.009983, 21.940411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603027, 39.541206, 21.408026>,  <40.073322, 39.206253, 21.716354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603027, 39.541206, 21.408026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808556, 39.226345, 21.544485>,  <40.931873, 39.037430, 21.626360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808556, 39.226345, 21.544485>,  <40.603027, 39.541206, 21.408026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808556, 39.226345, 21.544485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399428, -0.132424, -0.907150,
		0.759240, 0.602376, 0.246368,
		0.513821, -0.787151, 0.341147,
		40.962704, 38.990200, 21.646830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386940, 39.554874, 21.206409>,  <40.603027, 39.541206, 21.408026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386940, 39.554874, 21.206409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341942, 39.162670, 21.270836>,  <41.314945, 38.927349, 21.309492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341942, 39.162670, 21.270836>,  <41.386940, 39.554874, 21.206409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341942, 39.162670, 21.270836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463486, -0.195158, -0.864346,
		0.878934, -0.022581, 0.476408,
		-0.112493, -0.980512, 0.161065,
		41.308193, 38.868515, 21.319155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993576, 39.255424, 20.962147>,  <41.386940, 39.554874, 21.206409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993576, 39.255424, 20.962147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712402, 38.970936, 20.964914>,  <41.543697, 38.800243, 20.966576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712402, 38.970936, 20.964914>,  <41.993576, 39.255424, 20.962147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712402, 38.970936, 20.964914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379602, -0.383372, -0.841979,
		0.601483, -0.589232, 0.539466,
		-0.702937, -0.711219, 0.006918,
		41.501522, 38.757572, 20.966990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319252, 38.675419, 20.733221>,  <41.993576, 39.255424, 20.962147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319252, 38.675419, 20.733221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936691, 38.567291, 20.688993>,  <41.707153, 38.502415, 20.662457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936691, 38.567291, 20.688993>,  <42.319252, 38.675419, 20.733221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936691, 38.567291, 20.688993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243207, -0.527534, -0.813977,
		0.161706, -0.805378, 0.570278,
		-0.956400, -0.270321, -0.110568,
		41.649773, 38.486195, 20.655823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311859, 37.982887, 20.520712>,  <42.319252, 38.675419, 20.733221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311859, 37.982887, 20.520712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954403, 38.114796, 20.398954>,  <41.739929, 38.193939, 20.325899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954403, 38.114796, 20.398954>,  <42.311859, 37.982887, 20.520712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954403, 38.114796, 20.398954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168604, -0.381878, -0.908703,
		-0.415911, -0.863375, 0.285659,
		-0.893639, 0.329776, -0.304396,
		41.686310, 38.213726, 20.307636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995110, 38.078403, 20.236032>,  <42.311859, 37.982887, 20.520712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995110, 38.078403, 20.236032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369915, 37.968502, 20.322306>,  <43.594799, 37.902561, 20.374069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369915, 37.968502, 20.322306>,  <42.995110, 38.078403, 20.236032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369915, 37.968502, 20.322306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248429, -0.090145, 0.964447,
		-0.245543, -0.957279, -0.152724,
		0.937012, -0.274754, 0.215681,
		43.651020, 37.886074, 20.387011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929993, 37.487598, 20.505371>,  <42.995110, 38.078403, 20.236032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929993, 37.487598, 20.505371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.280262, 37.633160, 20.632349>,  <43.490425, 37.720497, 20.708536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.280262, 37.633160, 20.632349>,  <42.929993, 37.487598, 20.505371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280262, 37.633160, 20.632349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216689, -0.291366, 0.931747,
		0.431557, -0.884692, -0.176288,
		0.875673, 0.363903, 0.317444,
		43.542965, 37.742329, 20.727583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197750, 36.980858, 21.010689>,  <42.929993, 37.487598, 20.505371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197750, 36.980858, 21.010689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436554, 37.295052, 21.075926>,  <43.579834, 37.483566, 21.115068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436554, 37.295052, 21.075926>,  <43.197750, 36.980858, 21.010689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.436554, 37.295052, 21.075926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132624, -0.103867, 0.985709,
		0.791197, -0.610107, 0.042164,
		0.597008, 0.785482, 0.163094,
		43.615658, 37.530697, 21.124855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.763016, 36.673996, 21.347918>,  <43.197750, 36.980858, 21.010689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.763016, 36.673996, 21.347918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.719204, 37.062168, 21.433960>,  <43.692917, 37.295071, 21.485584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.719204, 37.062168, 21.433960>,  <43.763016, 36.673996, 21.347918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.719204, 37.062168, 21.433960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123706, -0.228032, 0.965763,
		0.986255, 0.079171, 0.145025,
		-0.109531, 0.970429, 0.215104,
		43.686344, 37.353298, 21.498491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.172089, 36.722691, 21.874498>,  <43.763016, 36.673996, 21.347918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.172089, 36.722691, 21.874498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.936672, 37.043392, 21.916084>,  <43.795422, 37.235813, 21.941036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.936672, 37.043392, 21.916084>,  <44.172089, 36.722691, 21.874498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.936672, 37.043392, 21.916084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078680, -0.071186, 0.994355,
		0.804632, 0.593396, -0.021187,
		-0.588538, 0.801756, 0.103967,
		43.760109, 37.283920, 21.947275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.329964, 37.018341, 22.510372>,  <44.172089, 36.722691, 21.874498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.329964, 37.018341, 22.510372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986473, 37.212280, 22.444031>,  <43.780376, 37.328644, 22.404226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986473, 37.212280, 22.444031>,  <44.329964, 37.018341, 22.510372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.986473, 37.212280, 22.444031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202635, -0.024017, 0.978960,
		0.470663, 0.874269, 0.118872,
		-0.858729, 0.484848, -0.165853,
		43.728855, 37.357735, 22.394276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.225372, 37.473022, 23.054680>,  <44.329964, 37.018341, 22.510372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.225372, 37.473022, 23.054680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.853622, 37.451431, 22.908611>,  <43.630573, 37.438477, 22.820971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.853622, 37.451431, 22.908611>,  <44.225372, 37.473022, 23.054680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.853622, 37.451431, 22.908611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357645, -0.113251, 0.926965,
		-0.091391, 0.992099, 0.085947,
		-0.929375, -0.053978, -0.365170,
		43.574810, 37.435238, 22.799061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.802887, 37.962517, 23.475172>,  <44.225372, 37.473022, 23.054680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.802887, 37.962517, 23.475172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550297, 37.710896, 23.293831>,  <43.398743, 37.559921, 23.185026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550297, 37.710896, 23.293831>,  <43.802887, 37.962517, 23.475172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550297, 37.710896, 23.293831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455574, -0.172120, 0.873400,
		-0.627445, 0.758069, -0.177890,
		-0.631479, -0.629052, -0.453352,
		43.360851, 37.522179, 23.157825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.164787, 38.166668, 23.577286>,  <43.802887, 37.962517, 23.475172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.164787, 38.166668, 23.577286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133568, 37.777790, 23.488970>,  <43.114834, 37.544464, 23.435980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133568, 37.777790, 23.488970>,  <43.164787, 38.166668, 23.577286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133568, 37.777790, 23.488970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423131, -0.168227, 0.890314,
		-0.902700, 0.162914, -0.398235,
		-0.078051, -0.972193, -0.220792,
		43.110153, 37.486134, 23.422731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537132, 38.013466, 23.740425>,  <43.164787, 38.166668, 23.577286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537132, 38.013466, 23.740425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.703800, 37.649860, 23.736752>,  <42.803799, 37.431698, 23.734547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.703800, 37.649860, 23.736752>,  <42.537132, 38.013466, 23.740425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.703800, 37.649860, 23.736752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476733, -0.227102, 0.849205,
		-0.774025, -0.349456, -0.527982,
		0.416666, -0.909013, -0.009185,
		42.828800, 37.377155, 23.733995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028397, 37.625675, 23.998924>,  <42.537132, 38.013466, 23.740425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028397, 37.625675, 23.998924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341640, 37.386116, 24.065926>,  <42.529587, 37.242382, 24.106127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341640, 37.386116, 24.065926>,  <42.028397, 37.625675, 23.998924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341640, 37.386116, 24.065926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403020, -0.283622, 0.870134,
		-0.473614, -0.748920, -0.463475,
		0.783112, -0.598898, 0.167502,
		42.576572, 37.206448, 24.116177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828991, 37.005890, 24.323523>,  <42.028397, 37.625675, 23.998924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828991, 37.005890, 24.323523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217735, 37.034355, 24.413342>,  <42.450981, 37.051434, 24.467232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217735, 37.034355, 24.413342>,  <41.828991, 37.005890, 24.323523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217735, 37.034355, 24.413342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206660, -0.199855, 0.957784,
		0.113032, -0.977238, -0.179525,
		0.971862, 0.071160, 0.224546,
		42.509293, 37.055702, 24.480705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880337, 36.417664, 24.849541>,  <41.828991, 37.005890, 24.323523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880337, 36.417664, 24.849541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184929, 36.674999, 24.881218>,  <42.367683, 36.829399, 24.900225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184929, 36.674999, 24.881218>,  <41.880337, 36.417664, 24.849541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184929, 36.674999, 24.881218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206051, 0.124409, 0.970601,
		0.614569, -0.755409, 0.227294,
		0.761477, 0.643335, 0.079195,
		42.413372, 36.868000, 24.904976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259880, 36.271801, 25.482368>,  <41.880337, 36.417664, 24.849541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259880, 36.271801, 25.482368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404572, 36.638931, 25.416956>,  <42.491386, 36.859211, 25.377708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404572, 36.638931, 25.416956>,  <42.259880, 36.271801, 25.482368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404572, 36.638931, 25.416956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188681, 0.243853, 0.951281,
		0.912989, -0.313253, 0.261386,
		0.361731, 0.917828, -0.163530,
		42.513092, 36.914280, 25.367897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582050, 36.345493, 26.058270>,  <42.259880, 36.271801, 25.482368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582050, 36.345493, 26.058270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543816, 36.717747, 25.916971>,  <42.520874, 36.941097, 25.832191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543816, 36.717747, 25.916971>,  <42.582050, 36.345493, 26.058270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543816, 36.717747, 25.916971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007813, 0.354158, 0.935153,
		0.995390, 0.092152, -0.026584,
		-0.095591, 0.930634, -0.353245,
		42.515137, 36.996937, 25.810997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773026, 36.729153, 26.595097>,  <42.582050, 36.345493, 26.058270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773026, 36.729153, 26.595097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569656, 36.997612, 26.379295>,  <42.447636, 37.158688, 26.249815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569656, 36.997612, 26.379295>,  <42.773026, 36.729153, 26.595097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569656, 36.997612, 26.379295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176136, 0.532223, 0.828079,
		0.842899, 0.516043, -0.152384,
		-0.508427, 0.671147, -0.539504,
		42.417130, 37.198956, 26.217443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080566, 37.361282, 26.705551>,  <42.773026, 36.729153, 26.595097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080566, 37.361282, 26.705551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699192, 37.420864, 26.600655>,  <42.470367, 37.456612, 26.537718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699192, 37.420864, 26.600655>,  <43.080566, 37.361282, 26.705551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699192, 37.420864, 26.600655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131797, 0.576311, 0.806533,
		0.271268, 0.803541, -0.529845,
		-0.953437, 0.148955, -0.262239,
		42.413162, 37.465549, 26.521982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.017002, 38.131889, 26.661938>,  <43.080566, 37.361282, 26.705551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.017002, 38.131889, 26.661938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657089, 37.970104, 26.727425>,  <42.441143, 37.873035, 26.766716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657089, 37.970104, 26.727425>,  <43.017002, 38.131889, 26.661938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657089, 37.970104, 26.727425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139960, 0.622909, 0.769673,
		-0.413283, 0.669624, -0.617091,
		-0.899783, -0.404460, 0.163717,
		42.387154, 37.848766, 26.776539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548767, 38.764275, 26.887360>,  <43.017002, 38.131889, 26.661938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548767, 38.764275, 26.887360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357018, 38.428780, 26.990683>,  <42.241966, 38.227482, 27.052677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357018, 38.428780, 26.990683>,  <42.548767, 38.764275, 26.887360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357018, 38.428780, 26.990683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249799, 0.412562, 0.876010,
		-0.841307, 0.355414, -0.407288,
		-0.479377, -0.838734, 0.258309,
		42.213203, 38.177158, 27.068174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958691, 39.067703, 27.314722>,  <42.548767, 38.764275, 26.887360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958691, 39.067703, 27.314722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.966194, 38.679092, 27.409201>,  <41.970695, 38.445927, 27.465887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.966194, 38.679092, 27.409201>,  <41.958691, 39.067703, 27.314722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.966194, 38.679092, 27.409201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483264, 0.197998, 0.852791,
		-0.875274, -0.130141, -0.465789,
		0.018758, -0.971525, 0.236195,
		41.971821, 38.387634, 27.480059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241943, 38.969292, 27.527822>,  <41.958691, 39.067703, 27.314722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241943, 38.969292, 27.527822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490921, 38.694359, 27.677561>,  <41.640308, 38.529400, 27.767405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490921, 38.694359, 27.677561>,  <41.241943, 38.969292, 27.527822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490921, 38.694359, 27.677561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563818, -0.062052, 0.823564,
		-0.542832, -0.723690, -0.426154,
		0.622449, -0.687330, 0.374346,
		41.677654, 38.488159, 27.789864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847923, 38.543491, 27.856356>,  <41.241943, 38.969292, 27.527822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847923, 38.543491, 27.856356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209927, 38.472034, 28.010780>,  <41.427128, 38.429161, 28.103436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209927, 38.472034, 28.010780>,  <40.847923, 38.543491, 27.856356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209927, 38.472034, 28.010780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395609, -0.019843, 0.918205,
		-0.156375, -0.983713, -0.088633,
		0.905009, -0.178648, 0.386063,
		41.481430, 38.418442, 28.126598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598103, 38.030930, 28.272655>,  <40.847923, 38.543491, 27.856356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598103, 38.030930, 28.272655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942600, 38.175255, 28.415800>,  <41.149300, 38.261848, 28.501688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942600, 38.175255, 28.415800>,  <40.598103, 38.030930, 28.272655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942600, 38.175255, 28.415800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373498, -0.028100, 0.927206,
		0.344604, -0.932214, 0.110562,
		0.861248, 0.360814, 0.357863,
		41.200974, 38.283497, 28.523159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771687, 37.571110, 28.822594>,  <40.598103, 38.030930, 28.272655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771687, 37.571110, 28.822594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965515, 37.919899, 28.850479>,  <41.081810, 38.129173, 28.867210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965515, 37.919899, 28.850479>,  <40.771687, 37.571110, 28.822594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965515, 37.919899, 28.850479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209306, 0.038197, 0.977104,
		0.849344, -0.488064, 0.201018,
		0.484568, 0.871972, 0.069712,
		41.110886, 38.181492, 28.871393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019722, 37.553139, 29.525146>,  <40.771687, 37.571110, 28.822594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019722, 37.553139, 29.525146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095589, 37.932705, 29.424276>,  <41.141109, 38.160442, 29.363754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095589, 37.932705, 29.424276>,  <41.019722, 37.553139, 29.525146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095589, 37.932705, 29.424276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120111, 0.277330, 0.953237,
		0.974475, -0.150505, 0.166574,
		0.189663, 0.948913, -0.252174,
		41.152489, 38.217381, 29.348625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521820, 37.812050, 29.927734>,  <41.019722, 37.553139, 29.525146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521820, 37.812050, 29.927734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301823, 38.126316, 29.814428>,  <41.169823, 38.314877, 29.746445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301823, 38.126316, 29.814428>,  <41.521820, 37.812050, 29.927734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301823, 38.126316, 29.814428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139329, 0.248105, 0.958661,
		0.823463, 0.566727, -0.026991,
		-0.549996, 0.785662, -0.283267,
		41.136826, 38.362015, 29.729448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816055, 38.414768, 30.137239>,  <41.521820, 37.812050, 29.927734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816055, 38.414768, 30.137239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418934, 38.446129, 30.101021>,  <41.180660, 38.464947, 30.079290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418934, 38.446129, 30.101021>,  <41.816055, 38.414768, 30.137239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418934, 38.446129, 30.101021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084749, 0.074353, 0.993624,
		0.084633, 0.994145, -0.067173,
		-0.992801, 0.078401, -0.090546,
		41.121094, 38.469650, 30.073856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553368, 38.857864, 30.685478>,  <41.816055, 38.414768, 30.137239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553368, 38.857864, 30.685478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204430, 38.691914, 30.582018>,  <40.995068, 38.592342, 30.519941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204430, 38.691914, 30.582018>,  <41.553368, 38.857864, 30.685478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204430, 38.691914, 30.582018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276168, -0.018402, 0.960933,
		-0.403424, 0.909694, -0.098522,
		-0.872342, -0.414872, -0.258652,
		40.942726, 38.567451, 30.504421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849323, 39.216621, 30.977322>,  <41.553368, 38.857864, 30.685478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849323, 39.216621, 30.977322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763401, 38.836628, 30.886650>,  <40.711849, 38.608631, 30.832247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763401, 38.836628, 30.886650>,  <40.849323, 39.216621, 30.977322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763401, 38.836628, 30.886650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176535, -0.190510, 0.965682,
		-0.960571, 0.247447, -0.126785,
		-0.214802, -0.949988, -0.226681,
		40.698959, 38.551632, 30.818645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446465, 39.196846, 31.457338>,  <40.849323, 39.216621, 30.977322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446465, 39.196846, 31.457338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478630, 38.817554, 31.334446>,  <40.497929, 38.589977, 31.260712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478630, 38.817554, 31.334446>,  <40.446465, 39.196846, 31.457338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478630, 38.817554, 31.334446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183183, -0.317037, 0.930554,
		-0.979784, -0.018553, -0.199196,
		0.080417, -0.948231, -0.307229,
		40.502754, 38.533085, 31.242277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857986, 38.926857, 31.657961>,  <40.446465, 39.196846, 31.457338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857986, 38.926857, 31.657961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102398, 38.614201, 31.607872>,  <40.249043, 38.426605, 31.577818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102398, 38.614201, 31.607872>,  <39.857986, 38.926857, 31.657961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102398, 38.614201, 31.607872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108738, -0.239563, 0.964772,
		-0.784106, -0.575884, -0.231374,
		0.611026, -0.781643, -0.125223,
		40.285706, 38.379707, 31.570305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532406, 38.250282, 32.069679>,  <39.857986, 38.926857, 31.657961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532406, 38.250282, 32.069679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905537, 38.120461, 32.007072>,  <40.129414, 38.042568, 31.969507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905537, 38.120461, 32.007072>,  <39.532406, 38.250282, 32.069679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905537, 38.120461, 32.007072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024819, -0.375487, 0.926495,
		-0.359455, -0.868149, -0.342212,
		0.932832, -0.324540, -0.156517,
		40.185387, 38.023094, 31.960115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483070, 37.559582, 32.241436>,  <39.532406, 38.250282, 32.069679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483070, 37.559582, 32.241436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877529, 37.625935, 32.242348>,  <40.114204, 37.665749, 32.242893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877529, 37.625935, 32.242348>,  <39.483070, 37.559582, 32.241436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877529, 37.625935, 32.242348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069115, -0.423279, 0.903359,
		0.150818, -0.890683, -0.428879,
		0.986143, 0.165884, 0.002279,
		40.173370, 37.675701, 32.243031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928581, 36.960323, 32.189434>,  <39.483070, 37.559582, 32.241436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928581, 36.960323, 32.189434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137875, 37.233624, 32.393158>,  <40.263451, 37.397602, 32.515392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137875, 37.233624, 32.393158>,  <39.928581, 36.960323, 32.189434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137875, 37.233624, 32.393158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143313, -0.659686, 0.737750,
		0.840052, -0.313026, -0.443089,
		0.523234, 0.683249, 0.509310,
		40.294846, 37.438599, 32.545952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396042, 36.592205, 32.460300>,  <39.928581, 36.960323, 32.189434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396042, 36.592205, 32.460300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463276, 36.924675, 32.672298>,  <40.503616, 37.124157, 32.799500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463276, 36.924675, 32.672298>,  <40.396042, 36.592205, 32.460300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463276, 36.924675, 32.672298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133922, -0.551916, 0.823076,
		0.976633, -0.067368, -0.204082,
		0.168085, 0.831174, 0.529997,
		40.513702, 37.174026, 32.831299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887516, 36.385284, 32.813297>,  <40.396042, 36.592205, 32.460300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887516, 36.385284, 32.813297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757565, 36.708920, 33.009186>,  <40.679592, 36.903103, 33.126717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757565, 36.708920, 33.009186>,  <40.887516, 36.385284, 32.813297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757565, 36.708920, 33.009186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152790, -0.466105, 0.871436,
		0.933331, 0.357939, 0.027808,
		-0.324883, 0.809090, 0.489719,
		40.660099, 36.951645, 33.156101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349163, 36.428707, 33.360992>,  <40.887516, 36.385284, 32.813297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349163, 36.428707, 33.360992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033981, 36.654804, 33.458664>,  <40.844872, 36.790462, 33.517269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033981, 36.654804, 33.458664>,  <41.349163, 36.428707, 33.360992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033981, 36.654804, 33.458664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030108, -0.360726, 0.932186,
		0.614997, 0.741872, 0.267217,
		-0.787954, 0.565246, 0.244182,
		40.797596, 36.824379, 33.531918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501984, 36.701744, 33.991962>,  <41.349163, 36.428707, 33.360992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501984, 36.701744, 33.991962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103806, 36.721928, 33.959629>,  <40.864899, 36.734039, 33.940228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103806, 36.721928, 33.959629>,  <41.501984, 36.701744, 33.991962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103806, 36.721928, 33.959629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094402, -0.406440, 0.908788,
		0.013001, 0.912283, 0.409354,
		-0.995449, 0.050459, -0.080838,
		40.805172, 36.737064, 33.935379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278934, 37.015755, 34.628899>,  <41.501984, 36.701744, 33.991962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278934, 37.015755, 34.628899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965775, 36.811020, 34.487427>,  <40.777878, 36.688179, 34.402542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965775, 36.811020, 34.487427>,  <41.278934, 37.015755, 34.628899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965775, 36.811020, 34.487427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115931, -0.438511, 0.891217,
		-0.611255, 0.738734, 0.283972,
		-0.782897, -0.511840, -0.353684,
		40.730904, 36.657467, 34.381321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836212, 36.969143, 35.140675>,  <41.278934, 37.015755, 34.628899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836212, 36.969143, 35.140675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706669, 36.677711, 34.899246>,  <40.628944, 36.502853, 34.754391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706669, 36.677711, 34.899246>,  <40.836212, 36.969143, 35.140675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706669, 36.677711, 34.899246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183302, -0.577545, 0.795514,
		-0.928179, 0.368270, 0.053493,
		-0.323858, -0.728574, -0.603569,
		40.609512, 36.459141, 34.718174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331703, 36.718712, 35.504932>,  <40.836212, 36.969143, 35.140675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331703, 36.718712, 35.504932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417244, 36.429619, 35.242046>,  <40.468567, 36.256165, 35.084316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417244, 36.429619, 35.242046>,  <40.331703, 36.718712, 35.504932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417244, 36.429619, 35.242046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015633, -0.675220, 0.737450,
		-0.976741, -0.147432, -0.155696,
		0.213853, -0.722732, -0.657211,
		40.481400, 36.212799, 35.044884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965591, 36.186249, 35.728916>,  <40.331703, 36.718712, 35.504932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965591, 36.186249, 35.728916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212955, 35.972321, 35.498600>,  <40.361374, 35.843964, 35.360409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212955, 35.972321, 35.498600>,  <39.965591, 36.186249, 35.728916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212955, 35.972321, 35.498600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066660, -0.694356, 0.716537,
		-0.783024, -0.481496, -0.393746,
		0.618410, -0.534819, -0.575794,
		40.398479, 35.811874, 35.325863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683613, 35.456718, 35.818043>,  <39.965591, 36.186249, 35.728916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683613, 35.456718, 35.818043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054012, 35.410389, 35.674313>,  <40.276253, 35.382591, 35.588074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054012, 35.410389, 35.674313>,  <39.683613, 35.456718, 35.818043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054012, 35.410389, 35.674313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114927, -0.820124, 0.560525,
		-0.359617, -0.560340, -0.746120,
		0.925996, -0.115825, -0.359329,
		40.331810, 35.375641, 35.566513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753830, 34.673782, 35.777920>,  <39.683613, 35.456718, 35.818043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753830, 34.673782, 35.777920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106834, 34.861893, 35.779346>,  <40.318638, 34.974758, 35.780201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106834, 34.861893, 35.779346>,  <39.753830, 34.673782, 35.777920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106834, 34.861893, 35.779346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385254, -0.727278, 0.568020,
		0.269719, -0.499911, -0.823007,
		0.882514, 0.470272, 0.003568,
		40.371590, 35.002975, 35.780418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288109, 34.152470, 35.703705>,  <39.753830, 34.673782, 35.777920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288109, 34.152470, 35.703705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449844, 34.473125, 35.879833>,  <40.546886, 34.665520, 35.985512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449844, 34.473125, 35.879833>,  <40.288109, 34.152470, 35.703705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449844, 34.473125, 35.879833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588113, -0.596589, 0.546081,
		0.700452, 0.038158, -0.712679,
		0.404339, 0.801639, 0.440323,
		40.571148, 34.713615, 36.011929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969547, 34.120510, 35.614201>,  <40.288109, 34.152470, 35.703705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969547, 34.120510, 35.614201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910923, 34.333740, 35.947510>,  <40.875748, 34.461678, 36.147495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910923, 34.333740, 35.947510>,  <40.969547, 34.120510, 35.614201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910923, 34.333740, 35.947510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492840, -0.691029, 0.528761,
		0.857688, 0.488169, -0.161442,
		-0.146564, 0.533077, 0.833276,
		40.866955, 34.493664, 36.197491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557426, 33.903423, 36.129807>,  <40.969547, 34.120510, 35.614201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557426, 33.903423, 36.129807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249393, 34.060490, 36.330917>,  <41.064575, 34.154728, 36.451584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249393, 34.060490, 36.330917>,  <41.557426, 33.903423, 36.129807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249393, 34.060490, 36.330917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093658, -0.709992, 0.697954,
		0.631031, 0.584571, 0.509976,
		-0.770083, 0.392667, 0.502777,
		41.018368, 34.178291, 36.481750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811138, 33.855839, 36.785133>,  <41.557426, 33.903423, 36.129807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811138, 33.855839, 36.785133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417965, 33.912155, 36.832493>,  <41.182060, 33.945946, 36.860909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417965, 33.912155, 36.832493>,  <41.811138, 33.855839, 36.785133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417965, 33.912155, 36.832493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004304, -0.661049, 0.750331,
		0.183909, 0.737016, 0.650373,
		-0.982934, 0.140792, 0.118401,
		41.123085, 33.954391, 36.868011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848289, 34.100052, 37.498901>,  <41.811138, 33.855839, 36.785133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848289, 34.100052, 37.498901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.482769, 33.978767, 37.390812>,  <41.263454, 33.905994, 37.325958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.482769, 33.978767, 37.390812>,  <41.848289, 34.100052, 37.498901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482769, 33.978767, 37.390812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072495, -0.532873, 0.843084,
		-0.399629, 0.790005, 0.464961,
		-0.913806, -0.303214, -0.270223,
		41.208626, 33.887802, 37.309746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410591, 34.219910, 38.094276>,  <41.848289, 34.100052, 37.498901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410591, 34.219910, 38.094276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289635, 33.915470, 37.864738>,  <41.217060, 33.732807, 37.727016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289635, 33.915470, 37.864738>,  <41.410591, 34.219910, 38.094276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289635, 33.915470, 37.864738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091555, -0.576050, 0.812271,
		-0.948776, 0.298163, 0.104511,
		-0.302392, -0.761095, -0.573841,
		41.198917, 33.687141, 37.692585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826309, 34.222034, 38.457726>,  <41.410591, 34.219910, 38.094276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826309, 34.222034, 38.457726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869583, 33.894009, 38.232944>,  <40.895546, 33.697193, 38.098076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869583, 33.894009, 38.232944>,  <40.826309, 34.222034, 38.457726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869583, 33.894009, 38.232944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092360, -0.571116, 0.815657,
		-0.989831, -0.036338, -0.137526,
		0.108183, -0.820064, -0.561952,
		40.902039, 33.647991, 38.064358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250252, 33.765305, 38.573849>,  <40.826309, 34.222034, 38.457726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250252, 33.765305, 38.573849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559895, 33.538330, 38.461582>,  <40.745678, 33.402145, 38.394222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559895, 33.538330, 38.461582>,  <40.250252, 33.765305, 38.573849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559895, 33.538330, 38.461582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199193, -0.639160, 0.742830,
		-0.600898, -0.519125, -0.607808,
		0.774108, -0.567437, -0.280664,
		40.792126, 33.368099, 38.377380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013885, 33.042980, 38.762215>,  <40.250252, 33.765305, 38.573849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013885, 33.042980, 38.762215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407459, 33.053207, 38.691547>,  <40.643604, 33.059341, 38.649147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407459, 33.053207, 38.691547>,  <40.013885, 33.042980, 38.762215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407459, 33.053207, 38.691547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151488, -0.643096, 0.750652,
		-0.094422, -0.765359, -0.636640,
		0.983939, 0.025565, -0.176665,
		40.702641, 33.060875, 38.638546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225769, 32.373028, 38.833691>,  <40.013885, 33.042980, 38.762215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225769, 32.373028, 38.833691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580505, 32.554783, 38.867260>,  <40.793346, 32.663837, 38.887402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580505, 32.554783, 38.867260>,  <40.225769, 32.373028, 38.833691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580505, 32.554783, 38.867260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249648, -0.624010, 0.740465,
		0.388827, -0.635724, -0.666835,
		0.886843, 0.454386, 0.083925,
		40.846558, 32.691097, 38.892437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671368, 31.817163, 38.925575>,  <40.225769, 32.373028, 38.833691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671368, 31.817163, 38.925575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851845, 32.154385, 39.042664>,  <40.960133, 32.356716, 39.112915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851845, 32.154385, 39.042664>,  <40.671368, 31.817163, 38.925575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851845, 32.154385, 39.042664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336531, -0.464519, 0.819127,
		0.826540, -0.271079, -0.493303,
		0.451197, 0.843053, 0.292718,
		40.987206, 32.407299, 39.130478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462265, 31.745981, 38.884666>,  <40.671368, 31.817163, 38.925575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462265, 31.745981, 38.884666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301842, 31.999191, 39.149525>,  <41.205589, 32.151115, 39.308437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301842, 31.999191, 39.149525>,  <41.462265, 31.745981, 38.884666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301842, 31.999191, 39.149525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378910, -0.543451, 0.749058,
		0.834014, 0.551308, -0.021904,
		-0.401058, 0.633025, 0.662142,
		41.181522, 32.189098, 39.348167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981064, 31.972076, 39.456158>,  <41.462265, 31.745981, 38.884666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981064, 31.972076, 39.456158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610165, 31.970654, 39.605930>,  <41.387627, 31.969799, 39.695793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610165, 31.970654, 39.605930>,  <41.981064, 31.972076, 39.456158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610165, 31.970654, 39.605930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299904, -0.605807, 0.736923,
		0.224213, 0.795604, 0.562800,
		-0.927247, -0.003558, 0.374435,
		41.331989, 31.969585, 39.718262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990261, 32.162807, 40.241386>,  <41.981064, 31.972076, 39.456158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990261, 32.162807, 40.241386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664684, 31.948282, 40.152061>,  <41.469337, 31.819569, 40.098469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664684, 31.948282, 40.152061>,  <41.990261, 32.162807, 40.241386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664684, 31.948282, 40.152061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232930, -0.653417, 0.720270,
		-0.532202, 0.534244, 0.656768,
		-0.813944, -0.536311, -0.223309,
		41.420502, 31.787390, 40.085068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696045, 31.904964, 40.893253>,  <41.990261, 32.162807, 40.241386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696045, 31.904964, 40.893253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.523624, 31.631334, 40.657887>,  <41.420170, 31.467155, 40.516666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.523624, 31.631334, 40.657887>,  <41.696045, 31.904964, 40.893253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523624, 31.631334, 40.657887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011867, -0.647755, 0.761756,
		-0.902248, 0.335341, 0.271099,
		-0.431054, -0.684076, -0.588415,
		41.394310, 31.426111, 40.481361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109844, 31.672234, 41.353363>,  <41.696045, 31.904964, 40.893253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109844, 31.672234, 41.353363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114693, 31.375069, 41.085651>,  <41.117603, 31.196770, 40.925026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114693, 31.375069, 41.085651>,  <41.109844, 31.672234, 41.353363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114693, 31.375069, 41.085651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217713, -0.655229, 0.723378,
		-0.975938, 0.136941, -0.169685,
		0.012122, -0.742914, -0.669277,
		41.118328, 31.152195, 40.884869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455383, 31.328695, 41.312996>,  <41.109844, 31.672234, 41.353363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455383, 31.328695, 41.312996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712933, 31.036514, 41.221897>,  <40.867462, 30.861206, 41.167240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712933, 31.036514, 41.221897>,  <40.455383, 31.328695, 41.312996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712933, 31.036514, 41.221897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415961, -0.583998, 0.697082,
		-0.642189, -0.354097, -0.679859,
		0.643871, -0.730453, -0.227747,
		40.906094, 30.817379, 41.153572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983116, 30.763853, 41.339893>,  <40.455383, 31.328695, 41.312996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983116, 30.763853, 41.339893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370483, 30.666252, 41.360405>,  <40.602905, 30.607693, 41.372711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370483, 30.666252, 41.360405>,  <39.983116, 30.763853, 41.339893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370483, 30.666252, 41.360405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218997, -0.734102, 0.642756,
		-0.119188, -0.633687, -0.764353,
		0.968419, -0.244000, 0.051279,
		40.661011, 30.593052, 41.375790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004761, 30.053556, 41.297058>,  <39.983116, 30.763853, 41.339893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004761, 30.053556, 41.297058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310608, 30.188498, 41.516716>,  <40.494114, 30.269463, 41.648510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310608, 30.188498, 41.516716>,  <40.004761, 30.053556, 41.297058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310608, 30.188498, 41.516716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174766, -0.711604, 0.680497,
		0.620339, -0.616291, -0.485145,
		0.764615, 0.337352, 0.549142,
		40.539993, 30.289703, 41.681458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570255, 30.119518, 40.830139>,  <40.004761, 30.053556, 41.297058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570255, 30.119518, 40.830139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969845, 30.133963, 40.841103>,  <41.209599, 30.142630, 40.847679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969845, 30.133963, 40.841103>,  <40.570255, 30.119518, 40.830139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969845, 30.133963, 40.841103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045329, -0.804421, -0.592328,
		0.000658, 0.592961, -0.805231,
		0.998972, 0.036111, 0.027408,
		41.269535, 30.144796, 40.849323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789982, 29.774317, 40.238823>,  <40.570255, 30.119518, 40.830139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789982, 29.774317, 40.238823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115372, 29.770189, 40.471428>,  <41.310604, 29.767714, 40.610992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115372, 29.770189, 40.471428>,  <40.789982, 29.774317, 40.238823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115372, 29.770189, 40.471428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335662, -0.808192, -0.483897,
		0.474967, 0.588828, -0.653978,
		0.813473, -0.010320, 0.581511,
		41.359413, 29.767094, 40.645882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244228, 30.328531, 39.923138>,  <40.789982, 29.774317, 40.238823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244228, 30.328531, 39.923138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208527, 30.607393, 40.207676>,  <41.187103, 30.774710, 40.378399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208527, 30.607393, 40.207676>,  <41.244228, 30.328531, 39.923138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208527, 30.607393, 40.207676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273937, 0.669468, -0.690486,
		-0.957597, -0.256495, 0.131221,
		-0.089259, 0.697154, 0.711344,
		41.181747, 30.816540, 40.421078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660900, 30.676180, 39.765186>,  <41.244228, 30.328531, 39.923138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660900, 30.676180, 39.765186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889587, 30.922140, 39.982456>,  <41.026798, 31.069715, 40.112816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889587, 30.922140, 39.982456>,  <40.660900, 30.676180, 39.765186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889587, 30.922140, 39.982456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184881, 0.741569, -0.644899,
		-0.799348, 0.268279, 0.537652,
		0.571718, 0.614900, 0.543172,
		41.061104, 31.106609, 40.145409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211067, 31.217064, 40.001213>,  <40.660900, 30.676180, 39.765186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211067, 31.217064, 40.001213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584198, 31.361071, 39.995232>,  <40.808075, 31.447475, 39.991642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584198, 31.361071, 39.995232>,  <40.211067, 31.217064, 40.001213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584198, 31.361071, 39.995232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275142, 0.684892, -0.674700,
		-0.232663, 0.633492, 0.737941,
		0.932826, 0.360016, -0.014951,
		40.864044, 31.469076, 39.990746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146629, 31.937725, 40.189804>,  <40.211067, 31.217064, 40.001213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146629, 31.937725, 40.189804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515854, 31.937992, 40.035946>,  <40.737389, 31.938152, 39.943630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515854, 31.937992, 40.035946>,  <40.146629, 31.937725, 40.189804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515854, 31.937992, 40.035946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256910, 0.745302, -0.615241,
		0.286267, 0.666726, 0.688133,
		0.923065, 0.000665, -0.384644,
		40.792774, 31.938192, 39.920551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568848, 32.659031, 40.280602>,  <40.146629, 31.937725, 40.189804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568848, 32.659031, 40.280602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664337, 32.449650, 39.953430>,  <40.721630, 32.324020, 39.757126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664337, 32.449650, 39.953430>,  <40.568848, 32.659031, 40.280602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664337, 32.449650, 39.953430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430316, 0.698049, -0.572325,
		0.870540, 0.488593, -0.058613,
		0.238720, -0.523454, -0.817930,
		40.735954, 32.292614, 39.708050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006351, 33.110222, 39.900616>,  <40.568848, 32.659031, 40.280602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006351, 33.110222, 39.900616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253960, 32.853870, 39.719028>,  <41.402523, 32.700058, 39.610077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253960, 32.853870, 39.719028>,  <41.006351, 33.110222, 39.900616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253960, 32.853870, 39.719028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018882, 0.565718, -0.824382,
		0.785149, 0.518881, 0.338089,
		0.619019, -0.640879, -0.453971,
		41.439667, 32.661606, 39.582836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654949, 33.399586, 39.552803>,  <41.006351, 33.110222, 39.900616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654949, 33.399586, 39.552803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517227, 33.065277, 39.381714>,  <41.434593, 32.864693, 39.279060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517227, 33.065277, 39.381714>,  <41.654949, 33.399586, 39.552803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517227, 33.065277, 39.381714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234506, 0.517694, -0.822800,
		0.909100, -0.182990, -0.374236,
		-0.344304, -0.835768, -0.427723,
		41.413937, 32.814548, 39.253395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028023, 33.200577, 38.925373>,  <41.654949, 33.399586, 39.552803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028023, 33.200577, 38.925373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658764, 33.047054, 38.916470>,  <41.437210, 32.954941, 38.911125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658764, 33.047054, 38.916470>,  <42.028023, 33.200577, 38.925373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658764, 33.047054, 38.916470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143958, 0.398786, -0.905674,
		0.356483, -0.832863, -0.423390,
		-0.923145, -0.383808, -0.022263,
		41.381821, 32.931911, 38.909790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920021, 32.971718, 38.240971>,  <42.028023, 33.200577, 38.925373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920021, 32.971718, 38.240971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.540108, 33.005901, 38.361382>,  <41.312160, 33.026413, 38.433628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.540108, 33.005901, 38.361382>,  <41.920021, 32.971718, 38.240971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540108, 33.005901, 38.361382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281892, 0.183966, -0.941644,
		-0.135855, -0.979210, -0.150636,
		-0.949779, 0.085464, 0.301025,
		41.255173, 33.031540, 38.451691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.590015, 32.521358, 37.844139>,  <41.920021, 32.971718, 38.240971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.590015, 32.521358, 37.844139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288502, 32.753273, 37.967857>,  <41.107594, 32.892422, 38.042088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288502, 32.753273, 37.967857>,  <41.590015, 32.521358, 37.844139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288502, 32.753273, 37.967857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028452, 0.441440, -0.896840,
		-0.656511, -0.684820, -0.316252,
		-0.753780, 0.579787, 0.309294,
		41.062366, 32.927208, 38.060646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970074, 32.521202, 37.363060>,  <41.590015, 32.521358, 37.844139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970074, 32.521202, 37.363060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954384, 32.867645, 37.562386>,  <40.944969, 33.075512, 37.681980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954384, 32.867645, 37.562386>,  <40.970074, 32.521202, 37.363060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954384, 32.867645, 37.562386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058931, 0.495829, -0.866418,
		-0.997491, -0.063355, 0.031590,
		-0.039229, 0.866106, 0.498319,
		40.942616, 33.127476, 37.711880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586731, 32.857506, 36.900379>,  <40.970074, 32.521202, 37.363060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586731, 32.857506, 36.900379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705391, 33.135597, 37.162266>,  <40.776585, 33.302452, 37.319397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705391, 33.135597, 37.162266>,  <40.586731, 32.857506, 36.900379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705391, 33.135597, 37.162266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120131, 0.707296, -0.696636,
		-0.947401, 0.128003, 0.293336,
		0.296647, 0.695232, 0.654716,
		40.794384, 33.344166, 37.358681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064899, 33.497215, 36.856548>,  <40.586731, 32.857506, 36.900379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064899, 33.497215, 36.856548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393177, 33.630280, 37.042366>,  <40.590145, 33.710117, 37.153858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393177, 33.630280, 37.042366>,  <40.064899, 33.497215, 36.856548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393177, 33.630280, 37.042366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032325, 0.838765, -0.543534,
		-0.570455, 0.431057, 0.699121,
		0.820693, 0.332661, 0.464543,
		40.639385, 33.730080, 37.181728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908936, 34.228954, 37.145901>,  <40.064899, 33.497215, 36.856548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908936, 34.228954, 37.145901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293064, 34.156384, 37.061180>,  <40.523540, 34.112839, 37.010349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293064, 34.156384, 37.061180>,  <39.908936, 34.228954, 37.145901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293064, 34.156384, 37.061180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039184, 0.839704, -0.541629,
		0.276117, 0.511840, 0.813498,
		0.960325, -0.181429, -0.211800,
		40.581161, 34.101955, 36.997639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270527, 34.928680, 37.287632>,  <39.908936, 34.228954, 37.145901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270527, 34.928680, 37.287632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479462, 34.695129, 37.039036>,  <40.604820, 34.555000, 36.889877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479462, 34.695129, 37.039036>,  <40.270527, 34.928680, 37.287632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479462, 34.695129, 37.039036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101319, 0.766151, -0.634624,
		0.846699, 0.268517, 0.459346,
		0.522335, -0.583876, -0.621494,
		40.636162, 34.519966, 36.852589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791561, 35.340225, 37.057419>,  <40.270527, 34.928680, 37.287632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791561, 35.340225, 37.057419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758228, 35.044865, 36.789742>,  <40.738228, 34.867649, 36.629135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758228, 35.044865, 36.789742>,  <40.791561, 35.340225, 37.057419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758228, 35.044865, 36.789742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110564, 0.674238, -0.730191,
		0.990370, 0.013143, -0.137824,
		-0.083330, -0.738397, -0.669198,
		40.733231, 34.823345, 36.588982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167179, 35.728870, 36.564659>,  <40.791561, 35.340225, 37.057419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167179, 35.728870, 36.564659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960743, 35.424492, 36.407379>,  <40.836880, 35.241863, 36.313011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960743, 35.424492, 36.407379>,  <41.167179, 35.728870, 36.564659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960743, 35.424492, 36.407379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206668, 0.556123, -0.804994,
		0.831226, -0.334191, -0.444275,
		-0.516094, -0.760949, -0.393197,
		40.805916, 35.196209, 36.289421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457104, 35.628407, 35.886456>,  <41.167179, 35.728870, 36.564659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457104, 35.628407, 35.886456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133904, 35.402939, 35.817860>,  <40.939983, 35.267658, 35.776703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133904, 35.402939, 35.817860>,  <41.457104, 35.628407, 35.886456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133904, 35.402939, 35.817860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007343, 0.300670, -0.953700,
		0.589135, -0.769332, -0.247081,
		-0.808001, -0.563672, -0.171486,
		40.891502, 35.233837, 35.766415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556255, 35.196468, 35.210415>,  <41.457104, 35.628407, 35.886456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556255, 35.196468, 35.210415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167641, 35.237740, 35.295715>,  <40.934471, 35.262501, 35.346897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167641, 35.237740, 35.295715>,  <41.556255, 35.196468, 35.210415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167641, 35.237740, 35.295715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139141, 0.480039, -0.866142,
		-0.191738, -0.871159, -0.452017,
		-0.971533, 0.103178, 0.213256,
		40.876183, 35.268692, 35.359692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171146, 34.994545, 34.638569>,  <41.556255, 35.196468, 35.210415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171146, 34.994545, 34.638569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952328, 35.249962, 34.855087>,  <40.821037, 35.403214, 34.985001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952328, 35.249962, 34.855087>,  <41.171146, 34.994545, 34.638569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952328, 35.249962, 34.855087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044748, 0.623401, -0.780621,
		-0.835906, -0.451257, -0.312455,
		-0.547045, 0.638544, 0.541298,
		40.788216, 35.441525, 35.017475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864716, 35.351086, 34.074406>,  <41.171146, 34.994545, 34.638569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864716, 35.351086, 34.074406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734951, 35.583630, 34.372875>,  <40.657093, 35.723156, 34.551956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734951, 35.583630, 34.372875>,  <40.864716, 35.351086, 34.074406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734951, 35.583630, 34.372875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347108, 0.660642, -0.665634,
		-0.879928, -0.474942, -0.012525,
		-0.324412, 0.581362, 0.746173,
		40.637627, 35.758038, 34.596725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583992, 35.230709, 34.105724>,  <40.864716, 35.351086, 34.074406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583992, 35.230709, 34.105724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.550098, 35.610828, 34.225559>,  <41.529762, 35.838902, 34.297462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.550098, 35.610828, 34.225559>,  <41.583992, 35.230709, 34.105724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550098, 35.610828, 34.225559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832241, -0.097833, 0.545713,
		0.547900, 0.295575, -0.782587,
		-0.084737, 0.950297, 0.299592,
		41.524677, 35.895916, 34.315437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240360, 35.527592, 34.077179>,  <41.583992, 35.230709, 34.105724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240360, 35.527592, 34.077179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026108, 35.789288, 34.290749>,  <41.897556, 35.946304, 34.418888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026108, 35.789288, 34.290749>,  <42.240360, 35.527592, 34.077179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026108, 35.789288, 34.290749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795531, 0.178859, 0.578912,
		0.283252, 0.734832, -0.616271,
		-0.535629, 0.654241, 0.533920,
		41.865417, 35.985561, 34.450924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560875, 36.239201, 34.208878>,  <42.240360, 35.527592, 34.077179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560875, 36.239201, 34.208878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303913, 36.194134, 34.512093>,  <42.149734, 36.167091, 34.694019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303913, 36.194134, 34.512093>,  <42.560875, 36.239201, 34.208878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303913, 36.194134, 34.512093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732375, 0.201042, 0.650544,
		-0.225694, 0.973081, -0.046634,
		-0.642408, -0.112670, 0.758035,
		42.111191, 36.160332, 34.739502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528114, 36.905273, 34.764347>,  <42.560875, 36.239201, 34.208878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.528114, 36.905273, 34.764347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441082, 36.532707, 34.881050>,  <42.388863, 36.309166, 34.951073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441082, 36.532707, 34.881050>,  <42.528114, 36.905273, 34.764347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441082, 36.532707, 34.881050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641137, 0.088999, 0.762248,
		-0.735937, 0.352906, 0.577802,
		-0.217578, -0.931417, 0.291758,
		42.375809, 36.253281, 34.968578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330090, 37.207188, 35.279442>,  <42.528114, 36.905273, 34.764347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330090, 37.207188, 35.279442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383873, 36.824932, 35.384266>,  <42.416142, 36.595577, 35.447159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383873, 36.824932, 35.384266>,  <42.330090, 37.207188, 35.279442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.383873, 36.824932, 35.384266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464834, 0.294386, 0.835025,
		-0.875129, 0.009540, 0.483795,
		0.134457, -0.955639, 0.262060,
		42.424210, 36.538239, 35.462883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223534, 37.313229, 36.013367>,  <42.330090, 37.207188, 35.279442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223534, 37.313229, 36.013367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406036, 36.964073, 35.944199>,  <42.515537, 36.754581, 35.902699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406036, 36.964073, 35.944199>,  <42.223534, 37.313229, 36.013367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406036, 36.964073, 35.944199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281362, -0.042844, 0.958645,
		-0.844197, -0.486038, 0.226050,
		0.456253, -0.872887, -0.172922,
		42.542912, 36.702206, 35.892323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908146, 36.801739, 36.374229>,  <42.223534, 37.313229, 36.013367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908146, 36.801739, 36.374229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304470, 36.757694, 36.342804>,  <42.542263, 36.731270, 36.323948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304470, 36.757694, 36.342804>,  <41.908146, 36.801739, 36.374229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304470, 36.757694, 36.342804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097641, 0.180291, 0.978755,
		-0.093604, -0.977431, 0.189385,
		0.990810, -0.110108, -0.078561,
		42.601711, 36.724663, 36.319237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265400, 36.241688, 36.778629>,  <41.908146, 36.801739, 36.374229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265400, 36.241688, 36.778629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558018, 36.506466, 36.713303>,  <42.733589, 36.665333, 36.674107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558018, 36.506466, 36.713303>,  <42.265400, 36.241688, 36.778629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.558018, 36.506466, 36.713303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346993, -0.155277, 0.924924,
		0.586894, -0.733288, -0.343283,
		0.731540, 0.661950, -0.163315,
		42.777481, 36.705051, 36.664307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.788067, 36.067059, 37.277176>,  <42.265400, 36.241688, 36.778629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.788067, 36.067059, 37.277176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916569, 36.428314, 37.163239>,  <42.993671, 36.645069, 37.094875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916569, 36.428314, 37.163239>,  <42.788067, 36.067059, 37.277176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916569, 36.428314, 37.163239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407022, 0.139902, 0.902641,
		0.855059, -0.405917, -0.322653,
		0.321257, 0.903138, -0.284842,
		43.012947, 36.699257, 37.077785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085304, 36.271488, 37.796406>,  <42.788067, 36.067059, 37.277176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085304, 36.271488, 37.796406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.224621, 36.563320, 37.560978>,  <43.308208, 36.738419, 37.419724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.224621, 36.563320, 37.560978>,  <43.085304, 36.271488, 37.796406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.224621, 36.563320, 37.560978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485581, 0.396647, 0.779026,
		0.801814, -0.557122, -0.216122,
		0.348289, 0.729579, -0.588565,
		43.329109, 36.782192, 37.384407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888664, 36.315990, 37.771244>,  <43.085304, 36.271488, 37.796406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888664, 36.315990, 37.771244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.719582, 36.670410, 37.695107>,  <43.618134, 36.883064, 37.649426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.719582, 36.670410, 37.695107>,  <43.888664, 36.315990, 37.771244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.719582, 36.670410, 37.695107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457825, 0.390036, 0.798917,
		0.782124, 0.250561, -0.570527,
		-0.422703, 0.886054, -0.190344,
		43.592770, 36.936226, 37.638004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851513, 35.946362, 37.045509>,  <43.888664, 36.315990, 37.771244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851513, 35.946362, 37.045509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694695, 35.588985, 37.133198>,  <43.600601, 35.374557, 37.185810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694695, 35.588985, 37.133198>,  <43.851513, 35.946362, 37.045509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694695, 35.588985, 37.133198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753992, 0.175542, -0.632994,
		0.527062, -0.413455, -0.742470,
		-0.392049, -0.893443, 0.219220,
		43.577080, 35.320953, 37.198963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295769, 35.489029, 37.354336>,  <43.851513, 35.946362, 37.045509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295769, 35.489029, 37.354336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.482616, 35.807365, 37.200226>,  <44.594727, 35.998367, 37.107761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.482616, 35.807365, 37.200226>,  <44.295769, 35.489029, 37.354336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.482616, 35.807365, 37.200226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818797, -0.553806, -0.151229,
		-0.333722, -0.244820, -0.910326,
		0.467120, 0.795841, -0.385275,
		44.622753, 36.046116, 37.084644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.703655, 35.352219, 36.709049>,  <44.295769, 35.489029, 37.354336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.703655, 35.352219, 36.709049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.845463, 35.663025, 36.917110>,  <44.930546, 35.849510, 37.041946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.845463, 35.663025, 36.917110>,  <44.703655, 35.352219, 36.709049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.845463, 35.663025, 36.917110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915753, -0.400952, -0.025189,
		0.188986, 0.485264, -0.853700,
		0.354516, 0.777017, 0.520156,
		44.951817, 35.896130, 37.073158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.232319, 35.931072, 36.424988>,  <44.703655, 35.352219, 36.709049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.232319, 35.931072, 36.424988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.278465, 35.811890, 36.804020>,  <45.306152, 35.740379, 37.031441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.278465, 35.811890, 36.804020>,  <45.232319, 35.931072, 36.424988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.278465, 35.811890, 36.804020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691564, -0.660690, -0.291938,
		0.713043, 0.688994, 0.129835,
		0.115363, -0.297954, 0.947584,
		45.313072, 35.722504, 37.088295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.588333, 35.931084, 35.789177>,  <45.232319, 35.931072, 36.424988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.588333, 35.931084, 35.789177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.412636, 35.874805, 35.434265>,  <45.307217, 35.841038, 35.221317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.412636, 35.874805, 35.434265>,  <45.588333, 35.931084, 35.789177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.412636, 35.874805, 35.434265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030204, 0.984790, -0.171104,
		0.897860, -0.101956, -0.428313,
		-0.439244, -0.140691, -0.887283,
		45.280865, 35.832600, 35.168079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.065811, 36.137711, 35.207542>,  <45.588333, 35.931084, 35.789177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.065811, 36.137711, 35.207542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.683117, 36.169792, 35.095669>,  <45.453499, 36.189041, 35.028545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.683117, 36.169792, 35.095669>,  <46.065811, 36.137711, 35.207542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.683117, 36.169792, 35.095669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150771, 0.958791, -0.240809,
		0.248846, -0.272559, -0.929402,
		-0.956736, 0.080203, -0.279685,
		45.396095, 36.193851, 35.011765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.237801, 35.765182, 34.628738>,  <46.065811, 36.137711, 35.207542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.237801, 35.765182, 34.628738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.271271, 35.368309, 34.665779>,  <46.291351, 35.130184, 34.688004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.271271, 35.368309, 34.665779>,  <46.237801, 35.765182, 34.628738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.271271, 35.368309, 34.665779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920230, 0.112590, 0.374832,
		-0.382328, 0.053856, 0.922456,
		0.083673, -0.992181, 0.092607,
		46.296371, 35.070656, 34.693562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.596928, 35.624615, 35.200260>,  <46.237801, 35.765182, 34.628738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.596928, 35.624615, 35.200260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.681259, 35.310570, 34.967312>,  <46.731857, 35.122143, 34.827545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.681259, 35.310570, 34.967312>,  <46.596928, 35.624615, 35.200260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.681259, 35.310570, 34.967312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916736, -0.048012, 0.396597,
		-0.339334, -0.617490, 0.709618,
		0.210825, -0.785112, -0.582368,
		46.744507, 35.075035, 34.792603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.018585, 35.111301, 35.555180>,  <46.596928, 35.624615, 35.200260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.018585, 35.111301, 35.555180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.109840, 35.116676, 35.165764>,  <47.164593, 35.119900, 34.932114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.109840, 35.116676, 35.165764>,  <47.018585, 35.111301, 35.555180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.109840, 35.116676, 35.165764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894259, 0.392539, 0.214976,
		0.385040, -0.919637, 0.077537,
		0.228136, 0.013436, -0.973537,
		47.178280, 35.120708, 34.873703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.735653, 34.867626, 35.495705>,  <47.018585, 35.111301, 35.555180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.735653, 34.867626, 35.495705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.659931, 35.087547, 35.170280>,  <47.614498, 35.219498, 34.975025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.659931, 35.087547, 35.170280>,  <47.735653, 34.867626, 35.495705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.659931, 35.087547, 35.170280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905903, 0.417437, 0.071311,
		0.378818, -0.723510, -0.577088,
		-0.189304, 0.549800, -0.813563,
		47.603142, 35.252487, 34.926212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.891113, 33.678432, 25.332052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.513004, 33.718800, 25.207935>,  <40.286140, 33.743019, 25.133465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.513004, 33.718800, 25.207935>,  <40.891113, 33.678432, 25.332052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513004, 33.718800, 25.207935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310409, 0.014929, 0.950486,
		0.100557, 0.994782, 0.017215,
		-0.945270, 0.100922, -0.310291,
		40.229424, 33.749077, 25.114849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565109, 34.173748, 25.867283>,  <40.891113, 33.678432, 25.332052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565109, 34.173748, 25.867283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.279503, 33.952190, 25.695992>,  <40.108139, 33.819256, 25.593218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.279503, 33.952190, 25.695992>,  <40.565109, 34.173748, 25.867283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279503, 33.952190, 25.695992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551769, 0.068688, 0.831164,
		-0.430965, 0.829747, -0.354667,
		-0.714017, -0.553897, -0.428227,
		40.065296, 33.786022, 25.567524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937744, 34.340412, 26.220657>,  <40.565109, 34.173748, 25.867283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937744, 34.340412, 26.220657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.813728, 34.010792, 26.030996>,  <39.739319, 33.813019, 25.917200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.813728, 34.010792, 26.030996>,  <39.937744, 34.340412, 26.220657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813728, 34.010792, 26.030996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738033, -0.105775, 0.666422,
		-0.599317, 0.556560, -0.575379,
		-0.310043, -0.824047, -0.474152,
		39.720715, 33.763577, 25.888750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117470, 34.376434, 26.155968>,  <39.937744, 34.340412, 26.220657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117470, 34.376434, 26.155968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.242916, 33.996632, 26.159494>,  <39.318184, 33.768749, 26.161610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.242916, 33.996632, 26.159494>,  <39.117470, 34.376434, 26.155968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242916, 33.996632, 26.159494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702943, -0.225914, 0.674414,
		-0.638371, -0.217702, -0.738301,
		0.313614, -0.949510, 0.008815,
		39.337002, 33.711781, 26.162138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537640, 33.991039, 26.056360>,  <39.117470, 34.376434, 26.155968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537640, 33.991039, 26.056360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.784260, 33.724953, 26.224815>,  <38.932232, 33.565300, 26.325890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.784260, 33.724953, 26.224815>,  <38.537640, 33.991039, 26.056360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784260, 33.724953, 26.224815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621525, -0.082878, 0.778998,
		-0.483299, -0.742037, -0.464547,
		0.616546, -0.665216, 0.421140,
		38.969223, 33.525387, 26.351158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107647, 33.496487, 26.455616>,  <38.537640, 33.991039, 26.056360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107647, 33.496487, 26.455616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.473988, 33.457745, 26.611477>,  <38.693794, 33.434498, 26.704994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.473988, 33.457745, 26.611477>,  <38.107647, 33.496487, 26.455616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473988, 33.457745, 26.611477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389736, 0.018836, 0.920734,
		-0.096523, -0.995120, -0.020499,
		0.915854, -0.096861, 0.389652,
		38.748745, 33.428688, 26.728373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112492, 32.821232, 26.863314>,  <38.107647, 33.496487, 26.455616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112492, 32.821232, 26.863314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.392632, 33.081287, 26.981182>,  <38.560715, 33.237320, 27.051903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.392632, 33.081287, 26.981182>,  <38.112492, 32.821232, 26.863314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392632, 33.081287, 26.981182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434321, 0.060524, 0.898723,
		0.566456, -0.757405, 0.324755,
		0.700352, 0.650135, 0.294672,
		38.602737, 33.276329, 27.069584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316643, 32.556622, 27.555048>,  <38.112492, 32.821232, 26.863314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316643, 32.556622, 27.555048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.463261, 32.928719, 27.561817>,  <38.551231, 33.151978, 27.565878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.463261, 32.928719, 27.561817>,  <38.316643, 32.556622, 27.555048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463261, 32.928719, 27.561817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357429, 0.124000, 0.925672,
		0.859004, -0.345349, 0.377949,
		0.366545, 0.930246, 0.016921,
		38.573223, 33.207794, 27.566895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674675, 32.573421, 28.149124>,  <38.316643, 32.556622, 27.555048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674675, 32.573421, 28.149124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.628757, 32.960964, 28.061363>,  <38.601208, 33.193489, 28.008707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.628757, 32.960964, 28.061363>,  <38.674675, 32.573421, 28.149124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628757, 32.960964, 28.061363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181938, 0.196621, 0.963452,
		0.976587, 0.150512, 0.153702,
		-0.114790, 0.968858, -0.219401,
		38.594322, 33.251621, 27.995543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174988, 33.007568, 28.535107>,  <38.674675, 32.573421, 28.149124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174988, 33.007568, 28.535107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.885395, 33.269032, 28.446938>,  <38.711639, 33.425911, 28.394035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.885395, 33.269032, 28.446938>,  <39.174988, 33.007568, 28.535107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885395, 33.269032, 28.446938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126361, 0.439796, 0.889164,
		0.678152, 0.615881, -0.401000,
		-0.723977, 0.653659, -0.220425,
		38.668201, 33.465130, 28.380810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368683, 33.678352, 28.663322>,  <39.174988, 33.007568, 28.535107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368683, 33.678352, 28.663322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.970058, 33.679245, 28.696468>,  <38.730885, 33.679783, 28.716356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.970058, 33.679245, 28.696468>,  <39.368683, 33.678352, 28.663322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970058, 33.679245, 28.696468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074681, 0.458084, 0.885766,
		-0.035981, 0.888906, -0.456674,
		-0.996558, 0.002234, 0.082867,
		38.671089, 33.679916, 28.721329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118446, 34.351582, 29.051855>,  <39.368683, 33.678352, 28.663322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118446, 34.351582, 29.051855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.778503, 34.141060, 29.062750>,  <38.574535, 34.014748, 29.069286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.778503, 34.141060, 29.062750>,  <39.118446, 34.351582, 29.051855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778503, 34.141060, 29.062750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223376, 0.406551, 0.885901,
		-0.477326, 0.746808, -0.463075,
		-0.849861, -0.526303, 0.027238,
		38.523544, 33.983170, 29.070921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597839, 34.827862, 29.302626>,  <39.118446, 34.351582, 29.051855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597839, 34.827862, 29.302626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.466152, 34.458061, 29.379467>,  <38.387138, 34.236179, 29.425571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.466152, 34.458061, 29.379467>,  <38.597839, 34.827862, 29.302626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466152, 34.458061, 29.379467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202393, 0.267807, 0.941975,
		-0.922309, 0.271234, -0.275281,
		-0.329217, -0.924506, 0.192105,
		38.367386, 34.180710, 29.437099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266239, 34.930660, 29.926931>,  <38.597839, 34.827862, 29.302626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266239, 34.930660, 29.926931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.223858, 34.534004, 29.897469>,  <38.198429, 34.296009, 29.879791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.223858, 34.534004, 29.897469>,  <38.266239, 34.930660, 29.926931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223858, 34.534004, 29.897469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180991, -0.053603, 0.982023,
		-0.977760, 0.117383, -0.173799,
		-0.105957, -0.991639, -0.073657,
		38.192070, 34.236511, 29.875372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652599, 34.784889, 30.348324>,  <38.266239, 34.930660, 29.926931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652599, 34.784889, 30.348324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863548, 34.445732, 30.326563>,  <37.990116, 34.242237, 30.313505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863548, 34.445732, 30.326563>,  <37.652599, 34.784889, 30.348324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863548, 34.445732, 30.326563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172889, -0.169786, 0.970197,
		-0.831858, -0.502250, -0.236131,
		0.527373, -0.847890, -0.054404,
		38.021759, 34.191364, 30.310242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217464, 34.310398, 30.563231>,  <37.652599, 34.784889, 30.348324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217464, 34.310398, 30.563231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.570797, 34.131927, 30.620728>,  <37.782795, 34.024845, 30.655226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.570797, 34.131927, 30.620728>,  <37.217464, 34.310398, 30.563231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570797, 34.131927, 30.620728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259658, -0.210420, 0.942497,
		-0.390272, -0.869857, -0.301722,
		0.883327, -0.446174, 0.143744,
		37.835796, 33.998074, 30.663851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090313, 33.634033, 30.833164>,  <37.217464, 34.310398, 30.563231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090313, 33.634033, 30.833164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.470528, 33.721416, 30.921490>,  <37.698654, 33.773846, 30.974485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.470528, 33.721416, 30.921490>,  <37.090313, 33.634033, 30.833164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470528, 33.721416, 30.921490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151686, -0.293905, 0.943722,
		0.271063, -0.930535, -0.246230,
		0.950535, 0.218458, 0.220815,
		37.755688, 33.786953, 30.987734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473774, 32.977608, 31.102318>,  <37.090313, 33.634033, 30.833164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473774, 32.977608, 31.102318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.692753, 33.279957, 31.245958>,  <37.824142, 33.461365, 31.332142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.692753, 33.279957, 31.245958>,  <37.473774, 32.977608, 31.102318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692753, 33.279957, 31.245958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241342, -0.268275, 0.932621,
		0.801282, -0.597230, 0.035557,
		0.547450, 0.755874, 0.359100,
		37.856987, 33.506718, 31.353689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989761, 32.804127, 31.675930>,  <37.473774, 32.977608, 31.102318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989761, 32.804127, 31.675930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.947098, 33.199245, 31.721331>,  <37.921501, 33.436317, 31.748571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.947098, 33.199245, 31.721331>,  <37.989761, 32.804127, 31.675930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947098, 33.199245, 31.721331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093809, -0.123642, 0.987883,
		0.989861, 0.094715, 0.105851,
		-0.106655, 0.987796, 0.113503,
		37.915100, 33.495583, 31.755383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276855, 32.775574, 32.338772>,  <37.989761, 32.804127, 31.675930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276855, 32.775574, 32.338772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.124264, 33.144146, 32.309261>,  <38.032707, 33.365288, 32.291557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.124264, 33.144146, 32.309261>,  <38.276855, 32.775574, 32.338772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124264, 33.144146, 32.309261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113747, 0.032409, 0.992981,
		0.917351, 0.387195, 0.092447,
		-0.381482, 0.921428, -0.073773,
		38.009819, 33.420574, 32.287128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699200, 33.133926, 32.754349>,  <38.276855, 32.775574, 32.338772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699200, 33.133926, 32.754349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.352970, 33.332985, 32.731972>,  <38.145233, 33.452419, 32.718544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.352970, 33.332985, 32.731972>,  <38.699200, 33.133926, 32.754349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352970, 33.332985, 32.731972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072503, -0.013991, 0.997270,
		0.495505, 0.867267, 0.048191,
		-0.865574, 0.497647, -0.055947,
		38.093300, 33.482281, 32.715187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752876, 33.765945, 33.182613>,  <38.699200, 33.133926, 32.754349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752876, 33.765945, 33.182613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.951378, 34.014835, 33.424797>,  <39.070477, 34.164169, 33.570107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.951378, 34.014835, 33.424797>,  <38.752876, 33.765945, 33.182613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951378, 34.014835, 33.424797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530788, 0.334422, -0.778734,
		-0.687022, 0.707815, -0.164311,
		0.496251, 0.622222, 0.605455,
		39.100254, 34.201504, 33.606434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789394, 34.498337, 32.840992>,  <38.752876, 33.765945, 33.182613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789394, 34.498337, 32.840992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.092014, 34.411453, 33.087715>,  <39.273586, 34.359322, 33.235748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.092014, 34.411453, 33.087715>,  <38.789394, 34.498337, 32.840992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092014, 34.411453, 33.087715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653384, 0.212354, -0.726633,
		0.026852, 0.952746, 0.302579,
		0.756551, -0.217211, 0.616807,
		39.318981, 34.346291, 33.272758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269306, 34.979794, 32.681419>,  <38.789394, 34.498337, 32.840992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269306, 34.979794, 32.681419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.497505, 34.737209, 32.902958>,  <39.634422, 34.591660, 33.035881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.497505, 34.737209, 32.902958>,  <39.269306, 34.979794, 32.681419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497505, 34.737209, 32.902958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785259, 0.205195, -0.584177,
		0.240633, 0.768181, 0.593290,
		0.570494, -0.606459, 0.553845,
		39.668652, 34.555271, 33.069111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968399, 35.366886, 32.752281>,  <39.269306, 34.979794, 32.681419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968399, 35.366886, 32.752281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.018658, 34.974785, 32.813354>,  <40.048813, 34.739525, 32.849998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.018658, 34.974785, 32.813354>,  <39.968399, 35.366886, 32.752281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018658, 34.974785, 32.813354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843132, 0.024407, -0.537153,
		0.522821, 0.196221, 0.829552,
		0.125647, -0.980256, 0.152679,
		40.056351, 34.680710, 32.859158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675053, 35.381042, 32.745583>,  <39.968399, 35.366886, 32.752281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675053, 35.381042, 32.745583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.593914, 34.993965, 32.685688>,  <40.545231, 34.761719, 32.649750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.593914, 34.993965, 32.685688>,  <40.675053, 35.381042, 32.745583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593914, 34.993965, 32.685688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734935, -0.049398, -0.676336,
		0.647090, -0.247239, 0.721213,
		-0.202843, -0.967695, -0.149740,
		40.533062, 34.703655, 32.640766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308006, 35.029911, 32.735722>,  <40.675053, 35.381042, 32.745583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308006, 35.029911, 32.735722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.072598, 34.734184, 32.604851>,  <40.931351, 34.556747, 32.526329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.072598, 34.734184, 32.604851>,  <41.308006, 35.029911, 32.735722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072598, 34.734184, 32.604851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746665, -0.341835, -0.570648,
		0.310049, -0.580134, 0.753202,
		-0.588524, -0.739319, -0.327181,
		40.896042, 34.512390, 32.506695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548939, 34.347942, 32.842297>,  <41.308006, 35.029911, 32.735722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548939, 34.347942, 32.842297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.313984, 34.340351, 32.518665>,  <41.173012, 34.335796, 32.324486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.313984, 34.340351, 32.518665>,  <41.548939, 34.347942, 32.842297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313984, 34.340351, 32.518665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750106, -0.388090, -0.535469,
		-0.303833, -0.921426, 0.242198,
		-0.587390, -0.018981, -0.809082,
		41.137768, 34.334656, 32.275940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760887, 33.831673, 32.345459>,  <41.548939, 34.347942, 32.842297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760887, 33.831673, 32.345459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.514122, 34.012680, 32.087887>,  <41.366062, 34.121284, 31.933344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.514122, 34.012680, 32.087887>,  <41.760887, 33.831673, 32.345459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514122, 34.012680, 32.087887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707601, -0.039292, -0.705518,
		-0.344562, -0.890889, -0.295963,
		-0.616910, 0.452519, -0.643932,
		41.329048, 34.148438, 31.894707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797985, 33.468571, 31.699123>,  <41.760887, 33.831673, 32.345459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797985, 33.468571, 31.699123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.652943, 33.824490, 31.588289>,  <41.565918, 34.038040, 31.521788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.652943, 33.824490, 31.588289>,  <41.797985, 33.468571, 31.699123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652943, 33.824490, 31.588289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627704, 0.013421, -0.778336,
		-0.688843, -0.456157, -0.563396,
		-0.362605, 0.889798, -0.277087,
		41.544163, 34.091431, 31.505163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623169, 33.435669, 30.987671>,  <41.797985, 33.468571, 31.699123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623169, 33.435669, 30.987671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.646122, 33.831104, 31.043383>,  <41.659893, 34.068367, 31.076811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.646122, 33.831104, 31.043383>,  <41.623169, 33.435669, 30.987671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646122, 33.831104, 31.043383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477934, 0.095284, -0.873212,
		-0.876519, 0.116676, -0.467013,
		0.057384, 0.988589, 0.139281,
		41.663338, 34.127682, 31.085167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426235, 33.752121, 30.298853>,  <41.623169, 33.435669, 30.987671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426235, 33.752121, 30.298853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.653214, 34.020443, 30.489862>,  <41.789402, 34.181435, 30.604467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.653214, 34.020443, 30.489862>,  <41.426235, 33.752121, 30.298853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653214, 34.020443, 30.489862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421406, 0.261646, -0.868308,
		-0.707406, 0.693949, -0.134210,
		0.567445, 0.670803, 0.477524,
		41.823448, 34.221684, 30.633120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270763, 34.362968, 30.014025>,  <41.426235, 33.752121, 30.298853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270763, 34.362968, 30.014025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.637730, 34.415791, 30.164181>,  <41.857910, 34.447483, 30.254274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.637730, 34.415791, 30.164181>,  <41.270763, 34.362968, 30.014025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637730, 34.415791, 30.164181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326557, 0.289258, -0.899828,
		-0.227409, 0.948099, 0.222246,
		0.917413, 0.132053, 0.375388,
		41.912952, 34.455406, 30.276796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560181, 35.032639, 29.715101>,  <41.270763, 34.362968, 30.014025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560181, 35.032639, 29.715101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.871578, 34.811558, 29.834074>,  <42.058418, 34.678909, 29.905458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.871578, 34.811558, 29.834074>,  <41.560181, 35.032639, 29.715101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871578, 34.811558, 29.834074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438473, 0.139839, -0.887799,
		0.449095, 0.821564, 0.351208,
		0.778496, -0.552701, 0.297432,
		42.105125, 34.645748, 29.923304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161972, 35.390724, 29.473022>,  <41.560181, 35.032639, 29.715101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161972, 35.390724, 29.473022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.280769, 35.016060, 29.547279>,  <42.352047, 34.791260, 29.591833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.280769, 35.016060, 29.547279>,  <42.161972, 35.390724, 29.473022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280769, 35.016060, 29.547279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336308, -0.079350, -0.938403,
		0.893695, 0.341134, 0.291440,
		0.296995, -0.936660, 0.185641,
		42.369869, 34.735062, 29.602972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851318, 35.402950, 29.290567>,  <42.161972, 35.390724, 29.473022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851318, 35.402950, 29.290567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.726715, 35.024204, 29.258535>,  <42.651951, 34.796959, 29.239315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.726715, 35.024204, 29.258535>,  <42.851318, 35.402950, 29.290567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726715, 35.024204, 29.258535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494093, -0.089413, -0.864799,
		0.811685, -0.308962, 0.495691,
		-0.311511, -0.946862, -0.080081,
		42.633263, 34.740147, 29.234510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.465466, 35.055984, 29.085314>,  <42.851318, 35.402950, 29.290567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.465466, 35.055984, 29.085314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.160461, 34.812122, 28.998695>,  <42.977459, 34.665806, 28.946724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.160461, 34.812122, 28.998695>,  <43.465466, 35.055984, 29.085314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.160461, 34.812122, 28.998695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382416, -0.154734, -0.910942,
		0.521857, -0.777414, 0.351130,
		-0.762510, -0.609660, -0.216547,
		42.931709, 34.629223, 28.933731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667549, 34.685413, 28.431150>,  <43.465466, 35.055984, 29.085314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667549, 34.685413, 28.431150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.287754, 34.562855, 28.404043>,  <43.059875, 34.489319, 28.387779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.287754, 34.562855, 28.404043>,  <43.667549, 34.685413, 28.431150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287754, 34.562855, 28.404043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133374, -0.198554, -0.970973,
		0.284044, -0.930967, 0.229390,
		-0.949489, -0.306393, -0.067768,
		43.002907, 34.470936, 28.383713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610744, 34.144024, 27.919481>,  <43.667549, 34.685413, 28.431150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610744, 34.144024, 27.919481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.239899, 34.288296, 27.960224>,  <43.017391, 34.374859, 27.984671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.239899, 34.288296, 27.960224>,  <43.610744, 34.144024, 27.919481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239899, 34.288296, 27.960224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166276, -0.152274, -0.974251,
		-0.335883, -0.920176, 0.201147,
		-0.927111, 0.360680, 0.101857,
		42.961765, 34.396500, 27.990782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.280884, 33.635639, 27.525787>,  <43.610744, 34.144024, 27.919481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.280884, 33.635639, 27.525787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.055450, 33.961712, 27.579226>,  <42.920189, 34.157356, 27.611288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.055450, 33.961712, 27.579226>,  <43.280884, 33.635639, 27.525787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055450, 33.961712, 27.579226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067519, 0.115724, -0.990984,
		-0.823294, -0.567524, -0.010180,
		-0.563585, 0.815184, 0.133593,
		42.886375, 34.206268, 27.619303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.616177, 33.487518, 27.126404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.638504, 33.885601, 27.158541>,  <42.651901, 34.124451, 27.177822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.638504, 33.885601, 27.158541>,  <42.616177, 33.487518, 27.126404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.638504, 33.885601, 27.158541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236798, 0.091364, -0.967253,
		-0.969954, 0.034962, 0.240762,
		0.055814, 0.995204, 0.080340,
		42.655247, 34.184162, 27.182642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019211, 33.751175, 26.796505>,  <42.616177, 33.487518, 27.126404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019211, 33.751175, 26.796505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.299931, 34.036118, 26.794558>,  <42.468361, 34.207085, 26.793388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.299931, 34.036118, 26.794558>,  <42.019211, 33.751175, 26.796505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299931, 34.036118, 26.794558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189919, 0.180506, -0.965064,
		-0.686592, 0.678206, 0.261970,
		0.701800, 0.712358, -0.004870,
		42.510471, 34.249825, 26.793097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664711, 34.362038, 26.479904>,  <42.019211, 33.751175, 26.796505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664711, 34.362038, 26.479904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.059692, 34.403053, 26.431854>,  <42.296680, 34.427662, 26.403025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.059692, 34.403053, 26.431854>,  <41.664711, 34.362038, 26.479904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059692, 34.403053, 26.431854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133147, 0.131390, -0.982348,
		-0.084944, 0.986014, 0.143393,
		0.987449, 0.102536, -0.120124,
		42.355927, 34.433815, 26.395817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797459, 34.915775, 26.064707>,  <41.664711, 34.362038, 26.479904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797459, 34.915775, 26.064707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.108768, 34.667526, 26.026518>,  <42.295555, 34.518578, 26.003605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.108768, 34.667526, 26.026518>,  <41.797459, 34.915775, 26.064707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108768, 34.667526, 26.026518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098150, 0.029937, -0.994721,
		0.620208, 0.783535, -0.037615,
		0.778273, -0.620626, -0.095472,
		42.342251, 34.481339, 25.997877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164360, 35.222565, 25.545742>,  <41.797459, 34.915775, 26.064707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164360, 35.222565, 25.545742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.324287, 34.856014, 25.553711>,  <42.420242, 34.636082, 25.558493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.324287, 34.856014, 25.553711>,  <42.164360, 35.222565, 25.545742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324287, 34.856014, 25.553711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087338, -0.059722, -0.994387,
		0.912426, 0.395831, -0.103912,
		0.399815, -0.916380, 0.019921,
		42.444233, 34.581100, 25.559687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745705, 35.328331, 25.057793>,  <42.164360, 35.222565, 25.545742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745705, 35.328331, 25.057793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.722599, 34.933842, 25.119801>,  <42.708736, 34.697147, 25.157005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.722599, 34.933842, 25.119801>,  <42.745705, 35.328331, 25.057793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722599, 34.933842, 25.119801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328564, -0.165406, -0.929885,
		0.942714, -0.002778, 0.333591,
		-0.057761, -0.986222, 0.155018,
		42.705273, 34.637974, 25.166306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388561, 35.036560, 24.922573>,  <42.745705, 35.328331, 25.057793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388561, 35.036560, 24.922573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.094582, 34.768120, 24.883627>,  <42.918194, 34.607056, 24.860260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.094582, 34.768120, 24.883627>,  <43.388561, 35.036560, 24.922573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094582, 34.768120, 24.883627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280947, -0.170658, -0.944428,
		0.617190, -0.721458, 0.313967,
		-0.734946, -0.671100, -0.097363,
		42.874096, 34.566792, 24.854418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696720, 34.436768, 24.573185>,  <43.388561, 35.036560, 24.922573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696720, 34.436768, 24.573185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.301342, 34.451485, 24.514368>,  <43.064114, 34.460316, 24.479078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.301342, 34.451485, 24.514368>,  <43.696720, 34.436768, 24.573185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301342, 34.451485, 24.514368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148023, 0.025557, -0.988654,
		-0.032624, -0.998996, -0.030709,
		-0.988446, 0.036800, -0.147041,
		43.004807, 34.462524, 24.470255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616482, 33.972916, 24.084192>,  <43.696720, 34.436768, 24.573185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616482, 33.972916, 24.084192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.285446, 34.196918, 24.068794>,  <43.086823, 34.331322, 24.059555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.285446, 34.196918, 24.068794>,  <43.616482, 33.972916, 24.084192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.285446, 34.196918, 24.068794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000067, -0.068475, -0.997653,
		-0.561331, -0.825652, 0.056631,
		-0.827591, 0.560010, -0.038493,
		43.037170, 34.364922, 24.057247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221405, 33.574745, 23.738577>,  <43.616482, 33.972916, 24.084192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221405, 33.574745, 23.738577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.074326, 33.944023, 23.693840>,  <42.986076, 34.165588, 23.666998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.074326, 33.944023, 23.693840>,  <43.221405, 33.574745, 23.738577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.074326, 33.944023, 23.693840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046574, -0.138400, -0.989281,
		-0.928778, -0.358548, 0.093886,
		-0.367699, 0.923195, -0.111844,
		42.964016, 34.220982, 23.660288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.669922, 33.413551, 23.314003>,  <43.221405, 33.574745, 23.738577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.669922, 33.413551, 23.314003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.754993, 33.804031, 23.297070>,  <42.806038, 34.038319, 23.286909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.754993, 33.804031, 23.297070>,  <42.669922, 33.413551, 23.314003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754993, 33.804031, 23.297070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054062, -0.055015, -0.997021,
		-0.975625, 0.209758, -0.064476,
		0.212681, 0.976204, -0.042334,
		42.818798, 34.096893, 23.284369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317471, 33.617905, 22.782152>,  <42.669922, 33.413551, 23.314003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317471, 33.617905, 22.782152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.593166, 33.905899, 22.814579>,  <42.758583, 34.078693, 22.834036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.593166, 33.905899, 22.814579>,  <42.317471, 33.617905, 22.782152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593166, 33.905899, 22.814579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094344, 0.021754, -0.995302,
		-0.718363, 0.693652, -0.052932,
		0.689242, 0.719982, 0.081069,
		42.799938, 34.121895, 22.838900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197411, 33.889709, 22.121504>,  <42.317471, 33.617905, 22.782152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.197411, 33.889709, 22.121504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.516579, 34.098457, 22.242155>,  <42.708080, 34.223705, 22.314547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.516579, 34.098457, 22.242155>,  <42.197411, 33.889709, 22.121504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516579, 34.098457, 22.242155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187059, 0.261312, -0.946956,
		-0.573006, 0.812015, 0.110885,
		0.797918, 0.521869, 0.301628,
		42.755955, 34.255016, 22.332644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.132565, 34.567680, 21.827486>,  <42.197411, 33.889709, 22.121504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.132565, 34.567680, 21.827486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.523258, 34.506645, 21.887751>,  <42.757675, 34.470024, 21.923910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.523258, 34.506645, 21.887751>,  <42.132565, 34.567680, 21.827486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523258, 34.506645, 21.887751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191737, 0.306856, -0.932243,
		0.096021, 0.939444, 0.328975,
		0.976738, -0.152592, 0.150662,
		42.816280, 34.460869, 21.932949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.462463, 35.146584, 21.617630>,  <42.132565, 34.567680, 21.827486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.462463, 35.146584, 21.617630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.768608, 34.889431, 21.605457>,  <42.952293, 34.735138, 21.598154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.768608, 34.889431, 21.605457>,  <42.462463, 35.146584, 21.617630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768608, 34.889431, 21.605457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383162, 0.493127, -0.781033,
		0.517121, 0.586109, 0.623748,
		0.765358, -0.642885, -0.030431,
		42.998215, 34.696564, 21.596329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034573, 35.591434, 21.537849>,  <42.462463, 35.146584, 21.617630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034573, 35.591434, 21.537849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.151600, 35.228481, 21.417145>,  <43.221817, 35.010708, 21.344723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.151600, 35.228481, 21.417145>,  <43.034573, 35.591434, 21.537849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151600, 35.228481, 21.417145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493447, 0.413566, -0.765162,
		0.819094, 0.074959, 0.568741,
		0.292568, -0.907383, -0.301762,
		43.239368, 34.956264, 21.326616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.726147, 35.638161, 21.358446>,  <43.034573, 35.591434, 21.537849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.726147, 35.638161, 21.358446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.616051, 35.298992, 21.177219>,  <43.549995, 35.095490, 21.068483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.616051, 35.298992, 21.177219>,  <43.726147, 35.638161, 21.358446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.616051, 35.298992, 21.177219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360248, 0.345967, -0.866330,
		0.891328, -0.401664, 0.210239,
		-0.275238, -0.847923, -0.453069,
		43.533478, 35.044617, 21.041298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.246334, 35.532646, 20.927217>,  <43.726147, 35.638161, 21.358446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.246334, 35.532646, 20.927217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.934238, 35.334412, 20.774574>,  <43.746983, 35.215469, 20.682987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.934238, 35.334412, 20.774574>,  <44.246334, 35.532646, 20.927217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.934238, 35.334412, 20.774574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214001, 0.361773, -0.907372,
		0.587740, -0.789627, -0.176211,
		-0.780234, -0.495589, -0.381610,
		43.700169, 35.185734, 20.660091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.518799, 35.339527, 20.295925>,  <44.246334, 35.532646, 20.927217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.518799, 35.339527, 20.295925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.131008, 35.259361, 20.239443>,  <43.898335, 35.211262, 20.205553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.131008, 35.259361, 20.239443>,  <44.518799, 35.339527, 20.295925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.131008, 35.259361, 20.239443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109273, 0.162345, -0.980665,
		0.219469, -0.966166, -0.135490,
		-0.969481, -0.200420, -0.141205,
		43.840164, 35.199234, 20.197081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.414787, 34.738949, 19.805630>,  <44.518799, 35.339527, 20.295925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.414787, 34.738949, 19.805630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.088097, 34.968296, 19.779682>,  <43.892082, 35.105904, 19.764114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.088097, 34.968296, 19.779682>,  <44.414787, 34.738949, 19.805630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.088097, 34.968296, 19.779682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102068, 0.032907, -0.994233,
		-0.567932, -0.818633, -0.085399,
		-0.816723, 0.573373, -0.064867,
		43.843079, 35.140308, 19.760221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.005302, 34.529522, 19.173262>,  <44.414787, 34.738949, 19.805630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.005302, 34.529522, 19.173262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.855965, 34.890339, 19.259924>,  <43.766361, 35.106827, 19.311920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.855965, 34.890339, 19.259924>,  <44.005302, 34.529522, 19.173262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855965, 34.890339, 19.259924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056517, 0.210991, -0.975853,
		-0.925968, -0.376577, -0.027793,
		-0.373348, 0.902038, 0.216654,
		43.743961, 35.160950, 19.324921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308365, 34.554131, 18.856775>,  <44.005302, 34.529522, 19.173262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.308365, 34.554131, 18.856775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.410496, 34.935886, 18.918678>,  <43.471775, 35.164940, 18.955820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.410496, 34.935886, 18.918678>,  <43.308365, 34.554131, 18.856775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410496, 34.935886, 18.918678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355236, 0.241469, -0.903050,
		-0.899229, 0.175602, 0.400688,
		0.255331, 0.954388, 0.154756,
		43.487095, 35.222202, 18.965105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554848, 34.446247, 18.712355>,  <43.308365, 34.554131, 18.856775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554848, 34.446247, 18.712355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.694565, 34.150280, 18.482395>,  <42.778397, 33.972698, 18.344419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.694565, 34.150280, 18.482395>,  <42.554848, 34.446247, 18.712355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694565, 34.150280, 18.482395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911855, -0.409636, -0.026801,
		-0.215669, 0.533587, -0.817784,
		0.349295, -0.739921, -0.574900,
		42.799355, 33.928303, 18.309925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099831, 34.430817, 18.201075>,  <42.554848, 34.446247, 18.712355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099831, 34.430817, 18.201075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.282043, 34.074730, 18.201580>,  <42.391373, 33.861076, 18.201883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.282043, 34.074730, 18.201580>,  <42.099831, 34.430817, 18.201075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282043, 34.074730, 18.201580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889998, -0.455453, -0.021596,
		0.019801, 0.008714, -0.999766,
		0.455535, -0.890217, 0.001263,
		42.418705, 33.807663, 18.201960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867245, 34.608028, 17.614620>,  <42.099831, 34.430817, 18.201075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.867245, 34.608028, 17.614620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.488861, 34.684422, 17.509792>,  <41.261829, 34.730255, 17.446896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.488861, 34.684422, 17.509792>,  <41.867245, 34.608028, 17.614620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488861, 34.684422, 17.509792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183873, 0.349788, 0.918607,
		0.267104, 0.917156, -0.295770,
		-0.945963, 0.190980, -0.262070,
		41.205070, 34.741714, 17.431171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722099, 35.287773, 17.786880>,  <41.867245, 34.608028, 17.614620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722099, 35.287773, 17.786880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.382488, 35.078068, 17.760666>,  <41.178722, 34.952244, 17.744938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.382488, 35.078068, 17.760666>,  <41.722099, 35.287773, 17.786880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382488, 35.078068, 17.760666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145627, 0.112979, 0.982868,
		-0.507876, 0.844029, -0.172269,
		-0.849031, -0.524262, -0.065535,
		41.127777, 34.920788, 17.741005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120518, 35.753071, 18.188032>,  <41.722099, 35.287773, 17.786880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120518, 35.753071, 18.188032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.998291, 35.373875, 18.152367>,  <40.924953, 35.146358, 18.130968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.998291, 35.373875, 18.152367>,  <41.120518, 35.753071, 18.188032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998291, 35.373875, 18.152367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454180, 0.062812, 0.888693,
		-0.836868, 0.312052, -0.449750,
		-0.305568, -0.947987, -0.089162,
		40.906620, 35.089478, 18.125618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361404, 35.750832, 18.423536>,  <41.120518, 35.753071, 18.188032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361404, 35.750832, 18.423536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.517277, 35.384697, 18.464142>,  <40.610802, 35.165016, 18.488504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.517277, 35.384697, 18.464142>,  <40.361404, 35.750832, 18.423536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517277, 35.384697, 18.464142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194770, 0.025821, 0.980509,
		-0.900119, -0.401857, -0.168218,
		0.389681, -0.915339, 0.101512,
		40.634182, 35.110096, 18.494595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853447, 35.293949, 18.807043>,  <40.361404, 35.750832, 18.423536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853447, 35.293949, 18.807043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.217113, 35.131573, 18.844198>,  <40.435314, 35.034145, 18.866491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.217113, 35.131573, 18.844198>,  <39.853447, 35.293949, 18.807043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217113, 35.131573, 18.844198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122109, -0.046620, 0.991421,
		-0.398130, -0.912708, -0.091954,
		0.909165, -0.405943, 0.092889,
		40.489864, 35.009789, 18.872065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739399, 34.745758, 19.320269>,  <39.853447, 35.293949, 18.807043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739399, 34.745758, 19.320269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.134792, 34.796940, 19.287956>,  <40.372028, 34.827648, 19.268568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.134792, 34.796940, 19.287956>,  <39.739399, 34.745758, 19.320269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134792, 34.796940, 19.287956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099073, -0.143728, 0.984646,
		0.114382, -0.981310, -0.154749,
		0.988484, 0.127957, -0.080781,
		40.431339, 34.835327, 19.263721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075764, 34.107590, 19.561495>,  <39.739399, 34.745758, 19.320269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075764, 34.107590, 19.561495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.353065, 34.394844, 19.585739>,  <40.519447, 34.567196, 19.600286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.353065, 34.394844, 19.585739>,  <40.075764, 34.107590, 19.561495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353065, 34.394844, 19.585739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108675, -0.187307, 0.976271,
		0.712452, -0.670217, -0.207895,
		0.693254, 0.718140, 0.060612,
		40.561043, 34.610287, 19.603922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552586, 33.929935, 20.186926>,  <40.075764, 34.107590, 19.561495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552586, 33.929935, 20.186926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.624138, 34.318016, 20.121557>,  <40.667068, 34.550865, 20.082336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.624138, 34.318016, 20.121557>,  <40.552586, 33.929935, 20.186926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624138, 34.318016, 20.121557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150409, 0.137181, 0.979060,
		0.972307, -0.199711, -0.121389,
		0.178876, 0.970205, -0.163420,
		40.677799, 34.609077, 20.072531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104786, 34.079372, 20.562338>,  <40.552586, 33.929935, 20.186926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104786, 34.079372, 20.562338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.948475, 34.445076, 20.519581>,  <40.854691, 34.664497, 20.493927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.948475, 34.445076, 20.519581>,  <41.104786, 34.079372, 20.562338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948475, 34.445076, 20.519581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069864, 0.145248, 0.986925,
		0.917832, 0.378196, -0.120633,
		-0.390773, 0.914260, -0.106891,
		40.831242, 34.719353, 20.487513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528332, 34.510639, 20.971891>,  <41.104786, 34.079372, 20.562338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528332, 34.510639, 20.971891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.191109, 34.720348, 20.923903>,  <40.988773, 34.846172, 20.895109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.191109, 34.720348, 20.923903>,  <41.528332, 34.510639, 20.971891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191109, 34.720348, 20.923903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034854, 0.169346, 0.984940,
		0.536690, 0.834544, -0.124496,
		-0.843059, 0.524269, -0.119973,
		40.938190, 34.877628, 20.887911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593941, 35.205566, 21.320438>,  <41.528332, 34.510639, 20.971891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593941, 35.205566, 21.320438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.204594, 35.116901, 21.297039>,  <40.970985, 35.063702, 21.282999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.204594, 35.116901, 21.297039>,  <41.593941, 35.205566, 21.320438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204594, 35.116901, 21.297039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061468, 0.006524, 0.998088,
		-0.220859, 0.975101, -0.019975,
		-0.973367, -0.221665, -0.058497,
		40.912582, 35.050404, 21.279490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259144, 35.586479, 21.888935>,  <41.593941, 35.205566, 21.320438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259144, 35.586479, 21.888935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.007912, 35.291477, 21.789654>,  <40.857174, 35.114475, 21.730085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.007912, 35.291477, 21.789654>,  <41.259144, 35.586479, 21.888935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007912, 35.291477, 21.789654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257943, -0.103612, 0.960588,
		-0.734157, 0.667345, -0.125158,
		-0.628076, -0.737506, -0.248204,
		40.819489, 35.070225, 21.715193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530109, 35.732651, 22.201309>,  <41.259144, 35.586479, 21.888935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530109, 35.732651, 22.201309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.524075, 35.336140, 22.148930>,  <40.520454, 35.098232, 22.117502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.524075, 35.336140, 22.148930>,  <40.530109, 35.732651, 22.201309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524075, 35.336140, 22.148930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117769, -0.128290, 0.984719,
		-0.992926, 0.030282, -0.114805,
		-0.015090, -0.991274, -0.130949,
		40.519547, 35.038757, 22.109646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185013, 35.548012, 22.777884>,  <40.530109, 35.732651, 22.201309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185013, 35.548012, 22.777884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.346447, 35.207462, 22.643847>,  <40.443306, 35.003132, 22.563425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.346447, 35.207462, 22.643847>,  <40.185013, 35.548012, 22.777884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346447, 35.207462, 22.643847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111822, -0.409395, 0.905479,
		-0.908084, -0.327966, -0.260427,
		0.403583, -0.851372, -0.335091,
		40.467522, 34.952049, 22.543320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736374, 34.918495, 22.957355>,  <40.185013, 35.548012, 22.777884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736374, 34.918495, 22.957355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.104019, 34.768375, 22.909380>,  <40.324604, 34.678303, 22.880594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.104019, 34.768375, 22.909380>,  <39.736374, 34.918495, 22.957355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104019, 34.768375, 22.909380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119877, -0.556354, 0.822253,
		-0.375323, -0.741362, -0.556340,
		0.919109, -0.375303, -0.119941,
		40.379753, 34.655785, 22.873398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569309, 34.272179, 22.954733>,  <39.736374, 34.918495, 22.957355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569309, 34.272179, 22.954733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.956661, 34.300915, 23.050295>,  <40.189072, 34.318157, 23.107632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.956661, 34.300915, 23.050295>,  <39.569309, 34.272179, 22.954733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956661, 34.300915, 23.050295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160909, -0.551954, 0.818202,
		0.190643, -0.830774, -0.522943,
		0.968382, 0.071838, 0.238905,
		40.247177, 34.322468, 23.121967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706573, 33.637428, 23.052349>,  <39.569309, 34.272179, 22.954733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706573, 33.637428, 23.052349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.979767, 33.842754, 23.260210>,  <40.143684, 33.965950, 23.384926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.979767, 33.842754, 23.260210>,  <39.706573, 33.637428, 23.052349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979767, 33.842754, 23.260210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273975, -0.479456, 0.833702,
		0.677106, -0.711776, -0.186823,
		0.682983, 0.513319, 0.519651,
		40.184662, 33.996750, 23.416105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954227, 33.147011, 23.600674>,  <39.706573, 33.637428, 23.052349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954227, 33.147011, 23.600674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.072144, 33.499493, 23.748497>,  <40.142891, 33.710983, 23.837191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.072144, 33.499493, 23.748497>,  <39.954227, 33.147011, 23.600674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072144, 33.499493, 23.748497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044775, -0.399059, 0.915832,
		0.954513, -0.253429, -0.157093,
		0.294788, 0.881207, 0.369559,
		40.160580, 33.763855, 23.859365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480030, 32.900650, 24.077768>,  <39.954227, 33.147011, 23.600674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480030, 32.900650, 24.077768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.341682, 33.272366, 24.129622>,  <40.258675, 33.495396, 24.160732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.341682, 33.272366, 24.129622>,  <40.480030, 32.900650, 24.077768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341682, 33.272366, 24.129622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064305, -0.161310, 0.984807,
		0.936077, 0.332278, 0.115550,
		-0.345869, 0.929285, 0.129631,
		40.237923, 33.551151, 24.168510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847134, 33.126610, 24.712513>,  <40.480030, 32.900650, 24.077768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847134, 33.126610, 24.712513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.536022, 33.376968, 24.689476>,  <40.349358, 33.527184, 24.675653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.536022, 33.376968, 24.689476>,  <40.847134, 33.126610, 24.712513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536022, 33.376968, 24.689476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088840, -0.018763, 0.995869,
		0.622232, 0.779679, 0.070198,
		-0.777776, 0.625898, -0.057592,
		40.302689, 33.564739, 24.672199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.201187, 34.006672, 30.321938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.866405, 34.187115, 30.197992>,  <42.665539, 34.295380, 30.123625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.866405, 34.187115, 30.197992>,  <43.201187, 34.006672, 30.321938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866405, 34.187115, 30.197992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275349, 0.142219, 0.950766,
		0.472966, 0.881065, 0.005182,
		-0.836950, 0.451107, -0.309865,
		42.615322, 34.322449, 30.105032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112656, 34.591740, 30.739655>,  <43.201187, 34.006672, 30.321938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112656, 34.591740, 30.739655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.743179, 34.554531, 30.590984>,  <42.521492, 34.532204, 30.501781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.743179, 34.554531, 30.590984>,  <43.112656, 34.591740, 30.739655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743179, 34.554531, 30.590984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382010, 0.149135, 0.912046,
		-0.029414, 0.984431, -0.173291,
		-0.923690, -0.093026, -0.371676,
		42.466072, 34.526623, 30.479481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608482, 35.105694, 31.214769>,  <43.112656, 34.591740, 30.739655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608482, 35.105694, 31.214769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.371780, 34.842350, 31.028698>,  <42.229759, 34.684345, 30.917055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.371780, 34.842350, 31.028698>,  <42.608482, 35.105694, 31.214769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371780, 34.842350, 31.028698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612014, -0.008658, 0.790800,
		-0.524656, 0.752656, -0.397800,
		-0.591756, -0.658357, -0.465178,
		42.194252, 34.644844, 30.889145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807526, 35.373074, 31.333479>,  <42.608482, 35.105694, 31.214769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807526, 35.373074, 31.333479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.753952, 34.987041, 31.243425>,  <41.721809, 34.755421, 31.189394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.753952, 34.987041, 31.243425>,  <41.807526, 35.373074, 31.333479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.753952, 34.987041, 31.243425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696401, -0.069969, 0.714233,
		-0.705044, 0.252443, -0.662711,
		-0.133934, -0.965078, -0.225133,
		41.713772, 34.697517, 31.175886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072575, 35.269718, 31.225826>,  <41.807526, 35.373074, 31.333479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072575, 35.269718, 31.225826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.223934, 34.910961, 31.317383>,  <41.314751, 34.695705, 31.372316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.223934, 34.910961, 31.317383>,  <41.072575, 35.269718, 31.225826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223934, 34.910961, 31.317383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701440, -0.116494, 0.703144,
		-0.603981, -0.426626, -0.673199,
		0.378403, -0.896894, 0.228892,
		41.337456, 34.641891, 31.386051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582188, 34.690132, 31.086149>,  <41.072575, 35.269718, 31.225826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582188, 34.690132, 31.086149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.848492, 34.583981, 31.365101>,  <41.008274, 34.520290, 31.532473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.848492, 34.583981, 31.365101>,  <40.582188, 34.690132, 31.086149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848492, 34.583981, 31.365101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745786, -0.266484, 0.610564,
		0.023809, -0.926585, -0.375331,
		0.665760, -0.265380, 0.697379,
		41.048218, 34.504368, 31.574314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238857, 34.181229, 31.349745>,  <40.582188, 34.690132, 31.086149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238857, 34.181229, 31.349745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.507019, 34.228676, 31.642727>,  <40.667915, 34.257145, 31.818516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.507019, 34.228676, 31.642727>,  <40.238857, 34.181229, 31.349745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507019, 34.228676, 31.642727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712825, -0.171114, 0.680148,
		0.206014, -0.978084, -0.030158,
		0.670402, 0.118623, 0.732455,
		40.708141, 34.264263, 31.862463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996399, 33.767624, 31.856358>,  <40.238857, 34.181229, 31.349745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996399, 33.767624, 31.856358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.279274, 33.970039, 32.053864>,  <40.449001, 34.091488, 32.172367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.279274, 33.970039, 32.053864>,  <39.996399, 33.767624, 31.856358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279274, 33.970039, 32.053864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552220, -0.040777, 0.832700,
		0.441516, -0.861544, 0.250610,
		0.707189, 0.506042, 0.493766,
		40.491432, 34.121853, 32.201992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848728, 33.625938, 32.487362>,  <39.996399, 33.767624, 31.856358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848728, 33.625938, 32.487362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.086182, 33.946117, 32.520554>,  <40.228653, 34.138226, 32.540470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.086182, 33.946117, 32.520554>,  <39.848728, 33.625938, 32.487362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086182, 33.946117, 32.520554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365959, 0.176684, 0.913705,
		0.716708, -0.572777, 0.397815,
		0.593637, 0.800444, 0.082982,
		40.264271, 34.186249, 32.545448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249725, 33.431427, 32.996555>,  <39.848728, 33.625938, 32.487362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249725, 33.431427, 32.996555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.200626, 33.827873, 32.976082>,  <40.171169, 34.065742, 32.963799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.200626, 33.827873, 32.976082>,  <40.249725, 33.431427, 32.996555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200626, 33.827873, 32.976082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564725, -0.027340, 0.824826,
		0.816100, 0.130147, 0.563065,
		-0.122743, 0.991118, -0.051185,
		40.163803, 34.125210, 32.960728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413475, 33.698799, 33.712463>,  <40.249725, 33.431427, 32.996555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413475, 33.698799, 33.712463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.190426, 33.959091, 33.506317>,  <40.056595, 34.115265, 33.382629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.190426, 33.959091, 33.506317>,  <40.413475, 33.698799, 33.712463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190426, 33.959091, 33.506317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565579, 0.156605, 0.809688,
		0.607595, 0.742987, 0.280710,
		-0.557627, 0.650727, -0.515370,
		40.023136, 34.154308, 33.351707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204426, 34.146622, 34.184399>,  <40.413475, 33.698799, 33.712463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204426, 34.146622, 34.184399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.937782, 34.225491, 33.896854>,  <39.777798, 34.272812, 33.724327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.937782, 34.225491, 33.896854>,  <40.204426, 34.146622, 34.184399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937782, 34.225491, 33.896854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702042, 0.158088, 0.694367,
		0.250551, 0.967539, 0.033039,
		-0.666604, 0.197170, -0.718862,
		39.737801, 34.284641, 33.681194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876759, 34.704063, 34.477470>,  <40.204426, 34.146622, 34.184399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876759, 34.704063, 34.477470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.637390, 34.537170, 34.203884>,  <39.493771, 34.437035, 34.039734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.637390, 34.537170, 34.203884>,  <39.876759, 34.704063, 34.477470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637390, 34.537170, 34.203884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784592, 0.132357, 0.605720,
		-0.162198, 0.899110, -0.406562,
		-0.598420, -0.417232, -0.683967,
		39.457863, 34.412003, 33.998695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841763, 35.385105, 34.619797>,  <39.876759, 34.704063, 34.477470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841763, 35.385105, 34.619797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.141357, 35.204674, 34.425663>,  <40.321114, 35.096416, 34.309181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.141357, 35.204674, 34.425663>,  <39.841763, 35.385105, 34.619797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141357, 35.204674, 34.425663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308187, -0.411265, 0.857836,
		-0.586554, -0.792079, -0.169014,
		0.748983, -0.451079, -0.485337,
		40.366051, 35.069351, 34.280064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161732, 35.505333, 33.924530>,  <39.841763, 35.385105, 34.619797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161732, 35.505333, 33.924530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.299194, 35.800846, 34.156429>,  <40.381672, 35.978153, 34.295567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.299194, 35.800846, 34.156429>,  <40.161732, 35.505333, 33.924530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299194, 35.800846, 34.156429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265871, 0.668628, -0.694442,
		-0.900672, 0.084515, 0.426201,
		0.343660, 0.738779, 0.579744,
		40.402294, 36.022480, 34.330353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685684, 36.051491, 33.953957>,  <40.161732, 35.505333, 33.924530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685684, 36.051491, 33.953957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.024471, 36.229477, 34.070332>,  <40.227745, 36.336269, 34.140156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.024471, 36.229477, 34.070332>,  <39.685684, 36.051491, 33.953957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024471, 36.229477, 34.070332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173820, 0.748948, -0.639424,
		-0.502420, 0.491003, 0.711681,
		0.846972, 0.444964, 0.290941,
		40.278564, 36.362965, 34.157616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464569, 36.727055, 33.861378>,  <39.685684, 36.051491, 33.953957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464569, 36.727055, 33.861378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.860188, 36.755993, 33.912857>,  <40.097557, 36.773357, 33.943745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.860188, 36.755993, 33.912857>,  <39.464569, 36.727055, 33.861378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860188, 36.755993, 33.912857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026348, 0.771210, -0.636035,
		-0.145268, 0.632456, 0.760852,
		0.989041, 0.072349, 0.128697,
		40.156898, 36.777699, 33.951466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714787, 37.470322, 33.936634>,  <39.464569, 36.727055, 33.861378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714787, 37.470322, 33.936634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.054111, 37.294636, 33.818344>,  <40.257706, 37.189224, 33.747372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.054111, 37.294636, 33.818344>,  <39.714787, 37.470322, 33.936634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054111, 37.294636, 33.818344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045348, 0.616715, -0.785879,
		0.527547, 0.653263, 0.543086,
		0.848315, -0.439216, -0.295722,
		40.308605, 37.162872, 33.729626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113571, 37.977509, 33.777035>,  <39.714787, 37.470322, 33.936634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113571, 37.977509, 33.777035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.279362, 37.665585, 33.589375>,  <40.378834, 37.478428, 33.476776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.279362, 37.665585, 33.589375>,  <40.113571, 37.977509, 33.777035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279362, 37.665585, 33.589375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024462, 0.524879, -0.850825,
		0.909733, 0.341168, 0.236624,
		0.414473, -0.779812, -0.469154,
		40.403702, 37.431641, 33.448627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659241, 38.278702, 33.437908>,  <40.113571, 37.977509, 33.777035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659241, 38.278702, 33.437908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.609253, 37.927784, 33.252548>,  <40.579258, 37.717232, 33.141331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.609253, 37.927784, 33.252548>,  <40.659241, 38.278702, 33.437908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609253, 37.927784, 33.252548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149454, 0.445085, -0.882929,
		0.980839, -0.179599, 0.075492,
		-0.124973, -0.877293, -0.463398,
		40.571762, 37.664597, 33.113529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234833, 38.290703, 32.928711>,  <40.659241, 38.278702, 33.437908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234833, 38.290703, 32.928711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.955387, 38.025063, 32.822193>,  <40.787720, 37.865681, 32.758282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.955387, 38.025063, 32.822193>,  <41.234833, 38.290703, 32.928711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955387, 38.025063, 32.822193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076046, 0.301154, -0.950538,
		0.711447, -0.684309, -0.159889,
		-0.698613, -0.664099, -0.266294,
		40.745804, 37.825832, 32.742306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460155, 37.977009, 32.387688>,  <41.234833, 38.290703, 32.928711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460155, 37.977009, 32.387688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.070385, 37.895386, 32.350063>,  <40.836521, 37.846413, 32.327488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.070385, 37.895386, 32.350063>,  <41.460155, 37.977009, 32.387688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070385, 37.895386, 32.350063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025071, 0.317265, -0.948005,
		0.223290, -0.926123, -0.304037,
		-0.974429, -0.204058, -0.094061,
		40.778057, 37.834167, 32.321846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412014, 37.694473, 31.691263>,  <41.460155, 37.977009, 32.387688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412014, 37.694473, 31.691263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.035454, 37.790226, 31.786308>,  <40.809517, 37.847679, 31.843336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.035454, 37.790226, 31.786308>,  <41.412014, 37.694473, 31.691263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035454, 37.790226, 31.786308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208219, 0.141756, -0.967755,
		-0.265351, -0.960520, -0.083604,
		-0.941400, 0.239387, 0.237613,
		40.753033, 37.862041, 31.857592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925312, 37.273884, 31.340885>,  <41.412014, 37.694473, 31.691263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925312, 37.273884, 31.340885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.742493, 37.618057, 31.431007>,  <40.632801, 37.824562, 31.485081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.742493, 37.618057, 31.431007>,  <40.925312, 37.273884, 31.340885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742493, 37.618057, 31.431007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238671, 0.125378, -0.962973,
		-0.856822, -0.493898, 0.148056,
		-0.457048, 0.860433, 0.225306,
		40.605377, 37.876186, 31.498600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362980, 37.236931, 31.026218>,  <40.925312, 37.273884, 31.340885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362980, 37.236931, 31.026218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.394794, 37.632442, 31.076792>,  <40.413883, 37.869751, 31.107136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.394794, 37.632442, 31.076792>,  <40.362980, 37.236931, 31.026218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394794, 37.632442, 31.076792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241289, 0.142161, -0.959985,
		-0.967188, 0.045850, 0.249889,
		0.079539, 0.988781, 0.126433,
		40.418655, 37.929077, 31.114721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108730, 37.470436, 30.433451>,  <40.362980, 37.236931, 31.026218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108730, 37.470436, 30.433451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.290852, 37.800617, 30.566919>,  <40.400124, 37.998726, 30.647001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.290852, 37.800617, 30.566919>,  <40.108730, 37.470436, 30.433451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290852, 37.800617, 30.566919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133923, 0.307013, -0.942236,
		-0.880209, 0.473685, 0.029236,
		0.455299, 0.825449, 0.333673,
		40.427441, 38.048252, 30.667021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816299, 38.015789, 30.114746>,  <40.108730, 37.470436, 30.433451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816299, 38.015789, 30.114746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.168259, 38.167450, 30.229303>,  <40.379436, 38.258446, 30.298038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.168259, 38.167450, 30.229303>,  <39.816299, 38.015789, 30.114746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168259, 38.167450, 30.229303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109063, 0.425488, -0.898368,
		-0.462474, 0.821709, 0.333036,
		0.879900, 0.379150, 0.286395,
		40.432228, 38.281197, 30.315222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878662, 38.770432, 29.813429>,  <39.816299, 38.015789, 30.114746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878662, 38.770432, 29.813429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.256527, 38.664806, 29.891283>,  <40.483246, 38.601429, 29.937996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.256527, 38.664806, 29.891283>,  <39.878662, 38.770432, 29.813429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256527, 38.664806, 29.891283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250465, 0.197421, -0.947783,
		0.211851, 0.944084, 0.252635,
		0.944662, -0.264065, 0.194636,
		40.539925, 38.585587, 29.949675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524582, 39.479752, 29.880804>,  <39.878662, 38.770432, 29.813429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524582, 39.479752, 29.880804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.140713, 39.453861, 29.771372>,  <38.910393, 39.438328, 29.705713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.140713, 39.453861, 29.771372>,  <39.524582, 39.479752, 29.880804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140713, 39.453861, 29.771372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224255, -0.410616, 0.883801,
		-0.169542, 0.909508, 0.379540,
		-0.959669, -0.064727, -0.273578,
		38.852814, 39.434444, 29.689299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155338, 39.631268, 30.489750>,  <39.524582, 39.479752, 29.880804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155338, 39.631268, 30.489750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.880714, 39.470478, 30.247410>,  <38.715939, 39.374004, 30.102005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.880714, 39.470478, 30.247410>,  <39.155338, 39.631268, 30.489750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880714, 39.470478, 30.247410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409872, -0.474276, 0.779145,
		-0.600535, 0.783251, 0.160861,
		-0.686558, -0.401971, -0.605852,
		38.674747, 39.349888, 30.065655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504650, 39.690693, 30.860767>,  <39.155338, 39.631268, 30.489750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504650, 39.690693, 30.860767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.448856, 39.390724, 30.602106>,  <38.415379, 39.210743, 30.446909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.448856, 39.390724, 30.602106>,  <38.504650, 39.690693, 30.860767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448856, 39.390724, 30.602106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194949, -0.619460, 0.760437,
		-0.970845, 0.232133, -0.059792,
		-0.139484, -0.749923, -0.646653,
		38.407013, 39.165749, 30.408110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791351, 39.357002, 30.814205>,  <38.504650, 39.690693, 30.860767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791351, 39.357002, 30.814205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.017742, 39.053768, 30.684612>,  <38.153576, 38.871826, 30.606857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.017742, 39.053768, 30.684612>,  <37.791351, 39.357002, 30.814205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017742, 39.053768, 30.684612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293792, -0.552651, 0.779912,
		-0.770293, -0.346232, -0.535511,
		0.565981, -0.758090, -0.323983,
		38.187538, 38.826340, 30.587418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399170, 38.818493, 30.937059>,  <37.791351, 39.357002, 30.814205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399170, 38.818493, 30.937059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.759289, 38.651451, 30.887953>,  <37.975361, 38.551224, 30.858490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.759289, 38.651451, 30.887953>,  <37.399170, 38.818493, 30.937059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759289, 38.651451, 30.887953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155911, -0.572706, 0.804797,
		-0.406397, -0.705416, -0.580715,
		0.900296, -0.417608, -0.122764,
		38.029377, 38.526169, 30.851124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291473, 38.181622, 31.142956>,  <37.399170, 38.818493, 30.937059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291473, 38.181622, 31.142956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.691116, 38.198444, 31.144423>,  <37.930901, 38.208538, 31.145302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.691116, 38.198444, 31.144423>,  <37.291473, 38.181622, 31.142956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691116, 38.198444, 31.144423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023739, -0.631540, 0.774980,
		0.034907, -0.774202, -0.631975,
		0.999109, 0.042054, 0.003666,
		37.990849, 38.211060, 31.145523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581303, 37.451939, 31.188354>,  <37.291473, 38.181622, 31.142956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581303, 37.451939, 31.188354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.852547, 37.710129, 31.328945>,  <38.015293, 37.865044, 31.413300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.852547, 37.710129, 31.328945>,  <37.581303, 37.451939, 31.188354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852547, 37.710129, 31.328945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023916, -0.497347, 0.867222,
		0.734573, -0.579664, -0.352692,
		0.678108, 0.645473, 0.351475,
		38.055981, 37.903770, 31.434387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010876, 37.082230, 31.460253>,  <37.581303, 37.451939, 31.188354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010876, 37.082230, 31.460253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.057293, 37.440556, 31.631855>,  <38.085144, 37.655552, 31.734816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.057293, 37.440556, 31.631855>,  <38.010876, 37.082230, 31.460253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057293, 37.440556, 31.631855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055121, -0.437065, 0.897739,
		0.991714, -0.080528, -0.100096,
		0.116041, 0.895818, 0.429005,
		38.092106, 37.709301, 31.760557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347698, 37.002754, 32.095886>,  <38.010876, 37.082230, 31.460253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347698, 37.002754, 32.095886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.223450, 37.378582, 32.153469>,  <38.148899, 37.604080, 32.188019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.223450, 37.378582, 32.153469>,  <38.347698, 37.002754, 32.095886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223450, 37.378582, 32.153469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302744, -0.241352, 0.922006,
		0.901033, 0.242814, 0.359418,
		-0.310622, 0.939569, 0.143956,
		38.130264, 37.660454, 32.196655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728550, 37.123604, 32.670223>,  <38.347698, 37.002754, 32.095886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728550, 37.123604, 32.670223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.433937, 37.394150, 32.667328>,  <38.257168, 37.556477, 32.665592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.433937, 37.394150, 32.667328>,  <38.728550, 37.123604, 32.670223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433937, 37.394150, 32.667328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143494, -0.145784, 0.978855,
		0.661005, 0.721998, 0.204429,
		-0.736533, 0.676363, -0.007239,
		38.212978, 37.597057, 32.665157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790421, 37.481274, 33.200943>,  <38.728550, 37.123604, 32.670223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790421, 37.481274, 33.200943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.398655, 37.509563, 33.125309>,  <38.163597, 37.526539, 33.079929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.398655, 37.509563, 33.125309>,  <38.790421, 37.481274, 33.200943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398655, 37.509563, 33.125309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197141, -0.133356, 0.971263,
		0.043477, 0.988542, 0.144553,
		-0.979411, 0.070725, -0.189084,
		38.104832, 37.530781, 33.068584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383636, 38.001904, 33.513977>,  <38.790421, 37.481274, 33.200943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383636, 38.001904, 33.513977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.130718, 37.699184, 33.447693>,  <37.978966, 37.517551, 33.407925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.130718, 37.699184, 33.447693>,  <38.383636, 38.001904, 33.513977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130718, 37.699184, 33.447693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115262, -0.119615, 0.986107,
		-0.766105, 0.642610, -0.011599,
		-0.632295, -0.756799, -0.165706,
		37.941029, 37.472145, 33.397980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.481884, 41.060261, 26.254930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292171, 40.708870, 26.231831>,  <39.178345, 40.498035, 26.217970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292171, 40.708870, 26.231831>,  <39.481884, 41.060261, 26.254930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292171, 40.708870, 26.231831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504114, 0.217217, 0.835874,
		-0.721753, 0.425550, -0.545875,
		-0.474280, -0.878478, -0.057749,
		39.149887, 40.445328, 26.214506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812477, 41.180344, 26.314857>,  <39.481884, 41.060261, 26.254930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812477, 41.180344, 26.314857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850655, 40.796894, 26.422132>,  <38.873562, 40.566822, 26.486498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850655, 40.796894, 26.422132>,  <38.812477, 41.180344, 26.314857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850655, 40.796894, 26.422132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409923, 0.207665, 0.888166,
		-0.907113, -0.194705, -0.373143,
		0.095441, -0.958627, 0.268190,
		38.879288, 40.509308, 26.502590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353737, 41.166622, 26.871534>,  <38.812477, 41.180344, 26.314857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353737, 41.166622, 26.871534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562298, 40.825935, 26.892422>,  <38.687435, 40.621525, 26.904953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562298, 40.825935, 26.892422>,  <38.353737, 41.166622, 26.871534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562298, 40.825935, 26.892422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217779, -0.073652, 0.973215,
		-0.825056, -0.518804, -0.223887,
		0.521397, -0.851714, 0.052218,
		38.718716, 40.570419, 26.908087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985012, 40.777931, 27.392031>,  <38.353737, 41.166622, 26.871534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985012, 40.777931, 27.392031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334957, 40.584560, 27.379961>,  <38.544926, 40.468536, 27.372719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334957, 40.584560, 27.379961>,  <37.985012, 40.777931, 27.392031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334957, 40.584560, 27.379961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110491, -0.259834, 0.959311,
		-0.471601, -0.835931, -0.280734,
		0.874862, -0.483431, -0.030175,
		38.597416, 40.439529, 27.370909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887997, 40.079880, 27.696735>,  <37.985012, 40.777931, 27.392031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887997, 40.079880, 27.696735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281025, 40.152626, 27.712095>,  <38.516842, 40.196274, 27.721312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281025, 40.152626, 27.712095>,  <37.887997, 40.079880, 27.696735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281025, 40.152626, 27.712095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010328, -0.259684, 0.965639,
		0.185588, -0.948414, -0.257037,
		0.982573, 0.181866, 0.038399,
		38.575798, 40.207184, 27.723616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134998, 39.427731, 27.871487>,  <37.887997, 40.079880, 27.696735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134998, 39.427731, 27.871487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427074, 39.676350, 27.984976>,  <38.602322, 39.825520, 28.053070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427074, 39.676350, 27.984976>,  <38.134998, 39.427731, 27.871487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427074, 39.676350, 27.984976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079959, -0.490141, 0.867968,
		0.678548, -0.611096, -0.407595,
		0.730191, 0.621549, 0.283722,
		38.646133, 39.862816, 28.070093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668705, 39.059704, 28.104336>,  <38.134998, 39.427731, 27.871487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668705, 39.059704, 28.104336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730022, 39.413616, 28.280365>,  <38.766811, 39.625965, 28.385983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730022, 39.413616, 28.280365>,  <38.668705, 39.059704, 28.104336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730022, 39.413616, 28.280365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081579, -0.455147, 0.886672,
		0.984808, -0.100019, -0.141951,
		0.153292, 0.884781, 0.440073,
		38.776009, 39.679050, 28.412386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342167, 39.033253, 28.567375>,  <38.668705, 39.059704, 28.104336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342167, 39.033253, 28.567375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135883, 39.352772, 28.691290>,  <39.012112, 39.544483, 28.765638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135883, 39.352772, 28.691290>,  <39.342167, 39.033253, 28.567375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135883, 39.352772, 28.691290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082304, -0.406096, 0.910116,
		0.852801, 0.443859, 0.275171,
		-0.515709, 0.798796, 0.309788,
		38.981171, 39.592411, 28.784225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660179, 39.333218, 29.203657>,  <39.342167, 39.033253, 28.567375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660179, 39.333218, 29.203657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267292, 39.407589, 29.193220>,  <39.031559, 39.452213, 29.186958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267292, 39.407589, 29.193220>,  <39.660179, 39.333218, 29.203657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267292, 39.407589, 29.193220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093330, -0.362933, 0.927130,
		0.162909, 0.913078, 0.373831,
		-0.982217, 0.185928, -0.026092,
		38.972626, 39.463367, 29.185392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470589, 39.359074, 29.278200>,  <39.660179, 39.333218, 29.203657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470589, 39.359074, 29.278200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673992, 39.050373, 29.430941>,  <40.796036, 38.865150, 29.522585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673992, 39.050373, 29.430941>,  <40.470589, 39.359074, 29.278200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673992, 39.050373, 29.430941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459469, -0.131851, -0.878353,
		0.728220, 0.622103, 0.287549,
		0.508512, -0.771753, 0.381853,
		40.826546, 38.818848, 29.545496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205578, 39.473022, 29.047382>,  <40.470589, 39.359074, 29.278200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205578, 39.473022, 29.047382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175632, 39.083408, 29.132841>,  <41.157665, 38.849640, 29.184116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175632, 39.083408, 29.132841>,  <41.205578, 39.473022, 29.047382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175632, 39.083408, 29.132841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638450, -0.211400, -0.740062,
		0.766014, 0.080998, 0.637701,
		-0.074866, -0.974037, 0.213649,
		41.153172, 38.791199, 29.196936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890564, 39.293724, 29.037350>,  <41.205578, 39.473022, 29.047382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.890564, 39.293724, 29.037350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.671894, 38.962353, 28.988605>,  <41.540691, 38.763531, 28.959360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.671894, 38.962353, 28.988605>,  <41.890564, 39.293724, 29.037350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671894, 38.962353, 28.988605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677539, -0.352125, -0.645716,
		0.492019, -0.435563, 0.753791,
		-0.546679, -0.828428, -0.121858,
		41.507889, 38.713825, 28.952047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321198, 38.874218, 28.760864>,  <41.890564, 39.293724, 29.037350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321198, 38.874218, 28.760864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994869, 38.647228, 28.716324>,  <41.799072, 38.511032, 28.689600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994869, 38.647228, 28.716324>,  <42.321198, 38.874218, 28.760864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994869, 38.647228, 28.716324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412206, -0.435579, -0.800223,
		0.405605, -0.698742, 0.589274,
		-0.815825, -0.567477, -0.111353,
		41.750122, 38.476986, 28.682919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515152, 38.171925, 28.810587>,  <42.321198, 38.874218, 28.760864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515152, 38.171925, 28.810587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191895, 38.233078, 28.583071>,  <41.997940, 38.269772, 28.446562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191895, 38.233078, 28.583071>,  <42.515152, 38.171925, 28.810587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.191895, 38.233078, 28.583071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502529, -0.324686, -0.801277,
		-0.307186, -0.933383, 0.185562,
		-0.808148, 0.152890, -0.568791,
		41.949451, 38.278946, 28.412434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523354, 37.680103, 28.263281>,  <42.515152, 38.171925, 28.810587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.523354, 37.680103, 28.263281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227303, 37.901226, 28.110123>,  <42.049671, 38.033901, 28.018227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227303, 37.901226, 28.110123>,  <42.523354, 37.680103, 28.263281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227303, 37.901226, 28.110123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159121, -0.409255, -0.898438,
		-0.653367, -0.725888, 0.214938,
		-0.740130, 0.552808, -0.382898,
		42.005264, 38.067070, 27.995253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186092, 37.174908, 27.860672>,  <42.523354, 37.680103, 28.263281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186092, 37.174908, 27.860672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080460, 37.535652, 27.723904>,  <42.017078, 37.752098, 27.641842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080460, 37.535652, 27.723904>,  <42.186092, 37.174908, 27.860672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080460, 37.535652, 27.723904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028767, -0.361715, -0.931845,
		-0.964070, -0.236250, 0.121468,
		-0.264085, 0.901858, -0.341923,
		42.001232, 37.806210, 27.621326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575958, 37.111603, 27.417351>,  <42.186092, 37.174908, 27.860672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575958, 37.111603, 27.417351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748112, 37.449783, 27.290871>,  <41.851402, 37.652691, 27.214983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748112, 37.449783, 27.290871>,  <41.575958, 37.111603, 27.417351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748112, 37.449783, 27.290871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000037, -0.350320, -0.936630,
		-0.902646, 0.403098, -0.150803,
		0.430383, 0.845451, -0.316200,
		41.877228, 37.703419, 27.196011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286930, 37.264778, 26.735870>,  <41.575958, 37.111603, 27.417351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286930, 37.264778, 26.735870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620613, 37.483952, 26.760754>,  <41.820824, 37.615456, 26.775682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620613, 37.483952, 26.760754>,  <41.286930, 37.264778, 26.735870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620613, 37.483952, 26.760754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193580, -0.185341, -0.963419,
		-0.516363, 0.815729, -0.260682,
		0.834204, 0.547937, 0.062206,
		41.870872, 37.648331, 26.779415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200497, 37.718853, 26.175030>,  <41.286930, 37.264778, 26.735870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200497, 37.718853, 26.175030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573143, 37.629192, 26.289467>,  <41.796730, 37.575397, 26.358130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573143, 37.629192, 26.289467>,  <41.200497, 37.718853, 26.175030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573143, 37.629192, 26.289467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275794, -0.076675, -0.958154,
		0.236709, 0.971533, -0.009612,
		0.931615, -0.224152, 0.286093,
		41.852627, 37.561947, 26.375296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655323, 38.048824, 25.602549>,  <41.200497, 37.718853, 26.175030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655323, 38.048824, 25.602549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892464, 37.790340, 25.794773>,  <42.034748, 37.635250, 25.910107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892464, 37.790340, 25.794773>,  <41.655323, 38.048824, 25.602549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892464, 37.790340, 25.794773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363117, -0.318126, -0.875752,
		0.718800, 0.693690, 0.046049,
		0.592851, -0.646212, 0.480559,
		42.070320, 37.596478, 25.938940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293743, 38.185051, 25.343245>,  <41.655323, 38.048824, 25.602549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.293743, 38.185051, 25.343245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384209, 37.822697, 25.486473>,  <42.438488, 37.605282, 25.572411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384209, 37.822697, 25.486473>,  <42.293743, 38.185051, 25.343245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384209, 37.822697, 25.486473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260848, -0.297850, -0.918283,
		0.938514, 0.301084, 0.168937,
		0.226163, -0.905888, 0.358074,
		42.452057, 37.550930, 25.593895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844967, 38.062523, 24.968134>,  <42.293743, 38.185051, 25.343245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844967, 38.062523, 24.968134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732021, 37.705517, 25.108809>,  <42.664253, 37.491314, 25.193214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732021, 37.705517, 25.108809>,  <42.844967, 38.062523, 24.968134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732021, 37.705517, 25.108809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379794, -0.440660, -0.813373,
		0.880923, -0.096102, 0.463400,
		-0.282368, -0.892515, 0.351689,
		42.647312, 37.437763, 25.214315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415768, 37.674290, 25.037331>,  <42.844967, 38.062523, 24.968134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415768, 37.674290, 25.037331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087597, 37.454601, 24.973766>,  <42.890694, 37.322788, 24.935629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087597, 37.454601, 24.973766>,  <43.415768, 37.674290, 25.037331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.087597, 37.454601, 24.973766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397405, -0.347963, -0.849112,
		0.411060, -0.759785, 0.503743,
		-0.820426, -0.549226, -0.158908,
		42.841469, 37.289833, 24.926094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.457058, 34.509762, 22.896297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.562565, 34.870945, 23.032001>,  <37.625870, 35.087654, 23.113424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.562565, 34.870945, 23.032001>,  <37.457058, 34.509762, 22.896297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562565, 34.870945, 23.032001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213014, -0.288506, 0.933482,
		0.940773, -0.318486, 0.116245,
		0.263764, 0.902957, 0.339260,
		37.641693, 35.141830, 23.133780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921394, 34.335571, 23.367674>,  <37.457058, 34.509762, 22.896297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921394, 34.335571, 23.367674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.813187, 34.715836, 23.428432>,  <37.748264, 34.943993, 23.464888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.813187, 34.715836, 23.428432>,  <37.921394, 34.335571, 23.367674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813187, 34.715836, 23.428432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383891, -0.251210, 0.888550,
		0.882864, 0.182056, 0.432905,
		-0.270516, 0.950657, 0.151895,
		37.732033, 35.001034, 23.474001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291256, 34.534512, 23.923746>,  <37.921394, 34.335571, 23.367674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291256, 34.534512, 23.923746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.947456, 34.736469, 23.891890>,  <37.741177, 34.857643, 23.872776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.947456, 34.736469, 23.891890>,  <38.291256, 34.534512, 23.923746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947456, 34.736469, 23.891890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158774, -0.115624, 0.980521,
		0.485853, 0.855401, 0.179543,
		-0.859498, 0.504896, -0.079640,
		37.689606, 34.887939, 23.867998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303123, 35.005451, 24.417040>,  <38.291256, 34.534512, 23.923746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303123, 35.005451, 24.417040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.910782, 35.005703, 24.339142>,  <37.675377, 35.005856, 24.292404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.910782, 35.005703, 24.339142>,  <38.303123, 35.005451, 24.417040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910782, 35.005703, 24.339142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194647, 0.028536, 0.980458,
		0.006176, 0.999592, -0.027866,
		-0.980854, 0.000631, -0.194744,
		37.616524, 35.005894, 24.280718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998295, 35.307507, 24.966103>,  <38.303123, 35.005451, 24.417040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998295, 35.307507, 24.966103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.677784, 35.126228, 24.809864>,  <37.485477, 35.017460, 24.716120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.677784, 35.126228, 24.809864>,  <37.998295, 35.307507, 24.966103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677784, 35.126228, 24.809864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451835, 0.030438, 0.891582,
		-0.392174, 0.890890, -0.229160,
		-0.801277, -0.453198, -0.390598,
		37.437401, 34.990269, 24.692684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521286, 35.704212, 25.317904>,  <37.998295, 35.307507, 24.966103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521286, 35.704212, 25.317904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.356487, 35.362091, 25.192225>,  <37.257610, 35.156818, 25.116817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.356487, 35.362091, 25.192225>,  <37.521286, 35.704212, 25.317904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356487, 35.362091, 25.192225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493334, -0.080530, 0.866104,
		-0.766083, 0.511833, -0.388772,
		-0.411993, -0.855302, -0.314197,
		37.232891, 35.105499, 25.097965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781746, 35.663387, 25.297678>,  <37.521286, 35.704212, 25.317904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781746, 35.663387, 25.297678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.886021, 35.277802, 25.318918>,  <36.948586, 35.046452, 25.331663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.886021, 35.277802, 25.318918>,  <36.781746, 35.663387, 25.297678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886021, 35.277802, 25.318918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540275, -0.100083, 0.835516,
		-0.800091, -0.246498, -0.546894,
		0.260687, -0.963962, 0.053101,
		36.964226, 34.988613, 25.334848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221096, 35.310600, 25.458214>,  <36.781746, 35.663387, 25.297678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221096, 35.310600, 25.458214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.493202, 35.037567, 25.565029>,  <36.656467, 34.873745, 25.629118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.493202, 35.037567, 25.565029>,  <36.221096, 35.310600, 25.458214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493202, 35.037567, 25.565029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584425, -0.285251, 0.759658,
		-0.442359, -0.672836, -0.592968,
		0.680269, -0.682586, 0.267039,
		36.697285, 34.832790, 25.645142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848728, 34.739616, 25.639303>,  <36.221096, 35.310600, 25.458214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848728, 34.739616, 25.639303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.204140, 34.660789, 25.805040>,  <36.417385, 34.613495, 25.904482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.204140, 34.660789, 25.805040>,  <35.848728, 34.739616, 25.639303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204140, 34.660789, 25.805040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458732, -0.363836, 0.810672,
		-0.009003, -0.910378, -0.413679,
		0.888529, -0.197067, 0.414344,
		36.470699, 34.601669, 25.929344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683720, 34.189053, 25.957560>,  <35.848728, 34.739616, 25.639303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683720, 34.189053, 25.957560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.003674, 34.335842, 26.147516>,  <36.195644, 34.423916, 26.261490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.003674, 34.335842, 26.147516>,  <35.683720, 34.189053, 25.957560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003674, 34.335842, 26.147516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331500, -0.389458, 0.859320,
		0.500300, -0.844778, -0.189867,
		0.799880, 0.366976, 0.474890,
		36.243637, 34.445934, 26.289984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806843, 33.806286, 26.574724>,  <35.683720, 34.189053, 25.957560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806843, 33.806286, 26.574724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.056274, 34.109856, 26.649757>,  <36.205933, 34.291996, 26.694778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.056274, 34.109856, 26.649757>,  <35.806843, 33.806286, 26.574724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056274, 34.109856, 26.649757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100791, -0.159900, 0.981974,
		0.775236, -0.631245, -0.023218,
		0.623579, 0.758921, 0.187584,
		36.243347, 34.337532, 26.706032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248070, 33.525837, 27.004871>,  <35.806843, 33.806286, 26.574724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248070, 33.525837, 27.004871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.254990, 33.919979, 27.072729>,  <36.259140, 34.156464, 27.113443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.254990, 33.919979, 27.072729>,  <36.248070, 33.525837, 27.004871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254990, 33.919979, 27.072729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145457, -0.165385, 0.975444,
		0.989213, -0.041548, 0.140466,
		0.017297, 0.985354, 0.169645,
		36.260178, 34.215584, 27.123623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652222, 33.592178, 27.570883>,  <36.248070, 33.525837, 27.004871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652222, 33.592178, 27.570883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.452835, 33.938793, 27.560789>,  <36.333202, 34.146763, 27.554733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.452835, 33.938793, 27.560789>,  <36.652222, 33.592178, 27.570883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452835, 33.938793, 27.560789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170685, -0.069561, 0.982867,
		0.849938, 0.494237, 0.182580,
		-0.498469, 0.866540, -0.025236,
		36.303295, 34.198753, 27.553219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913261, 33.884693, 28.074451>,  <36.652222, 33.592178, 27.570883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913261, 33.884693, 28.074451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.564030, 34.067799, 28.007294>,  <36.354492, 34.177662, 27.966999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.564030, 34.067799, 28.007294>,  <36.913261, 33.884693, 28.074451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564030, 34.067799, 28.007294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130568, 0.112259, 0.985063,
		0.469771, 0.881960, -0.038242,
		-0.873079, 0.457761, -0.167892,
		36.302105, 34.205128, 27.956926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592075, 34.191315, 28.111475>,  <36.913261, 33.884693, 28.074451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592075, 34.191315, 28.111475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.912628, 33.968853, 28.199547>,  <38.104961, 33.835377, 28.252390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.912628, 33.968853, 28.199547>,  <37.592075, 34.191315, 28.111475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912628, 33.968853, 28.199547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160145, -0.155170, -0.974821,
		0.576312, 0.816467, -0.035286,
		0.801385, -0.556151, 0.220179,
		38.153042, 33.802010, 28.265600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188118, 34.430084, 27.699032>,  <37.592075, 34.191315, 28.111475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188118, 34.430084, 27.699032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.319485, 34.062630, 27.786890>,  <38.398304, 33.842155, 27.839605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.319485, 34.062630, 27.786890>,  <38.188118, 34.430084, 27.699032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319485, 34.062630, 27.786890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388888, -0.080409, -0.917769,
		0.860759, 0.386833, 0.330839,
		0.328421, -0.918637, 0.219648,
		38.418011, 33.787037, 27.852785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935734, 34.448082, 27.616539>,  <38.188118, 34.430084, 27.699032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935734, 34.448082, 27.616539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.813709, 34.069397, 27.575209>,  <38.740494, 33.842186, 27.550411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.813709, 34.069397, 27.575209>,  <38.935734, 34.448082, 27.616539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813709, 34.069397, 27.575209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484073, -0.060710, -0.872919,
		0.820130, -0.316307, 0.476798,
		-0.305057, -0.946712, -0.103326,
		38.722191, 33.785385, 27.544210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547798, 34.063160, 27.510666>,  <38.935734, 34.448082, 27.616539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547798, 34.063160, 27.510666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.240227, 33.844391, 27.378229>,  <39.055683, 33.713131, 27.298767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.240227, 33.844391, 27.378229>,  <39.547798, 34.063160, 27.510666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240227, 33.844391, 27.378229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529446, -0.254434, -0.809290,
		0.358379, -0.797582, 0.485208,
		-0.768929, -0.546924, -0.331093,
		39.009548, 33.680313, 27.278902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888836, 33.421734, 27.286777>,  <39.547798, 34.063160, 27.510666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888836, 33.421734, 27.286777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.538052, 33.466995, 27.099957>,  <39.327583, 33.494152, 26.987864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.538052, 33.466995, 27.099957>,  <39.888836, 33.421734, 27.286777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538052, 33.466995, 27.099957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421789, -0.284515, -0.860898,
		-0.230299, -0.951970, 0.201780,
		-0.876958, 0.113155, -0.467054,
		39.274963, 33.500942, 26.959841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012463, 32.830814, 26.753664>,  <39.888836, 33.421734, 27.286777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012463, 32.830814, 26.753664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.687542, 33.039234, 26.648834>,  <39.492592, 33.164284, 26.585936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.687542, 33.039234, 26.648834>,  <40.012463, 32.830814, 26.753664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687542, 33.039234, 26.648834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230456, -0.126041, -0.964885,
		-0.535782, -0.844171, -0.017695,
		-0.812298, 0.521047, -0.262075,
		39.443851, 33.195549, 26.570211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725121, 32.455479, 26.213352>,  <40.012463, 32.830814, 26.753664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725121, 32.455479, 26.213352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.600033, 32.833908, 26.179522>,  <39.524982, 33.060966, 26.159224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.600033, 32.833908, 26.179522>,  <39.725121, 32.455479, 26.213352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600033, 32.833908, 26.179522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308684, 0.017014, -0.951013,
		-0.898289, -0.323505, -0.297358,
		-0.312717, 0.946073, -0.084578,
		39.506218, 33.117729, 26.154148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402260, 32.559639, 25.475245>,  <39.725121, 32.455479, 26.213352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402260, 32.559639, 25.475245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.479107, 32.935226, 25.589394>,  <39.525215, 33.160580, 25.657883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.479107, 32.935226, 25.589394>,  <39.402260, 32.559639, 25.475245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479107, 32.935226, 25.589394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274100, 0.227878, -0.934313,
		-0.942317, 0.257715, -0.213592,
		0.192114, 0.938965, 0.285373,
		39.536739, 33.216915, 25.675005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227924, 32.944328, 24.981352>,  <39.402260, 32.559639, 25.475245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227924, 32.944328, 24.981352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.452950, 33.224552, 25.156956>,  <39.587967, 33.392689, 25.262318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.452950, 33.224552, 25.156956>,  <39.227924, 32.944328, 24.981352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452950, 33.224552, 25.156956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264340, 0.350712, -0.898401,
		-0.783353, 0.621459, 0.012112,
		0.562567, 0.700564, 0.439008,
		39.621719, 33.434723, 25.288658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016113, 33.686180, 24.706207>,  <39.227924, 32.944328, 24.981352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016113, 33.686180, 24.706207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.394001, 33.685070, 24.837358>,  <39.620731, 33.684402, 24.916050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.394001, 33.685070, 24.837358>,  <39.016113, 33.686180, 24.706207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394001, 33.685070, 24.837358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314890, 0.286484, -0.904860,
		-0.091420, 0.958081, 0.271520,
		0.944715, -0.002777, 0.327880,
		39.677414, 33.684238, 24.935722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203182, 34.320061, 24.611618>,  <39.016113, 33.686180, 24.706207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203182, 34.320061, 24.611618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.538383, 34.101803, 24.609749>,  <39.739506, 33.970848, 24.608627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.538383, 34.101803, 24.609749>,  <39.203182, 34.320061, 24.611618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538383, 34.101803, 24.609749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287774, 0.449209, -0.845812,
		0.463609, 0.707450, 0.533461,
		0.838005, -0.545642, -0.004672,
		39.789783, 33.938110, 24.608347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848034, 34.750591, 24.516279>,  <39.203182, 34.320061, 24.611618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848034, 34.750591, 24.516279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.949532, 34.383175, 24.395020>,  <40.010429, 34.162724, 24.322264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.949532, 34.383175, 24.395020>,  <39.848034, 34.750591, 24.516279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949532, 34.383175, 24.395020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433254, 0.388137, -0.813413,
		0.864815, 0.075058, 0.496448,
		0.253743, -0.918540, -0.303148,
		40.025654, 34.107613, 24.304075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507019, 34.955688, 24.297937>,  <39.848034, 34.750591, 24.516279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507019, 34.955688, 24.297937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.418049, 34.594173, 24.151682>,  <40.364666, 34.377266, 24.063929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.418049, 34.594173, 24.151682>,  <40.507019, 34.955688, 24.297937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418049, 34.594173, 24.151682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490331, 0.220451, -0.843195,
		0.842675, -0.366835, 0.394121,
		-0.222429, -0.903789, -0.365639,
		40.351318, 34.323036, 24.041990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150768, 34.599262, 24.023642>,  <40.507019, 34.955688, 24.297937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150768, 34.599262, 24.023642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.840595, 34.424030, 23.841747>,  <40.654491, 34.318890, 23.732611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.840595, 34.424030, 23.841747>,  <41.150768, 34.599262, 24.023642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840595, 34.424030, 23.841747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356883, 0.290036, -0.887983,
		0.520901, -0.850859, -0.068559,
		-0.775433, -0.438083, -0.454737,
		40.607964, 34.292606, 23.705326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757313, 34.223358, 24.202375>,  <41.150768, 34.599262, 24.023642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757313, 34.223358, 24.202375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.145496, 34.285721, 24.276028>,  <42.378407, 34.323139, 24.320219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.145496, 34.285721, 24.276028>,  <41.757313, 34.223358, 24.202375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145496, 34.285721, 24.276028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131557, -0.297786, 0.945524,
		0.202250, -0.941815, -0.268477,
		0.970457, 0.155912, 0.184129,
		42.436634, 34.332493, 24.331266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927555, 33.662617, 24.766600>,  <41.757313, 34.223358, 24.202375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927555, 33.662617, 24.766600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.227776, 33.926075, 24.787973>,  <42.407909, 34.084152, 24.800797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.227776, 33.926075, 24.787973>,  <41.927555, 33.662617, 24.766600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227776, 33.926075, 24.787973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043413, -0.129831, 0.990585,
		0.659384, -0.741166, -0.126038,
		0.750552, 0.658648, 0.053432,
		42.452942, 34.123669, 24.804003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.552315, 33.345699, 25.189791>,  <41.927555, 33.662617, 24.766600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.552315, 33.345699, 25.189791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.600998, 33.742592, 25.179432>,  <42.630207, 33.980728, 25.173216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.600998, 33.742592, 25.179432>,  <42.552315, 33.345699, 25.189791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600998, 33.742592, 25.179432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187185, 0.002678, 0.982321,
		0.974755, -0.124408, -0.185404,
		0.121712, 0.992227, -0.025898,
		42.637512, 34.040260, 25.171663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262608, 33.596657, 25.505468>,  <42.552315, 33.345699, 25.189791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262608, 33.596657, 25.505468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.002178, 33.897572, 25.545792>,  <42.845921, 34.078121, 25.569986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.002178, 33.897572, 25.545792>,  <43.262608, 33.596657, 25.505468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002178, 33.897572, 25.545792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291649, 0.125339, 0.948278,
		0.700742, 0.646803, -0.301009,
		-0.651077, 0.752287, 0.100809,
		42.806854, 34.123257, 25.576035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.480034, 33.833652, 26.073420>,  <43.262608, 33.596657, 25.505468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.480034, 33.833652, 26.073420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.147003, 34.048973, 26.021179>,  <42.947186, 34.178165, 25.989836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.147003, 34.048973, 26.021179>,  <43.480034, 33.833652, 26.073420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.147003, 34.048973, 26.021179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111591, 0.393941, 0.912337,
		0.542560, 0.745012, -0.388053,
		-0.832572, 0.538301, -0.130600,
		42.897232, 34.210464, 25.981998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.627148, 34.546551, 26.355936>,  <43.480034, 33.833652, 26.073420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.627148, 34.546551, 26.355936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.229900, 34.503860, 26.375196>,  <42.991550, 34.478245, 26.386753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.229900, 34.503860, 26.375196>,  <43.627148, 34.546551, 26.355936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229900, 34.503860, 26.375196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026765, 0.193442, 0.980747,
		-0.113986, 0.975290, -0.189254,
		-0.993122, -0.106726, 0.048153,
		42.931965, 34.471844, 26.389643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438381, 35.089165, 26.798264>,  <43.627148, 34.546551, 26.355936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.438381, 35.089165, 26.798264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.131821, 34.832253, 26.794004>,  <42.947884, 34.678104, 26.791449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.131821, 34.832253, 26.794004>,  <43.438381, 35.089165, 26.798264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131821, 34.832253, 26.794004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094825, 0.096722, 0.990784,
		-0.635328, 0.760345, -0.135032,
		-0.766398, -0.642277, -0.010650,
		42.901901, 34.639568, 26.790810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872009, 35.429489, 27.192886>,  <43.438381, 35.089165, 26.798264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872009, 35.429489, 27.192886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.795094, 35.037205, 27.178867>,  <42.748943, 34.801834, 27.170456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.795094, 35.037205, 27.178867>,  <42.872009, 35.429489, 27.192886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.795094, 35.037205, 27.178867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249607, 0.014339, 0.968241,
		-0.949063, 0.194935, -0.247550,
		-0.192294, -0.980712, -0.035048,
		42.737404, 34.742992, 27.168352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160458, 35.345516, 27.475512>,  <42.872009, 35.429489, 27.192886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160458, 35.345516, 27.475512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.395756, 35.027668, 27.535583>,  <42.536934, 34.836960, 27.571627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.395756, 35.027668, 27.535583>,  <42.160458, 35.345516, 27.475512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395756, 35.027668, 27.535583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142907, 0.080644, 0.986445,
		-0.795959, -0.601729, -0.066119,
		0.588241, -0.794619, 0.150180,
		42.572227, 34.789284, 27.580637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819626, 34.900879, 28.036613>,  <42.160458, 35.345516, 27.475512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819626, 34.900879, 28.036613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.189159, 34.747761, 28.037851>,  <42.410877, 34.655891, 28.038595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.189159, 34.747761, 28.037851>,  <41.819626, 34.900879, 28.036613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189159, 34.747761, 28.037851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050282, -0.113325, 0.992285,
		-0.379488, -0.916858, -0.123940,
		0.923829, -0.382792, 0.003097,
		42.466309, 34.632923, 28.038780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745728, 34.254913, 28.342817>,  <41.819626, 34.900879, 28.036613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745728, 34.254913, 28.342817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.130863, 34.354767, 28.384033>,  <42.361946, 34.414677, 28.408762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.130863, 34.354767, 28.384033>,  <41.745728, 34.254913, 28.342817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130863, 34.354767, 28.384033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019248, -0.317135, 0.948185,
		0.269373, -0.914937, -0.300547,
		0.962843, 0.249631, 0.103038,
		42.419716, 34.429657, 28.414946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002811, 33.729919, 28.665302>,  <41.745728, 34.254913, 28.342817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002811, 33.729919, 28.665302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.273220, 34.016033, 28.736147>,  <42.435463, 34.187702, 28.778654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.273220, 34.016033, 28.736147>,  <42.002811, 33.729919, 28.665302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273220, 34.016033, 28.736147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037350, -0.206785, 0.977673,
		0.735937, -0.667540, -0.113075,
		0.676018, 0.715283, 0.177113,
		42.476025, 34.230618, 28.789280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509563, 33.425522, 29.112827>,  <42.002811, 33.729919, 28.665302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509563, 33.425522, 29.112827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.525116, 33.823795, 29.146549>,  <42.534447, 34.062759, 29.166782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.525116, 33.823795, 29.146549>,  <42.509563, 33.425522, 29.112827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.525116, 33.823795, 29.146549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020322, -0.083563, 0.996295,
		0.999037, -0.040449, 0.016985,
		0.038880, 0.995681, 0.084304,
		42.536781, 34.122501, 29.171841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886478, 33.533932, 29.757666>,  <42.509563, 33.425522, 29.112827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886478, 33.533932, 29.757666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.705139, 33.885002, 29.695490>,  <42.596336, 34.095642, 29.658184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.705139, 33.885002, 29.695490>,  <42.886478, 33.533932, 29.757666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705139, 33.885002, 29.695490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006476, 0.171141, 0.985225,
		0.891308, 0.447661, -0.071903,
		-0.453352, 0.877673, -0.155439,
		42.569134, 34.148304, 29.648859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.773247, 37.038879, 24.671721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.377171, 37.066734, 24.623280>,  <43.139523, 37.083447, 24.594215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.377171, 37.066734, 24.623280>,  <43.773247, 37.038879, 24.671721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.377171, 37.066734, 24.623280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111664, -0.126332, -0.985683,
		-0.083937, -0.989541, 0.117318,
		-0.990195, 0.069636, -0.121101,
		43.080112, 37.087624, 24.586950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.725998, 36.533810, 24.270584>,  <43.773247, 37.038879, 24.671721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.725998, 36.533810, 24.270584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.381577, 36.728287, 24.210976>,  <43.174923, 36.844971, 24.175211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.381577, 36.728287, 24.210976>,  <43.725998, 36.533810, 24.270584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.381577, 36.728287, 24.210976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153696, -0.030523, -0.987647,
		-0.484732, -0.873320, -0.048444,
		-0.861053, 0.486189, -0.149021,
		43.123260, 36.874142, 24.166269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321259, 36.191792, 23.737400>,  <43.725998, 36.533810, 24.270584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321259, 36.191792, 23.737400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.158554, 36.557190, 23.733906>,  <43.060932, 36.776428, 23.731810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.158554, 36.557190, 23.733906>,  <43.321259, 36.191792, 23.737400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.158554, 36.557190, 23.733906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139091, 0.052481, -0.988888,
		-0.902882, -0.403459, -0.148406,
		-0.406764, 0.913491, -0.008734,
		43.036526, 36.831238, 23.731285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767551, 36.289864, 23.183552>,  <43.321259, 36.191792, 23.737400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767551, 36.289864, 23.183552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.917049, 36.653366, 23.257811>,  <43.006748, 36.871468, 23.302366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.917049, 36.653366, 23.257811>,  <42.767551, 36.289864, 23.183552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917049, 36.653366, 23.257811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113122, 0.153999, -0.981574,
		-0.920606, 0.387863, -0.045244,
		0.373749, 0.908761, 0.185649,
		43.029175, 36.925995, 23.313505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.677780, 36.552425, 22.542217>,  <42.767551, 36.289864, 23.183552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.677780, 36.552425, 22.542217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.865665, 36.836372, 22.752150>,  <42.978397, 37.006741, 22.878109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.865665, 36.836372, 22.752150>,  <42.677780, 36.552425, 22.542217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865665, 36.836372, 22.752150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331492, 0.409170, -0.850114,
		-0.818217, 0.573290, -0.043122,
		0.469718, 0.709872, 0.524831,
		43.006580, 37.049335, 22.909599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403259, 37.155247, 22.344378>,  <42.677780, 36.552425, 22.542217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403259, 37.155247, 22.344378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.767735, 37.251442, 22.478180>,  <42.986420, 37.309158, 22.558460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.767735, 37.251442, 22.478180>,  <42.403259, 37.155247, 22.344378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767735, 37.251442, 22.478180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246597, 0.332052, -0.910457,
		-0.330029, 0.912089, 0.243259,
		0.911192, 0.240490, 0.334505,
		43.041092, 37.323589, 22.578531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607155, 37.758156, 22.004496>,  <42.403259, 37.155247, 22.344378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607155, 37.758156, 22.004496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.961361, 37.628616, 22.137753>,  <43.173885, 37.550892, 22.217707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.961361, 37.628616, 22.137753>,  <42.607155, 37.758156, 22.004496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961361, 37.628616, 22.137753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430629, 0.302911, -0.850178,
		0.174415, 0.896308, 0.407691,
		0.885516, -0.323847, 0.333144,
		43.227016, 37.531464, 22.237696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978584, 38.313484, 22.015839>,  <42.607155, 37.758156, 22.004496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978584, 38.313484, 22.015839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.231556, 38.003677, 22.010962>,  <43.383339, 37.817791, 22.008036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.231556, 38.003677, 22.010962>,  <42.978584, 38.313484, 22.015839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231556, 38.003677, 22.010962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404337, 0.343502, -0.847654,
		0.660715, 0.531152, 0.530409,
		0.632430, -0.774522, -0.012193,
		43.421284, 37.771320, 22.007303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.621624, 38.589466, 21.807470>,  <42.978584, 38.313484, 22.015839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.621624, 38.589466, 21.807470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.657726, 38.198803, 21.729513>,  <43.679390, 37.964405, 21.682739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.657726, 38.198803, 21.729513>,  <43.621624, 38.589466, 21.807470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657726, 38.198803, 21.729513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299465, 0.213253, -0.929970,
		0.949828, 0.025574, 0.311725,
		0.090260, -0.976662, -0.194895,
		43.684803, 37.905804, 21.671045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203217, 38.557076, 21.474636>,  <43.621624, 38.589466, 21.807470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203217, 38.557076, 21.474636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.007656, 38.225090, 21.367205>,  <43.890320, 38.025898, 21.302746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.007656, 38.225090, 21.367205>,  <44.203217, 38.557076, 21.474636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007656, 38.225090, 21.367205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447263, 0.025843, -0.894029,
		0.748951, -0.557221, 0.358577,
		-0.488905, -0.829962, -0.268580,
		43.860985, 37.976101, 21.286631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.720749, 38.104118, 21.171139>,  <44.203217, 38.557076, 21.474636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.720749, 38.104118, 21.171139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.367264, 37.979565, 21.031376>,  <44.155170, 37.904835, 20.947517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.367264, 37.979565, 21.031376>,  <44.720749, 38.104118, 21.171139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367264, 37.979565, 21.031376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371650, -0.013119, -0.928280,
		0.284466, -0.950194, 0.127319,
		-0.883717, -0.311383, -0.349407,
		44.102150, 37.886150, 20.926554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.910946, 37.716015, 20.570080>,  <44.720749, 38.104118, 21.171139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.910946, 37.716015, 20.570080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.515476, 37.741142, 20.515556>,  <44.278194, 37.756218, 20.482843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.515476, 37.741142, 20.515556>,  <44.910946, 37.716015, 20.570080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.515476, 37.741142, 20.515556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137510, 0.015215, -0.990384,
		-0.060145, -0.997909, -0.023681,
		-0.988673, 0.062823, -0.136307,
		44.218876, 37.759987, 20.474665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.740200, 37.151634, 20.138855>,  <44.910946, 37.716015, 20.570080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.740200, 37.151634, 20.138855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.504818, 37.474525, 20.120499>,  <44.363586, 37.668259, 20.109484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.504818, 37.474525, 20.120499>,  <44.740200, 37.151634, 20.138855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.504818, 37.474525, 20.120499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202460, 0.092163, -0.974944,
		-0.782769, -0.583005, -0.217664,
		-0.588458, 0.807224, -0.045893,
		44.328281, 37.716694, 20.106731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147610, 37.019348, 19.695181>,  <44.740200, 37.151634, 20.138855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.147610, 37.019348, 19.695181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.161503, 37.362873, 19.490740>,  <44.169838, 37.568989, 19.368074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.161503, 37.362873, 19.490740>,  <44.147610, 37.019348, 19.695181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161503, 37.362873, 19.490740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611072, -0.386426, -0.690845,
		-0.790813, 0.336317, 0.511376,
		0.034734, 0.858817, -0.511105,
		44.171925, 37.620518, 19.337408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.747658, 36.479214, 19.241053>,  <44.147610, 37.019348, 19.695181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.747658, 36.479214, 19.241053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.640438, 36.102928, 19.157917>,  <43.576107, 35.877155, 19.108036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.640438, 36.102928, 19.157917>,  <43.747658, 36.479214, 19.241053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.640438, 36.102928, 19.157917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019397, -0.210420, 0.977419,
		-0.963209, 0.266032, 0.038156,
		-0.268053, -0.940718, -0.207839,
		43.560020, 35.820713, 19.095566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220085, 36.312870, 19.614107>,  <43.747658, 36.479214, 19.241053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220085, 36.312870, 19.614107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.407124, 35.971298, 19.522753>,  <43.519348, 35.766357, 19.467939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.407124, 35.971298, 19.522753>,  <43.220085, 36.312870, 19.614107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.407124, 35.971298, 19.522753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133090, -0.323442, 0.936842,
		-0.873865, -0.407668, -0.264890,
		0.467597, -0.853927, -0.228388,
		43.547401, 35.715118, 19.454237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725254, 35.798195, 19.750515>,  <43.220085, 36.312870, 19.614107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725254, 35.798195, 19.750515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.071579, 35.598091, 19.746399>,  <43.279373, 35.478027, 19.743929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.071579, 35.598091, 19.746399>,  <42.725254, 35.798195, 19.750515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.071579, 35.598091, 19.746399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210094, -0.382128, 0.899911,
		-0.454121, -0.776994, -0.435953,
		0.865814, -0.500260, -0.010290,
		43.331322, 35.448013, 19.743313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554028, 35.209496, 20.045095>,  <42.725254, 35.798195, 19.750515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554028, 35.209496, 20.045095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.952690, 35.194668, 20.074226>,  <43.191887, 35.185772, 20.091705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.952690, 35.194668, 20.074226>,  <42.554028, 35.209496, 20.045095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952690, 35.194668, 20.074226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081072, -0.560488, 0.824185,
		0.010269, -0.827333, -0.561618,
		0.996655, -0.037068, 0.072830,
		43.251686, 35.183548, 20.096075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729652, 34.499046, 20.130602>,  <42.554028, 35.209496, 20.045095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729652, 34.499046, 20.130602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.027248, 34.716038, 20.286654>,  <43.205807, 34.846233, 20.380285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.027248, 34.716038, 20.286654>,  <42.729652, 34.499046, 20.130602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.027248, 34.716038, 20.286654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017906, -0.567459, 0.823207,
		0.667956, -0.619439, -0.412468,
		0.743985, 0.542481, 0.390129,
		43.250443, 34.878780, 20.403692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.249737, 33.974171, 20.426380>,  <42.729652, 34.499046, 20.130602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.249737, 33.974171, 20.426380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.322887, 34.309067, 20.632521>,  <43.366779, 34.510006, 20.756205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.322887, 34.309067, 20.632521>,  <43.249737, 33.974171, 20.426380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.322887, 34.309067, 20.632521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008309, -0.525488, 0.850760,
		0.983100, -0.151306, -0.103059,
		0.182881, 0.837239, 0.515350,
		43.377750, 34.560238, 20.787127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690327, 33.798286, 20.942999>,  <43.249737, 33.974171, 20.426380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690327, 33.798286, 20.942999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.543861, 34.143341, 21.082586>,  <43.455982, 34.350376, 21.166340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.543861, 34.143341, 21.082586>,  <43.690327, 33.798286, 20.942999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543861, 34.143341, 21.082586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048510, -0.392199, 0.918601,
		0.929287, 0.319425, 0.185454,
		-0.366159, 0.862640, 0.348970,
		43.434013, 34.402134, 21.187277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.012890, 33.873371, 21.623283>,  <43.690327, 33.798286, 20.942999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.012890, 33.873371, 21.623283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.698441, 34.120247, 21.610052>,  <43.509769, 34.268372, 21.602114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.698441, 34.120247, 21.610052>,  <44.012890, 33.873371, 21.623283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.698441, 34.120247, 21.610052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258050, -0.279113, 0.924936,
		0.561625, 0.735648, 0.378681,
		-0.786122, 0.617185, -0.033077,
		43.462605, 34.305401, 21.600128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.064854, 34.190464, 22.270964>,  <44.012890, 33.873371, 21.623283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.064854, 34.190464, 22.270964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.690937, 34.291561, 22.171141>,  <43.466587, 34.352219, 22.111246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.690937, 34.291561, 22.171141>,  <44.064854, 34.190464, 22.270964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690937, 34.291561, 22.171141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283656, -0.108349, 0.952785,
		0.213769, 0.961448, 0.172976,
		-0.934795, 0.252742, -0.249559,
		43.410500, 34.367382, 22.096273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938347, 34.674877, 22.739817>,  <44.064854, 34.190464, 22.270964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938347, 34.674877, 22.739817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.581112, 34.546520, 22.613686>,  <43.366772, 34.469505, 22.538006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.581112, 34.546520, 22.613686>,  <43.938347, 34.674877, 22.739817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581112, 34.546520, 22.613686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301574, -0.093119, 0.948885,
		-0.333850, 0.942528, -0.013609,
		-0.893083, -0.320889, -0.315329,
		43.313187, 34.450253, 22.519087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440727, 35.233318, 22.943230>,  <43.938347, 34.674877, 22.739817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440727, 35.233318, 22.943230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.264145, 34.875942, 22.910040>,  <43.158195, 34.661518, 22.890125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.264145, 34.875942, 22.910040>,  <43.440727, 35.233318, 22.943230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264145, 34.875942, 22.910040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262060, 0.039939, 0.964225,
		-0.858159, 0.447411, -0.251766,
		-0.441460, -0.893436, -0.082975,
		43.131706, 34.607910, 22.885147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.944668, 35.389935, 23.258156>,  <43.440727, 35.233318, 22.943230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.944668, 35.389935, 23.258156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.927452, 34.990311, 23.255939>,  <42.917122, 34.750538, 23.254610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.927452, 34.990311, 23.255939>,  <42.944668, 35.389935, 23.258156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927452, 34.990311, 23.255939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439411, 0.013948, 0.898178,
		-0.897255, 0.041094, -0.439597,
		-0.043041, -0.999058, -0.005542,
		42.914539, 34.690594, 23.254276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288761, 35.295364, 23.403078>,  <42.944668, 35.389935, 23.258156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288761, 35.295364, 23.403078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.510162, 34.975494, 23.496168>,  <42.643002, 34.783573, 23.552023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.510162, 34.975494, 23.496168>,  <42.288761, 35.295364, 23.403078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510162, 34.975494, 23.496168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349343, 0.030743, 0.936490,
		-0.756039, -0.599651, -0.262343,
		0.553502, -0.799671, 0.232727,
		42.676212, 34.735592, 23.565987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911388, 34.968929, 23.767952>,  <42.288761, 35.295364, 23.403078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911388, 34.968929, 23.767952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.254814, 34.795860, 23.877979>,  <42.460869, 34.692020, 23.943996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.254814, 34.795860, 23.877979>,  <41.911388, 34.968929, 23.767952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254814, 34.795860, 23.877979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312626, -0.016563, 0.949732,
		-0.406365, -0.901400, -0.149485,
		0.858564, -0.432671, 0.275070,
		42.512383, 34.666058, 23.960501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492809, 34.371975, 23.437304>,  <41.911388, 34.968929, 23.767952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492809, 34.371975, 23.437304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.106529, 34.349621, 23.335876>,  <40.874760, 34.336208, 23.275021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.106529, 34.349621, 23.335876>,  <41.492809, 34.371975, 23.437304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106529, 34.349621, 23.335876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233353, 0.241474, -0.941932,
		0.113866, -0.968797, -0.220152,
		-0.965703, -0.055880, -0.253568,
		40.816818, 34.332855, 23.259806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466881, 33.973686, 22.756067>,  <41.492809, 34.371975, 23.437304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466881, 33.973686, 22.756067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.140736, 34.203682, 22.783106>,  <40.945049, 34.341679, 22.799328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.140736, 34.203682, 22.783106>,  <41.466881, 33.973686, 22.756067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140736, 34.203682, 22.783106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031241, 0.160283, -0.986577,
		-0.578102, -0.802310, -0.148653,
		-0.815366, 0.574986, 0.067595,
		40.896126, 34.376179, 22.803385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094666, 33.871437, 22.257748>,  <41.466881, 33.973686, 22.756067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094666, 33.871437, 22.257748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.870964, 34.191772, 22.343441>,  <40.736744, 34.383972, 22.394857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.870964, 34.191772, 22.343441>,  <41.094666, 33.871437, 22.257748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870964, 34.191772, 22.343441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082561, 0.203336, -0.975622,
		-0.824873, -0.563311, -0.047599,
		-0.559257, 0.800834, 0.214234,
		40.703186, 34.432022, 22.407711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445549, 33.787823, 21.812513>,  <41.094666, 33.871437, 22.257748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445549, 33.787823, 21.812513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.482094, 34.175701, 21.903145>,  <40.504021, 34.408428, 21.957523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.482094, 34.175701, 21.903145>,  <40.445549, 33.787823, 21.812513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482094, 34.175701, 21.903145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042731, 0.223502, -0.973766,
		-0.994900, 0.098652, -0.021016,
		0.091367, 0.969698, 0.226577,
		40.509502, 34.466610, 21.971119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852936, 34.210468, 21.482746>,  <40.445549, 33.787823, 21.812513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852936, 34.210468, 21.482746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.152237, 34.470600, 21.535192>,  <40.331818, 34.626678, 21.566660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.152237, 34.470600, 21.535192>,  <39.852936, 34.210468, 21.482746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152237, 34.470600, 21.535192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029158, 0.229685, -0.972828,
		-0.662774, 0.724098, 0.190825,
		0.748252, 0.650329, 0.131116,
		40.376713, 34.665699, 21.574528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660866, 34.833271, 21.059710>,  <39.852936, 34.210468, 21.482746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660866, 34.833271, 21.059710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.046280, 34.909916, 21.134417>,  <40.277527, 34.955902, 21.179241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.046280, 34.909916, 21.134417>,  <39.660866, 34.833271, 21.059710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046280, 34.909916, 21.134417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116844, 0.326640, -0.937899,
		-0.240716, 0.925523, 0.292341,
		0.963537, 0.191609, 0.186769,
		40.335342, 34.967400, 21.190447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825642, 35.522545, 20.850965>,  <39.660866, 34.833271, 21.059710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825642, 35.522545, 20.850965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.167946, 35.315601, 20.851942>,  <40.373329, 35.191433, 20.852528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.167946, 35.315601, 20.851942>,  <39.825642, 35.522545, 20.850965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167946, 35.315601, 20.851942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169149, 0.275317, -0.946356,
		0.488936, 0.810270, 0.323117,
		0.855763, -0.517362, 0.002444,
		40.424675, 35.160393, 20.852674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487171, 36.246155, 20.713390>,  <39.825642, 35.522545, 20.850965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487171, 36.246155, 20.713390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.097481, 36.170860, 20.663656>,  <38.863667, 36.125683, 20.633816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.097481, 36.170860, 20.663656>,  <39.487171, 36.246155, 20.713390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097481, 36.170860, 20.663656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077070, -0.240273, 0.967641,
		-0.212017, 0.952280, 0.219573,
		-0.974222, -0.188234, -0.124334,
		38.805214, 36.114391, 20.626356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217838, 36.576813, 21.265633>,  <39.487171, 36.246155, 20.713390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217838, 36.576813, 21.265633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.925632, 36.326958, 21.155233>,  <38.750309, 36.177044, 21.088993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.925632, 36.326958, 21.155233>,  <39.217838, 36.576813, 21.265633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925632, 36.326958, 21.155233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224449, -0.162090, 0.960911,
		-0.644955, 0.763910, -0.021789,
		-0.730518, -0.624635, -0.275999,
		38.706478, 36.139568, 21.072433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671066, 36.783451, 21.708567>,  <39.217838, 36.576813, 21.265633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671066, 36.783451, 21.708567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.549675, 36.419434, 21.595631>,  <38.476841, 36.201023, 21.527868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.549675, 36.419434, 21.595631>,  <38.671066, 36.783451, 21.708567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549675, 36.419434, 21.595631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323184, -0.180438, 0.928975,
		-0.896355, 0.373172, -0.239353,
		-0.303479, -0.910046, -0.282340,
		38.458630, 36.146420, 21.510929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976746, 36.758457, 21.930803>,  <38.671066, 36.783451, 21.708567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976746, 36.758457, 21.930803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.119625, 36.385342, 21.911537>,  <38.205353, 36.161472, 21.899977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.119625, 36.385342, 21.911537>,  <37.976746, 36.758457, 21.930803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119625, 36.385342, 21.911537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383024, -0.193316, 0.903284,
		-0.851883, -0.304199, -0.426331,
		0.357195, -0.932787, -0.048167,
		38.226784, 36.105507, 21.897087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348148, 36.309864, 22.009621>,  <37.976746, 36.758457, 21.930803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348148, 36.309864, 22.009621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.669258, 36.083015, 22.083303>,  <37.861923, 35.946907, 22.127512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.669258, 36.083015, 22.083303>,  <37.348148, 36.309864, 22.009621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669258, 36.083015, 22.083303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474290, -0.420071, 0.773686,
		-0.361390, -0.708462, -0.606200,
		0.802774, -0.567117, 0.184207,
		37.910091, 35.912880, 22.138565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183323, 35.555630, 22.035154>,  <37.348148, 36.309864, 22.009621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183323, 35.555630, 22.035154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.512161, 35.600567, 22.258413>,  <37.709465, 35.627529, 22.392368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.512161, 35.600567, 22.258413>,  <37.183323, 35.555630, 22.035154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512161, 35.600567, 22.258413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473120, -0.410544, 0.779494,
		0.316715, -0.904894, -0.284357,
		0.822100, 0.112342, 0.558149,
		37.758793, 35.634270, 22.425858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198429, 34.933235, 22.347446>,  <37.183323, 35.555630, 22.035154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198429, 34.933235, 22.347446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.424732, 35.195648, 22.547266>,  <37.560513, 35.353096, 22.667158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.424732, 35.195648, 22.547266>,  <37.198429, 34.933235, 22.347446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424732, 35.195648, 22.547266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268243, -0.426445, 0.863823,
		0.779722, -0.622713, -0.065289,
		0.565756, 0.656028, 0.499547,
		37.594460, 35.392456, 22.697130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.476994, 38.713032, 20.101295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.822727, 38.516857, 20.145826>,  <41.030167, 38.399151, 20.172544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.822727, 38.516857, 20.145826>,  <40.476994, 38.713032, 20.101295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822727, 38.516857, 20.145826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000797, 0.220030, 0.975493,
		-0.502912, -0.843244, 0.189789,
		0.864337, -0.490436, 0.111328,
		41.082027, 38.369728, 20.179224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403763, 38.244682, 20.642933>,  <40.476994, 38.713032, 20.101295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403763, 38.244682, 20.642933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.800098, 38.295971, 20.625982>,  <41.037899, 38.326744, 20.615812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.800098, 38.295971, 20.625982>,  <40.403763, 38.244682, 20.642933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800098, 38.295971, 20.625982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007147, 0.263575, 0.964613,
		0.134854, -0.956079, 0.260244,
		0.990840, 0.128222, -0.042377,
		41.097351, 38.334438, 20.613270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576672, 37.883350, 21.100357>,  <40.403763, 38.244682, 20.642933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576672, 37.883350, 21.100357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.872166, 38.147518, 21.046530>,  <41.049461, 38.306019, 21.014235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.872166, 38.147518, 21.046530>,  <40.576672, 37.883350, 21.100357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872166, 38.147518, 21.046530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098183, 0.302975, 0.947927,
		0.666802, -0.687059, 0.288662,
		0.738739, 0.660421, -0.134567,
		41.093788, 38.345646, 21.006159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972656, 37.673103, 21.659149>,  <40.576672, 37.883350, 21.100357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972656, 37.673103, 21.659149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.062214, 38.044464, 21.540529>,  <41.115948, 38.267281, 21.469357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.062214, 38.044464, 21.540529>,  <40.972656, 37.673103, 21.659149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062214, 38.044464, 21.540529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023557, 0.299033, 0.953952,
		0.974328, -0.220574, 0.045082,
		0.223898, 0.928400, -0.296552,
		41.129383, 38.322983, 21.451563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458542, 37.871147, 22.113998>,  <40.972656, 37.673103, 21.659149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458542, 37.871147, 22.113998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.343494, 38.218563, 21.952547>,  <41.274467, 38.427013, 21.855677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.343494, 38.218563, 21.952547>,  <41.458542, 37.871147, 22.113998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343494, 38.218563, 21.952547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000044, 0.421448, 0.906852,
		0.957745, 0.260809, -0.121254,
		-0.287617, 0.868539, -0.403628,
		41.257210, 38.479126, 21.831459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798286, 38.470985, 22.450697>,  <41.458542, 37.871147, 22.113998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798286, 38.470985, 22.450697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.473747, 38.645531, 22.295111>,  <41.279022, 38.750259, 22.201759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.473747, 38.645531, 22.295111>,  <41.798286, 38.470985, 22.450697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473747, 38.645531, 22.295111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086177, 0.568838, 0.817922,
		0.578173, 0.697142, -0.423922,
		-0.811351, 0.436368, -0.388964,
		41.230343, 38.776440, 22.178421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.830906, 39.154613, 22.635029>,  <41.798286, 38.470985, 22.450697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.830906, 39.154613, 22.635029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.446239, 39.129753, 22.528196>,  <41.215439, 39.114838, 22.464096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.446239, 39.129753, 22.528196>,  <41.830906, 39.154613, 22.635029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446239, 39.129753, 22.528196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263825, 0.475325, 0.839323,
		0.074784, 0.877612, -0.473502,
		-0.961667, -0.062154, -0.267083,
		41.157738, 39.111107, 22.448072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483356, 39.777466, 22.583267>,  <41.830906, 39.154613, 22.635029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483356, 39.777466, 22.583267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.172520, 39.529171, 22.624853>,  <40.986015, 39.380196, 22.649805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.172520, 39.529171, 22.624853>,  <41.483356, 39.777466, 22.583267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172520, 39.529171, 22.624853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338630, 0.551603, 0.762276,
		-0.530520, 0.557155, -0.638848,
		-0.777096, -0.620736, 0.103967,
		40.939392, 39.342949, 22.656044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834778, 40.209366, 22.671282>,  <41.483356, 39.777466, 22.583267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834778, 40.209366, 22.671282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.750957, 39.848404, 22.821880>,  <40.700665, 39.631824, 22.912239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.750957, 39.848404, 22.821880>,  <40.834778, 40.209366, 22.671282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750957, 39.848404, 22.821880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439827, 0.430884, 0.787966,
		-0.873293, -0.000474, -0.487196,
		-0.209552, -0.902407, 0.376496,
		40.688091, 39.577682, 22.934830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058971, 40.167439, 22.842442>,  <40.834778, 40.209366, 22.671282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058971, 40.167439, 22.842442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.198227, 39.856937, 23.052673>,  <40.281780, 39.670639, 23.178812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.198227, 39.856937, 23.052673>,  <40.058971, 40.167439, 22.842442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198227, 39.856937, 23.052673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733315, 0.123763, 0.668529,
		-0.583994, -0.618157, -0.526149,
		0.348138, -0.776250, 0.525581,
		40.302670, 39.624062, 23.210348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413647, 39.874874, 23.064184>,  <40.058971, 40.167439, 22.842442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413647, 39.874874, 23.064184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.694527, 39.711842, 23.297695>,  <39.863052, 39.614021, 23.437801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.694527, 39.711842, 23.297695>,  <39.413647, 39.874874, 23.064184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694527, 39.711842, 23.297695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592480, 0.120178, 0.796571,
		-0.394827, -0.905225, -0.157097,
		0.702196, -0.407584, 0.583777,
		39.905186, 39.589565, 23.472828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183754, 39.289402, 23.384668>,  <39.413647, 39.874874, 23.064184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183754, 39.289402, 23.384668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.477551, 39.426617, 23.618885>,  <39.653828, 39.508945, 23.759415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.477551, 39.426617, 23.618885>,  <39.183754, 39.289402, 23.384668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477551, 39.426617, 23.618885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616343, -0.023880, 0.787116,
		0.283990, -0.939020, 0.193887,
		0.734487, 0.343034, 0.585539,
		39.697895, 39.529526, 23.794546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842873, 38.967438, 22.969547>,  <39.183754, 39.289402, 23.384668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842873, 38.967438, 22.969547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.457520, 39.073902, 22.956522>,  <38.226307, 39.137779, 22.948708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.457520, 39.073902, 22.956522>,  <38.842873, 38.967438, 22.969547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457520, 39.073902, 22.956522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066157, 0.118243, -0.990778,
		-0.259856, -0.956649, -0.131521,
		-0.963378, 0.266161, -0.032563,
		38.168507, 39.153751, 22.946753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499229, 38.519547, 22.457458>,  <38.842873, 38.967438, 22.969547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499229, 38.519547, 22.457458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.286400, 38.852711, 22.518324>,  <38.158703, 39.052608, 22.554842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.286400, 38.852711, 22.518324>,  <38.499229, 38.519547, 22.457458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286400, 38.852711, 22.518324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083878, 0.230681, -0.969407,
		-0.842530, -0.503037, -0.192603,
		-0.532078, 0.832910, 0.152162,
		38.126778, 39.102585, 22.563972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041592, 38.438198, 21.989994>,  <38.499229, 38.519547, 22.457458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041592, 38.438198, 21.989994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.029995, 38.823612, 22.096392>,  <38.023037, 39.054863, 22.160231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.029995, 38.823612, 22.096392>,  <38.041592, 38.438198, 21.989994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029995, 38.823612, 22.096392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016092, 0.265623, -0.963942,
		-0.999450, -0.032227, 0.007805,
		-0.028992, 0.963538, 0.265996,
		38.021297, 39.112675, 22.176191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494530, 38.714218, 21.683371>,  <38.041592, 38.438198, 21.989994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494530, 38.714218, 21.683371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.738365, 39.022408, 21.757961>,  <37.884666, 39.207321, 21.802715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.738365, 39.022408, 21.757961>,  <37.494530, 38.714218, 21.683371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738365, 39.022408, 21.757961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044784, 0.201387, -0.978487,
		-0.791454, 0.604823, 0.088257,
		0.609586, 0.770475, 0.186475,
		37.921242, 39.253551, 21.813904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316879, 39.103733, 21.157267>,  <37.494530, 38.714218, 21.683371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316879, 39.103733, 21.157267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.628017, 39.308064, 21.303696>,  <37.814701, 39.430660, 21.391554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.628017, 39.308064, 21.303696>,  <37.316879, 39.103733, 21.157267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628017, 39.308064, 21.303696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243861, 0.291520, -0.924958,
		-0.579211, 0.808747, 0.102188,
		0.777847, 0.510827, 0.366074,
		37.861370, 39.461311, 21.413517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267185, 39.689648, 20.819258>,  <37.316879, 39.103733, 21.157267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267185, 39.689648, 20.819258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.649883, 39.700676, 20.935104>,  <37.879501, 39.707294, 21.004612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.649883, 39.700676, 20.935104>,  <37.267185, 39.689648, 20.819258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649883, 39.700676, 20.935104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274825, 0.240939, -0.930817,
		-0.095444, 0.970149, 0.222940,
		0.956745, 0.027571, 0.289617,
		37.936909, 39.708946, 21.021990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596527, 40.376968, 20.683781>,  <37.267185, 39.689648, 20.819258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596527, 40.376968, 20.683781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.882919, 40.098167, 20.667984>,  <38.054756, 39.930889, 20.658506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.882919, 40.098167, 20.667984>,  <37.596527, 40.376968, 20.683781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882919, 40.098167, 20.667984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435754, 0.490387, -0.754745,
		0.545422, 0.523177, 0.654829,
		0.715984, -0.696998, -0.039491,
		38.097713, 39.889069, 20.656137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225628, 40.783768, 20.525532>,  <37.596527, 40.376968, 20.683781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225628, 40.783768, 20.525532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.307667, 40.402275, 20.437588>,  <38.356888, 40.173382, 20.384821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.307667, 40.402275, 20.437588>,  <38.225628, 40.783768, 20.525532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307667, 40.402275, 20.437588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351885, 0.281467, -0.892723,
		0.913298, 0.105727, 0.393330,
		0.205094, -0.953729, -0.219859,
		38.369194, 40.116158, 20.371630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901928, 40.719505, 20.151739>,  <38.225628, 40.783768, 20.525532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901928, 40.719505, 20.151739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.737606, 40.364750, 20.067196>,  <38.639011, 40.151897, 20.016470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.737606, 40.364750, 20.067196>,  <38.901928, 40.719505, 20.151739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737606, 40.364750, 20.067196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264294, 0.106029, -0.958596,
		0.872575, -0.449659, 0.190841,
		-0.410807, -0.886885, -0.211360,
		38.614365, 40.098686, 20.003788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445004, 40.340176, 19.775408>,  <38.901928, 40.719505, 20.151739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445004, 40.340176, 19.775408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.083420, 40.198414, 19.679695>,  <38.866470, 40.113358, 19.622269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.083420, 40.198414, 19.679695>,  <39.445004, 40.340176, 19.775408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083420, 40.198414, 19.679695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294346, -0.109795, -0.949371,
		0.310190, -0.928624, 0.203568,
		-0.903959, -0.354405, -0.239280,
		38.812233, 40.092091, 19.607912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665573, 40.122726, 19.233894>,  <39.445004, 40.340176, 19.775408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665573, 40.122726, 19.233894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.272728, 40.053730, 19.203669>,  <39.037022, 40.012333, 19.185534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.272728, 40.053730, 19.203669>,  <39.665573, 40.122726, 19.233894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272728, 40.053730, 19.203669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085547, -0.051191, -0.995018,
		0.167763, -0.983680, 0.065031,
		-0.982109, -0.172491, -0.075563,
		38.978096, 40.001984, 19.181000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597248, 39.496635, 18.981108>,  <39.665573, 40.122726, 19.233894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597248, 39.496635, 18.981108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.263054, 39.696609, 18.889870>,  <39.062538, 39.816593, 18.835127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.263054, 39.696609, 18.889870>,  <39.597248, 39.496635, 18.981108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263054, 39.696609, 18.889870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193727, -0.120468, -0.973631,
		-0.514228, -0.857645, 0.003799,
		-0.835488, 0.499933, -0.228097,
		39.012409, 39.846588, 18.821440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356152, 39.124451, 18.455538>,  <39.597248, 39.496635, 18.981108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356152, 39.124451, 18.455538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.166252, 39.476433, 18.448725>,  <39.052315, 39.687622, 18.444637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.166252, 39.476433, 18.448725>,  <39.356152, 39.124451, 18.455538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166252, 39.476433, 18.448725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024835, -0.032738, -0.999155,
		-0.879773, -0.473922, 0.037396,
		-0.474746, 0.879958, -0.017033,
		39.023827, 39.740421, 18.443615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893078, 38.437683, 18.352629>,  <39.356152, 39.124451, 18.455538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893078, 38.437683, 18.352629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.861488, 38.081818, 18.172731>,  <38.842537, 37.868298, 18.064793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.861488, 38.081818, 18.172731>,  <38.893078, 38.437683, 18.352629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861488, 38.081818, 18.172731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338644, -0.400382, 0.851478,
		-0.937595, 0.219545, -0.269660,
		-0.078970, -0.889660, -0.449744,
		38.837799, 37.814919, 18.037807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218742, 38.111523, 18.604868>,  <38.893078, 38.437683, 18.352629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218742, 38.111523, 18.604868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.462666, 37.836834, 18.446602>,  <38.609020, 37.672020, 18.351643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.462666, 37.836834, 18.446602>,  <38.218742, 38.111523, 18.604868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462666, 37.836834, 18.446602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120482, -0.573748, 0.810122,
		-0.783342, -0.446344, -0.432611,
		0.609803, -0.686724, -0.395665,
		38.645607, 37.630817, 18.327902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803196, 37.516197, 18.597382>,  <38.218742, 38.111523, 18.604868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803196, 37.516197, 18.597382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.180828, 37.391460, 18.554548>,  <38.407406, 37.316620, 18.528849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.180828, 37.391460, 18.554548>,  <37.803196, 37.516197, 18.597382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180828, 37.391460, 18.554548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144733, -0.683757, 0.715212,
		-0.296251, -0.659720, -0.690656,
		0.944080, -0.311843, -0.107081,
		38.464050, 37.297909, 18.522425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775299, 36.735855, 18.595749>,  <37.803196, 37.516197, 18.597382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775299, 36.735855, 18.595749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.146614, 36.849003, 18.692308>,  <38.369404, 36.916893, 18.750244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.146614, 36.849003, 18.692308>,  <37.775299, 36.735855, 18.595749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146614, 36.849003, 18.692308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020196, -0.609834, 0.792272,
		0.371327, -0.740327, -0.560386,
		0.928283, 0.282874, 0.241399,
		38.425098, 36.933865, 18.764729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143135, 36.117161, 18.710571>,  <37.775299, 36.735855, 18.595749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143135, 36.117161, 18.710571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.381664, 36.385086, 18.887545>,  <38.524780, 36.545841, 18.993729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.381664, 36.385086, 18.887545>,  <38.143135, 36.117161, 18.710571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381664, 36.385086, 18.887545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060945, -0.511784, 0.856950,
		0.800427, -0.537984, -0.264367,
		0.596324, 0.669814, 0.442433,
		38.560562, 36.586029, 19.020275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595749, 35.750721, 18.979286>,  <38.143135, 36.117161, 18.710571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595749, 35.750721, 18.979286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.624626, 36.090424, 19.188492>,  <38.641953, 36.294247, 19.314014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.624626, 36.090424, 19.188492>,  <38.595749, 35.750721, 18.979286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624626, 36.090424, 19.188492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067976, -0.518973, 0.852083,
		0.995071, -0.097069, 0.020261,
		0.072196, 0.849261, 0.523013,
		38.646286, 36.345203, 19.345396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186199, 35.584831, 19.462387>,  <38.595749, 35.750721, 18.979286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186199, 35.584831, 19.462387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.975945, 35.878578, 19.634163>,  <38.849792, 36.054825, 19.737228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.975945, 35.878578, 19.634163>,  <39.186199, 35.584831, 19.462387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975945, 35.878578, 19.634163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211193, -0.376356, 0.902083,
		0.824079, 0.564860, 0.042733,
		-0.525634, 0.734363, 0.429441,
		38.818253, 36.098888, 19.762995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515938, 35.714180, 20.129883>,  <39.186199, 35.584831, 19.462387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515938, 35.714180, 20.129883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.155907, 35.882057, 20.176746>,  <38.939888, 35.982784, 20.204865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.155907, 35.882057, 20.176746>,  <39.515938, 35.714180, 20.129883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155907, 35.882057, 20.176746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100851, -0.462221, 0.881011,
		0.423905, 0.781160, 0.458360,
		-0.900074, 0.419691, 0.117157,
		38.885883, 36.007965, 20.211893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249931, 35.779247, 20.280212>,  <39.515938, 35.714180, 20.129883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249931, 35.779247, 20.280212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.504581, 35.477875, 20.345993>,  <40.657372, 35.297050, 20.385462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.504581, 35.477875, 20.345993>,  <40.249931, 35.779247, 20.280212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504581, 35.477875, 20.345993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156665, -0.082443, -0.984205,
		0.755092, 0.652334, 0.065552,
		0.636626, -0.753435, 0.164450,
		40.695568, 35.251842, 20.395329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913471, 35.821327, 19.881470>,  <40.249931, 35.779247, 20.280212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913471, 35.821327, 19.881470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.845821, 35.433079, 19.949934>,  <40.805233, 35.200130, 19.991013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.845821, 35.433079, 19.949934>,  <40.913471, 35.821327, 19.881470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845821, 35.433079, 19.949934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180061, -0.201167, -0.962865,
		0.969007, -0.132024, 0.208793,
		-0.169123, -0.970619, 0.171160,
		40.795086, 35.141891, 20.001282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566158, 35.455978, 19.626301>,  <40.913471, 35.821327, 19.881470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566158, 35.455978, 19.626301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.260685, 35.197746, 19.624969>,  <41.077400, 35.042805, 19.624170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.260685, 35.197746, 19.624969>,  <41.566158, 35.455978, 19.626301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260685, 35.197746, 19.624969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082280, -0.092217, -0.992334,
		0.640329, -0.758100, 0.123543,
		-0.763681, -0.645586, -0.003327,
		41.031582, 35.004070, 19.623972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739086, 34.895988, 19.178017>,  <41.566158, 35.455978, 19.626301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739086, 34.895988, 19.178017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.340687, 34.912025, 19.209948>,  <41.101646, 34.921650, 19.229107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.340687, 34.912025, 19.209948>,  <41.739086, 34.895988, 19.178017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340687, 34.912025, 19.209948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088265, -0.303983, -0.948580,
		-0.013766, -0.951833, 0.306306,
		-0.996002, 0.040094, 0.079829,
		41.041885, 34.924053, 19.233896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490215, 34.185749, 18.942921>,  <41.739086, 34.895988, 19.178017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490215, 34.185749, 18.942921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.191853, 34.451427, 18.923052>,  <41.012833, 34.610832, 18.911131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.191853, 34.451427, 18.923052>,  <41.490215, 34.185749, 18.942921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191853, 34.451427, 18.923052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112535, -0.199180, -0.973480,
		-0.656471, -0.720539, 0.223316,
		-0.745910, 0.664192, -0.049670,
		40.968079, 34.650684, 18.908152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985409, 33.864162, 18.505859>,  <41.490215, 34.185749, 18.942921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985409, 33.864162, 18.505859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.886250, 34.251545, 18.495770>,  <40.826756, 34.483974, 18.489716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.886250, 34.251545, 18.495770>,  <40.985409, 33.864162, 18.505859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886250, 34.251545, 18.495770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084606, -0.047578, -0.995278,
		-0.965085, -0.244591, 0.093731,
		-0.247895, 0.968458, -0.025223,
		40.811882, 34.542084, 18.488203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503616, 33.867008, 18.040550>,  <40.985409, 33.864162, 18.505859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503616, 33.867008, 18.040550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.619083, 34.247540, 18.083704>,  <40.688366, 34.475861, 18.109596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.619083, 34.247540, 18.083704>,  <40.503616, 33.867008, 18.040550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619083, 34.247540, 18.083704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098799, 0.141680, -0.984969,
		-0.952317, 0.273672, 0.134889,
		0.288670, 0.951330, 0.107886,
		40.705685, 34.532940, 18.116070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008884, 34.333302, 17.655306>,  <40.503616, 33.867008, 18.040550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008884, 34.333302, 17.655306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.356121, 34.530361, 17.679684>,  <40.564465, 34.648598, 17.694309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.356121, 34.530361, 17.679684>,  <40.008884, 34.333302, 17.655306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356121, 34.530361, 17.679684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007294, 0.135414, -0.990762,
		-0.496353, 0.859626, 0.121145,
		0.868090, 0.492652, 0.060943,
		40.616547, 34.678158, 17.697968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915176, 35.026909, 17.288946>,  <40.008884, 34.333302, 17.655306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915176, 35.026909, 17.288946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.296947, 34.908653, 17.305239>,  <40.526012, 34.837700, 17.315014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.296947, 34.908653, 17.305239>,  <39.915176, 35.026909, 17.288946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296947, 34.908653, 17.305239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098281, 0.182507, -0.978280,
		0.281783, 0.937704, 0.203246,
		0.954431, -0.295638, 0.040731,
		40.583279, 34.819962, 17.317457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.076576, 33.398968, 33.116077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.412407, 33.616146, 33.108887>,  <37.613903, 33.746452, 33.104572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.412407, 33.616146, 33.108887>,  <37.076576, 33.398968, 33.116077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412407, 33.616146, 33.108887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081338, 0.092914, -0.992346,
		-0.537122, 0.834610, 0.122171,
		0.839574, 0.542948, -0.017979,
		37.664280, 33.779030, 33.103493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933170, 34.072987, 32.621799>,  <37.076576, 33.398968, 33.116077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933170, 34.072987, 32.621799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.294727, 33.903927, 32.648197>,  <37.511662, 33.802490, 32.664036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.294727, 33.903927, 32.648197>,  <36.933170, 34.072987, 32.621799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294727, 33.903927, 32.648197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110976, 0.082695, -0.990377,
		0.413122, 0.902514, 0.121651,
		0.903889, -0.422647, 0.065994,
		37.565895, 33.777134, 32.667995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415157, 34.630905, 32.291584>,  <36.933170, 34.072987, 32.621799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415157, 34.630905, 32.291584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.591103, 34.271683, 32.290501>,  <37.696671, 34.056149, 32.289852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.591103, 34.271683, 32.290501>,  <37.415157, 34.630905, 32.291584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591103, 34.271683, 32.290501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257609, 0.129061, -0.957591,
		0.860322, 0.420517, 0.288118,
		0.439868, -0.898059, -0.002705,
		37.723064, 34.002266, 32.289688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929039, 34.809666, 31.812323>,  <37.415157, 34.630905, 32.291584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929039, 34.809666, 31.812323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.915264, 34.409973, 31.804869>,  <37.906998, 34.170158, 31.800396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.915264, 34.409973, 31.804869>,  <37.929039, 34.809666, 31.812323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915264, 34.409973, 31.804869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329843, 0.006237, -0.944015,
		0.943408, -0.038654, 0.329376,
		-0.034436, -0.999233, -0.018634,
		37.904934, 34.110203, 31.799278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487892, 34.557629, 31.544426>,  <37.929039, 34.809666, 31.812323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487892, 34.557629, 31.544426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.282944, 34.215809, 31.510437>,  <38.159973, 34.010715, 31.490044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.282944, 34.215809, 31.510437>,  <38.487892, 34.557629, 31.544426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282944, 34.215809, 31.510437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351590, -0.118470, -0.928628,
		0.783492, -0.505678, 0.361151,
		-0.512372, -0.854550, -0.084971,
		38.129230, 33.959442, 31.484945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003502, 34.096588, 31.160183>,  <38.487892, 34.557629, 31.544426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003502, 34.096588, 31.160183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.617695, 34.000828, 31.115669>,  <38.386211, 33.943371, 31.088961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.617695, 34.000828, 31.115669>,  <39.003502, 34.096588, 31.160183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617695, 34.000828, 31.115669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160729, -0.198089, -0.966916,
		0.209438, -0.950498, 0.229540,
		-0.964522, -0.239403, -0.111285,
		38.328339, 33.929008, 31.082283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069168, 33.520855, 30.807703>,  <39.003502, 34.096588, 31.160183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069168, 33.520855, 30.807703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.693043, 33.645088, 30.752052>,  <38.467369, 33.719627, 30.718662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.693043, 33.645088, 30.752052>,  <39.069168, 33.520855, 30.807703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693043, 33.645088, 30.752052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083182, -0.186659, -0.978897,
		-0.329998, -0.932039, 0.149683,
		-0.940309, 0.310583, -0.139126,
		38.410950, 33.738262, 30.710314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694027, 33.020565, 30.402878>,  <39.069168, 33.520855, 30.807703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694027, 33.020565, 30.402878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.501907, 33.369747, 30.368818>,  <38.386635, 33.579258, 30.348383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.501907, 33.369747, 30.368818>,  <38.694027, 33.020565, 30.402878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501907, 33.369747, 30.368818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018955, -0.107390, -0.994036,
		-0.876898, -0.475824, 0.068127,
		-0.480302, 0.872960, -0.085151,
		38.357815, 33.631634, 30.343273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103622, 32.999249, 30.204771>,  <38.694027, 33.020565, 30.402878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103622, 32.999249, 30.204771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.181442, 33.366718, 30.067261>,  <38.228134, 33.587200, 29.984755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.181442, 33.366718, 30.067261>,  <38.103622, 32.999249, 30.204771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181442, 33.366718, 30.067261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313501, -0.273854, -0.909242,
		-0.929445, 0.284664, 0.234729,
		0.194547, 0.918678, -0.343775,
		38.239807, 33.642323, 29.964128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903416, 33.000500, 29.621523>,  <38.103622, 32.999249, 30.204771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903416, 33.000500, 29.621523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.047356, 33.370224, 29.570679>,  <38.133720, 33.592060, 29.540173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.047356, 33.370224, 29.570679>,  <37.903416, 33.000500, 29.621523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047356, 33.370224, 29.570679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259262, -0.031810, -0.965283,
		-0.896264, 0.380315, 0.228192,
		0.359853, 0.924310, -0.127112,
		38.155312, 33.647518, 29.532545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468559, 33.222019, 29.131371>,  <37.903416, 33.000500, 29.621523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468559, 33.222019, 29.131371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.796780, 33.450642, 29.133005>,  <37.993713, 33.587814, 29.133986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.796780, 33.450642, 29.133005>,  <37.468559, 33.222019, 29.131371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796780, 33.450642, 29.133005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042927, 0.068757, -0.996709,
		-0.569952, 0.817680, 0.080954,
		0.820556, 0.571552, 0.004087,
		38.042946, 33.622108, 29.134232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357544, 33.827946, 28.683577>,  <37.468559, 33.222019, 29.131371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357544, 33.827946, 28.683577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.754692, 33.785473, 28.705210>,  <37.992981, 33.759987, 28.718189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.754692, 33.785473, 28.705210>,  <37.357544, 33.827946, 28.683577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754692, 33.785473, 28.705210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043677, -0.097998, -0.994228,
		0.110873, 0.989505, -0.092662,
		0.992874, -0.106186, 0.054084,
		38.052555, 33.753616, 28.721436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889561, 34.485004, 28.489050>,  <37.357544, 33.827946, 28.683577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889561, 34.485004, 28.489050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.502327, 34.444427, 28.397387>,  <36.269985, 34.420082, 28.342388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.502327, 34.444427, 28.397387>,  <36.889561, 34.485004, 28.489050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502327, 34.444427, 28.397387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248625, 0.273953, 0.929051,
		-0.031465, 0.956378, -0.290432,
		-0.968089, -0.101442, -0.229160,
		36.211899, 34.413994, 28.328638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662548, 34.905598, 28.834934>,  <36.889561, 34.485004, 28.489050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662548, 34.905598, 28.834934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.335850, 34.692734, 28.745720>,  <36.139832, 34.565018, 28.692192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.335850, 34.692734, 28.745720>,  <36.662548, 34.905598, 28.834934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335850, 34.692734, 28.745720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438473, 0.321153, 0.839406,
		-0.375066, 0.783372, -0.495634,
		-0.816742, -0.532155, -0.223034,
		36.090828, 34.533089, 28.678810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089813, 35.318180, 29.093065>,  <36.662548, 34.905598, 28.834934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089813, 35.318180, 29.093065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.969139, 34.939068, 29.051680>,  <35.896736, 34.711601, 29.026848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.969139, 34.939068, 29.051680>,  <36.089813, 35.318180, 29.093065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969139, 34.939068, 29.051680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502848, 0.065977, 0.861853,
		-0.810019, 0.312034, -0.496492,
		-0.301685, -0.947777, -0.103464,
		35.878635, 34.654736, 29.020641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384937, 35.327541, 29.064285>,  <36.089813, 35.318180, 29.093065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384937, 35.327541, 29.064285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.472431, 34.954670, 29.179659>,  <35.524929, 34.730946, 29.248882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.472431, 34.954670, 29.179659>,  <35.384937, 35.327541, 29.064285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472431, 34.954670, 29.179659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534653, 0.132779, 0.834575,
		-0.816273, -0.336763, -0.469350,
		0.218734, -0.932180, 0.288435,
		35.538052, 34.675014, 29.266190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788494, 35.092594, 29.309505>,  <35.384937, 35.327541, 29.064285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788494, 35.092594, 29.309505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.064262, 34.845188, 29.460306>,  <35.229725, 34.696743, 29.550787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.064262, 34.845188, 29.460306>,  <34.788494, 35.092594, 29.309505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064262, 34.845188, 29.460306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545453, -0.100820, 0.832056,
		-0.476633, -0.779275, -0.406880,
		0.689422, -0.618519, 0.377004,
		35.271088, 34.659634, 29.573408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418633, 34.522942, 29.754372>,  <34.788494, 35.092594, 29.309505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418633, 34.522942, 29.754372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.788929, 34.516891, 29.905512>,  <35.011108, 34.513264, 29.996197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.788929, 34.516891, 29.905512>,  <34.418633, 34.522942, 29.754372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788929, 34.516891, 29.905512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378074, -0.016441, 0.925629,
		-0.007799, -0.999750, -0.020943,
		0.925743, -0.015137, 0.377851,
		35.066650, 34.512356, 30.018867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230995, 34.124554, 30.409933>,  <34.418633, 34.522942, 29.754372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230995, 34.124554, 30.409933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.597858, 34.282436, 30.431946>,  <34.817978, 34.377167, 30.445154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.597858, 34.282436, 30.431946>,  <34.230995, 34.124554, 30.409933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597858, 34.282436, 30.431946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092387, 0.076251, 0.992799,
		0.387665, -0.915639, 0.106399,
		0.917159, 0.394704, 0.055033,
		34.873005, 34.400848, 30.448456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515629, 33.850613, 30.973652>,  <34.230995, 34.124554, 30.409933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515629, 33.850613, 30.973652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.711651, 34.193104, 30.908274>,  <34.829266, 34.398598, 30.869047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.711651, 34.193104, 30.908274>,  <34.515629, 33.850613, 30.973652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711651, 34.193104, 30.908274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103009, 0.243073, 0.964523,
		0.865583, -0.455834, 0.207319,
		0.490056, 0.856231, -0.163445,
		34.858669, 34.449974, 30.859240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895496, 33.877434, 31.610792>,  <34.515629, 33.850613, 30.973652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895496, 33.877434, 31.610792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923820, 34.224277, 31.413567>,  <34.940815, 34.432384, 31.295231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923820, 34.224277, 31.413567>,  <34.895496, 33.877434, 31.610792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923820, 34.224277, 31.413567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188810, 0.473717, 0.860199,
		0.979457, -0.154003, -0.130176,
		0.070807, 0.867107, -0.493064,
		34.945061, 34.484409, 31.265648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472347, 34.247738, 31.886787>,  <34.895496, 33.877434, 31.610792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472347, 34.247738, 31.886787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215145, 34.506218, 31.722364>,  <35.060825, 34.661308, 31.623711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215145, 34.506218, 31.722364>,  <35.472347, 34.247738, 31.886787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215145, 34.506218, 31.722364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002543, 0.538522, 0.842607,
		0.765861, 0.540753, -0.347914,
		-0.643002, 0.646205, -0.411058,
		35.022243, 34.700081, 31.599047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633923, 34.995758, 32.041370>,  <35.472347, 34.247738, 31.886787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633923, 34.995758, 32.041370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.240566, 35.006138, 31.969519>,  <35.004551, 35.012363, 31.926409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.240566, 35.006138, 31.969519>,  <35.633923, 34.995758, 32.041370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240566, 35.006138, 31.969519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143143, 0.497564, 0.855535,
		0.111575, 0.867039, -0.485587,
		-0.983393, 0.025948, -0.179626,
		34.945549, 35.013924, 31.915630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455936, 35.564819, 32.404732>,  <35.633923, 34.995758, 32.041370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455936, 35.564819, 32.404732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.118046, 35.363388, 32.332233>,  <34.915314, 35.242531, 32.288734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.118046, 35.363388, 32.332233>,  <35.455936, 35.564819, 32.404732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118046, 35.363388, 32.332233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382080, 0.330273, 0.863096,
		-0.374775, 0.798329, -0.471396,
		-0.844724, -0.503578, -0.181248,
		34.864628, 35.212315, 32.277859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037560, 36.024529, 32.417889>,  <35.455936, 35.564819, 32.404732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037560, 36.024529, 32.417889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.787651, 35.723171, 32.499920>,  <34.637707, 35.542355, 32.549141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.787651, 35.723171, 32.499920>,  <35.037560, 36.024529, 32.417889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787651, 35.723171, 32.499920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207191, 0.413198, 0.886758,
		-0.752820, 0.511526, -0.414250,
		-0.624767, -0.753398, 0.205080,
		34.600220, 35.497150, 32.561443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341019, 36.259743, 32.449638>,  <35.037560, 36.024529, 32.417889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341019, 36.259743, 32.449638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.413349, 35.940777, 32.679916>,  <34.456749, 35.749397, 32.818085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.413349, 35.940777, 32.679916>,  <34.341019, 36.259743, 32.449638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413349, 35.940777, 32.679916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594435, 0.377722, 0.709911,
		-0.783549, -0.470583, -0.405713,
		0.180825, -0.797420, 0.575694,
		34.467598, 35.701550, 32.852623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087326, 36.992466, 32.594620>,  <34.341019, 36.259743, 32.449638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087326, 36.992466, 32.594620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.420563, 37.083630, 32.796219>,  <34.620506, 37.138329, 32.917179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.420563, 37.083630, 32.796219>,  <34.087326, 36.992466, 32.594620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420563, 37.083630, 32.796219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545547, 0.488918, 0.680689,
		-0.091280, -0.842032, 0.531649,
		0.833095, 0.227906, 0.503996,
		34.670490, 37.152000, 32.947418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861065, 37.575989, 32.412693>,  <34.087326, 36.992466, 32.594620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861065, 37.575989, 32.412693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.142353, 37.821789, 32.555729>,  <34.311127, 37.969269, 32.641552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.142353, 37.821789, 32.555729>,  <33.861065, 37.575989, 32.412693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142353, 37.821789, 32.555729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136065, 0.377344, -0.916023,
		-0.697828, 0.692824, 0.181745,
		0.703223, 0.614497, 0.357590,
		34.353321, 38.006138, 32.663006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790943, 38.374554, 32.235744>,  <33.861065, 37.575989, 32.412693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790943, 38.374554, 32.235744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.180149, 38.332767, 32.318043>,  <34.413673, 38.307697, 32.367420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.180149, 38.332767, 32.318043>,  <33.790943, 38.374554, 32.235744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180149, 38.332767, 32.318043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230574, 0.406009, -0.884304,
		0.008843, 0.907879, 0.419139,
		0.973015, -0.104462, 0.205743,
		34.472054, 38.301430, 32.379765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160339, 38.989414, 32.096638>,  <33.790943, 38.374554, 32.235744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160339, 38.989414, 32.096638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.468033, 38.733864, 32.100941>,  <34.652649, 38.580532, 32.103523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.468033, 38.733864, 32.100941>,  <34.160339, 38.989414, 32.096638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468033, 38.733864, 32.100941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306999, 0.354767, -0.883115,
		0.560388, 0.682622, 0.469033,
		0.769231, -0.638880, 0.010757,
		34.698803, 38.542198, 32.104168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764858, 39.340405, 31.972330>,  <34.160339, 38.989414, 32.096638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764858, 39.340405, 31.972330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.841049, 38.963207, 31.863163>,  <34.886765, 38.736889, 31.797663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.841049, 38.963207, 31.863163>,  <34.764858, 39.340405, 31.972330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841049, 38.963207, 31.863163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362758, 0.325941, -0.873023,
		0.912210, 0.067284, 0.404161,
		0.190473, -0.942993, -0.272919,
		34.898190, 38.680309, 31.781288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333141, 39.466614, 31.542324>,  <34.764858, 39.340405, 31.972330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333141, 39.466614, 31.542324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.216366, 39.094383, 31.453966>,  <35.146301, 38.871044, 31.400951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.216366, 39.094383, 31.453966>,  <35.333141, 39.466614, 31.542324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216366, 39.094383, 31.453966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312583, 0.125443, -0.941571,
		0.903917, -0.343926, 0.254262,
		-0.291936, -0.930580, -0.220895,
		35.128784, 38.815208, 31.387697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919720, 39.211468, 31.138504>,  <35.333141, 39.466614, 31.542324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919720, 39.211468, 31.138504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.600353, 38.977360, 31.081947>,  <35.408733, 38.836895, 31.048014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.600353, 38.977360, 31.081947>,  <35.919720, 39.211468, 31.138504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600353, 38.977360, 31.081947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218735, -0.063153, -0.973739,
		0.560972, -0.808374, 0.178441,
		-0.798414, -0.585272, -0.141393,
		35.360828, 38.801777, 31.039530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170780, 38.628967, 30.848454>,  <35.919720, 39.211468, 31.138504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170780, 38.628967, 30.848454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.788113, 38.662022, 30.736773>,  <35.558514, 38.681854, 30.669764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.788113, 38.662022, 30.736773>,  <36.170780, 38.628967, 30.848454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788113, 38.662022, 30.736773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260236, -0.187477, -0.947169,
		-0.130612, -0.978787, 0.157850,
		-0.956670, 0.082634, -0.279202,
		35.501110, 38.686813, 30.653011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017841, 38.051430, 30.510193>,  <36.170780, 38.628967, 30.848454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017841, 38.051430, 30.510193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.744015, 38.302109, 30.361267>,  <35.579720, 38.452518, 30.271912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.744015, 38.302109, 30.361267>,  <36.017841, 38.051430, 30.510193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744015, 38.302109, 30.361267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324470, -0.195397, -0.925494,
		-0.652757, -0.754365, -0.069584,
		-0.684564, 0.626700, -0.372315,
		35.538647, 38.490120, 30.249573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832520, 37.710236, 29.968039>,  <36.017841, 38.051430, 30.510193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832520, 37.710236, 29.968039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.677094, 38.070816, 29.891718>,  <35.583836, 38.287163, 29.845926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.677094, 38.070816, 29.891718>,  <35.832520, 37.710236, 29.968039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677094, 38.070816, 29.891718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045209, -0.188170, -0.981096,
		-0.920310, -0.389848, 0.032363,
		-0.388568, 0.901449, -0.190799,
		35.560524, 38.341251, 29.834478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160969, 37.612339, 29.575193>,  <35.832520, 37.710236, 29.968039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160969, 37.612339, 29.575193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.279381, 37.987331, 29.501984>,  <35.350430, 38.212326, 29.458057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.279381, 37.987331, 29.501984>,  <35.160969, 37.612339, 29.575193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279381, 37.987331, 29.501984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061173, -0.209825, -0.975824,
		-0.953218, 0.277677, -0.119463,
		0.296030, 0.937480, -0.183022,
		35.368191, 38.268574, 29.447077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763779, 37.977001, 28.919577>,  <35.160969, 37.612339, 29.575193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763779, 37.977001, 28.919577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.119179, 38.153454, 28.970125>,  <35.332420, 38.259327, 29.000454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.119179, 38.153454, 28.970125>,  <34.763779, 37.977001, 28.919577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119179, 38.153454, 28.970125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218771, -0.165139, -0.961701,
		-0.403368, 0.882118, -0.243233,
		0.888501, 0.441131, 0.126370,
		35.385731, 38.285793, 29.008036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844414, 38.452114, 28.352747>,  <34.763779, 37.977001, 28.919577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844414, 38.452114, 28.352747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.221970, 38.417927, 28.480356>,  <35.448502, 38.397415, 28.556921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.221970, 38.417927, 28.480356>,  <34.844414, 38.452114, 28.352747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221970, 38.417927, 28.480356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304258, -0.150752, -0.940585,
		0.128482, 0.984870, -0.116289,
		0.943885, -0.085467, 0.319024,
		35.505135, 38.392288, 28.576063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283676, 38.789284, 27.820856>,  <34.844414, 38.452114, 28.352747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283676, 38.789284, 27.820856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.538895, 38.590801, 28.056376>,  <35.692024, 38.471714, 28.197687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.538895, 38.590801, 28.056376>,  <35.283676, 38.789284, 27.820856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538895, 38.590801, 28.056376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619021, -0.124229, -0.775487,
		0.457944, 0.859273, 0.227896,
		0.638044, -0.496202, 0.588798,
		35.730309, 38.441940, 28.233015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006062, 39.051006, 27.925640>,  <35.283676, 38.789284, 27.820856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006062, 39.051006, 27.925640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.041294, 38.659153, 27.997808>,  <36.062435, 38.424042, 28.041109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.041294, 38.659153, 27.997808>,  <36.006062, 39.051006, 27.925640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041294, 38.659153, 27.997808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670079, -0.075747, -0.738415,
		0.737045, 0.185937, 0.649763,
		0.088081, -0.979638, 0.180421,
		36.067719, 38.365261, 28.051935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753357, 38.934856, 27.890921>,  <36.006062, 39.051006, 27.925640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753357, 38.934856, 27.890921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.624229, 38.559113, 27.844639>,  <36.546753, 38.333664, 27.816870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.624229, 38.559113, 27.844639>,  <36.753357, 38.934856, 27.890921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624229, 38.559113, 27.844639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678249, -0.144332, -0.720518,
		0.660128, -0.311072, 0.683714,
		-0.322815, -0.939363, -0.115706,
		36.527386, 38.277306, 27.809927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370590, 38.565311, 27.705837>,  <36.753357, 38.934856, 27.890921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370590, 38.565311, 27.705837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.063839, 38.330704, 27.601622>,  <36.879787, 38.189938, 27.539093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.063839, 38.330704, 27.601622>,  <37.370590, 38.565311, 27.705837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063839, 38.330704, 27.601622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412770, -0.139897, -0.900028,
		0.491439, -0.797758, 0.349384,
		-0.766883, -0.586524, -0.260540,
		36.833775, 38.154747, 27.523460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607143, 38.115395, 27.056772>,  <37.370590, 38.565311, 27.705837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607143, 38.115395, 27.056772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.227116, 38.001431, 27.005882>,  <36.999100, 37.933052, 26.975348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.227116, 38.001431, 27.005882>,  <37.607143, 38.115395, 27.056772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227116, 38.001431, 27.005882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134270, -0.005243, -0.990931,
		0.281662, -0.958539, 0.043237,
		-0.950073, -0.284913, -0.127226,
		36.942093, 37.915958, 26.967714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436302, 37.461472, 26.538425>,  <37.607143, 38.115395, 27.056772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436302, 37.461472, 26.538425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.107513, 37.689167, 26.531199>,  <36.910240, 37.825783, 26.526863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.107513, 37.689167, 26.531199>,  <37.436302, 37.461472, 26.538425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107513, 37.689167, 26.531199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003645, -0.036979, -0.999309,
		-0.569511, -0.821342, 0.032471,
		-0.821976, 0.569236, -0.018066,
		36.860920, 37.859940, 26.525778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977478, 37.056847, 26.128582>,  <37.436302, 37.461472, 26.538425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977478, 37.056847, 26.128582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.835014, 37.430477, 26.118338>,  <36.749535, 37.654655, 26.112190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.835014, 37.430477, 26.118338>,  <36.977478, 37.056847, 26.128582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835014, 37.430477, 26.118338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053708, -0.006900, -0.998533,
		-0.932881, -0.357011, -0.047710,
		-0.356158, 0.934075, -0.025611,
		36.728168, 37.710701, 26.110655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528465, 37.083031, 25.533327>,  <36.977478, 37.056847, 26.128582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528465, 37.083031, 25.533327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.608147, 37.469807, 25.597010>,  <36.655956, 37.701874, 25.635220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.608147, 37.469807, 25.597010>,  <36.528465, 37.083031, 25.533327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608147, 37.469807, 25.597010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220739, 0.114013, -0.968646,
		-0.954774, 0.228100, -0.190729,
		0.199203, 0.966939, 0.159207,
		36.667908, 37.759888, 25.644772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191746, 37.427200, 24.959023>,  <36.528465, 37.083031, 25.533327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191746, 37.427200, 24.959023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.477776, 37.657860, 25.117081>,  <36.649395, 37.796257, 25.211916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.477776, 37.657860, 25.117081>,  <36.191746, 37.427200, 24.959023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477776, 37.657860, 25.117081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358989, 0.182113, -0.915403,
		-0.599830, 0.796434, -0.076787,
		0.715074, 0.576652, 0.395148,
		36.692299, 37.830856, 25.235624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044552, 38.097851, 24.632574>,  <36.191746, 37.427200, 24.959023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044552, 38.097851, 24.632574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416256, 38.133591, 24.775955>,  <36.639278, 38.155033, 24.861984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416256, 38.133591, 24.775955>,  <36.044552, 38.097851, 24.632574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416256, 38.133591, 24.775955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305637, 0.359080, -0.881843,
		-0.207504, 0.929020, 0.306372,
		0.929262, 0.089348, 0.358453,
		36.695034, 38.160397, 24.883492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143291, 38.819981, 24.665625>,  <36.044552, 38.097851, 24.632574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143291, 38.819981, 24.665625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.507641, 38.655022, 24.659578>,  <36.726250, 38.556046, 24.655951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.507641, 38.655022, 24.659578>,  <36.143291, 38.819981, 24.665625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507641, 38.655022, 24.659578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256321, 0.594091, -0.762467,
		0.323420, 0.690640, 0.646851,
		0.910878, -0.412399, -0.015115,
		36.780903, 38.531303, 24.655045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619949, 39.342945, 24.540764>,  <36.143291, 38.819981, 24.665625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619949, 39.342945, 24.540764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.857960, 39.037567, 24.440287>,  <37.000767, 38.854340, 24.380001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.857960, 39.037567, 24.440287>,  <36.619949, 39.342945, 24.540764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857960, 39.037567, 24.440287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333681, 0.518995, -0.786956,
		0.731167, 0.384438, 0.563562,
		0.595022, -0.763447, -0.251193,
		37.036465, 38.808533, 24.364929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312672, 39.586327, 24.409712>,  <36.619949, 39.342945, 24.540764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312672, 39.586327, 24.409712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.287533, 39.241661, 24.208282>,  <37.272449, 39.034863, 24.087425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.287533, 39.241661, 24.208282>,  <37.312672, 39.586327, 24.409712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287533, 39.241661, 24.208282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475988, 0.417608, -0.773976,
		0.877203, -0.288340, 0.383894,
		-0.062851, -0.861663, -0.503573,
		37.268677, 38.983162, 24.057211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974522, 39.499451, 24.208580>,  <37.312672, 39.586327, 24.409712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974522, 39.499451, 24.208580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.765594, 39.267895, 23.958120>,  <37.640236, 39.128960, 23.807844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.765594, 39.267895, 23.958120>,  <37.974522, 39.499451, 24.208580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765594, 39.267895, 23.958120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607734, 0.262387, -0.749542,
		0.598197, -0.772034, 0.214762,
		-0.522321, -0.578892, -0.626150,
		37.608898, 39.094227, 23.770275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512482, 39.208088, 23.782221>,  <37.974522, 39.499451, 24.208580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512482, 39.208088, 23.782221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.162033, 39.167297, 23.593746>,  <37.951763, 39.142822, 23.480661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.162033, 39.167297, 23.593746>,  <38.512482, 39.208088, 23.782221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162033, 39.167297, 23.593746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351591, 0.533556, -0.769222,
		0.329849, -0.839594, -0.431603,
		-0.876118, -0.101979, -0.471187,
		37.899197, 39.136703, 23.452391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961082, 38.963818, 24.419565>,  <38.512482, 39.208088, 23.782221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961082, 38.963818, 24.419565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.260765, 39.228588, 24.428883>,  <39.440575, 39.387451, 24.434473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.260765, 39.228588, 24.428883>,  <38.961082, 38.963818, 24.419565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260765, 39.228588, 24.428883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309770, 0.319094, 0.895669,
		0.585438, -0.678253, 0.444112,
		0.749203, 0.661931, 0.023293,
		39.485527, 39.427166, 24.435871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316425, 38.859409, 24.994469>,  <38.961082, 38.963818, 24.419565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316425, 38.859409, 24.994469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.396667, 39.243336, 24.915968>,  <39.444813, 39.473690, 24.868868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.396667, 39.243336, 24.915968>,  <39.316425, 38.859409, 24.994469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396667, 39.243336, 24.915968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441745, 0.267426, 0.856356,
		0.874425, -0.085095, 0.477640,
		0.200605, 0.959814, -0.196254,
		39.456848, 39.531281, 24.857092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760838, 39.116276, 25.454966>,  <39.316425, 38.859409, 24.994469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760838, 39.116276, 25.454966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.592766, 39.444622, 25.300236>,  <39.491924, 39.641628, 25.207397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.592766, 39.444622, 25.300236>,  <39.760838, 39.116276, 25.454966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592766, 39.444622, 25.300236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061933, 0.399344, 0.914707,
		0.905325, 0.408297, -0.116957,
		-0.420178, 0.820864, -0.386824,
		39.466713, 39.690880, 25.184189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997005, 39.664082, 25.810158>,  <39.760838, 39.116276, 25.454966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997005, 39.664082, 25.810158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.680946, 39.835625, 25.635004>,  <39.491310, 39.938549, 25.529911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.680946, 39.835625, 25.635004>,  <39.997005, 39.664082, 25.810158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680946, 39.835625, 25.635004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176868, 0.524500, 0.832837,
		0.586838, 0.735515, -0.338583,
		-0.790151, 0.428856, -0.437886,
		39.443901, 39.964283, 25.503639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003372, 40.423252, 25.973494>,  <39.997005, 39.664082, 25.810158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003372, 40.423252, 25.973494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.632553, 40.295876, 25.894323>,  <39.410061, 40.219448, 25.846821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.632553, 40.295876, 25.894323>,  <40.003372, 40.423252, 25.973494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632553, 40.295876, 25.894323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280643, 0.239275, 0.929509,
		-0.248640, 0.917246, -0.311189,
		-0.927048, -0.318446, -0.197925,
		39.354439, 40.200340, 25.834946>
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
