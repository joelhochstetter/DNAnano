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
	<4.340655, 1.083968, 1.961800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.551125, 0.831895, 2.190189>,  <4.677406, 0.680651, 2.327223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.551125, 0.831895, 2.190189>,  <4.340655, 1.083968, 1.961800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.551125, 0.831895, 2.190189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538657, 0.272562, 0.797219,
		-0.658019, -0.727035, -0.196036,
		0.526174, -0.630182, 0.570974,
		4.708977, 0.642840, 2.361481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.897250, 0.710328, 2.368968>,  <4.340655, 1.083968, 1.961800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.897250, 0.710328, 2.368968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.241714, 0.720115, 2.572065>,  <4.448393, 0.725987, 2.693924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.241714, 0.720115, 2.572065>,  <3.897250, 0.710328, 2.368968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.241714, 0.720115, 2.572065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488245, 0.317819, 0.812778,
		-0.141485, -0.947836, 0.285639,
		0.861161, 0.024466, 0.507743,
		4.500063, 0.727454, 2.724388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.761636, 0.953126, 3.000549>,  <3.897250, 0.710328, 2.368968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.761636, 0.953126, 3.000549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.148834, 0.924067, 3.096638>,  <4.381153, 0.906631, 3.154291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.148834, 0.924067, 3.096638>,  <3.761636, 0.953126, 3.000549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.148834, 0.924067, 3.096638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200069, 0.354489, 0.913406,
		-0.151514, -0.932234, 0.328609,
		0.967996, -0.072650, 0.240221,
		4.439233, 0.902272, 3.168704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.768274, 0.634064, 3.625861>,  <3.761636, 0.953126, 3.000549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.768274, 0.634064, 3.625861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.079239, 0.879038, 3.568514>,  <4.265818, 1.026022, 3.534106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.079239, 0.879038, 3.568514>,  <3.768274, 0.634064, 3.625861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.079239, 0.879038, 3.568514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223977, 0.482533, 0.846756,
		0.587763, -0.626167, 0.512299,
		0.777412, 0.612434, -0.143368,
		4.312463, 1.062768, 3.525503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.975827, 0.756382, 4.255664>,  <3.768274, 0.634064, 3.625861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.975827, 0.756382, 4.255664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.175323, 1.040187, 4.056526>,  <4.295022, 1.210470, 3.937043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.175323, 1.040187, 4.056526>,  <3.975827, 0.756382, 4.255664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.175323, 1.040187, 4.056526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017117, 0.582331, 0.812772,
		0.866582, -0.396841, 0.302577,
		0.498741, 0.709512, -0.497845,
		4.324946, 1.253041, 3.907173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.587206, 0.880561, 4.645956>,  <3.975827, 0.756382, 4.255664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.587206, 0.880561, 4.645956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.507729, 1.209815, 4.433176>,  <4.460042, 1.407367, 4.305508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.507729, 1.209815, 4.433176>,  <4.587206, 0.880561, 4.645956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.507729, 1.209815, 4.433176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149414, 0.561868, 0.813621,
		0.968605, 0.082181, -0.234628,
		-0.198694, 0.823134, -0.531950,
		4.448120, 1.456755, 4.273591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.025794, 1.414516, 4.787714>,  <4.587206, 0.880561, 4.645956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.025794, 1.414516, 4.787714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.712524, 1.602564, 4.624926>,  <4.524563, 1.715393, 4.527253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.712524, 1.602564, 4.624926>,  <5.025794, 1.414516, 4.787714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.712524, 1.602564, 4.624926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001992, 0.652601, 0.757699,
		0.621799, 0.594221, -0.510164,
		-0.783174, 0.470121, -0.406971,
		4.477572, 1.743600, 4.502834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.136688, 2.267108, 4.710990>,  <5.025794, 1.414516, 4.787714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.136688, 2.267108, 4.710990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.752571, 2.159217, 4.739515>,  <4.522101, 2.094483, 4.756630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.752571, 2.159217, 4.739515>,  <5.136688, 2.267108, 4.710990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.752571, 2.159217, 4.739515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150158, 0.715097, 0.682706,
		-0.235139, 0.644890, -0.727205,
		-0.960293, -0.269726, 0.071312,
		4.464483, 2.078300, 4.760909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.301947, 1.670158, 5.925055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.979218, 1.902016, 5.879362>,  <3.785580, 2.041130, 5.851946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.979218, 1.902016, 5.879362>,  <4.301947, 1.670158, 5.925055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.979218, 1.902016, 5.879362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011729, -0.209033, -0.977838,
		-0.590677, -0.787602, 0.175451,
		-0.806823, 0.579645, -0.114233,
		3.737171, 2.075909, 5.845092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.741938, 1.354934, 5.606843>,  <4.301947, 1.670158, 5.925055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.741938, 1.354934, 5.606843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.730789, 1.749243, 5.540539>,  <3.724100, 1.985828, 5.500756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.730789, 1.749243, 5.540539>,  <3.741938, 1.354934, 5.606843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.730789, 1.749243, 5.540539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083914, -0.162932, -0.983062,
		-0.996083, -0.041309, -0.078179,
		-0.027871, 0.985772, -0.165760,
		3.722428, 2.044974, 5.490811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.213069, 1.593495, 5.088372>,  <3.741938, 1.354934, 5.606843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.213069, 1.593495, 5.088372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.530006, 1.837475, 5.083364>,  <3.720169, 1.983862, 5.080360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.530006, 1.837475, 5.083364>,  <3.213069, 1.593495, 5.088372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.530006, 1.837475, 5.083364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167922, -0.237772, -0.956696,
		-0.586512, 0.755928, -0.290821,
		0.792342, 0.609948, -0.012519,
		3.767709, 2.020459, 5.079609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.183223, 2.079904, 4.475292>,  <3.213069, 1.593495, 5.088372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.183223, 2.079904, 4.475292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.562683, 2.090740, 4.601358>,  <3.790359, 2.097242, 4.676998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.562683, 2.090740, 4.601358>,  <3.183223, 2.079904, 4.475292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.562683, 2.090740, 4.601358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316253, -0.102978, -0.943069,
		0.006907, 0.994315, -0.106258,
		0.948650, 0.027090, 0.315166,
		3.847278, 2.098867, 4.695908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.514359, 2.443601, 4.003408>,  <3.183223, 2.079904, 4.475292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.514359, 2.443601, 4.003408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.836639, 2.253304, 4.144554>,  <4.030007, 2.139125, 4.229242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.836639, 2.253304, 4.144554>,  <3.514359, 2.443601, 4.003408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.836639, 2.253304, 4.144554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188077, -0.359424, -0.914025,
		0.561670, 0.802796, -0.200112,
		0.805701, -0.475744, 0.352866,
		4.078350, 2.110580, 4.250414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.057655, 2.521115, 3.540049>,  <3.514359, 2.443601, 4.003408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.057655, 2.521115, 3.540049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.144272, 2.190735, 3.748247>,  <4.196242, 1.992507, 3.873166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.144272, 2.190735, 3.748247>,  <4.057655, 2.521115, 3.540049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.144272, 2.190735, 3.748247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256863, -0.466161, -0.846591,
		0.941876, 0.317019, 0.111212,
		0.216542, -0.825950, 0.520496,
		4.209234, 1.942950, 3.904396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.646748, 2.349194, 3.252511>,  <4.057655, 2.521115, 3.540049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.646748, 2.349194, 3.252511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.530678, 2.019444, 3.446915>,  <4.461036, 1.821594, 3.563557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.530678, 2.019444, 3.446915>,  <4.646748, 2.349194, 3.252511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.530678, 2.019444, 3.446915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242505, -0.554627, -0.795977,
		0.925737, -0.113114, 0.360855,
		-0.290176, -0.824375, 0.486008,
		4.443625, 1.772131, 3.592717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.108435, 1.877209, 3.064824>,  <4.646748, 2.349194, 3.252511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.108435, 1.877209, 3.064824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.807228, 1.656176, 3.207718>,  <4.626504, 1.523556, 3.293454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.807228, 1.656176, 3.207718>,  <5.108435, 1.877209, 3.064824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.807228, 1.656176, 3.207718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233080, -0.731711, -0.640525,
		0.615336, -0.399062, 0.679787,
		-0.753017, -0.552583, 0.357235,
		4.581323, 1.490401, 3.314888>
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
