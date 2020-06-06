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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<43.124382, 32.745045, 23.341444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.244576, 32.419910, 23.141842>,  <43.316692, 32.224831, 23.022081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.244576, 32.419910, 23.141842>,  <43.124382, 32.745045, 23.341444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244576, 32.419910, 23.141842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784459, -0.508208, 0.355455,
		-0.542526, 0.284643, -0.790344,
		0.300481, -0.812836, -0.499007,
		43.334721, 32.176060, 22.992140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510582, 32.420506, 23.466829>,  <43.124382, 32.745045, 23.341444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510582, 32.420506, 23.466829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750160, 32.155239, 23.287281>,  <42.893906, 31.996080, 23.179552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750160, 32.155239, 23.287281>,  <42.510582, 32.420506, 23.466829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750160, 32.155239, 23.287281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680638, -0.716899, 0.150957,
		-0.421903, 0.215102, -0.880755,
		0.598941, -0.663164, -0.448868,
		42.929844, 31.956289, 23.152620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250751, 31.991385, 22.912773>,  <42.510582, 32.420506, 23.466829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250751, 31.991385, 22.912773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520763, 31.765518, 23.102715>,  <42.682770, 31.629999, 23.216679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520763, 31.765518, 23.102715>,  <42.250751, 31.991385, 22.912773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520763, 31.765518, 23.102715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681867, -0.723272, 0.109249,
		0.281760, -0.397533, -0.873258,
		0.675033, -0.564664, 0.474854,
		42.723274, 31.596119, 23.245171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486435, 31.739536, 23.146935>,  <42.250751, 31.991385, 22.912773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486435, 31.739536, 23.146935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222908, 32.006931, 23.284969>,  <41.064793, 32.167370, 23.367790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222908, 32.006931, 23.284969>,  <41.486435, 31.739536, 23.146935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222908, 32.006931, 23.284969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589247, -0.173353, -0.789137,
		-0.467708, -0.723236, 0.508113,
		-0.658815, 0.668490, 0.345086,
		41.025265, 32.207478, 23.388494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704788, 32.362366, 23.426018>,  <41.486435, 31.739536, 23.146935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704788, 32.362366, 23.426018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339405, 32.505871, 23.502842>,  <41.120174, 32.591976, 23.548937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339405, 32.505871, 23.502842>,  <41.704788, 32.362366, 23.426018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339405, 32.505871, 23.502842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156777, -0.745786, 0.647475,
		0.375529, 0.561328, 0.737488,
		-0.913454, 0.358767, 0.192062,
		41.065369, 32.613503, 23.560461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567760, 32.461647, 24.174101>,  <41.704788, 32.362366, 23.426018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567760, 32.461647, 24.174101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207848, 32.429493, 24.002552>,  <40.991901, 32.410202, 23.899624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207848, 32.429493, 24.002552>,  <41.567760, 32.461647, 24.174101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207848, 32.429493, 24.002552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331263, -0.513885, 0.791320,
		-0.284000, 0.854085, 0.435756,
		-0.899783, -0.080385, -0.428870,
		40.937912, 32.405376, 23.873892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989044, 32.608536, 24.642097>,  <41.567760, 32.461647, 24.174101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989044, 32.608536, 24.642097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832973, 32.364014, 24.366688>,  <40.739330, 32.217300, 24.201443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832973, 32.364014, 24.366688>,  <40.989044, 32.608536, 24.642097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832973, 32.364014, 24.366688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415460, -0.550447, 0.724155,
		-0.821677, 0.568603, -0.039201,
		-0.390179, -0.611308, -0.688522,
		40.715919, 32.180622, 24.160131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380013, 32.470287, 24.882887>,  <40.989044, 32.608536, 24.642097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380013, 32.470287, 24.882887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403393, 32.192150, 24.596367>,  <40.417419, 32.025269, 24.424454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403393, 32.192150, 24.596367>,  <40.380013, 32.470287, 24.882887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403393, 32.192150, 24.596367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345379, -0.687302, 0.639007,
		-0.936641, 0.210047, -0.280327,
		0.058447, -0.695339, -0.716301,
		40.420925, 31.983549, 24.381477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691456, 32.150146, 24.800915>,  <40.380013, 32.470287, 24.882887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691456, 32.150146, 24.800915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944004, 31.874081, 24.659470>,  <40.095535, 31.708441, 24.574602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944004, 31.874081, 24.659470>,  <39.691456, 32.150146, 24.800915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944004, 31.874081, 24.659470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263508, -0.619798, 0.739198,
		-0.729334, -0.373532, -0.573189,
		0.631375, -0.690162, -0.353611,
		40.133415, 31.667032, 24.553387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387737, 31.537378, 24.960108>,  <39.691456, 32.150146, 24.800915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387737, 31.537378, 24.960108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763172, 31.409142, 24.909084>,  <39.988434, 31.332199, 24.878469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763172, 31.409142, 24.909084>,  <39.387737, 31.537378, 24.960108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763172, 31.409142, 24.909084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095833, -0.597372, 0.796218,
		-0.331462, -0.735097, -0.591410,
		0.938589, -0.320593, -0.127560,
		40.044750, 31.312963, 24.870817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383488, 30.839655, 25.040966>,  <39.387737, 31.537378, 24.960108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383488, 30.839655, 25.040966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761253, 30.945015, 25.119656>,  <39.987915, 31.008230, 25.166868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761253, 30.945015, 25.119656>,  <39.383488, 30.839655, 25.040966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761253, 30.945015, 25.119656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003290, -0.590788, 0.806820,
		0.328736, -0.762621, -0.557084,
		0.944416, 0.263398, 0.196722,
		40.044579, 31.024035, 25.178673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704418, 30.215446, 25.247919>,  <39.383488, 30.839655, 25.040966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704418, 30.215446, 25.247919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917412, 30.528877, 25.375965>,  <40.045208, 30.716936, 25.452793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917412, 30.528877, 25.375965>,  <39.704418, 30.215446, 25.247919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917412, 30.528877, 25.375965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035661, -0.398622, 0.916422,
		0.845691, -0.476560, -0.240201,
		0.532480, 0.783576, 0.320117,
		40.077156, 30.763950, 25.472000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272884, 29.901041, 25.548836>,  <39.704418, 30.215446, 25.247919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272884, 29.901041, 25.548836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254955, 30.273273, 25.694168>,  <40.244198, 30.496613, 25.781368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254955, 30.273273, 25.694168>,  <40.272884, 29.901041, 25.548836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254955, 30.273273, 25.694168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053541, -0.360937, 0.931052,
		0.997559, 0.061181, -0.033648,
		-0.044819, 0.930581, 0.363332,
		40.241508, 30.552448, 25.803167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741108, 29.895351, 26.127619>,  <40.272884, 29.901041, 25.548836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741108, 29.895351, 26.127619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549427, 30.236248, 26.211567>,  <40.434418, 30.440786, 26.261936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549427, 30.236248, 26.211567>,  <40.741108, 29.895351, 26.127619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549427, 30.236248, 26.211567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105474, -0.181466, 0.977725,
		0.871342, 0.490667, -0.002930,
		-0.479205, 0.852242, 0.209872,
		40.405666, 30.491920, 26.274529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122414, 30.373362, 26.522839>,  <40.741108, 29.895351, 26.127619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122414, 30.373362, 26.522839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741184, 30.464684, 26.602367>,  <40.512447, 30.519478, 26.650084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741184, 30.464684, 26.602367>,  <41.122414, 30.373362, 26.522839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741184, 30.464684, 26.602367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143341, -0.238151, 0.960592,
		0.266659, 0.944013, 0.194249,
		-0.953072, 0.228306, 0.198821,
		40.455261, 30.533175, 26.662014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194275, 30.714884, 27.090420>,  <41.122414, 30.373362, 26.522839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194275, 30.714884, 27.090420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808449, 30.610081, 27.077984>,  <40.576954, 30.547199, 27.070522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808449, 30.610081, 27.077984>,  <41.194275, 30.714884, 27.090420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808449, 30.610081, 27.077984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002716, -0.127692, 0.991810,
		-0.263831, 0.956581, 0.123879,
		-0.964565, -0.262006, -0.031091,
		40.519081, 30.531479, 27.068657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863266, 31.114777, 27.520601>,  <41.194275, 30.714884, 27.090420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863266, 31.114777, 27.520601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620895, 30.797352, 27.498306>,  <40.475471, 30.606895, 27.484930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620895, 30.797352, 27.498306>,  <40.863266, 31.114777, 27.520601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620895, 30.797352, 27.498306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091270, -0.000255, 0.995826,
		-0.790266, 0.608486, -0.072274,
		-0.605928, -0.793564, -0.055738,
		40.439117, 30.559282, 27.481585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188465, 31.334492, 27.860689>,  <40.863266, 31.114777, 27.520601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188465, 31.334492, 27.860689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220737, 30.935810, 27.857372>,  <40.240101, 30.696600, 27.855381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220737, 30.935810, 27.857372>,  <40.188465, 31.334492, 27.860689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220737, 30.935810, 27.857372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059237, -0.003511, 0.998238,
		-0.994978, -0.081031, 0.058759,
		0.080682, -0.996706, -0.008293,
		40.244942, 30.636799, 27.854885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737411, 31.129702, 28.299900>,  <40.188465, 31.334492, 27.860689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737411, 31.129702, 28.299900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978271, 30.811352, 28.274601>,  <40.122787, 30.620342, 28.259422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978271, 30.811352, 28.274601>,  <39.737411, 31.129702, 28.299900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978271, 30.811352, 28.274601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014228, -0.068507, 0.997549,
		-0.798257, -0.601573, -0.029928,
		0.602149, -0.795875, -0.063246,
		40.158916, 30.572590, 28.255627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479542, 30.621441, 28.831070>,  <39.737411, 31.129702, 28.299900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479542, 30.621441, 28.831070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842354, 30.476395, 28.745468>,  <40.060043, 30.389366, 28.694107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842354, 30.476395, 28.745468>,  <39.479542, 30.621441, 28.831070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842354, 30.476395, 28.745468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132511, -0.236591, 0.962531,
		-0.399663, -0.901406, -0.166546,
		0.907034, -0.362619, -0.214003,
		40.114464, 30.367609, 28.681267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531315, 30.080923, 29.241488>,  <39.479542, 30.621441, 28.831070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531315, 30.080923, 29.241488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907837, 30.186752, 29.157639>,  <40.133751, 30.250250, 29.107330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907837, 30.186752, 29.157639>,  <39.531315, 30.080923, 29.241488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907837, 30.186752, 29.157639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246676, -0.115271, 0.962218,
		0.230416, -0.957451, -0.173770,
		0.941307, 0.264575, -0.209620,
		40.190228, 30.266125, 29.094753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884071, 29.634668, 29.482824>,  <39.531315, 30.080923, 29.241488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884071, 29.634668, 29.482824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146034, 29.936710, 29.470707>,  <40.303211, 30.117935, 29.463436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146034, 29.936710, 29.470707>,  <39.884071, 29.634668, 29.482824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146034, 29.936710, 29.470707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133151, -0.075836, 0.988190,
		0.743888, -0.651205, -0.150208,
		0.654905, 0.755103, -0.030296,
		40.342506, 30.163240, 29.461618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391418, 29.474522, 30.017525>,  <39.884071, 29.634668, 29.482824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391418, 29.474522, 30.017525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435349, 29.867203, 29.955307>,  <40.461708, 30.102812, 29.917976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435349, 29.867203, 29.955307>,  <40.391418, 29.474522, 30.017525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435349, 29.867203, 29.955307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169168, 0.135748, 0.976194,
		0.979449, -0.133526, -0.151164,
		0.109828, 0.981704, -0.155547,
		40.468296, 30.161715, 29.908644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867794, 29.730574, 30.502270>,  <40.391418, 29.474522, 30.017525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867794, 29.730574, 30.502270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696960, 30.066853, 30.369106>,  <40.594460, 30.268620, 30.289209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696960, 30.066853, 30.369106>,  <40.867794, 29.730574, 30.502270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696960, 30.066853, 30.369106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074615, 0.334150, 0.939562,
		0.901127, 0.426113, -0.079982,
		-0.427086, 0.840697, -0.332907,
		40.568836, 30.319061, 30.269234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248161, 30.385696, 30.802233>,  <40.867794, 29.730574, 30.502270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248161, 30.385696, 30.802233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877995, 30.504776, 30.708439>,  <40.655895, 30.576223, 30.652163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877995, 30.504776, 30.708439>,  <41.248161, 30.385696, 30.802233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877995, 30.504776, 30.708439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092617, 0.422325, 0.901700,
		0.367464, 0.856164, -0.363254,
		-0.925415, 0.297699, -0.234485,
		40.600368, 30.594086, 30.638094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192818, 30.955473, 31.169651>,  <41.248161, 30.385696, 30.802233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192818, 30.955473, 31.169651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802002, 30.907330, 31.099319>,  <40.567513, 30.878443, 31.057119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802002, 30.907330, 31.099319>,  <41.192818, 30.955473, 31.169651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802002, 30.907330, 31.099319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205837, 0.319802, 0.924856,
		-0.055083, 0.939809, -0.337231,
		-0.977035, -0.120359, -0.175831,
		40.508892, 30.871222, 31.046570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802780, 31.575409, 31.412380>,  <41.192818, 30.955473, 31.169651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802780, 31.575409, 31.412380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551258, 31.264786, 31.428185>,  <40.400345, 31.078413, 31.437668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551258, 31.264786, 31.428185>,  <40.802780, 31.575409, 31.412380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551258, 31.264786, 31.428185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244726, 0.245886, 0.937896,
		-0.738045, 0.580087, -0.344659,
		-0.628808, -0.776556, 0.039513,
		40.362617, 31.031818, 31.440039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035305, 31.876442, 31.605951>,  <40.802780, 31.575409, 31.412380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035305, 31.876442, 31.605951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162476, 31.511070, 31.707592>,  <40.238777, 31.291847, 31.768578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162476, 31.511070, 31.707592>,  <40.035305, 31.876442, 31.605951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162476, 31.511070, 31.707592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037889, 0.255554, 0.966052,
		-0.947359, -0.316757, 0.046637,
		0.317923, -0.913431, 0.254103,
		40.257851, 31.237041, 31.783823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578011, 31.529114, 32.094353>,  <40.035305, 31.876442, 31.605951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578011, 31.529114, 32.094353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926441, 31.341061, 32.151196>,  <40.135502, 31.228228, 32.185303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926441, 31.341061, 32.151196>,  <39.578011, 31.529114, 32.094353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926441, 31.341061, 32.151196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116618, 0.083085, 0.989695,
		-0.477098, -0.878675, 0.017547,
		0.871079, -0.470135, 0.142109,
		40.187763, 31.200020, 32.193829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424370, 31.242245, 32.725170>,  <39.578011, 31.529114, 32.094353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424370, 31.242245, 32.725170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817307, 31.296589, 32.673721>,  <40.053070, 31.329195, 32.642853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817307, 31.296589, 32.673721>,  <39.424370, 31.242245, 32.725170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817307, 31.296589, 32.673721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078799, 0.323072, 0.943088,
		0.169679, -0.936572, 0.306662,
		0.982344, 0.135858, -0.128619,
		40.112011, 31.337347, 32.635136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986637, 31.802992, 32.403473>,  <39.424370, 31.242245, 32.725170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986637, 31.802992, 32.403473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805450, 31.554111, 32.148071>,  <38.696739, 31.404783, 31.994829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805450, 31.554111, 32.148071>,  <38.986637, 31.802992, 32.403473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805450, 31.554111, 32.148071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854853, 0.099816, 0.509178,
		-0.253077, 0.776470, -0.577102,
		-0.452965, -0.622199, -0.638507,
		38.669559, 31.367453, 31.956520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333672, 32.083447, 32.333637>,  <38.986637, 31.802992, 32.403473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333672, 32.083447, 32.333637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284374, 31.716110, 32.183189>,  <38.254795, 31.495708, 32.092922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284374, 31.716110, 32.183189>,  <38.333672, 32.083447, 32.333637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284374, 31.716110, 32.183189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951805, 0.002127, 0.306698,
		-0.280853, 0.395788, -0.874342,
		-0.123247, -0.918340, -0.376115,
		38.247398, 31.440609, 32.070354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864479, 32.186504, 31.864592>,  <38.333672, 32.083447, 32.333637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864479, 32.186504, 31.864592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878391, 31.792580, 31.932625>,  <37.886738, 31.556225, 31.973444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878391, 31.792580, 31.932625>,  <37.864479, 32.186504, 31.864592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878391, 31.792580, 31.932625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999395, -0.034308, 0.005731,
		0.000191, -0.170180, -0.985413,
		0.034783, -0.984815, 0.170083,
		37.888824, 31.497135, 31.983650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517616, 32.917881, 31.979120>,  <37.864479, 32.186504, 31.864592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517616, 32.917881, 31.979120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369926, 33.289589, 31.983654>,  <37.281311, 33.512615, 31.986374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369926, 33.289589, 31.983654>,  <37.517616, 32.917881, 31.979120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369926, 33.289589, 31.983654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226886, -0.078311, -0.970768,
		-0.901218, -0.361005, 0.239753,
		-0.369227, 0.929270, 0.011332,
		37.259159, 33.568371, 31.987053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005192, 32.854061, 31.527332>,  <37.517616, 32.917881, 31.979120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005192, 32.854061, 31.527332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097759, 33.241264, 31.566124>,  <37.153297, 33.473587, 31.589399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097759, 33.241264, 31.566124>,  <37.005192, 32.854061, 31.527332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097759, 33.241264, 31.566124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156645, 0.135461, -0.978321,
		-0.960161, 0.211208, 0.182982,
		0.231416, 0.968009, 0.096980,
		37.167183, 33.531666, 31.595219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441143, 33.334446, 31.200338>,  <37.005192, 32.854061, 31.527332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441143, 33.334446, 31.200338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820812, 33.457497, 31.173698>,  <37.048615, 33.531326, 31.157715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820812, 33.457497, 31.173698>,  <36.441143, 33.334446, 31.200338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820812, 33.457497, 31.173698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064126, -0.018152, -0.997777,
		-0.308151, 0.951334, 0.002498,
		0.949174, 0.307626, -0.066599,
		37.105564, 33.549786, 31.153719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470177, 33.875854, 30.664492>,  <36.441143, 33.334446, 31.200338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470177, 33.875854, 30.664492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819328, 33.689125, 30.721287>,  <37.028820, 33.577087, 30.755363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819328, 33.689125, 30.721287>,  <36.470177, 33.875854, 30.664492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819328, 33.689125, 30.721287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180909, 0.039372, -0.982711,
		0.453166, 0.883472, 0.118820,
		0.872876, -0.466827, 0.141986,
		37.081192, 33.549076, 30.763884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997093, 34.281433, 30.341028>,  <36.470177, 33.875854, 30.664492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997093, 34.281433, 30.341028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138580, 33.908409, 30.369911>,  <37.223473, 33.684593, 30.387241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138580, 33.908409, 30.369911>,  <36.997093, 34.281433, 30.341028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138580, 33.908409, 30.369911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125833, -0.029050, -0.991626,
		0.926848, 0.359846, 0.107071,
		0.353722, -0.932560, 0.072206,
		37.244698, 33.628643, 30.391573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522617, 34.317924, 29.972080>,  <36.997093, 34.281433, 30.341028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522617, 34.317924, 29.972080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423519, 33.931133, 29.995983>,  <37.364059, 33.699059, 30.010324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423519, 33.931133, 29.995983>,  <37.522617, 34.317924, 29.972080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423519, 33.931133, 29.995983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049588, -0.048944, -0.997570,
		0.967556, -0.250105, -0.035825,
		-0.247743, -0.966981, 0.059758,
		37.349197, 33.641041, 30.013910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927109, 33.999592, 29.482880>,  <37.522617, 34.317924, 29.972080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927109, 33.999592, 29.482880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659386, 33.708862, 29.544537>,  <37.498753, 33.534424, 29.581532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659386, 33.708862, 29.544537>,  <37.927109, 33.999592, 29.482880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659386, 33.708862, 29.544537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053694, -0.254239, -0.965650,
		0.741047, -0.638036, 0.209188,
		-0.669303, -0.726824, 0.154144,
		37.458595, 33.490814, 29.590780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245880, 33.500118, 29.130886>,  <37.927109, 33.999592, 29.482880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245880, 33.500118, 29.130886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860867, 33.404903, 29.182835>,  <37.629860, 33.347775, 29.214005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860867, 33.404903, 29.182835>,  <38.245880, 33.500118, 29.130886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860867, 33.404903, 29.182835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064219, -0.265206, -0.962051,
		0.263447, -0.934347, 0.239983,
		-0.962533, -0.238038, 0.129871,
		37.572105, 33.333492, 29.221796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088837, 32.806259, 28.760418>,  <38.245880, 33.500118, 29.130886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088837, 32.806259, 28.760418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729797, 32.980068, 28.790096>,  <37.514374, 33.084354, 28.807903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729797, 32.980068, 28.790096>,  <38.088837, 32.806259, 28.760418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729797, 32.980068, 28.790096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188784, -0.226826, -0.955464,
		-0.398344, -0.871629, 0.285630,
		-0.897599, 0.434525, 0.074195,
		37.460518, 33.110424, 28.812355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663033, 32.354042, 28.462971>,  <38.088837, 32.806259, 28.760418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663033, 32.354042, 28.462971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478481, 32.708652, 28.449139>,  <37.367748, 32.921421, 28.440840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478481, 32.708652, 28.449139>,  <37.663033, 32.354042, 28.462971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478481, 32.708652, 28.449139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195941, -0.139834, -0.970595,
		-0.865295, -0.441038, 0.238224,
		-0.461380, 0.886528, -0.034580,
		37.340069, 32.974609, 28.438765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194908, 32.298355, 28.010231>,  <37.663033, 32.354042, 28.462971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194908, 32.298355, 28.010231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228626, 32.696213, 28.034142>,  <37.248859, 32.934929, 28.048489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228626, 32.696213, 28.034142>,  <37.194908, 32.298355, 28.010231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228626, 32.696213, 28.034142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062728, 0.065170, -0.995900,
		-0.994464, 0.080204, 0.067886,
		0.084299, 0.994646, 0.059778,
		37.253918, 32.994606, 28.052074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558933, 32.527473, 27.660280>,  <37.194908, 32.298355, 28.010231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558933, 32.527473, 27.660280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828907, 32.822220, 27.644791>,  <36.990891, 32.999069, 27.635496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828907, 32.822220, 27.644791>,  <36.558933, 32.527473, 27.660280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828907, 32.822220, 27.644791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038654, -0.017102, -0.999106,
		-0.736869, 0.675823, 0.016940,
		0.674930, 0.736865, -0.038725,
		37.031387, 33.043278, 27.633173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375134, 32.901951, 27.057423>,  <36.558933, 32.527473, 27.660280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375134, 32.901951, 27.057423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747883, 33.032135, 27.121525>,  <36.971535, 33.110245, 27.159986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747883, 33.032135, 27.121525>,  <36.375134, 32.901951, 27.057423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747883, 33.032135, 27.121525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120843, 0.138037, -0.983027,
		-0.342060, 0.935425, 0.089304,
		0.931876, 0.325462, 0.160257,
		37.027447, 33.129772, 27.169601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485775, 33.523991, 26.722954>,  <36.375134, 32.901951, 27.057423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485775, 33.523991, 26.722954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848518, 33.359581, 26.760204>,  <37.066162, 33.260937, 26.782555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848518, 33.359581, 26.760204>,  <36.485775, 33.523991, 26.722954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848518, 33.359581, 26.760204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123816, 0.048621, -0.991113,
		0.402844, 0.910327, 0.094984,
		0.906855, -0.411025, 0.093126,
		37.120575, 33.236275, 26.788141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855625, 33.862888, 26.122925>,  <36.485775, 33.523991, 26.722954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855625, 33.862888, 26.122925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084667, 33.553001, 26.230213>,  <37.222092, 33.367069, 26.294586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084667, 33.553001, 26.230213>,  <36.855625, 33.862888, 26.122925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084667, 33.553001, 26.230213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248597, -0.147690, -0.957281,
		0.781235, 0.614819, 0.108024,
		0.572601, -0.774716, 0.268223,
		37.256447, 33.320587, 26.310680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518917, 34.025211, 25.867874>,  <36.855625, 33.862888, 26.122925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518917, 34.025211, 25.867874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479046, 33.627514, 25.883625>,  <37.455124, 33.388897, 25.893076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479046, 33.627514, 25.883625>,  <37.518917, 34.025211, 25.867874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479046, 33.627514, 25.883625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408476, -0.076973, -0.909518,
		0.907310, -0.074577, 0.413796,
		-0.099680, -0.994240, 0.039376,
		37.449142, 33.329243, 25.895437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114590, 33.879578, 25.747398>,  <37.518917, 34.025211, 25.867874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114590, 33.879578, 25.747398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913013, 33.543594, 25.666893>,  <37.792068, 33.342003, 25.618589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913013, 33.543594, 25.666893>,  <38.114590, 33.879578, 25.747398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913013, 33.543594, 25.666893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409233, -0.026992, -0.912031,
		0.760639, -0.541974, 0.357342,
		-0.503942, -0.839962, -0.201263,
		37.761829, 33.291607, 25.606514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598717, 33.445087, 25.429602>,  <38.114590, 33.879578, 25.747398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598717, 33.445087, 25.429602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244972, 33.298409, 25.314060>,  <38.032726, 33.210400, 25.244736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244972, 33.298409, 25.314060>,  <38.598717, 33.445087, 25.429602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244972, 33.298409, 25.314060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382929, -0.216006, -0.898169,
		0.266961, -0.904917, 0.331446,
		-0.884363, -0.366696, -0.288854,
		37.979664, 33.188400, 25.227404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812489, 32.813774, 25.151979>,  <38.598717, 33.445087, 25.429602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812489, 32.813774, 25.151979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445992, 32.891880, 25.012047>,  <38.226093, 32.938744, 24.928087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445992, 32.891880, 25.012047>,  <38.812489, 32.813774, 25.151979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445992, 32.891880, 25.012047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302306, -0.236045, -0.923523,
		-0.262908, -0.951921, 0.157243,
		-0.916237, 0.195266, -0.349829,
		38.171120, 32.950459, 24.907099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761425, 32.349583, 24.549179>,  <38.812489, 32.813774, 25.151979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761425, 32.349583, 24.549179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466202, 32.611477, 24.483952>,  <38.289066, 32.768612, 24.444815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466202, 32.611477, 24.483952>,  <38.761425, 32.349583, 24.549179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466202, 32.611477, 24.483952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134216, -0.094390, -0.986446,
		-0.661250, -0.749945, -0.018209,
		-0.738061, 0.654731, -0.163070,
		38.244781, 32.807896, 24.435030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409885, 32.037029, 24.088165>,  <38.761425, 32.349583, 24.549179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409885, 32.037029, 24.088165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330952, 32.427898, 24.056709>,  <38.283592, 32.662422, 24.037836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330952, 32.427898, 24.056709>,  <38.409885, 32.037029, 24.088165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330952, 32.427898, 24.056709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096933, -0.060375, -0.993458,
		-0.975532, -0.203666, -0.082807,
		-0.197334, 0.977177, -0.078640,
		38.271751, 32.721050, 24.033117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897213, 31.990118, 23.703444>,  <38.409885, 32.037029, 24.088165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897213, 31.990118, 23.703444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059101, 32.352337, 23.652546>,  <38.156235, 32.569668, 23.622007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059101, 32.352337, 23.652546>,  <37.897213, 31.990118, 23.703444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059101, 32.352337, 23.652546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068250, -0.168671, -0.983307,
		-0.911891, 0.389277, -0.130068,
		0.404718, 0.905546, -0.127242,
		38.180515, 32.624001, 23.614374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653667, 32.331257, 23.129942>,  <37.897213, 31.990118, 23.703444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653667, 32.331257, 23.129942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008263, 32.512581, 23.167133>,  <38.221020, 32.621376, 23.189447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008263, 32.512581, 23.167133>,  <37.653667, 32.331257, 23.129942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008263, 32.512581, 23.167133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175404, -0.143240, -0.974021,
		-0.428215, 0.879768, -0.206493,
		0.886491, 0.453310, 0.092977,
		38.274208, 32.648575, 23.195026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731033, 32.619919, 22.521822>,  <37.653667, 32.331257, 23.129942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731033, 32.619919, 22.521822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098721, 32.659382, 22.674301>,  <38.319332, 32.683060, 22.765789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098721, 32.659382, 22.674301>,  <37.731033, 32.619919, 22.521822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098721, 32.659382, 22.674301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382832, -0.450376, -0.806598,
		0.092104, 0.887371, -0.451762,
		0.919215, 0.098658, 0.381196,
		38.374485, 32.688980, 22.788660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057785, 32.946896, 22.091152>,  <37.731033, 32.619919, 22.521822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057785, 32.946896, 22.091152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330299, 32.714169, 22.268841>,  <38.493809, 32.574532, 22.375454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330299, 32.714169, 22.268841>,  <38.057785, 32.946896, 22.091152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330299, 32.714169, 22.268841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352140, -0.271526, -0.895696,
		0.641750, 0.766656, 0.019894,
		0.681289, -0.581818, 0.444222,
		38.534687, 32.539623, 22.402107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266376, 33.114838, 22.121695>,  <38.057785, 32.946896, 22.091152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266376, 33.114838, 22.121695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210602, 32.841572, 22.408424>,  <37.177135, 32.677612, 22.580462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210602, 32.841572, 22.408424>,  <37.266376, 33.114838, 22.121695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210602, 32.841572, 22.408424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138688, -0.703288, -0.697246,
		0.980471, -0.196637, 0.003317,
		-0.139437, -0.683169, 0.716824,
		37.168770, 32.636620, 22.623472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465149, 33.824055, 21.861525>,  <37.266376, 33.114838, 22.121695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465149, 33.824055, 21.861525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139771, 33.783150, 21.632492>,  <36.944542, 33.758606, 21.495073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139771, 33.783150, 21.632492>,  <37.465149, 33.824055, 21.861525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139771, 33.783150, 21.632492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475984, 0.682806, 0.554270,
		0.334282, 0.723408, -0.604100,
		-0.813446, -0.102260, -0.572580,
		36.895737, 33.752472, 21.460718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164066, 34.545574, 21.748535>,  <37.465149, 33.824055, 21.861525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164066, 34.545574, 21.748535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858894, 34.306984, 21.648815>,  <36.675789, 34.163830, 21.588984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858894, 34.306984, 21.648815>,  <37.164066, 34.545574, 21.748535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858894, 34.306984, 21.648815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600140, 0.510108, 0.616134,
		-0.240339, 0.619683, -0.747148,
		-0.762934, -0.596474, -0.249298,
		36.630013, 34.128040, 21.574026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551506, 34.896488, 21.443369>,  <37.164066, 34.545574, 21.748535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551506, 34.896488, 21.443369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490391, 34.585423, 21.687302>,  <36.453724, 34.398781, 21.833660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490391, 34.585423, 21.687302>,  <36.551506, 34.896488, 21.443369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490391, 34.585423, 21.687302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476868, 0.598495, 0.643739,
		-0.865594, -0.192456, -0.462284,
		-0.152783, -0.777666, 0.609831,
		36.444557, 34.352123, 21.870251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801865, 34.635891, 21.491568>,  <36.551506, 34.896488, 21.443369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801865, 34.635891, 21.491568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014225, 34.602142, 21.828857>,  <36.141640, 34.581894, 22.031231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014225, 34.602142, 21.828857>,  <35.801865, 34.635891, 21.491568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014225, 34.602142, 21.828857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548680, 0.724089, 0.417906,
		-0.645831, -0.684526, 0.338123,
		0.530898, -0.084375, 0.843225,
		36.173496, 34.576828, 22.081825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339638, 34.849598, 22.051159>,  <35.801865, 34.635891, 21.491568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339638, 34.849598, 22.051159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511326, 34.957558, 22.395931>,  <35.614338, 35.022331, 22.602795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511326, 34.957558, 22.395931>,  <35.339638, 34.849598, 22.051159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511326, 34.957558, 22.395931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247110, -0.882805, 0.399489,
		0.868737, -0.384462, -0.312226,
		0.429223, 0.269897, 0.861930,
		35.640091, 35.038528, 22.654510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762814, 34.269707, 22.177744>,  <35.339638, 34.849598, 22.051159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762814, 34.269707, 22.177744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642326, 34.464672, 22.505573>,  <35.570034, 34.581650, 22.702271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642326, 34.464672, 22.505573>,  <35.762814, 34.269707, 22.177744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642326, 34.464672, 22.505573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368682, -0.852180, 0.371300,
		0.879399, -0.190320, 0.436391,
		-0.301217, 0.487410, 0.819573,
		35.551960, 34.610893, 22.751446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035244, 33.920341, 22.738295>,  <35.762814, 34.269707, 22.177744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035244, 33.920341, 22.738295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710773, 34.113903, 22.869644>,  <35.516090, 34.230038, 22.948454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710773, 34.113903, 22.869644>,  <36.035244, 33.920341, 22.738295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710773, 34.113903, 22.869644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322208, -0.838423, 0.439579,
		0.488029, 0.250772, 0.836027,
		-0.811178, 0.483902, 0.328374,
		35.467419, 34.259075, 22.968157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848408, 33.524128, 23.212286>,  <36.035244, 33.920341, 22.738295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848408, 33.524128, 23.212286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516815, 33.736893, 23.143158>,  <35.317860, 33.864552, 23.101681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516815, 33.736893, 23.143158>,  <35.848408, 33.524128, 23.212286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516815, 33.736893, 23.143158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559280, -0.787575, 0.258711,
		0.001503, 0.311119, 0.950370,
		-0.828977, 0.531912, -0.172819,
		35.268124, 33.896465, 23.091312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444527, 33.154137, 23.706898>,  <35.848408, 33.524128, 23.212286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444527, 33.154137, 23.706898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203995, 33.366703, 23.468239>,  <35.059673, 33.494244, 23.325043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203995, 33.366703, 23.468239>,  <35.444527, 33.154137, 23.706898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203995, 33.366703, 23.468239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753939, -0.624623, 0.203524,
		-0.264525, 0.572223, 0.776265,
		-0.601334, 0.531419, -0.596649,
		35.023594, 33.526131, 23.289244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834877, 33.354137, 24.101852>,  <35.444527, 33.154137, 23.706898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834877, 33.354137, 24.101852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738056, 33.357292, 23.713760>,  <34.679966, 33.359184, 23.480906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738056, 33.357292, 23.713760>,  <34.834877, 33.354137, 24.101852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738056, 33.357292, 23.713760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778542, -0.598343, 0.189361,
		-0.579037, 0.801201, 0.150973,
		-0.242050, 0.007891, -0.970232,
		34.665440, 33.359661, 23.422691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142929, 33.677807, 23.954563>,  <34.834877, 33.354137, 24.101852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142929, 33.677807, 23.954563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212223, 33.429104, 23.649036>,  <34.253799, 33.279884, 23.465721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212223, 33.429104, 23.649036>,  <34.142929, 33.677807, 23.954563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212223, 33.429104, 23.649036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797926, -0.543215, 0.261211,
		-0.577324, 0.564217, -0.590217,
		0.173235, -0.621753, -0.763815,
		34.264194, 33.242577, 23.419891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503002, 33.451145, 23.816387>,  <34.142929, 33.677807, 23.954563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503002, 33.451145, 23.816387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752029, 33.190002, 23.643791>,  <33.901447, 33.033318, 23.540234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752029, 33.190002, 23.643791>,  <33.503002, 33.451145, 23.816387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752029, 33.190002, 23.643791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685308, -0.721050, 0.102178,
		-0.377834, 0.232090, -0.896312,
		0.622571, -0.652856, -0.431490,
		33.938801, 32.994144, 23.514343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034573, 33.052067, 23.473650>,  <33.503002, 33.451145, 23.816387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034573, 33.052067, 23.473650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372669, 32.840965, 23.507221>,  <33.575527, 32.714306, 23.527363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372669, 32.840965, 23.507221>,  <33.034573, 33.052067, 23.473650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372669, 32.840965, 23.507221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534297, -0.831791, 0.150499,
		-0.009616, -0.172050, -0.985041,
		0.845242, -0.527752, 0.083927,
		33.626244, 32.682640, 23.532400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830650, 32.355053, 23.242167>,  <33.034573, 33.052067, 23.473650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830650, 32.355053, 23.242167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168415, 32.301685, 23.449692>,  <33.371075, 32.269665, 23.574207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168415, 32.301685, 23.449692>,  <32.830650, 32.355053, 23.242167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168415, 32.301685, 23.449692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446268, -0.710942, 0.543513,
		0.296331, -0.690479, -0.659869,
		0.844413, -0.133418, 0.518812,
		33.421738, 32.261662, 23.605335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044907, 31.576336, 23.228550>,  <32.830650, 32.355053, 23.242167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044907, 31.576336, 23.228550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205463, 31.736130, 23.558228>,  <33.301800, 31.832006, 23.756035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205463, 31.736130, 23.558228>,  <33.044907, 31.576336, 23.228550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205463, 31.736130, 23.558228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243412, -0.820979, 0.516472,
		0.882969, -0.407928, -0.232296,
		0.401393, 0.399485, 0.824194,
		33.325882, 31.855976, 23.805485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475376, 31.038298, 23.489698>,  <33.044907, 31.576336, 23.228550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475376, 31.038298, 23.489698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459057, 31.270206, 23.815201>,  <33.449265, 31.409351, 24.010502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459057, 31.270206, 23.815201>,  <33.475376, 31.038298, 23.489698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459057, 31.270206, 23.815201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185978, -0.804609, 0.563930,
		0.981706, -0.128332, 0.140654,
		-0.040801, 0.579772, 0.813757,
		33.446815, 31.444138, 24.059328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936302, 30.720421, 24.005533>,  <33.475376, 31.038298, 23.489698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936302, 30.720421, 24.005533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676826, 30.958607, 24.195114>,  <33.521141, 31.101519, 24.308863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676826, 30.958607, 24.195114>,  <33.936302, 30.720421, 24.005533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676826, 30.958607, 24.195114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122156, -0.696144, 0.707433,
		0.751189, 0.401006, 0.524319,
		-0.648686, 0.595464, 0.473950,
		33.482220, 31.137245, 24.337299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107651, 30.706190, 24.694254>,  <33.936302, 30.720421, 24.005533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107651, 30.706190, 24.694254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737385, 30.852654, 24.732346>,  <33.515224, 30.940531, 24.755201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737385, 30.852654, 24.732346>,  <34.107651, 30.706190, 24.694254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737385, 30.852654, 24.732346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140754, -0.566929, 0.811653,
		0.351184, 0.737915, 0.576326,
		-0.925666, 0.366159, 0.095232,
		33.459686, 30.962502, 24.760916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112320, 30.918280, 25.369312>,  <34.107651, 30.706190, 24.694254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112320, 30.918280, 25.369312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736217, 30.859058, 25.246677>,  <33.510555, 30.823526, 25.173096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736217, 30.859058, 25.246677>,  <34.112320, 30.918280, 25.369312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736217, 30.859058, 25.246677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196251, -0.500164, 0.843399,
		-0.278214, 0.853180, 0.441227,
		-0.940257, -0.148054, -0.306590,
		33.454140, 30.814642, 25.154701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738426, 31.004982, 25.993420>,  <34.112320, 30.918280, 25.369312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738426, 31.004982, 25.993420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497227, 30.801590, 25.747543>,  <33.352509, 30.679554, 25.600018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497227, 30.801590, 25.747543>,  <33.738426, 31.004982, 25.993420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497227, 30.801590, 25.747543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221190, -0.633756, 0.741235,
		-0.766468, 0.582924, 0.269680,
		-0.602994, -0.508482, -0.614690,
		33.316330, 30.649046, 25.563137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114735, 30.856735, 26.375681>,  <33.738426, 31.004982, 25.993420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114735, 30.856735, 26.375681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089653, 30.571987, 26.095879>,  <33.074604, 30.401138, 25.927998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089653, 30.571987, 26.095879>,  <33.114735, 30.856735, 26.375681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089653, 30.571987, 26.095879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113107, -0.691301, 0.713659,
		-0.991602, 0.123868, -0.037170,
		-0.062704, -0.711871, -0.699506,
		33.070843, 30.358425, 25.886026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490421, 30.459784, 26.514526>,  <33.114735, 30.856735, 26.375681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490421, 30.459784, 26.514526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717201, 30.208763, 26.301079>,  <32.853268, 30.058151, 26.173010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717201, 30.208763, 26.301079>,  <32.490421, 30.459784, 26.514526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717201, 30.208763, 26.301079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179093, -0.726195, 0.663751,
		-0.804049, -0.280746, -0.524106,
		0.566949, -0.627552, -0.533617,
		32.887287, 30.020498, 26.140993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020126, 29.961250, 26.486265>,  <32.490421, 30.459784, 26.514526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020126, 29.961250, 26.486265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384644, 29.818676, 26.403812>,  <32.603355, 29.733131, 26.354340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384644, 29.818676, 26.403812>,  <32.020126, 29.961250, 26.486265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384644, 29.818676, 26.403812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203163, -0.824688, 0.527839,
		-0.358136, -0.439139, -0.823951,
		0.911298, -0.356434, -0.206134,
		32.658031, 29.711746, 26.341972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848179, 29.369383, 26.400791>,  <32.020126, 29.961250, 26.486265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848179, 29.369383, 26.400791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243626, 29.340378, 26.453522>,  <32.480892, 29.322975, 26.485161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243626, 29.340378, 26.453522>,  <31.848179, 29.369383, 26.400791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243626, 29.340378, 26.453522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138775, -0.777949, 0.612811,
		0.058118, -0.624130, -0.779156,
		0.988617, -0.072512, 0.131827,
		32.540211, 29.318624, 26.493071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001263, 28.631264, 26.415525>,  <31.848179, 29.369383, 26.400791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001263, 28.631264, 26.415525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301296, 28.823048, 26.597733>,  <32.481316, 28.938118, 26.707056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301296, 28.823048, 26.597733>,  <32.001263, 28.631264, 26.415525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301296, 28.823048, 26.597733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106717, -0.591998, 0.798843,
		0.652680, -0.647808, -0.392880,
		0.750080, 0.479462, 0.455517,
		32.526321, 28.966887, 26.734388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461971, 28.076950, 26.647234>,  <32.001263, 28.631264, 26.415525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461971, 28.076950, 26.647234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597328, 28.386013, 26.862080>,  <32.678543, 28.571451, 26.990988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597328, 28.386013, 26.862080>,  <32.461971, 28.076950, 26.647234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597328, 28.386013, 26.862080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077402, -0.591707, 0.802429,
		0.937818, -0.229958, -0.260032,
		0.338388, 0.772659, 0.537114,
		32.698845, 28.617811, 27.023214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094013, 27.869722, 27.014874>,  <32.461971, 28.076950, 26.647234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094013, 27.869722, 27.014874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925892, 28.171951, 27.215851>,  <32.825020, 28.353289, 27.336437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925892, 28.171951, 27.215851>,  <33.094013, 27.869722, 27.014874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925892, 28.171951, 27.215851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108157, -0.508064, 0.854502,
		0.900913, 0.413496, 0.131822,
		-0.420307, 0.755574, 0.502444,
		32.799801, 28.398624, 27.366585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529198, 28.022858, 27.604061>,  <33.094013, 27.869722, 27.014874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529198, 28.022858, 27.604061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158741, 28.153145, 27.680134>,  <32.936466, 28.231318, 27.725779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158741, 28.153145, 27.680134>,  <33.529198, 28.022858, 27.604061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158741, 28.153145, 27.680134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090954, -0.296484, 0.950697,
		0.366044, 0.897778, 0.244961,
		-0.926142, 0.325716, 0.190183,
		32.880898, 28.250860, 27.737188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543919, 28.393026, 28.181971>,  <33.529198, 28.022858, 27.604061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543919, 28.393026, 28.181971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174873, 28.239830, 28.163651>,  <32.953445, 28.147913, 28.152658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174873, 28.239830, 28.163651>,  <33.543919, 28.393026, 28.181971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174873, 28.239830, 28.163651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197806, -0.571730, 0.796240,
		-0.331138, 0.725564, 0.603245,
		-0.922616, -0.382991, -0.045800,
		32.898090, 28.124933, 28.149910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355328, 28.290941, 28.904799>,  <33.543919, 28.393026, 28.181971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355328, 28.290941, 28.904799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066051, 28.078369, 28.728355>,  <32.892487, 27.950825, 28.622490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066051, 28.078369, 28.728355>,  <33.355328, 28.290941, 28.904799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066051, 28.078369, 28.728355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006730, -0.644077, 0.764931,
		-0.690615, 0.550223, 0.469367,
		-0.723191, -0.531432, -0.441106,
		32.849094, 27.918940, 28.596024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995712, 28.023600, 29.489540>,  <33.355328, 28.290941, 28.904799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995712, 28.023600, 29.489540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846355, 27.789097, 29.201962>,  <32.756741, 27.648396, 29.029415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846355, 27.789097, 29.201962>,  <32.995712, 28.023600, 29.489540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846355, 27.789097, 29.201962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059003, -0.758421, 0.649089,
		-0.925795, 0.284785, 0.248599,
		-0.373394, -0.586255, -0.718945,
		32.734337, 27.613220, 28.986279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400181, 27.790714, 29.789379>,  <32.995712, 28.023600, 29.489540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400181, 27.790714, 29.789379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495117, 27.529366, 29.501831>,  <32.552078, 27.372557, 29.329302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495117, 27.529366, 29.501831>,  <32.400181, 27.790714, 29.789379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495117, 27.529366, 29.501831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104182, -0.752868, 0.649874,
		-0.965824, -0.079349, -0.246756,
		0.237342, -0.653372, -0.718870,
		32.566319, 27.333355, 29.286169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875999, 27.299690, 29.842733>,  <32.400181, 27.790714, 29.789379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875999, 27.299690, 29.842733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160881, 27.129669, 29.619270>,  <32.331810, 27.027657, 29.485193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160881, 27.129669, 29.619270>,  <31.875999, 27.299690, 29.842733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160881, 27.129669, 29.619270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117854, -0.856943, 0.501756,
		-0.692009, -0.291512, -0.660412,
		0.712204, -0.425052, -0.558657,
		32.374542, 27.002153, 29.451674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603403, 26.743509, 29.537083>,  <31.875999, 27.299690, 29.842733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603403, 26.743509, 29.537083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997484, 26.676041, 29.549271>,  <32.233932, 26.635559, 29.556583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997484, 26.676041, 29.549271>,  <31.603403, 26.743509, 29.537083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997484, 26.676041, 29.549271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161525, -0.854157, 0.494293,
		-0.057349, -0.491899, -0.868761,
		0.985201, -0.168674, 0.030469,
		32.293045, 26.625439, 29.558411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733656, 26.007299, 29.309202>,  <31.603403, 26.743509, 29.537083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733656, 26.007299, 29.309202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067120, 26.089653, 29.514191>,  <32.267197, 26.139065, 29.637184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067120, 26.089653, 29.514191>,  <31.733656, 26.007299, 29.309202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067120, 26.089653, 29.514191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009469, -0.922451, 0.385998,
		0.552200, -0.326643, -0.767059,
		0.833658, 0.205885, 0.512471,
		32.317219, 26.151419, 29.667933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024506, 25.436087, 29.292953>,  <31.733656, 26.007299, 29.309202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024506, 25.436087, 29.292953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220562, 25.621784, 29.588043>,  <32.338196, 25.733204, 29.765097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220562, 25.621784, 29.588043>,  <32.024506, 25.436087, 29.292953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220562, 25.621784, 29.588043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026605, -0.853934, 0.519700,
		0.871235, -0.235101, -0.430902,
		0.490144, 0.464245, 0.737723,
		32.367607, 25.761057, 29.809361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589283, 24.956768, 29.516169>,  <32.024506, 25.436087, 29.292953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589283, 24.956768, 29.516169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519737, 25.209255, 29.818516>,  <32.478012, 25.360748, 29.999924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519737, 25.209255, 29.818516>,  <32.589283, 24.956768, 29.516169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519737, 25.209255, 29.818516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022387, -0.764826, 0.643848,
		0.984516, 0.128862, 0.118843,
		-0.173862, 0.631217, 0.755868,
		32.467579, 25.398621, 30.045277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155148, 24.844057, 29.972284>,  <32.589283, 24.956768, 29.516169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155148, 24.844057, 29.972284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842930, 24.991161, 30.174473>,  <32.655598, 25.079424, 30.295786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842930, 24.991161, 30.174473>,  <33.155148, 24.844057, 29.972284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842930, 24.991161, 30.174473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003057, -0.806371, 0.591402,
		0.625092, 0.463161, 0.628285,
		-0.780545, 0.367759, 0.505472,
		32.608765, 25.101490, 30.326115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308975, 24.769650, 30.749348>,  <33.155148, 24.844057, 29.972284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308975, 24.769650, 30.749348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915428, 24.781551, 30.678791>,  <32.679298, 24.788692, 30.636457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915428, 24.781551, 30.678791>,  <33.308975, 24.769650, 30.749348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915428, 24.781551, 30.678791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149021, -0.681790, 0.716209,
		-0.098951, 0.730943, 0.675227,
		-0.983871, 0.029753, -0.176390,
		32.620266, 24.790478, 30.625874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046162, 24.782621, 31.405218>,  <33.308975, 24.769650, 30.749348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046162, 24.782621, 31.405218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710873, 24.698746, 31.203857>,  <32.509701, 24.648420, 31.083042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710873, 24.698746, 31.203857>,  <33.046162, 24.782621, 31.405218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710873, 24.698746, 31.203857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350535, -0.499958, 0.791939,
		-0.417739, 0.840281, 0.345574,
		-0.838224, -0.209688, -0.503400,
		32.459404, 24.635839, 31.052837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456528, 24.893711, 31.890234>,  <33.046162, 24.782621, 31.405218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456528, 24.893711, 31.890234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312317, 24.653591, 31.604671>,  <32.225792, 24.509520, 31.433334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312317, 24.653591, 31.604671>,  <32.456528, 24.893711, 31.890234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312317, 24.653591, 31.604671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404579, -0.588988, 0.699578,
		-0.840439, 0.541046, -0.030525,
		-0.360525, -0.600302, -0.713904,
		32.204159, 24.473501, 31.390501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865713, 24.655197, 32.141178>,  <32.456528, 24.893711, 31.890234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865713, 24.655197, 32.141178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924017, 24.395954, 31.842190>,  <31.959000, 24.240408, 31.662796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924017, 24.395954, 31.842190>,  <31.865713, 24.655197, 32.141178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924017, 24.395954, 31.842190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358660, -0.738759, 0.570611,
		-0.922018, 0.184915, -0.340133,
		0.145762, -0.648106, -0.747471,
		31.967745, 24.201523, 31.617949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225607, 24.385212, 32.019188>,  <31.865713, 24.655197, 32.141178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225607, 24.385212, 32.019188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495544, 24.121540, 31.886486>,  <31.657507, 23.963337, 31.806864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495544, 24.121540, 31.886486>,  <31.225607, 24.385212, 32.019188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495544, 24.121540, 31.886486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275175, -0.641914, 0.715699,
		-0.684737, -0.391693, -0.614583,
		0.674844, -0.659183, -0.331758,
		31.697998, 23.923786, 31.786959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827101, 23.736750, 31.836275>,  <31.225607, 24.385212, 32.019188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827101, 23.736750, 31.836275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208532, 23.620457, 31.867664>,  <31.437391, 23.550680, 31.886497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208532, 23.620457, 31.867664>,  <30.827101, 23.736750, 31.836275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208532, 23.620457, 31.867664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290334, -0.818441, 0.495843,
		-0.079931, -0.495610, -0.864859,
		0.953581, -0.290732, 0.078474,
		31.494606, 23.533237, 31.891207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781860, 23.103224, 31.624660>,  <30.827101, 23.736750, 31.836275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781860, 23.103224, 31.624660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102200, 23.113003, 31.864006>,  <31.294403, 23.118870, 32.007614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102200, 23.113003, 31.864006>,  <30.781860, 23.103224, 31.624660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102200, 23.113003, 31.864006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301298, -0.847052, 0.437862,
		0.517551, -0.530948, -0.670996,
		0.800850, 0.024446, 0.598366,
		31.342455, 23.120337, 32.043514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987747, 22.432734, 31.744974>,  <30.781860, 23.103224, 31.624660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987747, 22.432734, 31.744974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125925, 22.625858, 32.066860>,  <31.208832, 22.741734, 32.259991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125925, 22.625858, 32.066860>,  <30.987747, 22.432734, 31.744974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125925, 22.625858, 32.066860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208076, -0.796751, 0.567356,
		0.915081, -0.363431, -0.174770,
		0.345443, 0.482811, 0.804713,
		31.229557, 22.770702, 32.308273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121460, 21.884487, 32.090313>,  <30.987747, 22.432734, 31.744974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121460, 21.884487, 32.090313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235188, 22.153053, 32.364063>,  <31.303425, 22.314192, 32.528313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235188, 22.153053, 32.364063>,  <31.121460, 21.884487, 32.090313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235188, 22.153053, 32.364063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068421, -0.697803, 0.713015,
		0.956285, -0.249550, -0.152461,
		0.284320, 0.671414, 0.684373,
		31.320484, 22.354477, 32.569374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650246, 21.625683, 32.593403>,  <31.121460, 21.884487, 32.090313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650246, 21.625683, 32.593403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437098, 21.919533, 32.761391>,  <31.309208, 22.095842, 32.862183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437098, 21.919533, 32.761391>,  <31.650246, 21.625683, 32.593403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437098, 21.919533, 32.761391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153152, -0.571833, 0.805947,
		0.832221, 0.365148, 0.417223,
		-0.532872, 0.734625, 0.419969,
		31.277235, 22.139919, 32.887383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856684, 21.704084, 33.287109>,  <31.650246, 21.625683, 32.593403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856684, 21.704084, 33.287109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476995, 21.808029, 33.216167>,  <31.249182, 21.870396, 33.173603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476995, 21.808029, 33.216167>,  <31.856684, 21.704084, 33.287109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476995, 21.808029, 33.216167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314567, -0.774270, 0.549139,
		0.005380, 0.577043, 0.816696,
		-0.949220, 0.259860, -0.177353,
		31.192230, 21.885988, 33.162960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536100, 21.604910, 33.816433>,  <31.856684, 21.704084, 33.287109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536100, 21.604910, 33.816433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259462, 21.550339, 33.532719>,  <31.093479, 21.517597, 33.362492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259462, 21.550339, 33.532719>,  <31.536100, 21.604910, 33.816433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259462, 21.550339, 33.532719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359033, -0.787153, 0.501483,
		-0.626730, 0.601480, 0.495411,
		-0.691596, -0.136426, -0.709283,
		31.051983, 21.509411, 33.319935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262125, 21.030449, 34.072964>,  <31.536100, 21.604910, 33.816433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262125, 21.030449, 34.072964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074835, 21.087452, 33.724148>,  <30.962460, 21.121655, 33.514858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074835, 21.087452, 33.724148>,  <31.262125, 21.030449, 34.072964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074835, 21.087452, 33.724148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523453, -0.839830, 0.143814,
		-0.711871, 0.523810, 0.467829,
		-0.468228, 0.142510, -0.872040,
		30.934366, 21.130205, 33.462536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436989, 21.027405, 34.103661>,  <31.262125, 21.030449, 34.072964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436989, 21.027405, 34.103661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580151, 20.896072, 33.754009>,  <30.666048, 20.817274, 33.544216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580151, 20.896072, 33.754009>,  <30.436989, 21.027405, 34.103661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580151, 20.896072, 33.754009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508382, -0.853749, 0.112521,
		-0.783231, 0.404120, -0.472479,
		0.357906, -0.328329, -0.874130,
		30.687523, 20.797573, 33.491772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304270, 21.770491, 34.267597>,  <30.436989, 21.027405, 34.103661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304270, 21.770491, 34.267597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949743, 21.910446, 34.388939>,  <29.737028, 21.994419, 34.461742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949743, 21.910446, 34.388939>,  <30.304270, 21.770491, 34.267597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949743, 21.910446, 34.388939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038457, -0.708425, 0.704738,
		0.461485, 0.612953, 0.641343,
		-0.886314, 0.349890, 0.303355,
		29.683849, 22.015413, 34.479946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701811, 22.484512, 34.226803>,  <30.304270, 21.770491, 34.267597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701811, 22.484512, 34.226803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730415, 22.680679, 34.574223>,  <30.747578, 22.798380, 34.782673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730415, 22.680679, 34.574223>,  <30.701811, 22.484512, 34.226803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730415, 22.680679, 34.574223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346849, 0.804208, -0.482644,
		-0.935191, 0.335771, -0.112588,
		0.071514, 0.490416, 0.868549,
		30.751869, 22.827805, 34.834789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271391, 23.161169, 34.320606>,  <30.701811, 22.484512, 34.226803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271391, 23.161169, 34.320606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613350, 23.170013, 34.527935>,  <30.818525, 23.175320, 34.652332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613350, 23.170013, 34.527935>,  <30.271391, 23.161169, 34.320606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613350, 23.170013, 34.527935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216415, 0.892813, -0.395031,
		-0.471499, 0.449885, 0.758481,
		0.854900, 0.022110, 0.518322,
		30.869820, 23.176647, 34.683434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314571, 23.801592, 34.634533>,  <30.271391, 23.161169, 34.320606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314571, 23.801592, 34.634533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695873, 23.685829, 34.599777>,  <30.924654, 23.616371, 34.578922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695873, 23.685829, 34.599777>,  <30.314571, 23.801592, 34.634533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695873, 23.685829, 34.599777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244747, 0.908143, -0.339670,
		0.177212, 0.302526, 0.936522,
		0.953255, -0.289405, -0.086892,
		30.981850, 23.599009, 34.573711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855021, 24.290350, 35.015293>,  <30.314571, 23.801592, 34.634533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855021, 24.290350, 35.015293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028685, 24.093609, 34.713409>,  <31.132883, 23.975563, 34.532280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028685, 24.093609, 34.713409>,  <30.855021, 24.290350, 35.015293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028685, 24.093609, 34.713409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381026, 0.859420, -0.340905,
		0.816287, -0.139557, 0.560535,
		0.434159, -0.491855, -0.754708,
		31.158932, 23.946053, 34.486996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484495, 24.605362, 34.919487>,  <30.855021, 24.290350, 35.015293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484495, 24.605362, 34.919487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377409, 24.425030, 34.578880>,  <31.313158, 24.316830, 34.374516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377409, 24.425030, 34.578880>,  <31.484495, 24.605362, 34.919487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377409, 24.425030, 34.578880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208932, 0.835583, -0.508083,
		0.940573, -0.313930, -0.129504,
		-0.267714, -0.450832, -0.851516,
		31.297094, 24.289780, 34.323425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932549, 24.697996, 34.519840>,  <31.484495, 24.605362, 34.919487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932549, 24.697996, 34.519840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647287, 24.614140, 34.252270>,  <31.476130, 24.563826, 34.091728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647287, 24.614140, 34.252270>,  <31.932549, 24.697996, 34.519840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647287, 24.614140, 34.252270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284300, 0.785739, -0.549352,
		0.640768, -0.581948, -0.500752,
		-0.713155, -0.209643, -0.668925,
		31.433340, 24.551247, 34.051594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209316, 24.608587, 33.783089>,  <31.932549, 24.697996, 34.519840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209316, 24.608587, 33.783089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825266, 24.718773, 33.764038>,  <31.594835, 24.784883, 33.752605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825266, 24.718773, 33.764038>,  <32.209316, 24.608587, 33.783089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825266, 24.718773, 33.764038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268690, 0.862301, -0.429235,
		-0.077168, -0.424919, -0.901936,
		-0.960131, 0.275465, -0.047629,
		31.537228, 24.801413, 33.749748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184517, 24.986359, 33.196911>,  <32.209316, 24.608587, 33.783089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184517, 24.986359, 33.196911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838137, 25.102516, 33.359787>,  <31.630308, 25.172211, 33.457512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838137, 25.102516, 33.359787>,  <32.184517, 24.986359, 33.196911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838137, 25.102516, 33.359787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114656, 0.907748, -0.403543,
		-0.486809, -0.302762, -0.819361,
		-0.865951, 0.290393, 0.407187,
		31.578352, 25.189634, 33.481941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882256, 25.407732, 32.692696>,  <32.184517, 24.986359, 33.196911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882256, 25.407732, 32.692696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642471, 25.503181, 32.998299>,  <31.498602, 25.560452, 33.181660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642471, 25.503181, 32.998299>,  <31.882256, 25.407732, 32.692696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642471, 25.503181, 32.998299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007305, 0.956117, -0.292893,
		-0.800372, -0.169996, -0.574897,
		-0.599459, 0.238623, 0.764008,
		31.462633, 25.574768, 33.227501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305048, 25.791323, 32.545139>,  <31.882256, 25.407732, 32.692696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305048, 25.791323, 32.545139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375397, 25.890423, 32.926231>,  <31.417606, 25.949883, 33.154884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375397, 25.890423, 32.926231>,  <31.305048, 25.791323, 32.545139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375397, 25.890423, 32.926231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111092, 0.966625, -0.230855,
		-0.978124, -0.065239, 0.197527,
		0.175874, 0.247749, 0.952727,
		31.428160, 25.964748, 33.212051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910259, 26.417206, 32.607334>,  <31.305048, 25.791323, 32.545139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910259, 26.417206, 32.607334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142897, 26.401627, 32.932354>,  <31.282480, 26.392279, 33.127365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142897, 26.401627, 32.932354>,  <30.910259, 26.417206, 32.607334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142897, 26.401627, 32.932354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085381, 0.990413, 0.108590,
		-0.808985, -0.132531, 0.572694,
		0.581595, -0.038950, 0.812545,
		31.317375, 26.389942, 33.176117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536856, 26.706053, 33.168316>,  <30.910259, 26.417206, 32.607334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536856, 26.706053, 33.168316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926201, 26.748066, 33.249836>,  <31.159807, 26.773273, 33.298748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926201, 26.748066, 33.249836>,  <30.536856, 26.706053, 33.168316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926201, 26.748066, 33.249836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088843, 0.992235, -0.087047,
		-0.211361, 0.066622, 0.975135,
		0.973362, 0.105033, 0.203801,
		31.218210, 26.779575, 33.310978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647530, 27.336132, 33.626812>,  <30.536856, 26.706053, 33.168316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647530, 27.336132, 33.626812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012577, 27.275234, 33.475052>,  <31.231606, 27.238695, 33.383995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012577, 27.275234, 33.475052>,  <30.647530, 27.336132, 33.626812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012577, 27.275234, 33.475052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096948, 0.982193, -0.160928,
		0.397147, 0.110084, 0.911129,
		0.912620, -0.152244, -0.379402,
		31.286364, 27.229561, 33.361233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135748, 27.809246, 34.002949>,  <30.647530, 27.336132, 33.626812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135748, 27.809246, 34.002949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308369, 27.699329, 33.659264>,  <31.411942, 27.633379, 33.453053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308369, 27.699329, 33.659264>,  <31.135748, 27.809246, 34.002949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308369, 27.699329, 33.659264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252873, 0.951137, -0.177183,
		0.865921, -0.140809, 0.479951,
		0.431550, -0.274793, -0.859217,
		31.437834, 27.616892, 33.401497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611946, 28.349869, 33.846165>,  <31.135748, 27.809246, 34.002949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611946, 28.349869, 33.846165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594957, 28.148613, 33.500900>,  <31.584764, 28.027859, 33.293743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594957, 28.148613, 33.500900>,  <31.611946, 28.349869, 33.846165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594957, 28.148613, 33.500900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146607, 0.851449, -0.503528,
		0.988283, -0.147932, 0.037600,
		-0.042474, -0.503140, -0.863160,
		31.582214, 27.997671, 33.241951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243607, 28.514334, 33.507645>,  <31.611946, 28.349869, 33.846165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243607, 28.514334, 33.507645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970148, 28.405499, 33.236767>,  <31.806072, 28.340197, 33.074242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970148, 28.405499, 33.236767>,  <32.243607, 28.514334, 33.507645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970148, 28.405499, 33.236767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122132, 0.872165, -0.473722,
		0.719520, -0.406566, -0.563023,
		-0.683648, -0.272089, -0.677194,
		31.765053, 28.323872, 33.033607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474293, 28.828533, 32.890167>,  <32.243607, 28.514334, 33.507645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474293, 28.828533, 32.890167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087029, 28.755238, 32.821938>,  <31.854671, 28.711260, 32.780998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087029, 28.755238, 32.821938>,  <32.474293, 28.828533, 32.890167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087029, 28.755238, 32.821938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077062, 0.866411, -0.493348,
		0.238187, -0.464494, -0.852943,
		-0.968157, -0.183239, -0.170574,
		31.796581, 28.700266, 32.770767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479725, 28.828831, 32.152138>,  <32.474293, 28.828533, 32.890167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479725, 28.828831, 32.152138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100861, 28.875614, 32.271610>,  <31.873543, 28.903685, 32.343296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100861, 28.875614, 32.271610>,  <32.479725, 28.828831, 32.152138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100861, 28.875614, 32.271610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008521, 0.921652, -0.387923,
		-0.320655, -0.369970, -0.871954,
		-0.947158, 0.116959, 0.298685,
		31.816713, 28.910702, 32.361217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127159, 28.963722, 31.608093>,  <32.479725, 28.828831, 32.152138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127159, 28.963722, 31.608093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902090, 29.102901, 31.908047>,  <31.767048, 29.186409, 32.088020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902090, 29.102901, 31.908047>,  <32.127159, 28.963722, 31.608093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902090, 29.102901, 31.908047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170966, 0.838518, -0.517358,
		-0.808806, -0.419309, -0.412326,
		-0.562676, 0.347948, 0.749886,
		31.733288, 29.207287, 32.133011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502508, 29.080208, 31.324207>,  <32.127159, 28.963722, 31.608093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502508, 29.080208, 31.324207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529421, 29.318146, 31.644615>,  <31.545568, 29.460909, 31.836861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529421, 29.318146, 31.644615>,  <31.502508, 29.080208, 31.324207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529421, 29.318146, 31.644615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012688, 0.803283, -0.595462,
		-0.997653, 0.029900, 0.061594,
		0.067282, 0.594846, 0.801019,
		31.549604, 29.496599, 31.884920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074245, 29.615412, 31.198307>,  <31.502508, 29.080208, 31.324207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074245, 29.615412, 31.198307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326378, 29.764641, 31.470631>,  <31.477657, 29.854177, 31.634026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326378, 29.764641, 31.470631>,  <31.074245, 29.615412, 31.198307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326378, 29.764641, 31.470631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033337, 0.863145, -0.503854,
		-0.775611, 0.340290, 0.531630,
		0.630330, 0.373072, 0.680809,
		31.515476, 29.876562, 31.674873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761005, 30.191566, 31.249249>,  <31.074245, 29.615412, 31.198307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761005, 30.191566, 31.249249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123085, 30.225567, 31.415810>,  <31.340332, 30.245966, 31.515747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123085, 30.225567, 31.415810>,  <30.761005, 30.191566, 31.249249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123085, 30.225567, 31.415810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089668, 0.919541, -0.382629,
		-0.415423, 0.383693, 0.824745,
		0.905198, 0.084999, 0.416403,
		31.394644, 30.251066, 31.540731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791767, 30.767397, 31.616341>,  <30.761005, 30.191566, 31.249249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791767, 30.767397, 31.616341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175642, 30.713623, 31.517605>,  <31.405966, 30.681358, 31.458363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175642, 30.713623, 31.517605>,  <30.791767, 30.767397, 31.616341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175642, 30.713623, 31.517605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050531, 0.946413, -0.318983,
		0.276496, 0.293650, 0.915052,
		0.959686, -0.134436, -0.246840,
		31.463549, 30.673292, 31.443552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068405, 31.407656, 31.757694>,  <30.791767, 30.767397, 31.616341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068405, 31.407656, 31.757694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367180, 31.223831, 31.565491>,  <31.546444, 31.113537, 31.450169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367180, 31.223831, 31.565491>,  <31.068405, 31.407656, 31.757694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367180, 31.223831, 31.565491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194767, 0.842213, -0.502736,
		0.635729, 0.281924, 0.718586,
		0.746936, -0.459561, -0.480510,
		31.591261, 31.085962, 31.421337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586290, 31.935732, 31.726976>,  <31.068405, 31.407656, 31.757694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586290, 31.935732, 31.726976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702753, 31.669983, 31.451633>,  <31.772631, 31.510532, 31.286428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702753, 31.669983, 31.451633>,  <31.586290, 31.935732, 31.726976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702753, 31.669983, 31.451633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308580, 0.746291, -0.589769,
		0.905541, -0.040697, 0.422302,
		0.291159, -0.664374, -0.688356,
		31.790100, 31.470671, 31.245127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206177, 32.145420, 31.488667>,  <31.586290, 31.935732, 31.726976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206177, 32.145420, 31.488667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047119, 31.925686, 31.194698>,  <31.951685, 31.793846, 31.018316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047119, 31.925686, 31.194698>,  <32.206177, 32.145420, 31.488667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047119, 31.925686, 31.194698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245826, 0.707904, -0.662149,
		0.883997, -0.443961, -0.146452,
		-0.397642, -0.549336, -0.734922,
		31.927826, 31.760885, 30.974222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638565, 32.155930, 30.974821>,  <32.206177, 32.145420, 31.488667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638565, 32.155930, 30.974821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295086, 32.072155, 30.787731>,  <32.088997, 32.021889, 30.675478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295086, 32.072155, 30.787731>,  <32.638565, 32.155930, 30.974821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295086, 32.072155, 30.787731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297796, 0.538842, -0.788014,
		0.417072, -0.815955, -0.400334,
		-0.858701, -0.209441, -0.467724,
		32.037476, 32.009323, 30.647413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768970, 32.071941, 30.204315>,  <32.638565, 32.155930, 30.974821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768970, 32.071941, 30.204315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371506, 32.116405, 30.210949>,  <32.133026, 32.143082, 30.214930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371506, 32.116405, 30.210949>,  <32.768970, 32.071941, 30.204315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371506, 32.116405, 30.210949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024851, 0.361220, -0.932149,
		-0.109605, -0.925832, -0.361694,
		-0.993665, 0.111156, 0.016584,
		32.073406, 32.149754, 30.215923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520878, 31.769516, 29.508341>,  <32.768970, 32.071941, 30.204315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520878, 31.769516, 29.508341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236637, 32.017117, 29.642132>,  <32.066093, 32.165676, 29.722406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236637, 32.017117, 29.642132>,  <32.520878, 31.769516, 29.508341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236637, 32.017117, 29.642132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000799, 0.474679, -0.880159,
		-0.703590, -0.625713, -0.336814,
		-0.710605, 0.619002, 0.334480,
		32.023457, 32.202816, 29.742476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241955, 31.886042, 28.885862>,  <32.520878, 31.769516, 29.508341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241955, 31.886042, 28.885862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116501, 32.154400, 29.154648>,  <32.041229, 32.315414, 29.315920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116501, 32.154400, 29.154648>,  <32.241955, 31.886042, 28.885862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116501, 32.154400, 29.154648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043165, 0.696864, -0.715903,
		-0.948563, -0.253536, -0.189601,
		-0.313633, 0.670894, 0.671964,
		32.022411, 32.355667, 29.356237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699989, 32.255455, 28.555605>,  <32.241955, 31.886042, 28.885862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699989, 32.255455, 28.555605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794245, 32.501133, 28.856865>,  <31.850798, 32.648540, 29.037621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794245, 32.501133, 28.856865>,  <31.699989, 32.255455, 28.555605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794245, 32.501133, 28.856865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001740, 0.775238, -0.631666,
		-0.971840, 0.147533, 0.183744,
		0.235637, 0.614198, 0.753151,
		31.864935, 32.685394, 29.082809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269270, 32.763954, 28.505529>,  <31.699989, 32.255455, 28.555605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269270, 32.763954, 28.505529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583830, 32.913105, 28.702522>,  <31.772566, 33.002594, 28.820719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583830, 32.913105, 28.702522>,  <31.269270, 32.763954, 28.505529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583830, 32.913105, 28.702522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081510, 0.727652, -0.681086,
		-0.612317, 0.575748, 0.541832,
		0.786399, 0.372876, 0.492483,
		31.819750, 33.024967, 28.850267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235847, 33.477310, 28.523285>,  <31.269270, 32.763954, 28.505529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235847, 33.477310, 28.523285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628159, 33.440231, 28.591965>,  <31.863544, 33.417984, 28.633173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628159, 33.440231, 28.591965>,  <31.235847, 33.477310, 28.523285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628159, 33.440231, 28.591965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186051, 0.709503, -0.679699,
		-0.058814, 0.698579, 0.713112,
		0.980778, -0.092699, 0.171700,
		31.922392, 33.412422, 28.643475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549873, 34.147194, 28.495115>,  <31.235847, 33.477310, 28.523285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549873, 34.147194, 28.495115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862173, 33.902050, 28.446400>,  <32.049553, 33.754963, 28.417170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862173, 33.902050, 28.446400>,  <31.549873, 34.147194, 28.495115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862173, 33.902050, 28.446400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416148, 0.655402, -0.630293,
		0.466105, 0.441417, 0.766744,
		0.780748, -0.612862, -0.121791,
		32.096397, 33.718193, 28.409863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164143, 34.567093, 28.442131>,  <31.549873, 34.147194, 28.495115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164143, 34.567093, 28.442131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258060, 34.219280, 28.268333>,  <32.314411, 34.010593, 28.164055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258060, 34.219280, 28.268333>,  <32.164143, 34.567093, 28.442131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258060, 34.219280, 28.268333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386226, 0.493644, -0.779195,
		0.892020, 0.015139, 0.451743,
		0.234797, -0.869532, -0.434493,
		32.328499, 33.958420, 28.137985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892357, 34.625137, 28.285576>,  <32.164143, 34.567093, 28.442131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892357, 34.625137, 28.285576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751019, 34.332500, 28.052368>,  <32.666214, 34.156918, 27.912443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751019, 34.332500, 28.052368>,  <32.892357, 34.625137, 28.285576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751019, 34.332500, 28.052368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478178, 0.394403, -0.784724,
		0.804045, -0.556069, 0.210471,
		-0.353350, -0.731596, -0.583018,
		32.645012, 34.113022, 27.877462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525387, 34.365711, 27.859135>,  <32.892357, 34.625137, 28.285576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525387, 34.365711, 27.859135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179718, 34.256001, 27.690380>,  <32.972317, 34.190174, 27.589128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179718, 34.256001, 27.690380>,  <33.525387, 34.365711, 27.859135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179718, 34.256001, 27.690380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245184, 0.502642, -0.828997,
		0.439428, -0.819833, -0.367121,
		-0.864169, -0.274272, -0.421885,
		32.920467, 34.173717, 27.563814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680729, 34.203896, 27.245586>,  <33.525387, 34.365711, 27.859135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680729, 34.203896, 27.245586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286003, 34.252686, 27.203045>,  <33.049168, 34.281960, 27.177521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286003, 34.252686, 27.203045>,  <33.680729, 34.203896, 27.245586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286003, 34.252686, 27.203045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152571, 0.482132, -0.862712,
		-0.053955, -0.867566, -0.494386,
		-0.986819, 0.121976, -0.106352,
		32.989956, 34.289280, 27.171139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573505, 34.129665, 26.562677>,  <33.680729, 34.203896, 27.245586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573505, 34.129665, 26.562677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234409, 34.298573, 26.691067>,  <33.030952, 34.399918, 26.768101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234409, 34.298573, 26.691067>,  <33.573505, 34.129665, 26.562677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234409, 34.298573, 26.691067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111783, 0.449320, -0.886350,
		-0.518494, -0.787276, -0.333706,
		-0.847743, 0.422265, 0.320974,
		32.980087, 34.425251, 26.787359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047031, 33.960777, 26.066872>,  <33.573505, 34.129665, 26.562677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047031, 33.960777, 26.066872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891106, 34.282543, 26.246185>,  <32.797550, 34.475601, 26.353773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891106, 34.282543, 26.246185>,  <33.047031, 33.960777, 26.066872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891106, 34.282543, 26.246185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129081, 0.529719, -0.838294,
		-0.911801, -0.268916, -0.310328,
		-0.389817, 0.804414, 0.448286,
		32.774162, 34.523869, 26.380671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607170, 34.229420, 25.510551>,  <33.047031, 33.960777, 26.066872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607170, 34.229420, 25.510551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663338, 34.526016, 25.772995>,  <32.697037, 34.703972, 25.930462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663338, 34.526016, 25.772995>,  <32.607170, 34.229420, 25.510551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663338, 34.526016, 25.772995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035841, 0.658434, -0.751785,
		-0.989444, 0.129077, 0.065878,
		0.140414, 0.741488, 0.656109,
		32.705463, 34.748463, 25.969828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087254, 34.776089, 25.389872>,  <32.607170, 34.229420, 25.510551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087254, 34.776089, 25.389872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380886, 34.950291, 25.598282>,  <32.557064, 35.054813, 25.723328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380886, 34.950291, 25.598282>,  <32.087254, 34.776089, 25.389872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380886, 34.950291, 25.598282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054381, 0.802504, -0.594164,
		-0.676885, 0.407828, 0.612783,
		0.734077, 0.435504, 0.521025,
		32.601109, 35.080940, 25.754589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882057, 35.484631, 25.384153>,  <32.087254, 34.776089, 25.389872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882057, 35.484631, 25.384153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272781, 35.506207, 25.467030>,  <32.507217, 35.519154, 25.516756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272781, 35.506207, 25.467030>,  <31.882057, 35.484631, 25.384153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272781, 35.506207, 25.467030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077671, 0.812531, -0.577721,
		-0.199511, 0.580418, 0.789500,
		0.976812, 0.053940, 0.207191,
		32.565826, 35.522388, 25.529186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050880, 36.237587, 25.573349>,  <31.882057, 35.484631, 25.384153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050880, 36.237587, 25.573349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377514, 36.036655, 25.459614>,  <32.573494, 35.916096, 25.391373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377514, 36.036655, 25.459614>,  <32.050880, 36.237587, 25.573349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377514, 36.036655, 25.459614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192467, 0.701361, -0.686330,
		0.544189, 0.505722, 0.669405,
		0.816587, -0.502331, -0.284338,
		32.622490, 35.885956, 25.374311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016182, 36.826439, 26.059092>,  <32.050880, 36.237587, 25.573349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016182, 36.826439, 26.059092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704216, 36.800285, 25.810108>,  <31.517036, 36.784592, 25.660719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704216, 36.800285, 25.810108>,  <32.016182, 36.826439, 26.059092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704216, 36.800285, 25.810108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568630, -0.341524, 0.748346,
		-0.261516, 0.937596, 0.229180,
		-0.779917, -0.065386, -0.622459,
		31.470242, 36.780670, 25.623371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389843, 37.154415, 26.222013>,  <32.016182, 36.826439, 26.059092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389843, 37.154415, 26.222013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248774, 36.857990, 25.993473>,  <31.164131, 36.680134, 25.856348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248774, 36.857990, 25.993473>,  <31.389843, 37.154415, 26.222013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248774, 36.857990, 25.993473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655621, -0.239973, 0.715943,
		-0.667669, 0.627085, -0.401226,
		-0.352674, -0.741065, -0.571352,
		31.142971, 36.635670, 25.822067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672390, 37.191719, 26.418678>,  <31.389843, 37.154415, 26.222013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672390, 37.191719, 26.418678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721142, 36.836121, 26.242123>,  <30.750393, 36.622761, 26.136190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721142, 36.836121, 26.242123>,  <30.672390, 37.191719, 26.418678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721142, 36.836121, 26.242123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675182, -0.400218, 0.619641,
		-0.727513, 0.222495, -0.649016,
		0.121880, -0.889000, -0.441388,
		30.757706, 36.569420, 26.109707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039879, 36.849190, 26.513184>,  <30.672390, 37.191719, 26.418678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039879, 36.849190, 26.513184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304316, 36.555080, 26.453403>,  <30.462976, 36.378616, 26.417536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304316, 36.555080, 26.453403>,  <30.039879, 36.849190, 26.513184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304316, 36.555080, 26.453403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495732, -0.577552, 0.648601,
		-0.563214, -0.354696, -0.746312,
		0.661090, -0.735272, -0.149451,
		30.502642, 36.334499, 26.408567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625179, 36.271519, 26.479919>,  <30.039879, 36.849190, 26.513184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625179, 36.271519, 26.479919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978960, 36.132999, 26.605026>,  <30.191229, 36.049889, 26.680090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978960, 36.132999, 26.605026>,  <29.625179, 36.271519, 26.479919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978960, 36.132999, 26.605026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466496, -0.672476, 0.574593,
		0.011348, -0.654104, -0.756319,
		0.884451, -0.346300, 0.312768,
		30.244295, 36.029110, 26.698856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435337, 35.631954, 26.661463>,  <29.625179, 36.271519, 26.479919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435337, 35.631954, 26.661463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809147, 35.669777, 26.798706>,  <30.033432, 35.692471, 26.881052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809147, 35.669777, 26.798706>,  <29.435337, 35.631954, 26.661463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809147, 35.669777, 26.798706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172040, -0.723924, 0.668084,
		0.311556, -0.683370, -0.660257,
		0.934524, 0.094555, 0.343110,
		30.089504, 35.698143, 26.901638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744949, 34.887360, 26.786449>,  <29.435337, 35.631954, 26.661463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744949, 34.887360, 26.786449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942556, 35.153545, 27.010273>,  <30.061121, 35.313255, 27.144567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942556, 35.153545, 27.010273>,  <29.744949, 34.887360, 26.786449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942556, 35.153545, 27.010273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073189, -0.673122, 0.735901,
		0.866366, -0.322595, -0.381238,
		0.494017, 0.665462, 0.559560,
		30.090761, 35.353184, 27.178141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161400, 34.497849, 27.071917>,  <29.744949, 34.887360, 26.786449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161400, 34.497849, 27.071917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168245, 34.824455, 27.302746>,  <30.172352, 35.020420, 27.441244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168245, 34.824455, 27.302746>,  <30.161400, 34.497849, 27.071917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168245, 34.824455, 27.302746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000596, -0.577150, 0.816638,
		0.999853, -0.014318, -0.009390,
		0.017112, 0.816513, 0.577074,
		30.173380, 35.069408, 27.475868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679735, 34.376148, 27.617367>,  <30.161400, 34.497849, 27.071917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679735, 34.376148, 27.617367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430973, 34.665268, 27.737896>,  <30.281715, 34.838741, 27.810213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430973, 34.665268, 27.737896>,  <30.679735, 34.376148, 27.617367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430973, 34.665268, 27.737896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168483, -0.499274, 0.849905,
		0.764755, 0.477791, 0.432279,
		-0.621903, 0.722801, 0.301322,
		30.244402, 34.882107, 27.828293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824760, 34.371788, 28.248476>,  <30.679735, 34.376148, 27.617367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824760, 34.371788, 28.248476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469931, 34.556416, 28.245625>,  <30.257032, 34.667194, 28.243914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469931, 34.556416, 28.245625>,  <30.824760, 34.371788, 28.248476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469931, 34.556416, 28.245625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259524, -0.485872, 0.834611,
		0.381770, 0.742212, 0.550794,
		-0.887073, 0.461574, -0.007130,
		30.203808, 34.694889, 28.243486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603865, 34.392326, 28.921844>,  <30.824760, 34.371788, 28.248476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603865, 34.392326, 28.921844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251360, 34.494205, 28.762596>,  <30.039856, 34.555332, 28.667048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251360, 34.494205, 28.762596>,  <30.603865, 34.392326, 28.921844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251360, 34.494205, 28.762596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472570, -0.487705, 0.734045,
		-0.007203, 0.835027, 0.550162,
		-0.881264, 0.254702, -0.398122,
		29.986980, 34.570618, 28.643160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237528, 34.707291, 29.371077>,  <30.603865, 34.392326, 28.921844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237528, 34.707291, 29.371077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.951702, 34.554195, 29.136845>,  <29.780207, 34.462337, 28.996305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.951702, 34.554195, 29.136845>,  <30.237528, 34.707291, 29.371077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951702, 34.554195, 29.136845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431984, -0.416994, 0.799691,
		-0.550259, 0.824393, 0.132631,
		-0.714566, -0.382743, -0.585580,
		29.737331, 34.439373, 28.961170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714907, 34.891911, 29.682817>,  <30.237528, 34.707291, 29.371077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714907, 34.891911, 29.682817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616917, 34.578838, 29.453941>,  <29.558123, 34.390995, 29.316616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616917, 34.578838, 29.453941>,  <29.714907, 34.891911, 29.682817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616917, 34.578838, 29.453941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195209, -0.538270, 0.819853,
		-0.949674, 0.312540, -0.020923,
		-0.244975, -0.782677, -0.572192,
		29.543425, 34.344036, 29.282284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095348, 34.651360, 29.904736>,  <29.714907, 34.891911, 29.682817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095348, 34.651360, 29.904736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263929, 34.335323, 29.726688>,  <29.365078, 34.145702, 29.619860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263929, 34.335323, 29.726688>,  <29.095348, 34.651360, 29.904736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263929, 34.335323, 29.726688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218749, -0.564917, 0.795624,
		-0.880072, -0.237950, -0.410918,
		0.421454, -0.790094, -0.445116,
		29.390366, 34.098297, 29.593153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570955, 34.147041, 30.051046>,  <29.095348, 34.651360, 29.904736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570955, 34.147041, 30.051046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.898041, 33.944214, 29.942070>,  <29.094292, 33.822517, 29.876684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.898041, 33.944214, 29.942070>,  <28.570955, 34.147041, 30.051046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.898041, 33.944214, 29.942070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191326, -0.685812, 0.702180,
		-0.542897, -0.522057, -0.657814,
		0.817714, -0.507068, -0.272442,
		29.143354, 33.792091, 29.860336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.358139, 33.460419, 30.013023>,  <28.570955, 34.147041, 30.051046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.358139, 33.460419, 30.013023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753933, 33.432095, 30.063477>,  <28.991409, 33.415100, 30.093748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753933, 33.432095, 30.063477>,  <28.358139, 33.460419, 30.013023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753933, 33.432095, 30.063477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144446, -0.529811, 0.835724,
		0.007651, -0.845155, -0.534467,
		0.989483, -0.070807, 0.126133,
		29.050777, 33.410851, 30.101316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506863, 32.753231, 30.058392>,  <28.358139, 33.460419, 30.013023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506863, 32.753231, 30.058392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816698, 32.920246, 30.248413>,  <29.002600, 33.020454, 30.362425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816698, 32.920246, 30.248413>,  <28.506863, 32.753231, 30.058392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816698, 32.920246, 30.248413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025439, -0.729937, 0.683040,
		0.631952, -0.541161, -0.554780,
		0.774590, 0.417535, 0.475052,
		29.049074, 33.045506, 30.390928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954174, 32.196480, 30.187349>,  <28.506863, 32.753231, 30.058392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954174, 32.196480, 30.187349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.087395, 32.472244, 30.444656>,  <29.167328, 32.637703, 30.599041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.087395, 32.472244, 30.444656>,  <28.954174, 32.196480, 30.187349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.087395, 32.472244, 30.444656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275495, -0.723596, 0.632859,
		0.901764, -0.033559, -0.430925,
		0.333054, 0.689407, 0.643267,
		29.187311, 32.679066, 30.637636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477320, 31.834270, 30.389727>,  <28.954174, 32.196480, 30.187349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477320, 31.834270, 30.389727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423981, 32.115063, 30.669567>,  <29.391977, 32.283539, 30.837471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423981, 32.115063, 30.669567>,  <29.477320, 31.834270, 30.389727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423981, 32.115063, 30.669567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290921, -0.647083, 0.704733,
		0.947409, 0.297503, -0.117934,
		-0.133347, 0.701980, 0.699602,
		29.383976, 32.325657, 30.879448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029114, 31.676380, 30.792603>,  <29.477320, 31.834270, 30.389727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029114, 31.676380, 30.792603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760874, 31.890907, 30.997604>,  <29.599930, 32.019623, 31.120605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760874, 31.890907, 30.997604>,  <30.029114, 31.676380, 30.792603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760874, 31.890907, 30.997604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208140, -0.527088, 0.823927,
		0.712019, 0.659199, 0.241838,
		-0.670602, 0.536316, 0.512502,
		29.559692, 32.051804, 31.151356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420736, 31.719658, 31.446253>,  <30.029114, 31.676380, 30.792603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420736, 31.719658, 31.446253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023155, 31.753265, 31.474529>,  <29.784607, 31.773430, 31.491495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023155, 31.753265, 31.474529>,  <30.420736, 31.719658, 31.446253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023155, 31.753265, 31.474529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013513, -0.545306, 0.838128,
		0.108968, 0.834016, 0.540873,
		-0.993954, 0.084020, 0.070691,
		29.724970, 31.778471, 31.495737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197992, 31.772417, 32.183254>,  <30.420736, 31.719658, 31.446253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197992, 31.772417, 32.183254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.896114, 31.607620, 31.979019>,  <29.714987, 31.508743, 31.856480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.896114, 31.607620, 31.979019>,  <30.197992, 31.772417, 32.183254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896114, 31.607620, 31.979019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064468, -0.727908, 0.682638,
		-0.652899, 0.548100, 0.522789,
		-0.754696, -0.411991, -0.510585,
		29.669706, 31.484022, 31.825844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706682, 31.700331, 32.684799>,  <30.197992, 31.772417, 32.183254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706682, 31.700331, 32.684799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626566, 31.447094, 32.385712>,  <29.578495, 31.295153, 32.206261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626566, 31.447094, 32.385712>,  <29.706682, 31.700331, 32.684799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626566, 31.447094, 32.385712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086085, -0.748856, 0.657118,
		-0.975947, 0.195983, 0.095491,
		-0.200293, -0.633092, -0.747714,
		29.566479, 31.257166, 32.161396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070580, 31.317383, 32.939228>,  <29.706682, 31.700331, 32.684799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070580, 31.317383, 32.939228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201979, 31.100521, 32.629868>,  <29.280819, 30.970404, 32.444252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201979, 31.100521, 32.629868>,  <29.070580, 31.317383, 32.939228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201979, 31.100521, 32.629868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275141, -0.838264, 0.470756,
		-0.903540, 0.058152, -0.424539,
		0.328501, -0.542155, -0.773405,
		29.300529, 30.937874, 32.397846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529591, 30.835636, 32.840023>,  <29.070580, 31.317383, 32.939228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529591, 30.835636, 32.840023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876444, 30.700970, 32.693199>,  <29.084557, 30.620171, 32.605103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876444, 30.700970, 32.693199>,  <28.529591, 30.835636, 32.840023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876444, 30.700970, 32.693199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183233, -0.900907, 0.393436,
		-0.463145, -0.273904, -0.842896,
		0.867135, -0.336664, -0.367062,
		29.136585, 30.599970, 32.583080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370728, 30.164474, 32.745010>,  <28.529591, 30.835636, 32.840023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370728, 30.164474, 32.745010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.764345, 30.136612, 32.679516>,  <29.000515, 30.119894, 32.640221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.764345, 30.136612, 32.679516>,  <28.370728, 30.164474, 32.745010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764345, 30.136612, 32.679516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011733, -0.943592, 0.330903,
		-0.177546, -0.323701, -0.929352,
		0.984042, -0.069654, -0.163734,
		29.059559, 30.115715, 32.630394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437803, 29.608204, 32.206284>,  <28.370728, 30.164474, 32.745010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437803, 29.608204, 32.206284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.768652, 29.652428, 32.426701>,  <28.967161, 29.678963, 32.558949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.768652, 29.652428, 32.426701>,  <28.437803, 29.608204, 32.206284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.768652, 29.652428, 32.426701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066808, -0.992850, 0.098923,
		0.558036, -0.045007, -0.828595,
		0.827123, 0.110560, 0.551040,
		29.016788, 29.685596, 32.592014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916792, 29.139162, 31.927101>,  <28.437803, 29.608204, 32.206284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916792, 29.139162, 31.927101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035490, 29.215080, 32.301464>,  <29.106709, 29.260632, 32.526081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035490, 29.215080, 32.301464>,  <28.916792, 29.139162, 31.927101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035490, 29.215080, 32.301464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036697, -0.977060, 0.209777,
		0.954251, -0.096595, -0.282973,
		0.296745, 0.189796, 0.935906,
		29.124514, 29.272018, 32.582237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567087, 28.703621, 32.022572>,  <28.916792, 29.139162, 31.927101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567087, 28.703621, 32.022572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388149, 28.816807, 32.361938>,  <29.280787, 28.884718, 32.565559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388149, 28.816807, 32.361938>,  <29.567087, 28.703621, 32.022572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388149, 28.816807, 32.361938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111990, -0.958887, 0.260759,
		0.887323, 0.021635, 0.460641,
		-0.447344, 0.282964, 0.848419,
		29.253946, 28.901695, 32.616463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850969, 28.218899, 32.446980>,  <29.567087, 28.703621, 32.022572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850969, 28.218899, 32.446980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534811, 28.357536, 32.649029>,  <29.345116, 28.440718, 32.770260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534811, 28.357536, 32.649029>,  <29.850969, 28.218899, 32.446980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534811, 28.357536, 32.649029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199597, -0.925267, 0.322556,
		0.579168, 0.154126, 0.800506,
		-0.790396, 0.346593, 0.505122,
		29.297691, 28.461514, 32.800564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906271, 27.937710, 33.147129>,  <29.850969, 28.218899, 32.446980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906271, 27.937710, 33.147129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517080, 28.028080, 33.128067>,  <29.283566, 28.082302, 33.116631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517080, 28.028080, 33.128067>,  <29.906271, 27.937710, 33.147129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517080, 28.028080, 33.128067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228823, -0.915901, 0.329797,
		0.030863, 0.331790, 0.942848,
		-0.972979, 0.225924, -0.047654,
		29.225187, 28.095858, 33.113770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639423, 27.602217, 33.725388>,  <29.906271, 27.937710, 33.147129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639423, 27.602217, 33.725388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319340, 27.705441, 33.508842>,  <29.127289, 27.767376, 33.378918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319340, 27.705441, 33.508842>,  <29.639423, 27.602217, 33.725388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319340, 27.705441, 33.508842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457285, -0.846583, 0.272375,
		-0.388016, 0.465512, 0.795450,
		-0.800209, 0.258061, -0.541360,
		29.079277, 27.782860, 33.346436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019686, 27.564749, 34.147678>,  <29.639423, 27.602217, 33.725388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019686, 27.564749, 34.147678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.890337, 27.525234, 33.771236>,  <28.812729, 27.501526, 33.545372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.890337, 27.525234, 33.771236>,  <29.019686, 27.564749, 34.147678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890337, 27.525234, 33.771236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301780, -0.931839, 0.201506,
		-0.896862, 0.349167, 0.271518,
		-0.323370, -0.098784, -0.941102,
		28.793325, 27.495600, 33.488907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401209, 27.326105, 34.257072>,  <29.019686, 27.564749, 34.147678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.401209, 27.326105, 34.257072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510193, 27.204266, 33.892002>,  <28.575583, 27.131163, 33.672958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510193, 27.204266, 33.892002>,  <28.401209, 27.326105, 34.257072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510193, 27.204266, 33.892002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367807, -0.909497, 0.193736,
		-0.889091, 0.282905, -0.359836,
		0.272461, -0.304599, -0.912680,
		28.591930, 27.112886, 33.618198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861511, 26.846724, 34.070831>,  <28.401209, 27.326105, 34.257072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861511, 26.846724, 34.070831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151848, 26.784916, 33.802719>,  <28.326050, 26.747831, 33.641853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151848, 26.784916, 33.802719>,  <27.861511, 26.846724, 34.070831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151848, 26.784916, 33.802719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139641, -0.987252, 0.076377,
		-0.673538, 0.038161, -0.738167,
		0.725843, -0.154521, -0.670281,
		28.369600, 26.738560, 33.601635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.603941, 26.436464, 33.685211>,  <27.861511, 26.846724, 34.070831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.603941, 26.436464, 33.685211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984402, 26.385921, 33.572540>,  <28.212679, 26.355595, 33.504936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984402, 26.385921, 33.572540>,  <27.603941, 26.436464, 33.685211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984402, 26.385921, 33.572540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088797, -0.985820, 0.142389,
		-0.295678, -0.110421, -0.948884,
		0.951152, -0.126359, -0.281680,
		28.269747, 26.348013, 33.488037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.493328, 25.851429, 33.289986>,  <27.603941, 26.436464, 33.685211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.493328, 25.851429, 33.289986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885262, 25.874996, 33.366360>,  <28.120422, 25.889137, 33.412182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885262, 25.874996, 33.366360>,  <27.493328, 25.851429, 33.289986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885262, 25.874996, 33.366360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035492, -0.991663, 0.123872,
		0.196638, -0.114597, -0.973756,
		0.979834, 0.058918, 0.190931,
		28.179213, 25.892672, 33.423637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006353, 25.354080, 32.939514>,  <27.493328, 25.851429, 33.289986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006353, 25.354080, 32.939514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134888, 25.451363, 33.305595>,  <28.212008, 25.509733, 33.525246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134888, 25.451363, 33.305595>,  <28.006353, 25.354080, 32.939514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134888, 25.451363, 33.305595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078544, -0.956282, 0.281702,
		0.943703, -0.162404, -0.288183,
		0.321334, 0.243208, 0.915202,
		28.231287, 25.524324, 33.580154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257019, 25.028683, 32.935513>,  <28.006353, 25.354080, 32.939514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257019, 25.028683, 32.935513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065907, 25.044598, 32.584480>,  <26.951239, 25.054146, 32.373863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065907, 25.044598, 32.584480>,  <27.257019, 25.028683, 32.935513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065907, 25.044598, 32.584480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804003, 0.422340, -0.418579,
		0.353981, -0.905564, -0.233777,
		-0.477784, 0.039788, -0.877576,
		26.922571, 25.056534, 32.321209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648016, 24.716835, 32.446781>,  <27.257019, 25.028683, 32.935513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.648016, 24.716835, 32.446781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437588, 24.956654, 32.205521>,  <27.311331, 25.100544, 32.060764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437588, 24.956654, 32.205521>,  <27.648016, 24.716835, 32.446781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437588, 24.956654, 32.205521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850332, 0.359376, -0.384429,
		-0.013723, -0.715118, -0.698869,
		-0.526069, 0.599546, -0.603156,
		27.279768, 25.136517, 32.024574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855934, 24.619455, 31.717728>,  <27.648016, 24.716835, 32.446781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855934, 24.619455, 31.717728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679464, 24.978424, 31.718605>,  <27.573584, 25.193806, 31.719131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679464, 24.978424, 31.718605>,  <27.855934, 24.619455, 31.717728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679464, 24.978424, 31.718605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774756, 0.382101, -0.503738,
		-0.452902, -0.220537, -0.863854,
		-0.441172, 0.897420, 0.002192,
		27.547113, 25.247650, 31.719263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039967, 24.810156, 31.091396>,  <27.855934, 24.619455, 31.717728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039967, 24.810156, 31.091396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927784, 25.143246, 31.282356>,  <27.860474, 25.343100, 31.396933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927784, 25.143246, 31.282356>,  <28.039967, 24.810156, 31.091396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.927784, 25.143246, 31.282356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605476, 0.539407, -0.585182,
		-0.744810, 0.124937, -0.655476,
		-0.280457, 0.832725, 0.477402,
		27.843647, 25.393063, 31.425577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919657, 25.250782, 30.592930>,  <28.039967, 24.810156, 31.091396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919657, 25.250782, 30.592930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968178, 25.494247, 30.906570>,  <27.997290, 25.640327, 31.094755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968178, 25.494247, 30.906570>,  <27.919657, 25.250782, 30.592930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968178, 25.494247, 30.906570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551964, 0.615180, -0.562930,
		-0.824998, 0.501079, -0.261340,
		0.121301, 0.608666, 0.784099,
		28.004568, 25.676847, 31.141800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737597, 25.917679, 30.316055>,  <27.919657, 25.250782, 30.592930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737597, 25.917679, 30.316055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958229, 25.979431, 30.643940>,  <28.090609, 26.016481, 30.840672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958229, 25.979431, 30.643940>,  <27.737597, 25.917679, 30.316055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958229, 25.979431, 30.643940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565065, 0.653716, -0.503346,
		-0.613564, 0.740826, 0.273342,
		0.551579, 0.154379, 0.819712,
		28.123703, 26.025745, 30.889853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690773, 26.646069, 30.376156>,  <27.737597, 25.917679, 30.316055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690773, 26.646069, 30.376156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018276, 26.536831, 30.578167>,  <28.214779, 26.471289, 30.699373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018276, 26.536831, 30.578167>,  <27.690773, 26.646069, 30.376156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018276, 26.536831, 30.578167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490026, 0.790766, -0.366829,
		-0.299181, 0.547822, 0.781269,
		0.818758, -0.273094, 0.505029,
		28.263905, 26.454903, 30.729675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039558, 27.238226, 30.509237>,  <27.690773, 26.646069, 30.376156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039558, 27.238226, 30.509237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334381, 26.978085, 30.582760>,  <28.511274, 26.821999, 30.626873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334381, 26.978085, 30.582760>,  <28.039558, 27.238226, 30.509237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334381, 26.978085, 30.582760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666165, 0.653305, -0.359745,
		0.113881, 0.387597, 0.914768,
		0.737058, -0.650354, 0.183805,
		28.555498, 26.782978, 30.637901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534164, 27.657738, 30.742168>,  <28.039558, 27.238226, 30.509237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534164, 27.657738, 30.742168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721634, 27.326813, 30.618298>,  <28.834116, 27.128258, 30.543976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721634, 27.326813, 30.618298>,  <28.534164, 27.657738, 30.742168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721634, 27.326813, 30.618298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645400, 0.560050, -0.519425,
		0.603161, 0.043577, 0.796429,
		0.468674, -0.827312, -0.309675,
		28.862236, 27.078619, 30.525394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188461, 27.781027, 30.816469>,  <28.534164, 27.657738, 30.742168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188461, 27.781027, 30.816469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166794, 27.494694, 30.538002>,  <29.153793, 27.322895, 30.370922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166794, 27.494694, 30.538002>,  <29.188461, 27.781027, 30.816469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166794, 27.494694, 30.538002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513947, 0.577764, -0.634072,
		0.856110, -0.392141, 0.336602,
		-0.054169, -0.715831, -0.696169,
		29.150543, 27.279943, 30.329151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747488, 27.747099, 30.618694>,  <29.188461, 27.781027, 30.816469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747488, 27.747099, 30.618694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.518524, 27.616310, 30.317913>,  <29.381145, 27.537836, 30.137444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.518524, 27.616310, 30.317913>,  <29.747488, 27.747099, 30.618694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518524, 27.616310, 30.317913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471626, 0.618887, -0.628131,
		0.670756, -0.714190, -0.200048,
		-0.572412, -0.326974, -0.751953,
		29.346800, 27.518217, 30.092327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254120, 27.748310, 30.109276>,  <29.747488, 27.747099, 30.618694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254120, 27.748310, 30.109276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892551, 27.715378, 29.941395>,  <29.675611, 27.695620, 29.840666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892551, 27.715378, 29.941395>,  <30.254120, 27.748310, 30.109276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892551, 27.715378, 29.941395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254301, 0.685551, -0.682166,
		0.343891, -0.723354, -0.598747,
		-0.903919, -0.082329, -0.419704,
		29.621376, 27.690680, 29.815483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290304, 27.725779, 29.384802>,  <30.254120, 27.748310, 30.109276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290304, 27.725779, 29.384802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.916756, 27.855160, 29.445816>,  <29.692627, 27.932789, 29.482424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.916756, 27.855160, 29.445816>,  <30.290304, 27.725779, 29.384802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916756, 27.855160, 29.445816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192096, 0.813488, -0.548941,
		-0.301642, -0.483338, -0.821825,
		-0.933869, 0.323453, 0.152535,
		29.636595, 27.952196, 29.491577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129021, 28.228830, 28.774645>,  <30.290304, 27.725779, 29.384802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129021, 28.228830, 28.774645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817780, 28.313713, 29.011127>,  <29.631035, 28.364643, 29.153017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817780, 28.313713, 29.011127>,  <30.129021, 28.228830, 28.774645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817780, 28.313713, 29.011127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137700, 0.860684, -0.490165,
		-0.612858, -0.462807, -0.640479,
		-0.778102, 0.212208, 0.591206,
		29.584349, 28.377375, 29.188490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562239, 28.364775, 28.288885>,  <30.129021, 28.228830, 28.774645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562239, 28.364775, 28.288885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423067, 28.529747, 28.625656>,  <29.339565, 28.628731, 28.827719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423067, 28.529747, 28.625656>,  <29.562239, 28.364775, 28.288885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423067, 28.529747, 28.625656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148115, 0.862579, -0.483756,
		-0.925747, -0.293014, -0.239028,
		-0.347928, 0.412432, 0.841930,
		29.318689, 28.653477, 28.878235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850424, 28.623846, 28.226690>,  <29.562239, 28.364775, 28.288885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850424, 28.623846, 28.226690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.982801, 28.847759, 28.530563>,  <29.062227, 28.982107, 28.712887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.982801, 28.847759, 28.530563>,  <28.850424, 28.623846, 28.226690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982801, 28.847759, 28.530563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265332, 0.827770, -0.494365,
		-0.905580, -0.037961, 0.422474,
		0.330945, 0.559782, 0.759684,
		29.082085, 29.015694, 28.758469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354303, 29.063639, 28.478725>,  <28.850424, 28.623846, 28.226690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354303, 29.063639, 28.478725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691721, 29.254822, 28.576698>,  <28.894171, 29.369532, 28.635483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691721, 29.254822, 28.576698>,  <28.354303, 29.063639, 28.478725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691721, 29.254822, 28.576698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430949, 0.874545, -0.222384,
		-0.320495, 0.082037, 0.943691,
		0.843544, 0.477956, 0.244933,
		28.944784, 29.398209, 28.650179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166067, 29.655104, 28.822855>,  <28.354303, 29.063639, 28.478725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166067, 29.655104, 28.822855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549166, 29.734913, 28.739994>,  <28.779024, 29.782799, 28.690277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549166, 29.734913, 28.739994>,  <28.166067, 29.655104, 28.822855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549166, 29.734913, 28.739994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240601, 0.950431, -0.196959,
		0.157588, 0.238478, 0.958277,
		0.957746, 0.199525, -0.207154,
		28.836489, 29.794771, 28.677847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217247, 30.291647, 29.042578>,  <28.166067, 29.655104, 28.822855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217247, 30.291647, 29.042578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540869, 30.240597, 28.813095>,  <28.735043, 30.209967, 28.675406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540869, 30.240597, 28.813095>,  <28.217247, 30.291647, 29.042578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540869, 30.240597, 28.813095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139444, 0.906583, -0.398326,
		0.570949, 0.402268, 0.715680,
		0.809057, -0.127626, -0.573706,
		28.783587, 30.202309, 28.640984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733349, 30.789434, 29.242413>,  <28.217247, 30.291647, 29.042578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733349, 30.789434, 29.242413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.769123, 30.692459, 28.855999>,  <28.790588, 30.634274, 28.624151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.769123, 30.692459, 28.855999>,  <28.733349, 30.789434, 29.242413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.769123, 30.692459, 28.855999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097728, 0.963106, -0.250751,
		0.991186, 0.116835, 0.062444,
		0.089437, -0.242438, -0.966036,
		28.795954, 30.619728, 28.566189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942535, 31.428394, 28.985971>,  <28.733349, 30.789434, 29.242413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942535, 31.428394, 28.985971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.853413, 31.232906, 28.648567>,  <28.799938, 31.115614, 28.446125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.853413, 31.232906, 28.648567>,  <28.942535, 31.428394, 28.985971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853413, 31.232906, 28.648567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128187, 0.872435, -0.471621,
		0.966398, 0.003046, -0.257033,
		-0.222808, -0.488721, -0.843509,
		28.786570, 31.086290, 28.395514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297523, 31.754761, 28.412903>,  <28.942535, 31.428394, 28.985971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297523, 31.754761, 28.412903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001486, 31.553719, 28.234173>,  <28.823864, 31.433094, 28.126936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001486, 31.553719, 28.234173>,  <29.297523, 31.754761, 28.412903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001486, 31.553719, 28.234173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271971, 0.831350, -0.484654,
		0.615054, -0.237167, -0.751971,
		-0.740095, -0.502603, -0.446823,
		28.779457, 31.402937, 28.100126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366013, 31.706800, 27.609673>,  <29.297523, 31.754761, 28.412903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366013, 31.706800, 27.609673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988525, 31.688068, 27.740643>,  <28.762033, 31.676828, 27.819223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988525, 31.688068, 27.740643>,  <29.366013, 31.706800, 27.609673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988525, 31.688068, 27.740643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256156, 0.729736, -0.633932,
		-0.209244, -0.682123, -0.700660,
		-0.943717, -0.046832, 0.327423,
		28.705410, 31.674019, 27.838869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137369, 31.958014, 26.973644>,  <29.366013, 31.706800, 27.609673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137369, 31.958014, 26.973644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.852430, 31.951790, 27.254307>,  <28.681467, 31.948055, 27.422705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.852430, 31.951790, 27.254307>,  <29.137369, 31.958014, 26.973644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.852430, 31.951790, 27.254307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466827, 0.757025, -0.457150,
		-0.524058, -0.653201, -0.546527,
		-0.712346, -0.015560, 0.701656,
		28.638727, 31.947123, 27.464804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.441275, 32.053574, 26.621471>,  <29.137369, 31.958014, 26.973644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.441275, 32.053574, 26.621471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372740, 32.161572, 27.000469>,  <28.331619, 32.226372, 27.227867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372740, 32.161572, 27.000469>,  <28.441275, 32.053574, 26.621471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.372740, 32.161572, 27.000469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582228, 0.748062, -0.318454,
		-0.794766, -0.606221, 0.029028,
		-0.171339, 0.269998, 0.947494,
		28.321339, 32.242569, 27.284718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725563, 32.150459, 26.696409>,  <28.441275, 32.053574, 26.621471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725563, 32.150459, 26.696409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917765, 32.357590, 26.979527>,  <28.033085, 32.481869, 27.149397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917765, 32.357590, 26.979527>,  <27.725563, 32.150459, 26.696409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917765, 32.357590, 26.979527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624858, 0.768445, -0.138002,
		-0.615362, -0.375960, 0.692809,
		0.480502, 0.517828, 0.707794,
		28.061916, 32.512939, 27.191864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154480, 32.537128, 26.986958>,  <27.725563, 32.150459, 26.696409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154480, 32.537128, 26.986958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473148, 32.717953, 27.147434>,  <27.664351, 32.826447, 27.243719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473148, 32.717953, 27.147434>,  <27.154480, 32.537128, 26.986958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473148, 32.717953, 27.147434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480255, 0.876472, -0.033936,
		-0.366973, -0.165638, 0.915366,
		0.796672, 0.452063, 0.401190,
		27.712151, 32.853573, 27.267792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934443, 32.808781, 27.561031>,  <27.154480, 32.537128, 26.986958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934443, 32.808781, 27.561031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254381, 33.024906, 27.456486>,  <27.446344, 33.154579, 27.393759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254381, 33.024906, 27.456486>,  <26.934443, 32.808781, 27.561031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254381, 33.024906, 27.456486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574573, 0.815177, -0.073160,
		0.173527, 0.208689, 0.962464,
		0.799846, 0.540311, -0.261363,
		27.494335, 33.187000, 27.378077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.919703, 33.499638, 27.902256>,  <26.934443, 32.808781, 27.561031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.919703, 33.499638, 27.902256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162066, 33.573318, 27.592690>,  <27.307484, 33.617527, 27.406950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162066, 33.573318, 27.592690>,  <26.919703, 33.499638, 27.902256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162066, 33.573318, 27.592690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365564, 0.928499, -0.065211,
		0.706569, 0.322428, 0.629921,
		0.605907, 0.184200, -0.773917,
		27.343838, 33.628578, 27.360514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112162, 34.225327, 27.992311>,  <26.919703, 33.499638, 27.902256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112162, 34.225327, 27.992311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.194246, 34.124237, 27.614101>,  <27.243498, 34.063583, 27.387175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.194246, 34.124237, 27.614101>,  <27.112162, 34.225327, 27.992311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.194246, 34.124237, 27.614101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342558, 0.886432, -0.311274,
		0.916811, 0.387775, 0.095336,
		0.205213, -0.252721, -0.945526,
		27.255810, 34.048420, 27.330444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232008, 34.837250, 27.777441>,  <27.112162, 34.225327, 27.992311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232008, 34.837250, 27.777441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.161198, 34.642673, 27.435204>,  <27.118711, 34.525928, 27.229860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.161198, 34.642673, 27.435204>,  <27.232008, 34.837250, 27.777441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.161198, 34.642673, 27.435204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414738, 0.825239, -0.383370,
		0.892555, 0.286981, -0.347832,
		-0.177025, -0.486438, -0.855593,
		27.108089, 34.496742, 27.178526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.517189, 35.235149, 27.275900>,  <27.232008, 34.837250, 27.777441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.517189, 35.235149, 27.275900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265308, 34.995876, 27.077648>,  <27.114180, 34.852310, 26.958696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265308, 34.995876, 27.077648>,  <27.517189, 35.235149, 27.275900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265308, 34.995876, 27.077648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281583, 0.770380, -0.572036,
		0.724006, -0.220652, -0.653550,
		-0.629703, -0.598187, -0.495628,
		27.076397, 34.816422, 26.928959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647797, 35.294678, 26.511021>,  <27.517189, 35.235149, 27.275900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647797, 35.294678, 26.511021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279533, 35.139889, 26.531578>,  <27.058575, 35.047016, 26.543913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279533, 35.139889, 26.531578>,  <27.647797, 35.294678, 26.511021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.279533, 35.139889, 26.531578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323967, 0.683955, -0.653645,
		0.217788, -0.618434, -0.755055,
		-0.920660, -0.386969, 0.051395,
		27.003336, 35.023800, 26.546997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452211, 35.145710, 25.857704>,  <27.647797, 35.294678, 26.511021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452211, 35.145710, 25.857704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.104515, 35.184978, 26.051521>,  <26.895897, 35.208538, 26.167810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.104515, 35.184978, 26.051521>,  <27.452211, 35.145710, 25.857704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.104515, 35.184978, 26.051521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335626, 0.602454, -0.724158,
		-0.363006, -0.792093, -0.490730,
		-0.869242, 0.098172, 0.484541,
		26.843742, 35.214432, 26.196884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971161, 35.077061, 25.398016>,  <27.452211, 35.145710, 25.857704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971161, 35.077061, 25.398016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746569, 35.248158, 25.681362>,  <26.611814, 35.350815, 25.851370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746569, 35.248158, 25.681362>,  <26.971161, 35.077061, 25.398016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.746569, 35.248158, 25.681362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554885, 0.440433, -0.705777,
		-0.613875, -0.789340, -0.009948,
		-0.561480, 0.427739, 0.708364,
		26.578125, 35.376480, 25.893871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.328800, 35.012730, 25.124777>,  <26.971161, 35.077061, 25.398016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.328800, 35.012730, 25.124777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270554, 35.290745, 25.406406>,  <26.235605, 35.457554, 25.575384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270554, 35.290745, 25.406406>,  <26.328800, 35.012730, 25.124777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270554, 35.290745, 25.406406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791994, 0.344600, -0.503981,
		-0.592909, -0.631009, 0.500286,
		-0.145618, 0.695038, 0.704072,
		26.226868, 35.499256, 25.617628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.539959, 35.185551, 25.150709>,  <26.328800, 35.012730, 25.124777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.539959, 35.185551, 25.150709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726376, 35.495335, 25.321831>,  <25.838226, 35.681206, 25.424503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726376, 35.495335, 25.321831>,  <25.539959, 35.185551, 25.150709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.726376, 35.495335, 25.321831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580897, 0.632550, -0.512289,
		-0.667355, -0.009763, 0.744676,
		0.466043, 0.774458, 0.427806,
		25.866188, 35.727673, 25.450172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.031261, 35.562881, 25.236753>,  <25.539959, 35.185551, 25.150709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.031261, 35.562881, 25.236753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366871, 35.779449, 25.215187>,  <25.568237, 35.909389, 25.202248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366871, 35.779449, 25.215187>,  <25.031261, 35.562881, 25.236753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.366871, 35.779449, 25.215187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423312, 0.587301, -0.689843,
		-0.341827, 0.601619, 0.721948,
		0.839024, 0.541417, -0.053917,
		25.618578, 35.941875, 25.199013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.892029, 36.343582, 25.285709>,  <25.031261, 35.562881, 25.236753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.892029, 36.343582, 25.285709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253866, 36.348076, 25.115257>,  <25.470968, 36.350773, 25.012987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253866, 36.348076, 25.115257>,  <24.892029, 36.343582, 25.285709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.253866, 36.348076, 25.115257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334595, 0.638098, -0.693453,
		0.264118, 0.769873, 0.580979,
		0.904593, 0.011239, -0.426129,
		25.525244, 36.351448, 24.987419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.069164, 37.063442, 25.232603>,  <24.892029, 36.343582, 25.285709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.069164, 37.063442, 25.232603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.300198, 36.856064, 24.980377>,  <25.438818, 36.731636, 24.829042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.300198, 36.856064, 24.980377>,  <25.069164, 37.063442, 25.232603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.300198, 36.856064, 24.980377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289968, 0.591768, -0.752150,
		0.763095, 0.617275, 0.191464,
		0.577585, -0.518443, -0.630565,
		25.473473, 36.700531, 24.791208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.226934, 37.517799, 24.690464>,  <25.069164, 37.063442, 25.232603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.226934, 37.517799, 24.690464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339350, 37.166767, 24.535095>,  <25.406799, 36.956146, 24.441874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339350, 37.166767, 24.535095>,  <25.226934, 37.517799, 24.690464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.339350, 37.166767, 24.535095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191076, 0.345462, -0.918774,
		0.940483, 0.332428, -0.070597,
		0.281038, -0.877580, -0.388420,
		25.423660, 36.903492, 24.418570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.453171, 37.429665, 24.408054>,  <25.226934, 37.517799, 24.690464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.453171, 37.429665, 24.408054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542196, 37.253056, 24.060371>,  <24.595612, 37.147091, 23.851761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542196, 37.253056, 24.060371>,  <24.453171, 37.429665, 24.408054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.542196, 37.253056, 24.060371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419930, -0.761209, 0.494186,
		-0.879843, -0.474995, 0.015991,
		0.222563, -0.441521, -0.869209,
		24.608965, 37.120598, 23.799608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.198166, 36.751125, 24.375364>,  <24.453171, 37.429665, 24.408054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.198166, 36.751125, 24.375364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.513710, 36.776119, 24.130810>,  <24.703037, 36.791115, 23.984077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.513710, 36.776119, 24.130810>,  <24.198166, 36.751125, 24.375364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.513710, 36.776119, 24.130810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511022, -0.619326, 0.596064,
		-0.341404, -0.782643, -0.520493,
		0.788860, 0.062485, -0.611388,
		24.750368, 36.794865, 23.947393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.472956, 36.135845, 24.106712>,  <24.198166, 36.751125, 24.375364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.472956, 36.135845, 24.106712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.783022, 36.388351, 24.116646>,  <24.969061, 36.539856, 24.122606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.783022, 36.388351, 24.116646>,  <24.472956, 36.135845, 24.106712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.783022, 36.388351, 24.116646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524944, -0.665477, 0.530635,
		0.351499, -0.398295, -0.847236,
		0.775166, 0.631269, 0.024832,
		25.015572, 36.577732, 24.124096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.019308, 36.318161, 23.567440>,  <24.472956, 36.135845, 24.106712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.019308, 36.318161, 23.567440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.684734, 36.473637, 23.722000>,  <23.483990, 36.566921, 23.814735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.684734, 36.473637, 23.722000>,  <24.019308, 36.318161, 23.567440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.684734, 36.473637, 23.722000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516377, -0.795159, -0.317928,
		0.183674, -0.465452, 0.865805,
		-0.836432, 0.388686, 0.386399,
		23.433805, 36.590244, 23.837919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.609718, 35.802940, 23.801311>,  <24.019308, 36.318161, 23.567440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.609718, 35.802940, 23.801311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.611975, 35.431637, 23.950069>,  <23.613329, 35.208855, 24.039324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.611975, 35.431637, 23.950069>,  <23.609718, 35.802940, 23.801311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.611975, 35.431637, 23.950069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051585, -0.371676, -0.926928,
		0.998653, -0.013957, -0.049980,
		0.005640, -0.928258, 0.371895,
		23.613667, 35.153160, 24.061638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.188356, 35.496441, 23.596092>,  <23.609718, 35.802940, 23.801311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.188356, 35.496441, 23.596092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.895782, 35.236149, 23.677624>,  <23.720238, 35.079971, 23.726543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.895782, 35.236149, 23.677624>,  <24.188356, 35.496441, 23.596092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.895782, 35.236149, 23.677624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012404, -0.286162, -0.958101,
		0.681797, -0.703318, 0.201238,
		-0.731436, -0.650734, 0.203828,
		23.676352, 35.040928, 23.738771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.343138, 34.787247, 23.385122>,  <24.188356, 35.496441, 23.596092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.343138, 34.787247, 23.385122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.952271, 34.862766, 23.346142>,  <23.717751, 34.908077, 23.322754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.952271, 34.862766, 23.346142>,  <24.343138, 34.787247, 23.385122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.952271, 34.862766, 23.346142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041876, -0.278530, -0.959514,
		-0.208296, -0.941688, 0.264265,
		-0.977168, 0.188797, -0.097450,
		23.659121, 34.919407, 23.316906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.940535, 34.127762, 23.306879>,  <24.343138, 34.787247, 23.385122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.940535, 34.127762, 23.306879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.745691, 34.429501, 23.130840>,  <23.628784, 34.610542, 23.025217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.745691, 34.429501, 23.130840>,  <23.940535, 34.127762, 23.306879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.745691, 34.429501, 23.130840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000362, -0.504099, -0.863646,
		-0.873340, -0.420531, 0.245825,
		-0.487110, 0.754346, -0.440098,
		23.599558, 34.655804, 22.998812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.447998, 33.870705, 22.964735>,  <23.940535, 34.127762, 23.306879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.447998, 33.870705, 22.964735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.439495, 34.229286, 22.787682>,  <23.434393, 34.444435, 22.681450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.439495, 34.229286, 22.787682>,  <23.447998, 33.870705, 22.964735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.439495, 34.229286, 22.787682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238274, -0.434519, -0.868573,
		-0.970965, 0.087007, 0.222837,
		-0.021255, 0.896450, -0.442634,
		23.433119, 34.498222, 22.654892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.842941, 33.856892, 22.584929>,  <23.447998, 33.870705, 22.964735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.842941, 33.856892, 22.584929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.045778, 34.147972, 22.400188>,  <23.167480, 34.322620, 22.289345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.045778, 34.147972, 22.400188>,  <22.842941, 33.856892, 22.584929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.045778, 34.147972, 22.400188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313587, -0.343354, -0.885309,
		-0.802821, 0.593762, 0.054087,
		0.507092, 0.727705, -0.461848,
		23.197906, 34.366283, 22.261635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.448692, 34.060223, 22.151814>,  <22.842941, 33.856892, 22.584929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.448692, 34.060223, 22.151814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.789997, 34.202072, 21.998875>,  <22.994780, 34.287182, 21.907112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.789997, 34.202072, 21.998875>,  <22.448692, 34.060223, 22.151814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.789997, 34.202072, 21.998875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376930, -0.087274, -0.922121,
		-0.360376, 0.930927, 0.059202,
		0.853260, 0.354625, -0.382346,
		23.045975, 34.308460, 21.884171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.247255, 34.329601, 21.485201>,  <22.448692, 34.060223, 22.151814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.247255, 34.329601, 21.485201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.638517, 34.277775, 21.420174>,  <22.873274, 34.246681, 21.381157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.638517, 34.277775, 21.420174>,  <22.247255, 34.329601, 21.485201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.638517, 34.277775, 21.420174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200959, -0.389175, -0.898976,
		0.053207, 0.912006, -0.406710,
		0.978154, -0.129564, -0.162569,
		22.931963, 34.238907, 21.371403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.387678, 34.580624, 20.772352>,  <22.247255, 34.329601, 21.485201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.387678, 34.580624, 20.772352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.709658, 34.353748, 20.842045>,  <22.902845, 34.217625, 20.883862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.709658, 34.353748, 20.842045>,  <22.387678, 34.580624, 20.772352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.709658, 34.353748, 20.842045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128563, -0.453392, -0.881991,
		0.579250, 0.687557, -0.437876,
		0.804948, -0.567188, 0.174233,
		22.951141, 34.183594, 20.894314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.790451, 34.573277, 20.123276>,  <22.387678, 34.580624, 20.772352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.790451, 34.573277, 20.123276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.938549, 34.265511, 20.331474>,  <23.027409, 34.080853, 20.456394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.938549, 34.265511, 20.331474>,  <22.790451, 34.573277, 20.123276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.938549, 34.265511, 20.331474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177581, -0.608608, -0.773344,
		0.911802, 0.193898, -0.361969,
		0.370247, -0.769415, 0.520498,
		23.049623, 34.034687, 20.487623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.425297, 34.300777, 19.793833>,  <22.790451, 34.573277, 20.123276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.425297, 34.300777, 19.793833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.254923, 34.012424, 20.012524>,  <23.152699, 33.839413, 20.143738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.254923, 34.012424, 20.012524>,  <23.425297, 34.300777, 19.793833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.254923, 34.012424, 20.012524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074401, -0.574330, -0.815236,
		0.901689, -0.387914, 0.190993,
		-0.425935, -0.720879, 0.546728,
		23.127142, 33.796162, 20.176542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.788719, 33.598949, 19.530998>,  <23.425297, 34.300777, 19.793833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.788719, 33.598949, 19.530998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.468884, 33.465580, 19.730793>,  <23.276983, 33.385559, 19.850670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.468884, 33.465580, 19.730793>,  <23.788719, 33.598949, 19.530998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.468884, 33.465580, 19.730793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103515, -0.742753, -0.661515,
		0.591560, -0.580644, 0.559383,
		-0.799588, -0.333421, 0.499488,
		23.229008, 33.365555, 19.880640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.837442, 32.926853, 19.533333>,  <23.788719, 33.598949, 19.530998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.837442, 32.926853, 19.533333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.448505, 32.987926, 19.604034>,  <23.215143, 33.024570, 19.646456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.448505, 32.987926, 19.604034>,  <23.837442, 32.926853, 19.533333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.448505, 32.987926, 19.604034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225588, -0.810032, -0.541256,
		0.060534, -0.566158, 0.822071,
		-0.972341, 0.152685, 0.176753,
		23.156803, 33.033733, 19.657061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.591829, 32.283566, 19.723837>,  <23.837442, 32.926853, 19.533333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.591829, 32.283566, 19.723837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.255198, 32.478825, 19.631359>,  <23.053219, 32.595982, 19.575872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.255198, 32.478825, 19.631359>,  <23.591829, 32.283566, 19.723837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.255198, 32.478825, 19.631359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307173, -0.784624, -0.538525,
		-0.444280, -0.382196, 0.810272,
		-0.841582, 0.488150, -0.231193,
		23.002724, 32.625271, 19.562000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.060633, 31.819077, 19.728827>,  <23.591829, 32.283566, 19.723837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.060633, 31.819077, 19.728827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.913971, 32.109661, 19.496338>,  <22.825974, 32.284012, 19.356846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.913971, 32.109661, 19.496338>,  <23.060633, 31.819077, 19.728827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.913971, 32.109661, 19.496338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367210, -0.687008, -0.627038,
		-0.854823, -0.016475, 0.518658,
		-0.366653, 0.726463, -0.581220,
		22.803976, 32.327599, 19.321972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.487276, 31.571373, 19.486868>,  <23.060633, 31.819077, 19.728827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.487276, 31.571373, 19.486868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.519131, 31.874477, 19.227806>,  <22.538244, 32.056339, 19.072369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.519131, 31.874477, 19.227806>,  <22.487276, 31.571373, 19.486868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.519131, 31.874477, 19.227806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457469, -0.549475, -0.699142,
		-0.885652, 0.351961, 0.302892,
		0.079639, 0.757760, -0.647655,
		22.543022, 32.101807, 19.033510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.742369, 31.767349, 19.236145>,  <22.487276, 31.571373, 19.486868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.742369, 31.767349, 19.236145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.015610, 31.893349, 18.972584>,  <22.179554, 31.968948, 18.814447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.015610, 31.893349, 18.972584>,  <21.742369, 31.767349, 19.236145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.015610, 31.893349, 18.972584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566012, -0.341799, -0.750202,
		-0.461523, 0.885410, -0.055191,
		0.683101, 0.314997, -0.658901,
		22.220539, 31.987848, 18.774914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.486546, 32.227978, 18.722460>,  <21.742369, 31.767349, 19.236145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.486546, 32.227978, 18.722460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.819855, 32.081898, 18.556431>,  <22.019840, 31.994249, 18.456814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.819855, 32.081898, 18.556431>,  <21.486546, 32.227978, 18.722460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.819855, 32.081898, 18.556431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487205, -0.130197, -0.863527,
		0.261323, 0.921778, -0.286419,
		0.833272, -0.365204, -0.415071,
		22.069836, 31.972336, 18.431910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.581875, 32.563534, 18.127684>,  <21.486546, 32.227978, 18.722460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.581875, 32.563534, 18.127684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.819645, 32.254337, 18.039009>,  <21.962307, 32.068821, 17.985804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.819645, 32.254337, 18.039009>,  <21.581875, 32.563534, 18.127684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.819645, 32.254337, 18.039009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589677, -0.231562, -0.773732,
		0.546752, 0.590650, -0.593460,
		0.594427, -0.772989, -0.221686,
		21.997972, 32.022442, 17.972504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.665943, 32.521229, 17.439392>,  <21.581875, 32.563534, 18.127684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.665943, 32.521229, 17.439392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.791330, 32.146809, 17.503323>,  <21.866562, 31.922155, 17.541681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.791330, 32.146809, 17.503323>,  <21.665943, 32.521229, 17.439392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.791330, 32.146809, 17.503323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506177, -0.307115, -0.805894,
		0.803444, 0.171721, -0.570079,
		0.313468, -0.936051, 0.159828,
		21.885370, 31.865993, 17.551271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.857269, 32.248474, 16.745722>,  <21.665943, 32.521229, 17.439392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.857269, 32.248474, 16.745722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.770687, 31.945179, 16.991722>,  <21.718737, 31.763203, 17.139322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.770687, 31.945179, 16.991722>,  <21.857269, 32.248474, 16.745722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.770687, 31.945179, 16.991722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496886, -0.456686, -0.737931,
		0.840387, -0.465316, -0.277903,
		-0.216457, -0.758233, 0.615003,
		21.705750, 31.717709, 17.176224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.279285, 31.616158, 16.475607>,  <21.857269, 32.248474, 16.745722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.279285, 31.616158, 16.475607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.960197, 31.501190, 16.687656>,  <21.768745, 31.432209, 16.814886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.960197, 31.501190, 16.687656>,  <22.279285, 31.616158, 16.475607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.960197, 31.501190, 16.687656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324647, -0.536140, -0.779203,
		0.508180, -0.793690, 0.334379,
		-0.797720, -0.287420, 0.530125,
		21.720882, 31.414965, 16.846693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.300732, 31.009912, 16.319275>,  <22.279285, 31.616158, 16.475607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.300732, 31.009912, 16.319275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.931416, 31.048096, 16.468094>,  <21.709826, 31.071007, 16.557384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.931416, 31.048096, 16.468094>,  <22.300732, 31.009912, 16.319275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.931416, 31.048096, 16.468094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354925, -0.582319, -0.731391,
		0.146832, -0.807337, 0.571532,
		-0.923293, 0.095459, 0.372047,
		21.654428, 31.076735, 16.579708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.966822, 30.370972, 16.501339>,  <22.300732, 31.009912, 16.319275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.966822, 30.370972, 16.501339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.714117, 30.656525, 16.380508>,  <21.562494, 30.827856, 16.308010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.714117, 30.656525, 16.380508>,  <21.966822, 30.370972, 16.501339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.714117, 30.656525, 16.380508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213176, -0.534671, -0.817730,
		-0.745276, -0.452213, 0.489967,
		-0.631759, 0.713884, -0.302076,
		21.524590, 30.870689, 16.289885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.391573, 29.762745, 16.461861>,  <21.966822, 30.370972, 16.501339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.391573, 29.762745, 16.461861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.260479, 29.385792, 16.435009>,  <21.181822, 29.159620, 16.418898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.260479, 29.385792, 16.435009>,  <21.391573, 29.762745, 16.461861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.260479, 29.385792, 16.435009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856728, -0.326394, 0.399355,
		-0.398255, 0.073371, 0.914335,
		-0.327735, -0.942382, -0.067129,
		21.162159, 29.103077, 16.414871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.785425, 30.248714, 16.640495>,  <21.391573, 29.762745, 16.461861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.785425, 30.248714, 16.640495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.715603, 29.901390, 16.826214>,  <20.673710, 29.692995, 16.937645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.715603, 29.901390, 16.826214>,  <20.785425, 30.248714, 16.640495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.715603, 29.901390, 16.826214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944935, 0.015157, -0.326907,
		0.276819, -0.495792, -0.823141,
		-0.174554, -0.868309, 0.464296,
		20.663237, 29.640898, 16.965504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.193138, 29.862728, 16.225357>,  <20.785425, 30.248714, 16.640495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.193138, 29.862728, 16.225357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.074387, 29.704041, 16.572800>,  <20.003136, 29.608828, 16.781265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.074387, 29.704041, 16.572800>,  <20.193138, 29.862728, 16.225357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.074387, 29.704041, 16.572800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735375, 0.485289, 0.472989,
		-0.609168, 0.779172, 0.147664,
		-0.296880, -0.396718, 0.868606,
		19.985323, 29.585026, 16.833382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.084297, 30.634867, 16.178602>,  <20.193138, 29.862728, 16.225357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.084297, 30.634867, 16.178602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.374907, 30.790600, 16.405083>,  <20.549273, 30.884039, 16.540972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.374907, 30.790600, 16.405083>,  <20.084297, 30.634867, 16.178602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.374907, 30.790600, 16.405083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679625, 0.285598, 0.675680,
		0.101358, -0.875702, 0.472094,
		0.726523, 0.389333, 0.566201,
		20.592863, 30.907400, 16.574944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.418610, 30.426050, 15.869371>,  <20.084297, 30.634867, 16.178602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.418610, 30.426050, 15.869371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.054291, 30.427124, 16.034512>,  <18.835699, 30.427769, 16.133595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.054291, 30.427124, 16.034512>,  <19.418610, 30.426050, 15.869371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.054291, 30.427124, 16.034512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266542, 0.767480, 0.583035,
		-0.315289, 0.641067, -0.699733,
		-0.910795, 0.002684, 0.412849,
		18.781052, 30.427929, 16.158367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.173761, 31.111521, 15.696483>,  <19.418610, 30.426050, 15.869371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.173761, 31.111521, 15.696483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.954353, 30.973995, 16.001354>,  <18.822708, 30.891479, 16.184277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.954353, 30.973995, 16.001354>,  <19.173761, 31.111521, 15.696483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.954353, 30.973995, 16.001354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230492, 0.814054, 0.533095,
		-0.803740, 0.468090, -0.367280,
		-0.548522, -0.343814, 0.762178,
		18.789797, 30.870852, 16.230007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.808414, 31.634413, 15.983913>,  <19.173761, 31.111521, 15.696483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.808414, 31.634413, 15.983913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.803036, 31.363495, 16.278149>,  <18.799809, 31.200943, 16.454689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.803036, 31.363495, 16.278149>,  <18.808414, 31.634413, 15.983913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.803036, 31.363495, 16.278149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239777, 0.712005, 0.659966,
		-0.970735, 0.185251, 0.152826,
		-0.013446, -0.677296, 0.735587,
		18.799002, 31.160305, 16.498825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.271746, 31.789661, 16.487818>,  <18.808414, 31.634413, 15.983913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.271746, 31.789661, 16.487818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.556890, 31.574184, 16.667435>,  <18.727978, 31.444899, 16.775204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.556890, 31.574184, 16.667435>,  <18.271746, 31.789661, 16.487818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.556890, 31.574184, 16.667435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105570, 0.715426, 0.690667,
		-0.693313, -0.444945, 0.566870,
		0.712862, -0.538693, 0.449041,
		18.770750, 31.412577, 16.802147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.126120, 31.922235, 17.187918>,  <18.271746, 31.789661, 16.487818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.126120, 31.922235, 17.187918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.496086, 31.771523, 17.167648>,  <18.718065, 31.681095, 17.155487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.496086, 31.771523, 17.167648>,  <18.126120, 31.922235, 17.187918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.496086, 31.771523, 17.167648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285153, 0.599390, 0.747943,
		-0.251438, -0.706234, 0.661826,
		0.924915, -0.376783, -0.050675,
		18.773560, 31.658487, 17.152445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.178675, 31.803413, 17.882666>,  <18.126120, 31.922235, 17.187918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.178675, 31.803413, 17.882666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.526997, 31.868462, 17.697083>,  <18.735989, 31.907490, 17.585733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.526997, 31.868462, 17.697083>,  <18.178675, 31.803413, 17.882666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.526997, 31.868462, 17.697083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283725, 0.604466, 0.744393,
		0.401499, -0.779856, 0.480232,
		0.870804, 0.162619, -0.463957,
		18.788239, 31.917248, 17.557896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.638561, 31.647625, 18.373655>,  <18.178675, 31.803413, 17.882666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.638561, 31.647625, 18.373655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.833305, 31.880169, 18.112892>,  <18.950151, 32.019695, 17.956434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.833305, 31.880169, 18.112892>,  <18.638561, 31.647625, 18.373655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.833305, 31.880169, 18.112892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336786, 0.563690, 0.754207,
		0.805941, -0.586748, 0.078644,
		0.486860, 0.581360, -0.651910,
		18.979364, 32.054577, 17.917318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.221493, 31.831739, 18.716316>,  <18.638561, 31.647625, 18.373655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.221493, 31.831739, 18.716316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.209471, 32.105164, 18.424606>,  <19.202257, 32.269218, 18.249580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.209471, 32.105164, 18.424606>,  <19.221493, 31.831739, 18.716316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.209471, 32.105164, 18.424606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397728, 0.677536, 0.618674,
		0.917011, -0.271458, -0.292236,
		-0.030057, 0.683561, -0.729275,
		19.200455, 32.310230, 18.205824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.880960, 32.133125, 18.689798>,  <19.221493, 31.831739, 18.716316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.880960, 32.133125, 18.689798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.650517, 32.419231, 18.531559>,  <19.512251, 32.590893, 18.436615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.650517, 32.419231, 18.531559>,  <19.880960, 32.133125, 18.689798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.650517, 32.419231, 18.531559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447145, 0.680936, 0.579989,
		0.684223, 0.157245, -0.712119,
		-0.576108, 0.715262, -0.395601,
		19.477684, 32.633812, 18.412878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.335388, 32.617508, 18.507462>,  <19.880960, 32.133125, 18.689798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.335388, 32.617508, 18.507462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.989626, 32.818359, 18.497150>,  <19.782169, 32.938869, 18.490965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.989626, 32.818359, 18.497150>,  <20.335388, 32.617508, 18.507462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.989626, 32.818359, 18.497150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426491, 0.759413, 0.491321,
		0.266283, 0.413708, -0.870597,
		-0.864406, 0.502132, -0.025777,
		19.730305, 32.968998, 18.489418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.426332, 33.318333, 18.203384>,  <20.335388, 32.617508, 18.507462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.426332, 33.318333, 18.203384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.101244, 33.327137, 18.436279>,  <19.906191, 33.332420, 18.576015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.101244, 33.327137, 18.436279>,  <20.426332, 33.318333, 18.203384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.101244, 33.327137, 18.436279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439773, 0.678685, 0.588206,
		-0.382210, 0.734099, -0.561261,
		-0.812721, 0.022009, 0.582238,
		19.857428, 33.333740, 18.610950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.547697, 33.999607, 18.442865>,  <20.426332, 33.318333, 18.203384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.547697, 33.999607, 18.442865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.266562, 33.828392, 18.670128>,  <20.097881, 33.725662, 18.806486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.266562, 33.828392, 18.670128>,  <20.547697, 33.999607, 18.442865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.266562, 33.828392, 18.670128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172527, 0.672284, 0.719909,
		-0.690111, 0.604002, -0.398658,
		-0.702838, -0.428038, 0.568158,
		20.055710, 33.699982, 18.840574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.287729, 34.507572, 18.946339>,  <20.547697, 33.999607, 18.442865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.287729, 34.507572, 18.946339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.159275, 34.177261, 19.131798>,  <20.082203, 33.979076, 19.243073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.159275, 34.177261, 19.131798>,  <20.287729, 34.507572, 18.946339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.159275, 34.177261, 19.131798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348616, 0.352122, 0.868606,
		-0.880533, 0.440576, 0.174799,
		-0.321136, -0.825774, 0.463647,
		20.062935, 33.929527, 19.270891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.976418, 34.757069, 19.482918>,  <20.287729, 34.507572, 18.946339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.976418, 34.757069, 19.482918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.050564, 34.374947, 19.575035>,  <20.095051, 34.145676, 19.630306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.050564, 34.374947, 19.575035>,  <19.976418, 34.757069, 19.482918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.050564, 34.374947, 19.575035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264424, 0.274203, 0.924604,
		-0.946424, -0.110495, 0.303433,
		0.185366, -0.955303, 0.230295,
		20.106174, 34.088356, 19.644123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.515839, 34.573353, 20.057322>,  <19.976418, 34.757069, 19.482918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.515839, 34.573353, 20.057322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.840378, 34.339527, 20.056728>,  <20.035101, 34.199234, 20.056374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.840378, 34.339527, 20.056728>,  <19.515839, 34.573353, 20.057322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.840378, 34.339527, 20.056728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225356, 0.310443, 0.923493,
		-0.539379, -0.749608, 0.383612,
		0.811347, -0.584562, -0.001482,
		20.083782, 34.164158, 20.056284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.410612, 34.196323, 20.724201>,  <19.515839, 34.573353, 20.057322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.410612, 34.196323, 20.724201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.786356, 34.107719, 20.619480>,  <20.011803, 34.054558, 20.556648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.786356, 34.107719, 20.619480>,  <19.410612, 34.196323, 20.724201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.786356, 34.107719, 20.619480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312335, 0.237370, 0.919838,
		-0.141608, -0.945827, 0.292161,
		0.939358, -0.221509, -0.261801,
		20.068163, 34.041267, 20.540939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.670410, 33.804367, 21.202864>,  <19.410612, 34.196323, 20.724201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.670410, 33.804367, 21.202864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.993017, 33.969063, 21.033157>,  <20.186581, 34.067879, 20.931334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.993017, 33.969063, 21.033157>,  <19.670410, 33.804367, 21.202864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.993017, 33.969063, 21.033157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415775, 0.115173, 0.902145,
		0.420315, -0.903994, -0.078304,
		0.806515, 0.411742, -0.424267,
		20.234972, 34.092587, 20.905878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.206434, 33.664818, 21.692108>,  <19.670410, 33.804367, 21.202864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.206434, 33.664818, 21.692108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.366419, 33.947018, 21.458080>,  <20.462410, 34.116337, 21.317663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.366419, 33.947018, 21.458080>,  <20.206434, 33.664818, 21.692108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.366419, 33.947018, 21.458080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502389, 0.365153, 0.783753,
		0.766574, -0.607404, -0.208387,
		0.399961, 0.705496, -0.585070,
		20.486406, 34.158665, 21.282558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.980879, 33.692673, 21.805971>,  <20.206434, 33.664818, 21.692108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.980879, 33.692673, 21.805971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.833204, 34.037880, 21.668041>,  <20.744600, 34.245003, 21.585283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.833204, 34.037880, 21.668041>,  <20.980879, 33.692673, 21.805971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.833204, 34.037880, 21.668041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342954, 0.471360, 0.812528,
		0.863762, 0.181716, -0.469995,
		-0.369186, 0.863017, -0.344823,
		20.722448, 34.296783, 21.564594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.465946, 34.281933, 21.994799>,  <20.980879, 33.692673, 21.805971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.465946, 34.281933, 21.994799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.167572, 34.525623, 21.887150>,  <20.988548, 34.671837, 21.822559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.167572, 34.525623, 21.887150>,  <21.465946, 34.281933, 21.994799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.167572, 34.525623, 21.887150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342651, 0.697539, 0.629309,
		0.571115, 0.377208, -0.729070,
		-0.745935, 0.609224, -0.269124,
		20.943792, 34.708389, 21.806412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.705576, 34.982708, 21.872826>,  <21.465946, 34.281933, 21.994799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.705576, 34.982708, 21.872826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.320009, 35.003929, 21.977173>,  <21.088669, 35.016663, 22.039782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.320009, 35.003929, 21.977173>,  <21.705576, 34.982708, 21.872826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.320009, 35.003929, 21.977173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246258, 0.549929, 0.798082,
		-0.101116, 0.833524, -0.543151,
		-0.963915, 0.053057, 0.260869,
		21.030834, 35.019848, 22.055433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.579975, 35.614964, 21.981255>,  <21.705576, 34.982708, 21.872826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.579975, 35.614964, 21.981255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.244827, 35.485420, 22.157021>,  <21.043737, 35.407692, 22.262480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.244827, 35.485420, 22.157021>,  <21.579975, 35.614964, 21.981255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.244827, 35.485420, 22.157021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186505, 0.586697, 0.788038,
		-0.513018, 0.742227, -0.431175,
		-0.837872, -0.323861, 0.439415,
		20.993465, 35.388264, 22.288845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.395964, 36.274529, 22.195507>,  <21.579975, 35.614964, 21.981255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.395964, 36.274529, 22.195507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.230837, 35.978199, 22.407455>,  <21.131760, 35.800400, 22.534624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.230837, 35.978199, 22.407455>,  <21.395964, 36.274529, 22.195507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.230837, 35.978199, 22.407455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029632, 0.570522, 0.820748,
		-0.910331, 0.354522, -0.213570,
		-0.412819, -0.740824, 0.529869,
		21.106991, 35.755951, 22.566416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.858768, 36.633869, 22.501472>,  <21.395964, 36.274529, 22.195507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.858768, 36.633869, 22.501472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.959793, 36.299164, 22.695812>,  <21.020407, 36.098343, 22.812416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.959793, 36.299164, 22.695812>,  <20.858768, 36.633869, 22.501472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.959793, 36.299164, 22.695812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001482, 0.502459, 0.864600,
		-0.967580, -0.217642, 0.128141,
		0.252559, -0.836760, 0.485847,
		21.035561, 36.048138, 22.841566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.565947, 36.682812, 23.114969>,  <20.858768, 36.633869, 22.501472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.565947, 36.682812, 23.114969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.832006, 36.394596, 23.193348>,  <20.991642, 36.221668, 23.240376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.832006, 36.394596, 23.193348>,  <20.565947, 36.682812, 23.114969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.832006, 36.394596, 23.193348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121719, 0.363530, 0.923596,
		-0.736721, -0.590481, 0.329506,
		0.665152, -0.720540, 0.195948,
		21.031551, 36.178432, 23.252132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.333189, 36.523296, 23.778685>,  <20.565947, 36.682812, 23.114969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.333189, 36.523296, 23.778685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.705524, 36.387066, 23.725704>,  <20.928926, 36.305328, 23.693916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.705524, 36.387066, 23.725704>,  <20.333189, 36.523296, 23.778685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.705524, 36.387066, 23.725704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227921, 0.257778, 0.938937,
		-0.285639, -0.904188, 0.317575,
		0.930840, -0.340579, -0.132452,
		20.984776, 36.284893, 23.685968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.792248, 36.905609, 23.432787>,  <20.333189, 36.523296, 23.778685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.792248, 36.905609, 23.432787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.673731, 37.211971, 23.661034>,  <19.602621, 37.395786, 23.797981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.673731, 37.211971, 23.661034>,  <19.792248, 36.905609, 23.432787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.673731, 37.211971, 23.661034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863956, 0.039777, -0.501994,
		-0.407176, -0.641725, 0.649921,
		-0.296290, 0.765903, 0.570619,
		19.584845, 37.441742, 23.832220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.095459, 36.675041, 23.678755>,  <19.792248, 36.905609, 23.432787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.095459, 36.675041, 23.678755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.132662, 37.073307, 23.679710>,  <19.154984, 37.312267, 23.680285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.132662, 37.073307, 23.679710>,  <19.095459, 36.675041, 23.678755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.132662, 37.073307, 23.679710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832970, 0.079125, -0.547631,
		-0.545445, 0.048943, 0.836717,
		0.093008, 0.995662, 0.002390,
		19.160564, 37.372005, 23.680428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.464367, 37.004669, 23.867672>,  <19.095459, 36.675041, 23.678755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.464367, 37.004669, 23.867672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.679222, 37.263805, 23.651604>,  <18.808136, 37.419289, 23.521963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.679222, 37.263805, 23.651604>,  <18.464367, 37.004669, 23.867672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.679222, 37.263805, 23.651604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737847, 0.050558, -0.673072,
		-0.408732, 0.760097, 0.505164,
		0.537140, 0.647840, -0.540171,
		18.840364, 37.458157, 23.489552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.040642, 37.562859, 23.650530>,  <18.464367, 37.004669, 23.867672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.040642, 37.562859, 23.650530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.329912, 37.535938, 23.375580>,  <18.503475, 37.519787, 23.210609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.329912, 37.535938, 23.375580>,  <18.040642, 37.562859, 23.650530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.329912, 37.535938, 23.375580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690261, -0.036426, -0.722643,
		0.023595, 0.997068, -0.072796,
		0.723176, -0.067299, -0.687377,
		18.546865, 37.515747, 23.169367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.768311, 37.934017, 23.048780>,  <18.040642, 37.562859, 23.650530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.768311, 37.934017, 23.048780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.036991, 37.642155, 22.997517>,  <18.198200, 37.467037, 22.966759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.036991, 37.642155, 22.997517>,  <17.768311, 37.934017, 23.048780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.036991, 37.642155, 22.997517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649352, -0.496614, -0.575948,
		0.356595, 0.470087, -0.807377,
		0.671701, -0.729652, -0.128162,
		18.238501, 37.423260, 22.959068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.761728, 26.581148, 26.181320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.118908, 26.426865, 26.088482>,  <30.333216, 26.334295, 26.032780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.118908, 26.426865, 26.088482>,  <29.761728, 26.581148, 26.181320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118908, 26.426865, 26.088482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303699, 0.896760, -0.321852,
		0.332274, 0.216911, 0.917902,
		0.892951, -0.385709, -0.232094,
		30.386793, 26.311152, 26.018854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193424, 26.950117, 26.588844>,  <29.761728, 26.581148, 26.181320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193424, 26.950117, 26.588844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.394329, 26.798080, 26.278164>,  <30.514872, 26.706858, 26.091757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.394329, 26.798080, 26.278164>,  <30.193424, 26.950117, 26.588844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394329, 26.798080, 26.278164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407526, 0.896255, -0.175068,
		0.762664, -0.228595, 0.605053,
		0.502262, -0.380093, -0.776699,
		30.545008, 26.684053, 26.045155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726980, 27.410948, 26.574345>,  <30.193424, 26.950117, 26.588844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726980, 27.410948, 26.574345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.783146, 27.227806, 26.223198>,  <30.816845, 27.117920, 26.012510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.783146, 27.227806, 26.223198>,  <30.726980, 27.410948, 26.574345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783146, 27.227806, 26.223198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363718, 0.848510, -0.384369,
		0.920866, -0.265326, 0.285672,
		0.140413, -0.457856, -0.877868,
		30.825270, 27.090448, 25.959837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261864, 27.783958, 26.263105>,  <30.726980, 27.410948, 26.574345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261864, 27.783958, 26.263105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.079874, 27.581543, 25.970005>,  <30.970680, 27.460094, 25.794146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.079874, 27.581543, 25.970005>,  <31.261864, 27.783958, 26.263105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079874, 27.581543, 25.970005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227723, 0.729373, -0.645103,
		0.860896, -0.460369, -0.216609,
		-0.454974, -0.506039, -0.732750,
		30.943382, 27.429731, 25.750179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800451, 27.814117, 25.696363>,  <31.261864, 27.783958, 26.263105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800451, 27.814117, 25.696363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.429352, 27.763351, 25.555981>,  <31.206692, 27.732891, 25.471750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.429352, 27.763351, 25.555981>,  <31.800451, 27.814117, 25.696363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429352, 27.763351, 25.555981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102866, 0.817009, -0.567375,
		0.358744, -0.562484, -0.744925,
		-0.927751, -0.126915, -0.350958,
		31.151026, 27.725277, 25.450693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896688, 27.827652, 24.924906>,  <31.800451, 27.814117, 25.696363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896688, 27.827652, 24.924906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.510983, 27.914158, 24.986126>,  <31.279560, 27.966063, 25.022858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.510983, 27.914158, 24.986126>,  <31.896688, 27.827652, 24.924906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510983, 27.914158, 24.986126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101876, 0.835911, -0.539328,
		-0.244576, -0.504462, -0.828071,
		-0.964263, 0.216267, 0.153051,
		31.221703, 27.979038, 25.032042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660748, 28.060823, 24.202721>,  <31.896688, 27.827652, 24.924906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660748, 28.060823, 24.202721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.390575, 28.208183, 24.458244>,  <31.228472, 28.296598, 24.611559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.390575, 28.208183, 24.458244>,  <31.660748, 28.060823, 24.202721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390575, 28.208183, 24.458244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024746, 0.877105, -0.479661,
		-0.737010, -0.308169, -0.601538,
		-0.675428, 0.368400, 0.638810,
		31.187946, 28.318703, 24.649887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213688, 28.405729, 23.788448>,  <31.660748, 28.060823, 24.202721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213688, 28.405729, 23.788448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.122267, 28.558502, 24.146641>,  <31.067413, 28.650166, 24.361557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.122267, 28.558502, 24.146641>,  <31.213688, 28.405729, 23.788448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122267, 28.558502, 24.146641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094796, 0.906728, -0.410924,
		-0.968905, -0.178807, -0.171031,
		-0.228554, 0.381933, 0.895483,
		31.053699, 28.673082, 24.415285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561623, 28.619362, 23.653109>,  <31.213688, 28.405729, 23.788448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561623, 28.619362, 23.653109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.749023, 28.831604, 23.935658>,  <30.861464, 28.958950, 24.105186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.749023, 28.831604, 23.935658>,  <30.561623, 28.619362, 23.653109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749023, 28.831604, 23.935658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282104, 0.847542, -0.449544,
		-0.837211, 0.011341, 0.546762,
		0.468502, 0.530607, 0.706372,
		30.889574, 28.990786, 24.147570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352463, 29.300882, 23.539251>,  <30.561623, 28.619362, 23.653109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352463, 29.300882, 23.539251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.623125, 29.401295, 23.816124>,  <30.785522, 29.461542, 23.982248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.623125, 29.401295, 23.816124>,  <30.352463, 29.300882, 23.539251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623125, 29.401295, 23.816124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076815, 0.959023, -0.272716,
		-0.732280, 0.131365, 0.668214,
		0.676658, 0.251033, 0.692183,
		30.826122, 29.476604, 24.023779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979559, 29.732042, 24.000864>,  <30.352463, 29.300882, 23.539251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979559, 29.732042, 24.000864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.374134, 29.794838, 23.981697>,  <30.610880, 29.832516, 23.970196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.374134, 29.794838, 23.981697>,  <29.979559, 29.732042, 24.000864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374134, 29.794838, 23.981697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162466, 0.975425, -0.148831,
		0.023377, 0.154598, 0.987701,
		0.986437, 0.156989, -0.047919,
		30.670065, 29.841934, 23.967321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899158, 30.409861, 24.083523>,  <29.979559, 29.732042, 24.000864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899158, 30.409861, 24.083523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.288572, 30.341400, 24.022942>,  <30.522221, 30.300323, 23.986593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.288572, 30.341400, 24.022942>,  <29.899158, 30.409861, 24.083523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288572, 30.341400, 24.022942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145732, 0.975386, -0.165481,
		0.176048, 0.139030, 0.974514,
		0.973534, -0.171150, -0.151454,
		30.580633, 30.290054, 23.977505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320044, 30.747335, 24.694050>,  <29.899158, 30.409861, 24.083523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320044, 30.747335, 24.694050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.518761, 30.706886, 24.349266>,  <30.637991, 30.682617, 24.142397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.518761, 30.706886, 24.349266>,  <30.320044, 30.747335, 24.694050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518761, 30.706886, 24.349266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098223, 0.993358, -0.059927,
		0.862293, -0.054892, 0.503425,
		0.496792, -0.101123, -0.861958,
		30.667799, 30.676550, 24.090679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776455, 31.281004, 24.696444>,  <30.320044, 30.747335, 24.694050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776455, 31.281004, 24.696444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.774391, 31.186031, 24.307888>,  <30.773153, 31.129047, 24.074755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.774391, 31.186031, 24.307888>,  <30.776455, 31.281004, 24.696444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774391, 31.186031, 24.307888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228587, 0.945404, -0.232293,
		0.973510, -0.223245, 0.049396,
		-0.005159, -0.237431, -0.971391,
		30.772842, 31.114801, 24.016470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450941, 31.616270, 24.439939>,  <30.776455, 31.281004, 24.696444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450941, 31.616270, 24.439939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.204533, 31.545689, 24.132854>,  <31.056686, 31.503340, 23.948605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.204533, 31.545689, 24.132854>,  <31.450941, 31.616270, 24.439939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204533, 31.545689, 24.132854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012175, 0.972339, -0.233258,
		0.787635, -0.153039, -0.596834,
		-0.616022, -0.176455, -0.767711,
		31.019726, 31.492752, 23.902540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712599, 32.031830, 23.849703>,  <31.450941, 31.616270, 24.439939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712599, 32.031830, 23.849703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.341013, 31.979778, 23.711086>,  <31.118061, 31.948545, 23.627916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.341013, 31.979778, 23.711086>,  <31.712599, 32.031830, 23.849703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341013, 31.979778, 23.711086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002724, 0.933742, -0.357937,
		0.370161, -0.333454, -0.867058,
		-0.928963, -0.130133, -0.346543,
		31.062325, 31.940739, 23.607122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735830, 32.223415, 23.216108>,  <31.712599, 32.031830, 23.849703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735830, 32.223415, 23.216108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.352139, 32.249557, 23.326099>,  <31.121923, 32.265244, 23.392094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.352139, 32.249557, 23.326099>,  <31.735830, 32.223415, 23.216108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352139, 32.249557, 23.326099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071632, 0.884925, -0.460191,
		-0.273408, -0.461125, -0.844163,
		-0.959227, 0.065351, 0.274977,
		31.064371, 32.269161, 23.408592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381849, 32.529442, 22.674553>,  <31.735830, 32.223415, 23.216108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381849, 32.529442, 22.674553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.104710, 32.571545, 22.959896>,  <30.938425, 32.596806, 23.131102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.104710, 32.571545, 22.959896>,  <31.381849, 32.529442, 22.674553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104710, 32.571545, 22.959896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257212, 0.888137, -0.380860,
		-0.673648, -0.447363, -0.588273,
		-0.692850, 0.105255, 0.713359,
		30.896854, 32.603123, 23.173904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778831, 32.818718, 22.377258>,  <31.381849, 32.529442, 22.674553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778831, 32.818718, 22.377258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.703943, 32.901161, 22.761440>,  <30.659010, 32.950626, 22.991949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.703943, 32.901161, 22.761440>,  <30.778831, 32.818718, 22.377258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703943, 32.901161, 22.761440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453086, 0.849407, -0.270595,
		-0.871586, -0.485829, -0.065645,
		-0.187222, 0.206104, 0.960453,
		30.647778, 32.962994, 23.049576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975767, 33.003826, 22.570940>,  <30.778831, 32.818718, 22.377258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975767, 33.003826, 22.570940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.232729, 33.185993, 22.817490>,  <30.386906, 33.295292, 22.965420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.232729, 33.185993, 22.817490>,  <29.975767, 33.003826, 22.570940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232729, 33.185993, 22.817490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447903, 0.875729, -0.180225,
		-0.621854, -0.160298, 0.766552,
		0.642402, 0.455415, 0.616374,
		30.425449, 33.322617, 23.002401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559654, 33.393116, 22.986151>,  <29.975767, 33.003826, 22.570940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559654, 33.393116, 22.986151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.923302, 33.550171, 23.041767>,  <30.141491, 33.644405, 23.075138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.923302, 33.550171, 23.041767>,  <29.559654, 33.393116, 22.986151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923302, 33.550171, 23.041767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390078, 0.919613, -0.046382,
		-0.146077, -0.012071, 0.989200,
		0.909121, 0.392641, 0.139042,
		30.196037, 33.667965, 23.083479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344803, 33.952915, 23.391584>,  <29.559654, 33.393116, 22.986151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344803, 33.952915, 23.391584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.728838, 34.029156, 23.309704>,  <29.959259, 34.074898, 23.260574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.728838, 34.029156, 23.309704>,  <29.344803, 33.952915, 23.391584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728838, 34.029156, 23.309704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201967, 0.978732, -0.035959,
		0.193495, 0.075867, 0.978164,
		0.960088, 0.190599, -0.204703,
		30.016865, 34.086334, 23.248293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716198, 34.105480, 23.021400>,  <29.344803, 33.952915, 23.391584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716198, 34.105480, 23.021400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.392538, 34.340038, 23.006371>,  <28.198341, 34.480774, 22.997353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.392538, 34.340038, 23.006371>,  <28.716198, 34.105480, 23.021400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392538, 34.340038, 23.006371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493989, -0.644222, 0.583912,
		0.318199, 0.491034, 0.810947,
		-0.809151, 0.586399, -0.037575,
		28.149794, 34.515957, 22.995098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507849, 34.099865, 23.760590>,  <28.716198, 34.105480, 23.021400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507849, 34.099865, 23.760590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.206717, 34.199642, 23.516945>,  <28.026037, 34.259510, 23.370758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.206717, 34.199642, 23.516945>,  <28.507849, 34.099865, 23.760590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206717, 34.199642, 23.516945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610550, -0.610381, 0.504642,
		-0.245911, 0.751805, 0.611814,
		-0.752833, 0.249446, -0.609114,
		27.980867, 34.274475, 23.334211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.883804, 34.045467, 24.195847>,  <28.507849, 34.099865, 23.760590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.883804, 34.045467, 24.195847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.739464, 34.046719, 23.822800>,  <27.652859, 34.047470, 23.598972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.739464, 34.046719, 23.822800>,  <27.883804, 34.045467, 24.195847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739464, 34.046719, 23.822800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549328, -0.808831, 0.209837,
		-0.753673, 0.588033, 0.293587,
		-0.360853, 0.003127, -0.932617,
		27.631208, 34.047657, 23.543015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163727, 33.928909, 24.171022>,  <27.883804, 34.045467, 24.195847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163727, 33.928909, 24.171022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.273375, 33.813557, 23.804047>,  <27.339163, 33.744343, 23.583860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.273375, 33.813557, 23.804047>,  <27.163727, 33.928909, 24.171022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273375, 33.813557, 23.804047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468759, -0.873046, 0.134372,
		-0.839717, 0.393224, -0.374500,
		0.274118, -0.288384, -0.917439,
		27.355610, 33.727043, 23.528814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.566921, 33.633118, 23.787434>,  <27.163727, 33.928909, 24.171022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.566921, 33.633118, 23.787434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.879732, 33.454693, 23.613323>,  <27.067419, 33.347637, 23.508858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.879732, 33.454693, 23.613323>,  <26.566921, 33.633118, 23.787434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.879732, 33.454693, 23.613323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395502, -0.894941, 0.206539,
		-0.481675, 0.010634, -0.876285,
		0.782027, -0.446057, -0.435277,
		27.114340, 33.320877, 23.482740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.251524, 33.128399, 23.385357>,  <26.566921, 33.633118, 23.787434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.251524, 33.128399, 23.385357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.638813, 33.039764, 23.431736>,  <26.871187, 32.986584, 23.459562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.638813, 33.039764, 23.431736>,  <26.251524, 33.128399, 23.385357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.638813, 33.039764, 23.431736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247887, -0.911683, 0.327698,
		0.033094, -0.346027, -0.937641,
		0.968224, -0.221584, 0.115946,
		26.929279, 32.973289, 23.466520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.309080, 32.496632, 23.076084>,  <26.251524, 33.128399, 23.385357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.309080, 32.496632, 23.076084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.621365, 32.514366, 23.325413>,  <26.808735, 32.525005, 23.475010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.621365, 32.514366, 23.325413>,  <26.309080, 32.496632, 23.076084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621365, 32.514366, 23.325413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124131, -0.966599, 0.224226,
		0.612441, -0.252428, -0.749130,
		0.780709, 0.044335, 0.623320,
		26.855577, 32.527668, 23.512409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610977, 31.987024, 22.907606>,  <26.309080, 32.496632, 23.076084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610977, 31.987024, 22.907606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.784424, 32.047749, 23.262894>,  <26.888493, 32.084183, 23.476067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.784424, 32.047749, 23.262894>,  <26.610977, 31.987024, 22.907606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784424, 32.047749, 23.262894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005367, -0.986124, 0.165923,
		0.901081, -0.067180, -0.428415,
		0.433617, 0.151809, 0.888217,
		26.914509, 32.093292, 23.529360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.171732, 31.532038, 22.927525>,  <26.610977, 31.987024, 22.907606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.171732, 31.532038, 22.927525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.131140, 31.607510, 23.318237>,  <27.106785, 31.652794, 23.552666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.131140, 31.607510, 23.318237>,  <27.171732, 31.532038, 22.927525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.131140, 31.607510, 23.318237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168698, -0.964366, 0.203810,
		0.980430, 0.185464, 0.066033,
		-0.101479, 0.188682, 0.976781,
		27.100697, 31.664114, 23.611271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.681049, 31.154882, 23.347548>,  <27.171732, 31.532038, 22.927525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.681049, 31.154882, 23.347548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.397642, 31.229439, 23.619801>,  <27.227598, 31.274174, 23.783152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.397642, 31.229439, 23.619801>,  <27.681049, 31.154882, 23.347548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.397642, 31.229439, 23.619801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244583, -0.839848, 0.484597,
		0.661953, 0.509817, 0.549458,
		-0.708517, 0.186393, 0.680633,
		27.185087, 31.285357, 23.823990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957062, 30.979063, 24.087545>,  <27.681049, 31.154882, 23.347548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957062, 30.979063, 24.087545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.568506, 30.999023, 24.180420>,  <27.335373, 31.011000, 24.236145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.568506, 30.999023, 24.180420>,  <27.957062, 30.979063, 24.087545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568506, 30.999023, 24.180420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138624, -0.674691, 0.724966,
		0.192832, 0.736411, 0.648471,
		-0.971391, 0.049903, 0.232186,
		27.277088, 31.013994, 24.250076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935677, 30.959997, 24.828308>,  <27.957062, 30.979063, 24.087545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.935677, 30.959997, 24.828308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.567602, 30.870823, 24.699589>,  <27.346758, 30.817318, 24.622356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.567602, 30.870823, 24.699589>,  <27.935677, 30.959997, 24.828308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567602, 30.870823, 24.699589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056394, -0.737955, 0.672490,
		-0.387395, 0.636964, 0.666485,
		-0.920188, -0.222933, -0.321800,
		27.291546, 30.803944, 24.603048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542360, 30.940020, 25.452110>,  <27.935677, 30.959997, 24.828308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542360, 30.940020, 25.452110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.379519, 30.707409, 25.170376>,  <27.281813, 30.567842, 25.001335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.379519, 30.707409, 25.170376>,  <27.542360, 30.940020, 25.452110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379519, 30.707409, 25.170376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140591, -0.722046, 0.677409,
		-0.902497, 0.374799, 0.212191,
		-0.407104, -0.581528, -0.704338,
		27.257387, 30.532951, 24.959074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029274, 30.716099, 25.721004>,  <27.542360, 30.940020, 25.452110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029274, 30.716099, 25.721004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.071144, 30.447739, 25.427357>,  <27.096266, 30.286722, 25.251167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.071144, 30.447739, 25.427357>,  <27.029274, 30.716099, 25.721004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.071144, 30.447739, 25.427357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194522, -0.737731, 0.646463,
		-0.975297, 0.075134, -0.207728,
		0.104676, -0.670901, -0.734122,
		27.102547, 30.246468, 25.207121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.541435, 30.157759, 25.892778>,  <27.029274, 30.716099, 25.721004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.541435, 30.157759, 25.892778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.795040, 29.995174, 25.629623>,  <26.947203, 29.897625, 25.471731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.795040, 29.995174, 25.629623>,  <26.541435, 30.157759, 25.892778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795040, 29.995174, 25.629623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000048, -0.850751, 0.525569,
		-0.773320, -0.333187, -0.539410,
		0.634016, -0.406458, -0.657887,
		26.985245, 29.873236, 25.432257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359804, 29.479712, 25.863491>,  <26.541435, 30.157759, 25.892778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359804, 29.479712, 25.863491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.733097, 29.470306, 25.720089>,  <26.957073, 29.464663, 25.634047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.733097, 29.470306, 25.720089>,  <26.359804, 29.479712, 25.863491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733097, 29.470306, 25.720089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136831, -0.899394, 0.415171,
		-0.332200, -0.436505, -0.836126,
		0.933231, -0.023512, -0.358506,
		27.013067, 29.463253, 25.612537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.366001, 28.815968, 25.586401>,  <26.359804, 29.479712, 25.863491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.366001, 28.815968, 25.586401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.745701, 28.939205, 25.611702>,  <26.973520, 29.013147, 25.626883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.745701, 28.939205, 25.611702>,  <26.366001, 28.815968, 25.586401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.745701, 28.939205, 25.611702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251288, -0.863859, 0.436581,
		0.189151, -0.398529, -0.897439,
		0.949250, 0.308095, 0.063255,
		27.030476, 29.031633, 25.630678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.780073, 28.208719, 25.323153>,  <26.366001, 28.815968, 25.586401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.780073, 28.208719, 25.323153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.990223, 28.444088, 25.568996>,  <27.116312, 28.585308, 25.716503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.990223, 28.444088, 25.568996>,  <26.780073, 28.208719, 25.323153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.990223, 28.444088, 25.568996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230937, -0.793825, 0.562592,
		0.818933, -0.153634, -0.552943,
		0.525373, 0.588420, 0.614610,
		27.147835, 28.620613, 25.753380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<28.245131, 28.202557, 25.174391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.094913, 28.341892, 25.517933>,  <28.004784, 28.425493, 25.724058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.094913, 28.341892, 25.517933>,  <28.245131, 28.202557, 25.174391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094913, 28.341892, 25.517933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142693, -0.893901, 0.424947,
		0.915754, 0.282138, 0.285993,
		-0.375543, 0.348338, 0.858853,
		27.982250, 28.446394, 25.775589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780207, 28.055986, 25.583315>,  <28.245131, 28.202557, 25.174391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780207, 28.055986, 25.583315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.465967, 28.128120, 25.820065>,  <28.277424, 28.171402, 25.962114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.465967, 28.128120, 25.820065>,  <28.780207, 28.055986, 25.583315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.465967, 28.128120, 25.820065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237908, -0.795004, 0.558004,
		0.571170, 0.579178, 0.581650,
		-0.785598, 0.180336, 0.591874,
		28.230288, 28.182220, 25.997627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013390, 28.076391, 26.275040>,  <28.780207, 28.055986, 25.583315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013390, 28.076391, 26.275040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.627174, 27.973026, 26.287426>,  <28.395445, 27.911007, 26.294857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.627174, 27.973026, 26.287426>,  <29.013390, 28.076391, 26.275040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627174, 27.973026, 26.287426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215905, -0.728854, 0.649736,
		-0.145330, 0.634031, 0.759529,
		-0.965538, -0.258412, 0.030966,
		28.337513, 27.895502, 26.296717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915901, 27.767342, 26.916904>,  <29.013390, 28.076391, 26.275040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915901, 27.767342, 26.916904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.587374, 27.646103, 26.723591>,  <28.390257, 27.573359, 26.607603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.587374, 27.646103, 26.723591>,  <28.915901, 27.767342, 26.916904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587374, 27.646103, 26.723591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008238, -0.840784, 0.541308,
		-0.570407, 0.448569, 0.688056,
		-0.821321, -0.303098, -0.483284,
		28.340977, 27.555174, 26.578606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452381, 27.560595, 27.461306>,  <28.915901, 27.767342, 26.916904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452381, 27.560595, 27.461306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.316622, 27.384197, 27.128960>,  <28.235167, 27.278358, 26.929552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.316622, 27.384197, 27.128960>,  <28.452381, 27.560595, 27.461306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316622, 27.384197, 27.128960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134465, -0.851476, 0.506861,
		-0.930983, 0.283750, 0.229690,
		-0.339397, -0.440993, -0.830864,
		28.214802, 27.251900, 26.879700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982491, 27.136295, 27.753395>,  <28.452381, 27.560595, 27.461306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.982491, 27.136295, 27.753395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.029554, 26.996624, 27.381538>,  <28.057793, 26.912821, 27.158424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.029554, 26.996624, 27.381538>,  <27.982491, 27.136295, 27.753395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029554, 26.996624, 27.381538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137422, -0.932861, 0.332995,
		-0.983500, 0.088574, -0.157742,
		0.117657, -0.349178, -0.929641,
		28.064852, 26.891870, 27.102646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454166, 26.666239, 27.740330>,  <27.982491, 27.136295, 27.753395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454166, 26.666239, 27.740330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.703506, 26.562027, 27.445423>,  <27.853109, 26.499500, 27.268480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.703506, 26.562027, 27.445423>,  <27.454166, 26.666239, 27.740330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703506, 26.562027, 27.445423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105069, -0.962218, 0.251190,
		-0.774853, -0.079115, -0.627172,
		0.623349, -0.260531, -0.737265,
		27.890511, 26.483868, 27.224243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053024, 26.132370, 27.493927>,  <27.454166, 26.666239, 27.740330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053024, 26.132370, 27.493927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.446665, 26.121002, 27.423805>,  <27.682850, 26.114182, 27.381731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.446665, 26.121002, 27.423805>,  <27.053024, 26.132370, 27.493927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.446665, 26.121002, 27.423805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018102, -0.965922, 0.258198,
		-0.176670, -0.257267, -0.950053,
		0.984104, -0.028418, -0.175306,
		27.741896, 26.112476, 27.371214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245739, 25.516182, 27.115177>,  <27.053024, 26.132370, 27.493927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245739, 25.516182, 27.115177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.582773, 25.610107, 27.309048>,  <27.784994, 25.666464, 27.425371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.582773, 25.610107, 27.309048>,  <27.245739, 25.516182, 27.115177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.582773, 25.610107, 27.309048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062879, -0.850900, 0.521551,
		0.534881, -0.469927, -0.702191,
		0.842585, 0.234815, 0.484678,
		27.835548, 25.680552, 27.454451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635084, 24.970057, 27.003563>,  <27.245739, 25.516182, 27.115177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635084, 24.970057, 27.003563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.782475, 25.158173, 27.324326>,  <27.870909, 25.271042, 27.516783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.782475, 25.158173, 27.324326>,  <27.635084, 24.970057, 27.003563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782475, 25.158173, 27.324326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046221, -0.852266, 0.521062,
		0.928487, -0.229065, -0.292304,
		0.368477, 0.470289, 0.801906,
		27.893017, 25.299259, 27.564898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.023573, 24.456203, 27.384695>,  <27.635084, 24.970057, 27.003563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.023573, 24.456203, 27.384695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.971785, 24.744385, 27.657219>,  <27.940712, 24.917294, 27.820734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.971785, 24.744385, 27.657219>,  <28.023573, 24.456203, 27.384695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971785, 24.744385, 27.657219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223614, -0.690607, 0.687793,
		0.966040, -0.063300, 0.250517,
		-0.129472, 0.720455, 0.681309,
		27.932943, 24.960522, 27.861612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430058, 24.224977, 27.943230>,  <28.023573, 24.456203, 27.384695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430058, 24.224977, 27.943230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.143503, 24.474480, 28.068272>,  <27.971571, 24.624180, 28.143297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.143503, 24.474480, 28.068272>,  <28.430058, 24.224977, 27.943230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143503, 24.474480, 28.068272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233854, -0.636796, 0.734713,
		0.657345, 0.453235, 0.602060,
		-0.716387, 0.623754, 0.312604,
		27.928587, 24.661606, 28.162052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.475025, 24.168673, 28.617517>,  <28.430058, 24.224977, 27.943230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.475025, 24.168673, 28.617517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.106035, 24.319458, 28.584202>,  <27.884642, 24.409929, 28.564213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.106035, 24.319458, 28.584202>,  <28.475025, 24.168673, 28.617517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.106035, 24.319458, 28.584202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304544, -0.577977, 0.757097,
		0.237261, 0.723768, 0.647972,
		-0.922475, 0.376966, -0.083288,
		27.829292, 24.432549, 28.559216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291500, 24.161613, 29.285599>,  <28.475025, 24.168673, 28.617517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291500, 24.161613, 29.285599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.954233, 24.216515, 29.077663>,  <27.751873, 24.249454, 28.952902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.954233, 24.216515, 29.077663>,  <28.291500, 24.161613, 29.285599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.954233, 24.216515, 29.077663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506364, -0.527741, 0.681972,
		-0.180739, 0.838243, 0.514472,
		-0.843166, 0.137251, -0.519840,
		27.701283, 24.257690, 28.921711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.877079, 24.416004, 29.778379>,  <28.291500, 24.161613, 29.285599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.877079, 24.416004, 29.778379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.651070, 24.279068, 29.478100>,  <27.515463, 24.196907, 29.297932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.651070, 24.279068, 29.478100>,  <27.877079, 24.416004, 29.778379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.651070, 24.279068, 29.478100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647717, -0.379560, 0.660603,
		-0.511087, 0.859498, -0.007278,
		-0.565025, -0.342340, -0.750700,
		27.481562, 24.176367, 29.252890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270168, 24.357599, 30.007738>,  <27.877079, 24.416004, 29.778379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.270168, 24.357599, 30.007738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.208721, 24.124939, 29.688217>,  <27.171852, 23.985342, 29.496506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.208721, 24.124939, 29.688217>,  <27.270168, 24.357599, 30.007738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208721, 24.124939, 29.688217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608266, -0.581417, 0.540339,
		-0.778725, 0.568890, -0.264482,
		-0.153620, -0.581651, -0.798801,
		27.162636, 23.950443, 29.448576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.628750, 24.272526, 29.849098>,  <27.270168, 24.357599, 30.007738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.628750, 24.272526, 29.849098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.817310, 23.945728, 29.716251>,  <26.930447, 23.749649, 29.636543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.817310, 23.945728, 29.716251>,  <26.628750, 24.272526, 29.849098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.817310, 23.945728, 29.716251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490688, -0.555885, 0.670982,
		-0.732807, -0.153337, -0.662934,
		0.471402, -0.816994, -0.332116,
		26.958731, 23.700630, 29.616617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.990498, 23.780592, 29.946609>,  <26.628750, 24.272526, 29.849098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.990498, 23.780592, 29.946609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.318249, 23.557800, 29.892365>,  <26.514900, 23.424126, 29.859818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.318249, 23.557800, 29.892365>,  <25.990498, 23.780592, 29.946609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.318249, 23.557800, 29.892365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199051, -0.498289, 0.843852,
		-0.537586, -0.664439, -0.519155,
		0.819378, -0.556981, -0.135616,
		26.564062, 23.390707, 29.851681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.806585, 23.112455, 30.046474>,  <25.990498, 23.780592, 29.946609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.806585, 23.112455, 30.046474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.202074, 23.106228, 30.106056>,  <26.439367, 23.102491, 30.141806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.202074, 23.106228, 30.106056>,  <25.806585, 23.112455, 30.046474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202074, 23.106228, 30.106056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123226, -0.649852, 0.750005,
		0.085122, -0.759902, -0.644441,
		0.988721, -0.015570, 0.148956,
		26.498690, 23.101557, 30.150743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897514, 22.474638, 30.283682>,  <25.806585, 23.112455, 30.046474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.897514, 22.474638, 30.283682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.242796, 22.649712, 30.384327>,  <26.449965, 22.754755, 30.444714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.242796, 22.649712, 30.384327>,  <25.897514, 22.474638, 30.283682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.242796, 22.649712, 30.384327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023132, -0.532152, 0.846333,
		0.504322, -0.724739, -0.469481,
		0.863206, 0.437684, 0.251611,
		26.501759, 22.781017, 30.459810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.357519, 21.884491, 30.302559>,  <25.897514, 22.474638, 30.283682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.357519, 21.884491, 30.302559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.505529, 22.186943, 30.518467>,  <26.594336, 22.368414, 30.648012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.505529, 22.186943, 30.518467>,  <26.357519, 21.884491, 30.302559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505529, 22.186943, 30.518467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049226, -0.564233, 0.824147,
		0.927717, -0.331525, -0.171559,
		0.370024, 0.756129, 0.539768,
		26.616537, 22.413782, 30.680397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975517, 21.643641, 30.629332>,  <26.357519, 21.884491, 30.302559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.975517, 21.643641, 30.629332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.822617, 21.940975, 30.848907>,  <26.730877, 22.119377, 30.980652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.822617, 21.940975, 30.848907>,  <26.975517, 21.643641, 30.629332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822617, 21.940975, 30.848907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094151, -0.622290, 0.777104,
		0.919250, 0.245366, 0.307857,
		-0.382251, 0.743338, 0.548938,
		26.707941, 22.163977, 31.013590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347523, 21.636003, 31.296968>,  <26.975517, 21.643641, 30.629332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.347523, 21.636003, 31.296968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.990385, 21.812809, 31.331501>,  <26.776102, 21.918892, 31.352221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.990385, 21.812809, 31.331501>,  <27.347523, 21.636003, 31.296968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.990385, 21.812809, 31.331501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146266, -0.465894, 0.872667,
		0.425952, 0.766529, 0.480623,
		-0.892844, 0.442013, 0.086332,
		26.722532, 21.945414, 31.357401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344614, 21.978025, 31.936319>,  <27.347523, 21.636003, 31.296968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344614, 21.978025, 31.936319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.636444, 21.804337, 32.147667>,  <27.811543, 21.700123, 32.274475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.636444, 21.804337, 32.147667>,  <27.344614, 21.978025, 31.936319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.636444, 21.804337, 32.147667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679933, 0.543644, -0.492079,
		-0.073572, 0.718263, 0.691872,
		0.729574, -0.434223, 0.528368,
		27.855316, 21.674070, 32.306179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717514, 22.497704, 32.388458>,  <27.344614, 21.978025, 31.936319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717514, 22.497704, 32.388458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.958298, 22.192307, 32.294884>,  <28.102768, 22.009068, 32.238739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.958298, 22.192307, 32.294884>,  <27.717514, 22.497704, 32.388458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958298, 22.192307, 32.294884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651306, 0.638931, -0.409351,
		0.462003, 0.094051, 0.881877,
		0.601958, -0.763493, -0.233932,
		28.138885, 21.963259, 32.224705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409258, 22.689398, 32.741821>,  <27.717514, 22.497704, 32.388458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409258, 22.689398, 32.741821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.470884, 22.425140, 32.447933>,  <28.507860, 22.266586, 32.271599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.470884, 22.425140, 32.447933>,  <28.409258, 22.689398, 32.741821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470884, 22.425140, 32.447933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546099, 0.676636, -0.493903,
		0.823432, -0.325137, 0.465023,
		0.154065, -0.660644, -0.734720,
		28.517103, 22.226948, 32.227516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116787, 22.781729, 32.592442>,  <28.409258, 22.689398, 32.741821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116787, 22.781729, 32.592442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.956377, 22.609055, 32.269253>,  <28.860130, 22.505449, 32.075340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.956377, 22.609055, 32.269253>,  <29.116787, 22.781729, 32.592442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956377, 22.609055, 32.269253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606466, 0.535930, -0.587349,
		0.686569, -0.725552, 0.046881,
		-0.401027, -0.431687, -0.807975,
		28.836069, 22.479549, 32.026859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765377, 22.724287, 32.220413>,  <29.116787, 22.781729, 32.592442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765377, 22.724287, 32.220413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.460695, 22.667526, 31.967537>,  <29.277885, 22.633471, 31.815811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.460695, 22.667526, 31.967537>,  <29.765377, 22.724287, 32.220413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460695, 22.667526, 31.967537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563711, 0.335895, -0.754589,
		0.319429, -0.931149, -0.175860,
		-0.761705, -0.141903, -0.632193,
		29.232183, 22.624956, 31.777880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093359, 22.540924, 31.664507>,  <29.765377, 22.724287, 32.220413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093359, 22.540924, 31.664507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.741383, 22.651878, 31.510227>,  <29.530197, 22.718451, 31.417660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.741383, 22.651878, 31.510227>,  <30.093359, 22.540924, 31.664507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741383, 22.651878, 31.510227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468897, 0.376466, -0.799005,
		-0.076430, -0.883929, -0.461332,
		-0.879940, 0.277386, -0.385698,
		29.477400, 22.735094, 31.394518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064270, 22.392740, 31.021803>,  <30.093359, 22.540924, 31.664507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064270, 22.392740, 31.021803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.773632, 22.667408, 31.012516>,  <29.599249, 22.832209, 31.006945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.773632, 22.667408, 31.012516>,  <30.064270, 22.392740, 31.021803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773632, 22.667408, 31.012516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432792, 0.431188, -0.791687,
		-0.533618, -0.585285, -0.610486,
		-0.726597, 0.686672, -0.023217,
		29.555653, 22.873409, 31.005550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751812, 22.299471, 30.401379>,  <30.064270, 22.392740, 31.021803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751812, 22.299471, 30.401379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.699085, 22.676575, 30.523903>,  <29.667450, 22.902838, 30.597418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.699085, 22.676575, 30.523903>,  <29.751812, 22.299471, 30.401379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699085, 22.676575, 30.523903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373293, 0.333471, -0.865707,
		-0.918301, 0.000229, -0.395883,
		-0.131817, 0.942760, 0.306313,
		29.659540, 22.959402, 30.615797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669102, 22.681503, 29.781765>,  <29.751812, 22.299471, 30.401379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.669102, 22.681503, 29.781765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.734684, 22.976509, 30.043816>,  <29.774033, 23.153513, 30.201046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.734684, 22.976509, 30.043816>,  <29.669102, 22.681503, 29.781765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734684, 22.976509, 30.043816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318232, 0.589065, -0.742785,
		-0.933727, 0.330267, -0.138120,
		0.163956, 0.737513, 0.655128,
		29.783871, 23.197763, 30.240355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249699, 23.246813, 29.506199>,  <29.669102, 22.681503, 29.781765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249699, 23.246813, 29.506199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.524277, 23.422752, 29.737827>,  <29.689024, 23.528316, 29.876804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.524277, 23.422752, 29.737827>,  <29.249699, 23.246813, 29.506199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524277, 23.422752, 29.737827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197211, 0.653875, -0.730449,
		-0.699928, 0.615613, 0.362107,
		0.686447, 0.439850, 0.579071,
		29.730211, 23.554707, 29.911549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218964, 23.940426, 29.414253>,  <29.249699, 23.246813, 29.506199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218964, 23.940426, 29.414253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.581274, 23.858734, 29.562775>,  <29.798660, 23.809719, 29.651888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.581274, 23.858734, 29.562775>,  <29.218964, 23.940426, 29.414253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581274, 23.858734, 29.562775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418856, 0.564414, -0.711334,
		-0.064294, 0.799830, 0.596773,
		0.905774, -0.204228, 0.371302,
		29.853006, 23.797466, 29.674166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414534, 24.593212, 29.628019>,  <29.218964, 23.940426, 29.414253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414534, 24.593212, 29.628019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.699596, 24.336742, 29.514168>,  <29.870634, 24.182861, 29.445858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.699596, 24.336742, 29.514168>,  <29.414534, 24.593212, 29.628019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699596, 24.336742, 29.514168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242690, 0.606023, -0.757520,
		0.658193, 0.470778, 0.587495,
		0.712659, -0.641174, -0.284627,
		29.913395, 24.144390, 29.428780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920778, 24.989328, 29.487642>,  <29.414534, 24.593212, 29.628019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920778, 24.989328, 29.487642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.046135, 24.660431, 29.297611>,  <30.121349, 24.463093, 29.183592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.046135, 24.660431, 29.297611>,  <29.920778, 24.989328, 29.487642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046135, 24.660431, 29.297611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239609, 0.552562, -0.798287,
		0.918897, 0.136344, 0.370186,
		0.313393, -0.822244, -0.475079,
		30.140152, 24.413757, 29.155088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477798, 25.222891, 29.121056>,  <29.920778, 24.989328, 29.487642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477798, 25.222891, 29.121056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.395792, 24.876602, 28.938412>,  <30.346588, 24.668829, 28.828825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.395792, 24.876602, 28.938412>,  <30.477798, 25.222891, 29.121056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395792, 24.876602, 28.938412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302010, 0.387799, -0.870863,
		0.930999, -0.316440, 0.181953,
		-0.205015, -0.865724, -0.456609,
		30.334288, 24.616884, 28.801430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035244, 25.232573, 28.613892>,  <30.477798, 25.222891, 29.121056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035244, 25.232573, 28.613892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.740273, 24.986858, 28.501568>,  <30.563290, 24.839430, 28.434174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.740273, 24.986858, 28.501568>,  <31.035244, 25.232573, 28.613892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740273, 24.986858, 28.501568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133372, 0.275129, -0.952111,
		0.662129, -0.739564, -0.120958,
		-0.737426, -0.614288, -0.280808,
		30.519045, 24.802572, 28.417326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189964, 24.953663, 27.969675>,  <31.035244, 25.232573, 28.613892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189964, 24.953663, 27.969675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.805059, 24.846481, 27.950676>,  <30.574118, 24.782173, 27.939276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.805059, 24.846481, 27.950676>,  <31.189964, 24.953663, 27.969675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805059, 24.846481, 27.950676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036022, 0.298424, -0.953753,
		0.269728, -0.916050, -0.296814,
		-0.962263, -0.267945, -0.047495,
		30.516380, 24.766096, 27.936426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171173, 24.693058, 27.322168>,  <31.189964, 24.953663, 27.969675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171173, 24.693058, 27.322168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.803980, 24.801361, 27.438099>,  <30.583664, 24.866343, 27.507658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.803980, 24.801361, 27.438099>,  <31.171173, 24.693058, 27.322168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803980, 24.801361, 27.438099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195777, 0.326180, -0.924812,
		-0.344936, -0.905702, -0.246419,
		-0.917982, 0.270758, 0.289827,
		30.528585, 24.882589, 27.525047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730686, 24.416512, 26.824636>,  <31.171173, 24.693058, 27.322168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730686, 24.416512, 26.824636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.512682, 24.714771, 26.977982>,  <30.381880, 24.893726, 27.069988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.512682, 24.714771, 26.977982>,  <30.730686, 24.416512, 26.824636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512682, 24.714771, 26.977982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108639, 0.390583, -0.914135,
		-0.831361, -0.539862, -0.131865,
		-0.545011, 0.745650, 0.383365,
		30.349178, 24.938467, 27.092991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198212, 24.656755, 26.288116>,  <30.730686, 24.416512, 26.824636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198212, 24.656755, 26.288116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.209171, 24.971512, 26.534710>,  <30.215748, 25.160366, 26.682665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.209171, 24.971512, 26.534710>,  <30.198212, 24.656755, 26.288116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209171, 24.971512, 26.534710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035821, 0.617091, -0.786076,
		-0.998983, -0.000545, 0.045095,
		0.027400, 0.786892, 0.616482,
		30.217392, 25.207579, 26.719654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927313, 25.149559, 25.877031>,  <30.198212, 24.656755, 26.288116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927313, 25.149559, 25.877031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.113888, 25.359604, 26.161762>,  <30.225832, 25.485630, 26.332600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.113888, 25.359604, 26.161762>,  <29.927313, 25.149559, 25.877031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113888, 25.359604, 26.161762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169524, 0.736744, -0.654577,
		-0.868158, 0.425990, 0.254626,
		0.466437, 0.525111, 0.711825,
		30.253819, 25.517138, 26.375309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578321, 25.871988, 25.953886>,  <29.927313, 25.149559, 25.877031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578321, 25.871988, 25.953886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.961554, 25.861454, 26.068001>,  <30.191492, 25.855133, 26.136469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.961554, 25.861454, 26.068001>,  <29.578321, 25.871988, 25.953886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961554, 25.861454, 26.068001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192923, 0.795463, -0.574473,
		-0.211806, 0.605430, 0.767198,
		0.958081, -0.026334, 0.285285,
		30.248978, 25.853554, 26.153585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<20.438162, 31.207937, 17.082687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.806374, 31.163830, 16.932770>,  <21.027300, 31.137365, 16.842819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.806374, 31.163830, 16.932770>,  <20.438162, 31.207937, 17.082687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.806374, 31.163830, 16.932770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387458, 0.380576, 0.839666,
		0.050050, -0.918152, 0.393054,
		0.920528, -0.110267, -0.374793,
		21.082533, 31.130751, 16.820332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.827127, 30.959633, 17.643400>,  <20.438162, 31.207937, 17.082687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.827127, 30.959633, 17.643400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.089111, 31.122498, 17.388763>,  <21.246302, 31.220217, 17.235981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.089111, 31.122498, 17.388763>,  <20.827127, 30.959633, 17.643400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.089111, 31.122498, 17.388763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538499, 0.339522, 0.771196,
		0.530139, -0.847905, 0.003116,
		0.654959, 0.407163, -0.636590,
		21.285599, 31.244646, 17.197786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.457565, 30.823635, 18.015804>,  <20.827127, 30.959633, 17.643400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.457565, 30.823635, 18.015804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.551546, 31.092381, 17.734837>,  <21.607935, 31.253628, 17.566256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.551546, 31.092381, 17.734837>,  <21.457565, 30.823635, 18.015804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.551546, 31.092381, 17.734837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750478, 0.333864, 0.570367,
		0.617723, -0.661160, -0.425778,
		0.234951, 0.671865, -0.702421,
		21.622032, 31.293940, 17.524111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.163609, 30.666824, 17.793886>,  <21.457565, 30.823635, 18.015804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.163609, 30.666824, 17.793886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.078041, 31.051029, 17.722717>,  <22.026701, 31.281551, 17.680016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.078041, 31.051029, 17.722717>,  <22.163609, 30.666824, 17.793886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.078041, 31.051029, 17.722717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816076, 0.275830, 0.507876,
		0.536896, -0.036552, -0.842856,
		-0.213921, 0.960511, -0.177921,
		22.013865, 31.339182, 17.669340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.778004, 30.936756, 17.861326>,  <22.163609, 30.666824, 17.793886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.778004, 30.936756, 17.861326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.530514, 31.250290, 17.882423>,  <22.382019, 31.438410, 17.895082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.530514, 31.250290, 17.882423>,  <22.778004, 30.936756, 17.861326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.530514, 31.250290, 17.882423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627111, 0.452345, 0.634126,
		0.473192, 0.425425, -0.771429,
		-0.618725, 0.783835, 0.052743,
		22.344896, 31.485441, 17.898247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.175102, 31.525318, 17.919109>,  <22.778004, 30.936756, 17.861326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.175102, 31.525318, 17.919109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.833878, 31.684742, 18.053829>,  <22.629143, 31.780396, 18.134661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.833878, 31.684742, 18.053829>,  <23.175102, 31.525318, 17.919109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.833878, 31.684742, 18.053829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521666, 0.636409, 0.568197,
		0.012120, 0.660404, -0.750813,
		-0.853064, 0.398560, 0.336797,
		22.577959, 31.804310, 18.154869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.091402, 32.375847, 17.813297>,  <23.175102, 31.525318, 17.919109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.091402, 32.375847, 17.813297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.857449, 32.238140, 18.107071>,  <22.717077, 32.155518, 18.283335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.857449, 32.238140, 18.107071>,  <23.091402, 32.375847, 17.813297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.857449, 32.238140, 18.107071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264450, 0.775046, 0.573907,
		-0.766797, 0.529889, -0.362270,
		-0.584884, -0.344268, 0.734432,
		22.681984, 32.134861, 18.327400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.758890, 33.026661, 18.162430>,  <23.091402, 32.375847, 17.813297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.758890, 33.026661, 18.162430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.692717, 32.744171, 18.437786>,  <22.653013, 32.574677, 18.603001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.692717, 32.744171, 18.437786>,  <22.758890, 33.026661, 18.162430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.692717, 32.744171, 18.437786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196941, 0.660292, 0.724726,
		-0.966357, 0.255466, 0.029850,
		-0.165433, -0.706223, 0.688390,
		22.643087, 32.532303, 18.644302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.321833, 33.317249, 18.661968>,  <22.758890, 33.026661, 18.162430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.321833, 33.317249, 18.661968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.468300, 33.006172, 18.866367>,  <22.556181, 32.819527, 18.989006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.468300, 33.006172, 18.866367>,  <22.321833, 33.317249, 18.661968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.468300, 33.006172, 18.866367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214025, 0.604797, 0.767081,
		-0.905601, -0.171514, 0.387903,
		0.366168, -0.777691, 0.510997,
		22.578150, 32.772865, 19.019667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.937115, 33.347698, 19.278683>,  <22.321833, 33.317249, 18.661968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.937115, 33.347698, 19.278683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.265795, 33.128098, 19.339874>,  <22.463003, 32.996338, 19.376589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.265795, 33.128098, 19.339874>,  <21.937115, 33.347698, 19.278683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.265795, 33.128098, 19.339874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136125, 0.449718, 0.882736,
		-0.553423, -0.704521, 0.444267,
		0.821702, -0.549002, 0.152981,
		22.512304, 32.963398, 19.385769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.934664, 33.240719, 19.901705>,  <21.937115, 33.347698, 19.278683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.934664, 33.240719, 19.901705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.320385, 33.157921, 19.835644>,  <22.551817, 33.108242, 19.796007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.320385, 33.157921, 19.835644>,  <21.934664, 33.240719, 19.901705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.320385, 33.157921, 19.835644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236878, 0.395492, 0.887398,
		-0.118374, -0.894839, 0.430406,
		0.964301, -0.206999, -0.165151,
		22.609674, 33.095821, 19.786098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.180531, 32.983082, 20.530251>,  <21.934664, 33.240719, 19.901705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.180531, 32.983082, 20.530251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.503698, 33.098125, 20.324512>,  <22.697599, 33.167152, 20.201071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.503698, 33.098125, 20.324512>,  <22.180531, 32.983082, 20.530251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.503698, 33.098125, 20.324512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321711, 0.516007, 0.793876,
		0.493725, -0.806859, 0.324368,
		0.807922, 0.287603, -0.514341,
		22.746073, 33.184410, 20.170210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.753817, 32.797070, 20.962929>,  <22.180531, 32.983082, 20.530251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.753817, 32.797070, 20.962929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.866924, 33.091400, 20.716808>,  <22.934788, 33.267998, 20.569136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.866924, 33.091400, 20.716808>,  <22.753817, 32.797070, 20.962929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.866924, 33.091400, 20.716808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413914, 0.485075, 0.770310,
		0.865285, -0.472501, -0.167407,
		0.282768, 0.735830, -0.615303,
		22.951756, 33.312149, 20.532217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.440609, 32.987537, 21.104845>,  <22.753817, 32.797070, 20.962929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.440609, 32.987537, 21.104845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.303989, 33.312206, 20.915302>,  <23.222017, 33.507008, 20.801577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.303989, 33.312206, 20.915302>,  <23.440609, 32.987537, 21.104845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.303989, 33.312206, 20.915302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333332, 0.576013, 0.746390,
		0.878769, 0.096976, -0.467291,
		-0.341548, 0.811668, -0.473857,
		23.201525, 33.555706, 20.773146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.955877, 33.432869, 21.061462>,  <23.440609, 32.987537, 21.104845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.955877, 33.432869, 21.061462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.620192, 33.649040, 21.037277>,  <23.418779, 33.778744, 21.022766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.620192, 33.649040, 21.037277>,  <23.955877, 33.432869, 21.061462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.620192, 33.649040, 21.037277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333545, 0.599361, 0.727677,
		0.429495, 0.590511, -0.683250,
		-0.839215, 0.540428, -0.060461,
		23.368427, 33.811169, 21.019138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.195883, 34.077423, 21.206776>,  <23.955877, 33.432869, 21.061462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.195883, 34.077423, 21.206776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.804502, 34.134804, 21.266182>,  <23.569675, 34.169231, 21.301826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.804502, 34.134804, 21.266182>,  <24.195883, 34.077423, 21.206776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.804502, 34.134804, 21.266182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206290, 0.647801, 0.733347,
		0.008991, 0.748181, -0.663433,
		-0.978450, 0.143453, 0.148518,
		23.510967, 34.177841, 21.310738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.113054, 34.738144, 21.283981>,  <24.195883, 34.077423, 21.206776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.113054, 34.738144, 21.283981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.792324, 34.591766, 21.472942>,  <23.599886, 34.503941, 21.586319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.792324, 34.591766, 21.472942>,  <24.113054, 34.738144, 21.283981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.792324, 34.591766, 21.472942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224023, 0.548808, 0.805372,
		-0.553976, 0.751596, -0.358068,
		-0.801825, -0.365941, 0.472402,
		23.551777, 34.481983, 21.614662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.938465, 35.274200, 21.781538>,  <24.113054, 34.738144, 21.283981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.938465, 35.274200, 21.781538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.727730, 34.963882, 21.920441>,  <23.601288, 34.777691, 22.003782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.727730, 34.963882, 21.920441>,  <23.938465, 35.274200, 21.781538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.727730, 34.963882, 21.920441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082090, 0.360199, 0.929256,
		-0.845993, 0.518073, -0.126082,
		-0.526838, -0.775794, 0.347255,
		23.569679, 34.731144, 22.024616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.378607, 35.631496, 22.127882>,  <23.938465, 35.274200, 21.781538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.378607, 35.631496, 22.127882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.388165, 35.263599, 22.284603>,  <23.393898, 35.042862, 22.378635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.388165, 35.263599, 22.284603>,  <23.378607, 35.631496, 22.127882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.388165, 35.263599, 22.284603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164994, 0.382913, 0.908930,
		-0.986005, -0.086362, -0.142602,
		0.023893, -0.919738, 0.391803,
		23.395332, 34.987679, 22.402143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.815247, 35.562160, 22.529366>,  <23.378607, 35.631496, 22.127882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.815247, 35.562160, 22.529366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.076574, 35.288403, 22.658840>,  <23.233372, 35.124146, 22.736525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.076574, 35.288403, 22.658840>,  <22.815247, 35.562160, 22.529366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.076574, 35.288403, 22.658840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281255, 0.177542, 0.943067,
		-0.702901, -0.707162, -0.076499,
		0.653319, -0.684398, 0.323687,
		23.272570, 35.083084, 22.755947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.483315, 35.365124, 23.063477>,  <22.815247, 35.562160, 22.529366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.483315, 35.365124, 23.063477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.858362, 35.252464, 23.145004>,  <23.083391, 35.184868, 23.193920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.858362, 35.252464, 23.145004>,  <22.483315, 35.365124, 23.063477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.858362, 35.252464, 23.145004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170209, 0.139303, 0.975512,
		-0.303144, -0.949352, 0.082674,
		0.937620, -0.281648, 0.203817,
		23.139648, 35.167969, 23.206150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.145058, 35.986557, 23.259663>,  <22.483315, 35.365124, 23.063477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.145058, 35.986557, 23.259663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.788881, 36.070076, 23.421410>,  <21.575174, 36.120190, 23.518457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.788881, 36.070076, 23.421410>,  <22.145058, 35.986557, 23.259663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.788881, 36.070076, 23.421410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419526, -0.720979, -0.551532,
		0.176382, -0.660750, 0.729588,
		-0.890442, 0.208801, 0.404369,
		21.521748, 36.132717, 23.542721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.926519, 35.294682, 23.525803>,  <22.145058, 35.986557, 23.259663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.926519, 35.294682, 23.525803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.644119, 35.568050, 23.451515>,  <21.474678, 35.732071, 23.406942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.644119, 35.568050, 23.451515>,  <21.926519, 35.294682, 23.525803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.644119, 35.568050, 23.451515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417585, -0.613513, -0.670242,
		-0.571999, -0.395641, 0.718530,
		-0.706003, 0.683425, -0.185715,
		21.432320, 35.773079, 23.395800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.287100, 34.903587, 23.529202>,  <21.926519, 35.294682, 23.525803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.287100, 34.903587, 23.529202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.235498, 35.250282, 23.336487>,  <21.204538, 35.458302, 23.220858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.235498, 35.250282, 23.336487>,  <21.287100, 34.903587, 23.529202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.235498, 35.250282, 23.336487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485909, -0.478771, -0.731212,
		-0.864437, 0.139776, 0.482920,
		-0.129002, 0.866742, -0.481785,
		21.196798, 35.510303, 23.191952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.547606, 34.859348, 23.295053>,  <21.287100, 34.903587, 23.529202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.547606, 34.859348, 23.295053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.695509, 35.141285, 23.052902>,  <20.784250, 35.310448, 22.907612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.695509, 35.141285, 23.052902>,  <20.547606, 34.859348, 23.295053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.695509, 35.141285, 23.052902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417444, -0.456069, -0.785965,
		-0.830072, 0.543329, 0.125595,
		0.369757, 0.704837, -0.605379,
		20.806437, 35.352737, 22.871288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.958269, 35.015270, 22.926577>,  <20.547606, 34.859348, 23.295053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.958269, 35.015270, 22.926577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.270811, 35.146557, 22.714252>,  <20.458336, 35.225327, 22.586857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.270811, 35.146557, 22.714252>,  <19.958269, 35.015270, 22.926577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.270811, 35.146557, 22.714252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364156, -0.450961, -0.814877,
		-0.506830, 0.830006, -0.232840,
		0.781354, 0.328214, -0.530812,
		20.505217, 35.245022, 22.555010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.689035, 35.019760, 22.270966>,  <19.958269, 35.015270, 22.926577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.689035, 35.019760, 22.270966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.083563, 35.036842, 22.207279>,  <20.320280, 35.047092, 22.169067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.083563, 35.036842, 22.207279>,  <19.689035, 35.019760, 22.270966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.083563, 35.036842, 22.207279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116854, -0.500140, -0.858024,
		-0.116272, 0.864891, -0.488308,
		0.986319, 0.042703, -0.159218,
		20.379459, 35.049652, 22.159513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.863508, 35.304482, 21.568882>,  <19.689035, 35.019760, 22.270966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.863508, 35.304482, 21.568882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.208744, 35.124306, 21.660255>,  <20.415886, 35.016201, 21.715080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.208744, 35.124306, 21.660255>,  <19.863508, 35.304482, 21.568882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.208744, 35.124306, 21.660255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016614, -0.426730, -0.904226,
		0.504781, 0.784222, -0.360822,
		0.863088, -0.450441, 0.228434,
		20.467670, 34.989174, 21.728786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.496246, 35.481022, 21.132505>,  <19.863508, 35.304482, 21.568882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.496246, 35.481022, 21.132505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.556816, 35.108059, 21.263763>,  <20.593159, 34.884281, 21.342518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.556816, 35.108059, 21.263763>,  <20.496246, 35.481022, 21.132505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.556816, 35.108059, 21.263763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027129, -0.335769, -0.941553,
		0.988096, 0.133674, -0.076140,
		0.151426, -0.932411, 0.328146,
		20.602243, 34.828335, 21.362207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.780880, 35.162956, 20.552830>,  <20.496246, 35.481022, 21.132505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.780880, 35.162956, 20.552830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.703911, 34.835854, 20.769810>,  <20.657730, 34.639591, 20.899998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.703911, 34.835854, 20.769810>,  <20.780880, 35.162956, 20.552830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.703911, 34.835854, 20.769810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005417, -0.553656, -0.832728,
		0.981297, -0.157298, 0.110966,
		-0.192423, -0.817754, 0.542449,
		20.646183, 34.590527, 20.932545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.194494, 34.641487, 20.221725>,  <20.780880, 35.162956, 20.552830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.194494, 34.641487, 20.221725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.922949, 34.459587, 20.452324>,  <20.760021, 34.350449, 20.590683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.922949, 34.459587, 20.452324>,  <21.194494, 34.641487, 20.221725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.922949, 34.459587, 20.452324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220762, -0.622401, -0.750920,
		0.700291, -0.637041, 0.322135,
		-0.678864, -0.454747, 0.576496,
		20.719290, 34.323162, 20.625273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.331383, 33.988415, 20.201183>,  <21.194494, 34.641487, 20.221725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.331383, 33.988415, 20.201183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.942957, 34.001919, 20.295750>,  <20.709902, 34.010021, 20.352489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.942957, 34.001919, 20.295750>,  <21.331383, 33.988415, 20.201183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.942957, 34.001919, 20.295750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192889, -0.694542, -0.693112,
		0.140804, -0.718659, 0.680957,
		-0.971065, 0.033756, 0.236416,
		20.651638, 34.012047, 20.366674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.060093, 33.240025, 20.128757>,  <21.331383, 33.988415, 20.201183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.060093, 33.240025, 20.128757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.765814, 33.510189, 20.108467>,  <20.589247, 33.672287, 20.096292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.765814, 33.510189, 20.108467>,  <21.060093, 33.240025, 20.128757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.765814, 33.510189, 20.108467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397973, -0.491669, -0.774518,
		-0.548057, -0.549623, 0.630514,
		-0.735697, 0.675408, -0.050727,
		20.545105, 33.712811, 20.093250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.514433, 32.848274, 19.850319>,  <21.060093, 33.240025, 20.128757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.514433, 32.848274, 19.850319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.353682, 33.212814, 19.814682>,  <20.257231, 33.431538, 19.793299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.353682, 33.212814, 19.814682>,  <20.514433, 32.848274, 19.850319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.353682, 33.212814, 19.814682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514447, -0.305198, -0.801372,
		-0.757521, -0.276220, 0.591494,
		-0.401878, 0.911349, -0.089093,
		20.233118, 33.486217, 19.787954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.759451, 32.715240, 19.746902>,  <20.514433, 32.848274, 19.850319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.759451, 32.715240, 19.746902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.860575, 33.073574, 19.600716>,  <19.921249, 33.288574, 19.513002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.860575, 33.073574, 19.600716>,  <19.759451, 32.715240, 19.746902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.860575, 33.073574, 19.600716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529634, -0.187975, -0.827136,
		-0.809675, 0.402674, 0.426942,
		0.252812, 0.895834, -0.365469,
		19.936419, 33.342323, 19.491076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.129221, 33.118809, 19.554155>,  <19.759451, 32.715240, 19.746902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.129221, 33.118809, 19.554155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.411243, 33.292755, 19.330090>,  <19.580458, 33.397121, 19.195650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.411243, 33.292755, 19.330090>,  <19.129221, 33.118809, 19.554155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.411243, 33.292755, 19.330090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491987, -0.268937, -0.828023,
		-0.510729, 0.859397, 0.024332,
		0.705057, 0.434867, -0.560166,
		19.622761, 33.423214, 19.162041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.706791, 33.623367, 19.210558>,  <19.129221, 33.118809, 19.554155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.706791, 33.623367, 19.210558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.050285, 33.534168, 19.026016>,  <19.256382, 33.480648, 18.915291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.050285, 33.534168, 19.026016>,  <18.706791, 33.623367, 19.210558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.050285, 33.534168, 19.026016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510190, -0.288141, -0.810359,
		0.047771, 0.931261, -0.361206,
		0.858734, -0.222996, -0.461355,
		19.307905, 33.467270, 18.887609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.575195, 33.646664, 18.554796>,  <18.706791, 33.623367, 19.210558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.575195, 33.646664, 18.554796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.918343, 33.443153, 18.525932>,  <19.124231, 33.321049, 18.508614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.918343, 33.443153, 18.525932>,  <18.575195, 33.646664, 18.554796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.918343, 33.443153, 18.525932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371739, -0.517499, -0.770717,
		0.354780, 0.687999, -0.633079,
		0.857870, -0.508775, -0.072158,
		19.175703, 33.290520, 18.504286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.743147, 33.549049, 17.845184>,  <18.575195, 33.646664, 18.554796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.743147, 33.549049, 17.845184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.932465, 33.251568, 18.034031>,  <19.046055, 33.073078, 18.147339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.932465, 33.251568, 18.034031>,  <18.743147, 33.549049, 17.845184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.932465, 33.251568, 18.034031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308387, -0.641914, -0.702029,
		0.825162, 0.186671, -0.533162,
		0.473293, -0.743707, 0.472116,
		19.074453, 33.028454, 18.175665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.073473, 33.250599, 17.351954>,  <18.743147, 33.549049, 17.845184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.073473, 33.250599, 17.351954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.130074, 32.951080, 17.610962>,  <19.164034, 32.771370, 17.766367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.130074, 32.951080, 17.610962>,  <19.073473, 33.250599, 17.351954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.130074, 32.951080, 17.610962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238948, -0.660596, -0.711700,
		0.960667, -0.054015, -0.272400,
		0.141504, -0.748796, 0.647519,
		19.172525, 32.726440, 17.805218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.603899, 32.839680, 17.067190>,  <19.073473, 33.250599, 17.351954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.603899, 32.839680, 17.067190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.388397, 32.631554, 17.332222>,  <19.259096, 32.506676, 17.491241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.388397, 32.631554, 17.332222>,  <19.603899, 32.839680, 17.067190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.388397, 32.631554, 17.332222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243555, -0.656701, -0.713740,
		0.806489, -0.545905, 0.227074,
		-0.538754, -0.520318, 0.662580,
		19.226770, 32.475460, 17.530996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.002419, 32.116707, 17.099550>,  <19.603899, 32.839680, 17.067190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.002419, 32.116707, 17.099550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.617254, 32.084309, 17.202499>,  <19.386156, 32.064869, 17.264269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.617254, 32.084309, 17.202499>,  <20.002419, 32.116707, 17.099550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.617254, 32.084309, 17.202499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110676, -0.751377, -0.650526,
		0.246075, -0.654883, 0.714545,
		-0.962911, -0.080995, 0.257375,
		19.328381, 32.060009, 17.279713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.113722, 30.351568, 24.054796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435005, 30.497162, 24.243423>,  <26.627775, 30.584518, 24.356600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435005, 30.497162, 24.243423>,  <26.113722, 30.351568, 24.054796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.435005, 30.497162, 24.243423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093924, 0.859095, -0.503124,
		-0.588249, 0.359822, 0.724218,
		0.803207, 0.363983, 0.471566,
		26.675968, 30.606358, 24.384893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.992727, 31.093941, 24.201778>,  <26.113722, 30.351568, 24.054796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.992727, 31.093941, 24.201778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.388447, 31.069969, 24.254993>,  <26.625877, 31.055586, 24.286922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.388447, 31.069969, 24.254993>,  <25.992727, 31.093941, 24.201778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.388447, 31.069969, 24.254993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099655, 0.943498, -0.316040,
		-0.106582, 0.325915, 0.939372,
		0.989297, -0.059929, 0.133039,
		26.685236, 31.051991, 24.294905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.246716, 31.629704, 24.641373>,  <25.992727, 31.093941, 24.201778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.246716, 31.629704, 24.641373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.541019, 31.510086, 24.398315>,  <26.717602, 31.438316, 24.252481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.541019, 31.510086, 24.398315>,  <26.246716, 31.629704, 24.641373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.541019, 31.510086, 24.398315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291274, 0.949737, -0.114714,
		0.611405, -0.092589, 0.785882,
		0.735760, -0.299044, -0.607642,
		26.761747, 31.420372, 24.216022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.790827, 32.049950, 24.866112>,  <26.246716, 31.629704, 24.641373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.790827, 32.049950, 24.866112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893234, 31.914391, 24.503983>,  <26.954678, 31.833055, 24.286705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893234, 31.914391, 24.503983>,  <26.790827, 32.049950, 24.866112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.893234, 31.914391, 24.503983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397362, 0.890646, -0.221029,
		0.881226, -0.303153, 0.362684,
		0.256018, -0.338894, -0.905321,
		26.970039, 31.812723, 24.232386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407951, 32.291985, 24.721731>,  <26.790827, 32.049950, 24.866112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407951, 32.291985, 24.721731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.266848, 32.232334, 24.352230>,  <27.182186, 32.196545, 24.130529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.266848, 32.232334, 24.352230>,  <27.407951, 32.291985, 24.721731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266848, 32.232334, 24.352230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490516, 0.811230, -0.318277,
		0.796839, -0.565393, -0.213023,
		-0.352762, -0.149125, -0.923754,
		27.161020, 32.187595, 24.075104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891838, 32.337540, 24.235228>,  <27.407951, 32.291985, 24.721731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891838, 32.337540, 24.235228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575949, 32.422417, 24.004990>,  <27.386415, 32.473343, 23.866846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575949, 32.422417, 24.004990>,  <27.891838, 32.337540, 24.235228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575949, 32.422417, 24.004990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512048, 0.744735, -0.427992,
		0.337851, -0.632729, -0.696786,
		-0.789723, 0.212190, -0.575597,
		27.339031, 32.486073, 23.832310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160055, 32.514069, 23.586197>,  <27.891838, 32.337540, 24.235228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160055, 32.514069, 23.586197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787331, 32.656780, 23.559540>,  <27.563696, 32.742405, 23.543545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787331, 32.656780, 23.559540>,  <28.160055, 32.514069, 23.586197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.787331, 32.656780, 23.559540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326599, 0.744141, -0.582741,
		-0.158317, -0.564769, -0.809921,
		-0.931810, 0.356777, -0.066643,
		27.507788, 32.763813, 23.539547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995720, 32.748596, 22.820765>,  <28.160055, 32.514069, 23.586197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995720, 32.748596, 22.820765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740400, 32.926716, 23.071934>,  <27.587210, 33.033588, 23.222635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740400, 32.926716, 23.071934>,  <27.995720, 32.748596, 22.820765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.740400, 32.926716, 23.071934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218922, 0.887032, -0.406507,
		-0.738004, -0.122006, -0.663675,
		-0.638297, 0.445296, 0.627923,
		27.548912, 33.060307, 23.260311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.754772, 33.359180, 22.375834>,  <27.995720, 32.748596, 22.820765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.754772, 33.359180, 22.375834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649330, 33.474529, 22.744041>,  <27.586065, 33.543739, 22.964966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649330, 33.474529, 22.744041>,  <27.754772, 33.359180, 22.375834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649330, 33.474529, 22.744041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227702, 0.945904, -0.231120,
		-0.937371, 0.148680, -0.315007,
		-0.263603, 0.288373, 0.920519,
		27.570250, 33.561043, 23.020197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114695, 33.891464, 22.310190>,  <27.754772, 33.359180, 22.375834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.114695, 33.891464, 22.310190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255514, 33.948372, 22.680233>,  <27.340006, 33.982517, 22.902258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255514, 33.948372, 22.680233>,  <27.114695, 33.891464, 22.310190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.255514, 33.948372, 22.680233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267665, 0.931801, -0.245156,
		-0.896893, 0.333926, 0.289959,
		0.352048, 0.142266, 0.925107,
		27.361128, 33.991051, 22.957766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941931, 34.552563, 22.584311>,  <27.114695, 33.891464, 22.310190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941931, 34.552563, 22.584311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264620, 34.434372, 22.789013>,  <27.458233, 34.363457, 22.911835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264620, 34.434372, 22.789013>,  <26.941931, 34.552563, 22.584311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.264620, 34.434372, 22.789013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404381, 0.907524, -0.113471,
		-0.430902, 0.298484, 0.851605,
		0.806722, -0.295478, 0.511755,
		27.506636, 34.345730, 22.942539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036255, 35.133320, 22.994154>,  <26.941931, 34.552563, 22.584311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036255, 35.133320, 22.994154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384876, 34.939377, 22.965015>,  <27.594049, 34.823013, 22.947533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384876, 34.939377, 22.965015>,  <27.036255, 35.133320, 22.994154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384876, 34.939377, 22.965015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394786, 0.782093, -0.482156,
		0.290749, 0.391467, 0.873052,
		0.871556, -0.484854, -0.072847,
		27.646343, 34.793922, 22.943161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.567114, 35.484394, 23.545521>,  <27.036255, 35.133320, 22.994154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.567114, 35.484394, 23.545521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792984, 35.645771, 23.833515>,  <26.928505, 35.742596, 24.006311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792984, 35.645771, 23.833515>,  <26.567114, 35.484394, 23.545521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.792984, 35.645771, 23.833515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823504, -0.333169, -0.459173,
		0.054630, 0.852195, -0.520365,
		0.564674, 0.403438, 0.719987,
		26.962387, 35.766804, 24.049511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813339, 36.145882, 23.301092>,  <26.567114, 35.484394, 23.545521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813339, 36.145882, 23.301092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048882, 35.936352, 23.547298>,  <27.190207, 35.810635, 23.695023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048882, 35.936352, 23.547298>,  <26.813339, 36.145882, 23.301092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048882, 35.936352, 23.547298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610846, -0.210252, -0.763323,
		0.529258, 0.825472, 0.196166,
		0.588858, -0.523822, 0.615514,
		27.225538, 35.779205, 23.731953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320000, 36.039272, 24.018185>,  <26.813339, 36.145882, 23.301092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320000, 36.039272, 24.018185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083227, 36.269875, 24.243488>,  <25.941164, 36.408237, 24.378672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083227, 36.269875, 24.243488>,  <26.320000, 36.039272, 24.018185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.083227, 36.269875, 24.243488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498741, -0.286986, 0.817861,
		0.633148, 0.765037, -0.117651,
		-0.591929, 0.576505, 0.563260,
		25.905649, 36.442825, 24.412466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.713732, 36.473850, 24.478642>,  <26.320000, 36.039272, 24.018185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.713732, 36.473850, 24.478642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.352121, 36.435276, 24.645226>,  <26.135155, 36.412132, 24.745176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.352121, 36.435276, 24.645226>,  <26.713732, 36.473850, 24.478642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.352121, 36.435276, 24.645226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421948, -0.357530, 0.833146,
		0.068548, 0.928909, 0.363909,
		-0.904025, -0.096440, 0.416459,
		26.080914, 36.406345, 24.770163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.713621, 36.632542, 25.245399>,  <26.713732, 36.473850, 24.478642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.713621, 36.632542, 25.245399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.366730, 36.433743, 25.233345>,  <26.158594, 36.314465, 25.226112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.366730, 36.433743, 25.233345>,  <26.713621, 36.632542, 25.245399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.366730, 36.433743, 25.233345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224541, -0.444401, 0.867231,
		-0.444401, 0.745322, 0.496994,
		-0.867231, -0.496994, -0.030137,
		26.106560, 36.284645, 25.224304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540081, 36.745464, 25.877527>,  <26.713621, 36.632542, 25.245399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.540081, 36.745464, 25.877527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.340511, 36.429390, 25.735157>,  <26.220770, 36.239746, 25.649734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.340511, 36.429390, 25.735157>,  <26.540081, 36.745464, 25.877527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.340511, 36.429390, 25.735157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276052, -0.534200, 0.799016,
		-0.821506, 0.300394, 0.484657,
		-0.498923, -0.790186, -0.355924,
		26.190834, 36.192333, 25.628380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075022, 36.433048, 26.464540>,  <26.540081, 36.745464, 25.877527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075022, 36.433048, 26.464540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.160017, 36.160503, 26.184372>,  <26.211014, 35.996975, 26.016272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.160017, 36.160503, 26.184372>,  <26.075022, 36.433048, 26.464540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.160017, 36.160503, 26.184372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244042, -0.657072, 0.713232,
		-0.946199, -0.322485, 0.026662,
		0.212488, -0.681366, -0.700421,
		26.223763, 35.956093, 25.974245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.783386, 35.884670, 26.754015>,  <26.075022, 36.433048, 26.464540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.783386, 35.884670, 26.754015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050541, 35.739559, 26.494072>,  <26.210835, 35.652493, 26.338106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050541, 35.739559, 26.494072>,  <25.783386, 35.884670, 26.754015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.050541, 35.739559, 26.494072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308541, -0.659634, 0.685336,
		-0.677295, -0.658235, -0.328630,
		0.667888, -0.362779, -0.649859,
		26.250908, 35.630726, 26.299114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.633781, 35.231190, 26.688082>,  <25.783386, 35.884670, 26.754015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.633781, 35.231190, 26.688082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.012505, 35.233841, 26.559387>,  <26.239738, 35.235432, 26.482170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.012505, 35.233841, 26.559387>,  <25.633781, 35.231190, 26.688082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.012505, 35.233841, 26.559387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166989, -0.864769, 0.473592,
		-0.275086, -0.502126, -0.819876,
		0.946806, 0.006631, -0.321735,
		26.296547, 35.235832, 26.462866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790440, 34.509720, 26.619719>,  <25.633781, 35.231190, 26.688082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.790440, 34.509720, 26.619719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.156916, 34.670017, 26.619202>,  <26.376801, 34.766193, 26.618891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.156916, 34.670017, 26.619202>,  <25.790440, 34.509720, 26.619719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.156916, 34.670017, 26.619202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358037, -0.817101, 0.451836,
		0.180013, -0.414431, -0.892100,
		0.916190, 0.400741, -0.001293,
		26.431772, 34.790241, 26.618814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.213612, 33.992928, 26.355230>,  <25.790440, 34.509720, 26.619719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.213612, 33.992928, 26.355230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.436378, 34.250793, 26.564709>,  <26.570038, 34.405514, 26.690395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.436378, 34.250793, 26.564709>,  <26.213612, 33.992928, 26.355230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436378, 34.250793, 26.564709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616255, -0.743451, 0.259829,
		0.556842, 0.178026, -0.811316,
		0.556917, 0.644661, 0.523694,
		26.603453, 34.444191, 26.721817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.797064, 33.803757, 26.113121>,  <26.213612, 33.992928, 26.355230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.797064, 33.803757, 26.113121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900928, 34.022713, 26.431351>,  <26.963247, 34.154087, 26.622288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900928, 34.022713, 26.431351>,  <26.797064, 33.803757, 26.113121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900928, 34.022713, 26.431351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723395, -0.656018, 0.215267,
		0.639745, 0.519616, -0.566326,
		0.259664, 0.547393, 0.795572,
		26.978828, 34.186932, 26.670023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518970, 33.906502, 26.067944>,  <26.797064, 33.803757, 26.113121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518970, 33.906502, 26.067944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428743, 33.960327, 26.453899>,  <27.374607, 33.992622, 26.685472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428743, 33.960327, 26.453899>,  <27.518970, 33.906502, 26.067944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.428743, 33.960327, 26.453899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690798, -0.676284, 0.255809,
		0.686962, 0.724246, 0.059589,
		-0.225568, 0.134567, 0.964889,
		27.361073, 34.000698, 26.743366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118752, 33.774918, 26.377430>,  <27.518970, 33.906502, 26.067944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118752, 33.774918, 26.377430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875973, 33.742668, 26.693687>,  <27.730305, 33.723316, 26.883442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875973, 33.742668, 26.693687>,  <28.118752, 33.774918, 26.377430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875973, 33.742668, 26.693687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630845, -0.653953, 0.417589,
		0.483373, 0.752227, 0.447778,
		-0.606947, -0.080627, 0.790642,
		27.693888, 33.718479, 26.930880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531685, 33.910709, 26.986397>,  <28.118752, 33.774918, 26.377430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531685, 33.910709, 26.986397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227299, 33.688869, 27.121067>,  <28.044666, 33.555767, 27.201870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227299, 33.688869, 27.121067>,  <28.531685, 33.910709, 26.986397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.227299, 33.688869, 27.121067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637485, -0.735611, 0.229105,
		0.120601, 0.388966, 0.913324,
		-0.760966, -0.554600, 0.336676,
		27.999008, 33.522491, 27.222069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819624, 33.457500, 27.617887>,  <28.531685, 33.910709, 26.986397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819624, 33.457500, 27.617887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476097, 33.278427, 27.518280>,  <28.269981, 33.170982, 27.458515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476097, 33.278427, 27.518280>,  <28.819624, 33.457500, 27.617887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476097, 33.278427, 27.518280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369547, -0.878052, 0.304074,
		-0.354781, 0.169120, 0.919527,
		-0.858816, -0.447688, -0.249019,
		28.218452, 33.144119, 27.443575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913486, 33.969707, 28.128767>,  <28.819624, 33.457500, 27.617887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913486, 33.969707, 28.128767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169107, 34.126682, 28.393375>,  <29.322479, 34.220867, 28.552139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169107, 34.126682, 28.393375>,  <28.913486, 33.969707, 28.128767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169107, 34.126682, 28.393375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147666, 0.781456, -0.606236,
		-0.754857, 0.485099, 0.441440,
		0.639050, 0.392436, 0.661520,
		29.360823, 34.244411, 28.591831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902311, 34.587963, 27.944300>,  <28.913486, 33.969707, 28.128767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902311, 34.587963, 27.944300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224520, 34.576012, 28.181026>,  <29.417845, 34.568840, 28.323063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224520, 34.576012, 28.181026>,  <28.902311, 34.587963, 27.944300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224520, 34.576012, 28.181026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435084, 0.707859, -0.556452,
		-0.402293, 0.705722, 0.583195,
		0.805520, -0.029882, 0.591815,
		29.466175, 34.567047, 28.358570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052973, 35.293987, 28.272970>,  <28.902311, 34.587963, 27.944300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052973, 35.293987, 28.272970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402445, 35.100246, 28.254715>,  <29.612127, 34.984001, 28.243761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402445, 35.100246, 28.254715>,  <29.052973, 35.293987, 28.272970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402445, 35.100246, 28.254715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424467, 0.804752, -0.414972,
		0.237721, 0.343181, 0.908689,
		0.873680, -0.484356, -0.045637,
		29.664549, 34.954941, 28.241024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521490, 35.845631, 28.369938>,  <29.052973, 35.293987, 28.272970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521490, 35.845631, 28.369938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722807, 35.541496, 28.205704>,  <29.843597, 35.359016, 28.107162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722807, 35.541496, 28.205704>,  <29.521490, 35.845631, 28.369938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722807, 35.541496, 28.205704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424680, 0.631452, -0.648779,
		0.752558, 0.152158, 0.640706,
		0.503292, -0.760339, -0.410586,
		29.873795, 35.313393, 28.082527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108768, 36.124866, 28.235435>,  <29.521490, 35.845631, 28.369938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108768, 36.124866, 28.235435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115553, 35.806370, 27.993538>,  <30.119623, 35.615273, 27.848400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115553, 35.806370, 27.993538>,  <30.108768, 36.124866, 28.235435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115553, 35.806370, 27.993538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463216, 0.542266, -0.700984,
		0.886083, -0.268237, 0.378029,
		0.016963, -0.796239, -0.604744,
		30.120642, 35.567497, 27.812115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715237, 36.235325, 27.887728>,  <30.108768, 36.124866, 28.235435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715237, 36.235325, 27.887728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517401, 35.960320, 27.675045>,  <30.398699, 35.795319, 27.547436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517401, 35.960320, 27.675045>,  <30.715237, 36.235325, 27.887728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517401, 35.960320, 27.675045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412793, 0.352547, -0.839829,
		0.764843, -0.634854, 0.109434,
		-0.494588, -0.687510, -0.531707,
		30.369024, 35.754066, 27.515533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254356, 35.831589, 27.504314>,  <30.715237, 36.235325, 27.887728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254356, 35.831589, 27.504314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905777, 35.789265, 27.312740>,  <30.696629, 35.763870, 27.197796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905777, 35.789265, 27.312740>,  <31.254356, 35.831589, 27.504314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905777, 35.789265, 27.312740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398980, 0.415029, -0.817659,
		0.285288, -0.903634, -0.319462,
		-0.871450, -0.105809, -0.478935,
		30.644342, 35.757523, 27.169060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491419, 35.684319, 26.921305>,  <31.254356, 35.831589, 27.504314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491419, 35.684319, 26.921305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113312, 35.774113, 26.826584>,  <30.886448, 35.827988, 26.769753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113312, 35.774113, 26.826584>,  <31.491419, 35.684319, 26.921305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113312, 35.774113, 26.826584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299930, 0.312005, -0.901496,
		-0.128486, -0.923180, -0.362257,
		-0.945269, 0.224481, -0.236801,
		30.829731, 35.841457, 26.755543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365135, 35.389080, 26.236858>,  <31.491419, 35.684319, 26.921305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365135, 35.389080, 26.236858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113964, 35.694206, 26.298592>,  <30.963263, 35.877281, 26.335630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113964, 35.694206, 26.298592>,  <31.365135, 35.389080, 26.236858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113964, 35.694206, 26.298592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126545, 0.295732, -0.946852,
		-0.767917, -0.575023, -0.282228,
		-0.627925, 0.762818, 0.154331,
		30.925587, 35.923050, 26.344891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831356, 35.282089, 25.738344>,  <31.365135, 35.389080, 26.236858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831356, 35.282089, 25.738344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832609, 35.672180, 25.826820>,  <30.833361, 35.906235, 25.879906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832609, 35.672180, 25.826820>,  <30.831356, 35.282089, 25.738344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832609, 35.672180, 25.826820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193768, 0.216405, -0.956882,
		-0.981042, 0.045857, -0.188290,
		0.003132, 0.975226, 0.221188,
		30.833549, 35.964748, 25.893177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610479, 35.672993, 25.106485>,  <30.831356, 35.282089, 25.738344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610479, 35.672993, 25.106485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778727, 35.958462, 25.330540>,  <30.879675, 36.129742, 25.464973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778727, 35.958462, 25.330540>,  <30.610479, 35.672993, 25.106485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778727, 35.958462, 25.330540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386427, 0.417671, -0.822329,
		-0.820825, 0.562341, -0.100100,
		0.420620, 0.713669, 0.560138,
		30.904913, 36.172562, 25.498581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344368, 36.235527, 24.884657>,  <30.610479, 35.672993, 25.106485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344368, 36.235527, 24.884657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708927, 36.309647, 25.031635>,  <30.927662, 36.354118, 25.119822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708927, 36.309647, 25.031635>,  <30.344368, 36.235527, 24.884657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708927, 36.309647, 25.031635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299217, 0.314618, -0.900824,
		-0.282529, 0.930956, 0.231297,
		0.911398, 0.185301, 0.367447,
		30.982347, 36.365238, 25.141869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.447151, 31.872429, 31.567944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.846317, 31.846607, 31.568268>,  <29.085817, 31.831114, 31.568462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.846317, 31.846607, 31.568268>,  <28.447151, 31.872429, 31.567944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846317, 31.846607, 31.568268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051404, 0.786879, -0.614962,
		0.039060, 0.613721, 0.788556,
		0.997914, -0.064556, 0.000812,
		29.145691, 31.827240, 31.568512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657553, 32.630764, 31.775856>,  <28.447151, 31.872429, 31.567944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657553, 32.630764, 31.775856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.950630, 32.450375, 31.571980>,  <29.126476, 32.342140, 31.449654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.950630, 32.450375, 31.571980>,  <28.657553, 32.630764, 31.775856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950630, 32.450375, 31.571980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179137, 0.850319, -0.494841,
		0.656559, 0.271263, 0.703808,
		0.732694, -0.450971, -0.509692,
		29.170439, 32.315083, 31.419071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171019, 33.173706, 31.795858>,  <28.657553, 32.630764, 31.775856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171019, 33.173706, 31.795858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.223207, 32.911880, 31.497993>,  <29.254520, 32.754784, 31.319275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.223207, 32.911880, 31.497993>,  <29.171019, 33.173706, 31.795858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223207, 32.911880, 31.497993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041954, 0.746762, -0.663766,
		0.990564, 0.117844, 0.069969,
		0.130471, -0.654567, -0.744660,
		29.262348, 32.715511, 31.274595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650156, 33.587238, 31.441063>,  <29.171019, 33.173706, 31.795858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650156, 33.587238, 31.441063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.506659, 33.301476, 31.200752>,  <29.420561, 33.130020, 31.056566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.506659, 33.301476, 31.200752>,  <29.650156, 33.587238, 31.441063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506659, 33.301476, 31.200752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112144, 0.605969, -0.787544,
		0.926675, -0.349899, -0.137271,
		-0.358743, -0.714403, -0.600776,
		29.399036, 33.087154, 31.020519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117365, 33.452026, 30.950521>,  <29.650156, 33.587238, 31.441063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117365, 33.452026, 30.950521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.776453, 33.342587, 30.772190>,  <29.571905, 33.276920, 30.665192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.776453, 33.342587, 30.772190>,  <30.117365, 33.452026, 30.950521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776453, 33.342587, 30.772190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168301, 0.663551, -0.728955,
		0.495272, -0.696307, -0.519484,
		-0.852280, -0.273602, -0.445827,
		29.520769, 33.260506, 30.638441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286184, 33.314583, 30.275858>,  <30.117365, 33.452026, 30.950521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286184, 33.314583, 30.275858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.893236, 33.378410, 30.236900>,  <29.657467, 33.416706, 30.213526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.893236, 33.378410, 30.236900>,  <30.286184, 33.314583, 30.275858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893236, 33.378410, 30.236900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181111, 0.683224, -0.707392,
		-0.046336, -0.712560, -0.700079,
		-0.982370, 0.159570, -0.097395,
		29.598524, 33.426281, 30.207682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140308, 33.021973, 29.609451>,  <30.286184, 33.314583, 30.275858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140308, 33.021973, 29.609451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.866726, 33.296268, 29.709026>,  <29.702578, 33.460846, 29.768770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.866726, 33.296268, 29.709026>,  <30.140308, 33.021973, 29.609451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866726, 33.296268, 29.709026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099133, 0.425428, -0.899546,
		-0.722757, -0.590572, -0.358953,
		-0.683955, 0.685737, 0.248936,
		29.661539, 33.501991, 29.783707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812729, 33.029648, 29.013878>,  <30.140308, 33.021973, 29.609451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812729, 33.029648, 29.013878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.675566, 33.360794, 29.191441>,  <29.593267, 33.559483, 29.297977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.675566, 33.360794, 29.191441>,  <29.812729, 33.029648, 29.013878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675566, 33.360794, 29.191441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042998, 0.485895, -0.872959,
		-0.938385, -0.280256, -0.202213,
		-0.342906, 0.827866, 0.443906,
		29.572695, 33.609154, 29.324612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262524, 33.321266, 28.531996>,  <29.812729, 33.029648, 29.013878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262524, 33.321266, 28.531996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.371344, 33.629402, 28.762672>,  <29.436636, 33.814281, 28.901077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.371344, 33.629402, 28.762672>,  <29.262524, 33.321266, 28.531996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371344, 33.629402, 28.762672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037161, 0.607256, -0.793637,
		-0.961566, 0.194477, 0.193829,
		0.272048, 0.770337, 0.576690,
		29.452957, 33.860504, 28.935678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538942, 33.160973, 28.224037>,  <29.262524, 33.321266, 28.531996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.538942, 33.160973, 28.224037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.395098, 32.964813, 27.906498>,  <28.308792, 32.847118, 27.715975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.395098, 32.964813, 27.906498>,  <28.538942, 33.160973, 28.224037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395098, 32.964813, 27.906498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245044, -0.870533, 0.426762,
		-0.900352, -0.041060, 0.433220,
		-0.359610, -0.490394, -0.793848,
		28.287214, 32.817696, 27.668343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043406, 32.605980, 28.504547>,  <28.538942, 33.160973, 28.224037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.043406, 32.605980, 28.504547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.135246, 32.491287, 28.132511>,  <28.190351, 32.422474, 27.909288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.135246, 32.491287, 28.132511>,  <28.043406, 32.605980, 28.504547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.135246, 32.491287, 28.132511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082274, -0.946483, 0.312091,
		-0.969801, -0.148180, -0.193725,
		0.229603, -0.286728, -0.930091,
		28.204126, 32.405270, 27.853483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680767, 32.029839, 28.355768>,  <28.043406, 32.605980, 28.504547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.680767, 32.029839, 28.355768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.987745, 32.009804, 28.100105>,  <28.171932, 31.997782, 27.946709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.987745, 32.009804, 28.100105>,  <27.680767, 32.029839, 28.355768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987745, 32.009804, 28.100105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121155, -0.967649, 0.221305,
		-0.629563, -0.247276, -0.736549,
		0.767445, -0.050089, -0.639155,
		28.217979, 31.994778, 27.908360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468857, 31.407068, 27.932989>,  <27.680767, 32.029839, 28.355768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468857, 31.407068, 27.932989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.857590, 31.486420, 27.882103>,  <28.090830, 31.534031, 27.851572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.857590, 31.486420, 27.882103>,  <27.468857, 31.407068, 27.932989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.857590, 31.486420, 27.882103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223667, -0.946476, 0.232714,
		-0.074240, -0.254613, -0.964189,
		0.971834, 0.198380, -0.127215,
		28.149139, 31.545935, 27.843939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765387, 30.794714, 27.655037>,  <27.468857, 31.407068, 27.932989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765387, 30.794714, 27.655037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.096540, 30.988628, 27.767883>,  <28.295233, 31.104977, 27.835592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.096540, 30.988628, 27.767883>,  <27.765387, 30.794714, 27.655037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096540, 30.988628, 27.767883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355995, -0.842826, 0.403623,
		0.433447, -0.233721, -0.870344,
		0.827884, 0.484788, 0.282117,
		28.344906, 31.134066, 27.852518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457123, 30.433151, 27.313082>,  <27.765387, 30.794714, 27.655037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457123, 30.433151, 27.313082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.548134, 30.632515, 27.647701>,  <28.602741, 30.752134, 27.848473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.548134, 30.632515, 27.647701>,  <28.457123, 30.433151, 27.313082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548134, 30.632515, 27.647701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555254, -0.772142, 0.309015,
		0.799952, 0.394188, -0.452429,
		0.227529, 0.498410, 0.836551,
		28.616392, 30.782038, 27.898666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079445, 30.177546, 27.346510>,  <28.457123, 30.433151, 27.313082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079445, 30.177546, 27.346510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.023464, 30.323696, 27.714622>,  <28.989876, 30.411386, 27.935490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.023464, 30.323696, 27.714622>,  <29.079445, 30.177546, 27.346510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023464, 30.323696, 27.714622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449303, -0.804796, 0.387854,
		0.882349, 0.467765, -0.051532,
		-0.139952, 0.365376, 0.920279,
		28.981480, 30.433310, 27.990705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686827, 30.093834, 27.724556>,  <29.079445, 30.177546, 27.346510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686827, 30.093834, 27.724556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.407156, 30.121456, 28.009197>,  <29.239353, 30.138029, 28.179983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.407156, 30.121456, 28.009197>,  <29.686827, 30.093834, 27.724556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407156, 30.121456, 28.009197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366782, -0.819717, 0.439926,
		0.613694, 0.568590, 0.547800,
		-0.699179, 0.069057, 0.711604,
		29.197403, 30.142174, 28.222679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052292, 30.072563, 28.355604>,  <29.686827, 30.093834, 27.724556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052292, 30.072563, 28.355604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.680099, 29.970966, 28.461201>,  <29.456783, 29.910009, 28.524559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.680099, 29.970966, 28.461201>,  <30.052292, 30.072563, 28.355604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.680099, 29.970966, 28.461201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358029, -0.783092, 0.508509,
		0.077573, 0.567675, 0.819590,
		-0.930483, -0.253990, 0.263991,
		29.400955, 29.894770, 28.540398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010605, 29.971844, 29.134933>,  <30.052292, 30.072563, 28.355604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010605, 29.971844, 29.134933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.682049, 29.789360, 28.998001>,  <29.484915, 29.679869, 28.915842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.682049, 29.789360, 28.998001>,  <30.010605, 29.971844, 29.134933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682049, 29.789360, 28.998001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132446, -0.736350, 0.663510,
		-0.554778, 0.499659, 0.665254,
		-0.821389, -0.456211, -0.342333,
		29.435633, 29.652496, 28.895302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662466, 29.614227, 29.752171>,  <30.010605, 29.971844, 29.134933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662466, 29.614227, 29.752171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.485743, 29.435989, 29.440723>,  <29.379707, 29.329046, 29.253855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.485743, 29.435989, 29.440723>,  <29.662466, 29.614227, 29.752171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485743, 29.435989, 29.440723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201095, -0.796643, 0.570018,
		-0.874279, 0.408416, 0.262358,
		-0.441810, -0.445597, -0.778619,
		29.353199, 29.302311, 29.207138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056707, 29.311174, 30.004993>,  <29.662466, 29.614227, 29.752171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056707, 29.311174, 30.004993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.130964, 29.107544, 29.668808>,  <29.175518, 28.985367, 29.467096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.130964, 29.107544, 29.668808>,  <29.056707, 29.311174, 30.004993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130964, 29.107544, 29.668808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079977, -0.860322, 0.503437,
		-0.979357, -0.026242, -0.200427,
		0.185643, -0.509075, -0.840464,
		29.186657, 28.954823, 29.416668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.604477, 28.703062, 29.968489>,  <29.056707, 29.311174, 30.004993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.604477, 28.703062, 29.968489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.894102, 28.590546, 29.716583>,  <29.067877, 28.523035, 29.565439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.894102, 28.590546, 29.716583>,  <28.604477, 28.703062, 29.968489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894102, 28.590546, 29.716583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145461, -0.954799, 0.259231,
		-0.674219, -0.096094, -0.732253,
		0.724065, -0.281293, -0.629765,
		29.111322, 28.506157, 29.527653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339436, 28.166197, 29.609940>,  <28.604477, 28.703062, 29.968489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339436, 28.166197, 29.609940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.737095, 28.124676, 29.597996>,  <28.975691, 28.099764, 29.590830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.737095, 28.124676, 29.597996>,  <28.339436, 28.166197, 29.609940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737095, 28.124676, 29.597996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094371, -0.969228, 0.227357,
		-0.052542, -0.223208, -0.973354,
		0.994150, -0.103802, -0.029861,
		29.035339, 28.093534, 29.589037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.369503, 26.449593, 28.786873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.037621, 26.580780, 28.967548>,  <32.838490, 26.659492, 29.075953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.037621, 26.580780, 28.967548>,  <33.369503, 26.449593, 28.786873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037621, 26.580780, 28.967548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094432, 0.715053, -0.692663,
		-0.550153, -0.617361, -0.562314,
		-0.829707, 0.327970, 0.451687,
		32.788708, 26.679171, 29.103054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746330, 26.514116, 28.300385>,  <33.369503, 26.449593, 28.786873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746330, 26.514116, 28.300385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.692188, 26.767849, 28.604832>,  <32.659702, 26.920088, 28.787500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.692188, 26.767849, 28.604832>,  <32.746330, 26.514116, 28.300385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692188, 26.767849, 28.604832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240418, 0.724202, -0.646320,
		-0.961186, -0.270470, 0.054480,
		-0.135356, 0.634332, 0.761119,
		32.651581, 26.958149, 28.833168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170712, 26.885750, 28.077513>,  <32.746330, 26.514116, 28.300385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170712, 26.885750, 28.077513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.336868, 27.118198, 28.357441>,  <32.436562, 27.257668, 28.525398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.336868, 27.118198, 28.357441>,  <32.170712, 26.885750, 28.077513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336868, 27.118198, 28.357441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078412, 0.789349, -0.608917,
		-0.906258, 0.198063, 0.373455,
		0.415390, 0.581119, 0.699823,
		32.461487, 27.292534, 28.567389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823168, 27.405540, 27.992208>,  <32.170712, 26.885750, 28.077513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823168, 27.405540, 27.992208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.127464, 27.565712, 28.196533>,  <32.310043, 27.661816, 28.319128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.127464, 27.565712, 28.196533>,  <31.823168, 27.405540, 27.992208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127464, 27.565712, 28.196533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146231, 0.872515, -0.466192,
		-0.632367, 0.279955, 0.722313,
		0.760742, 0.400429, 0.510812,
		32.355686, 27.685841, 28.349777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668129, 28.067593, 28.155428>,  <31.823168, 27.405540, 27.992208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668129, 28.067593, 28.155428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.065212, 28.084633, 28.200535>,  <32.303463, 28.094856, 28.227600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.065212, 28.084633, 28.200535>,  <31.668129, 28.067593, 28.155428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065212, 28.084633, 28.200535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012028, 0.895799, -0.444296,
		-0.119946, 0.442413, 0.888754,
		0.992708, 0.042601, 0.112769,
		32.363026, 28.097414, 28.234365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798063, 28.821508, 28.031324>,  <31.668129, 28.067593, 28.155428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798063, 28.821508, 28.031324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.152779, 28.654217, 27.952644>,  <32.365608, 28.553841, 27.905436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.152779, 28.654217, 27.952644>,  <31.798063, 28.821508, 28.031324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152779, 28.654217, 27.952644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139873, 0.648496, -0.748257,
		0.440505, 0.636031, 0.633577,
		0.886787, -0.418231, -0.196702,
		32.418816, 28.528748, 27.893633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256893, 29.427849, 27.888157>,  <31.798063, 28.821508, 28.031324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256893, 29.427849, 27.888157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.446884, 29.108425, 27.740261>,  <32.560879, 28.916771, 27.651524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.446884, 29.108425, 27.740261>,  <32.256893, 29.427849, 27.888157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446884, 29.108425, 27.740261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119263, 0.474696, -0.872032,
		0.871881, 0.370096, 0.320706,
		0.474973, -0.798557, -0.369740,
		32.589375, 28.868858, 27.629339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966755, 29.634388, 27.769770>,  <32.256893, 29.427849, 27.888157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966755, 29.634388, 27.769770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.868526, 29.325958, 27.534775>,  <32.809589, 29.140900, 27.393778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.868526, 29.325958, 27.534775>,  <32.966755, 29.634388, 27.769770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868526, 29.325958, 27.534775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217137, 0.546890, -0.808556,
		0.944747, -0.326120, 0.033130,
		-0.245568, -0.771075, -0.587486,
		32.794857, 29.094635, 27.358528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540764, 29.565170, 27.321594>,  <32.966755, 29.634388, 27.769770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540764, 29.565170, 27.321594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.246334, 29.368023, 27.136005>,  <33.069675, 29.249735, 27.024652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.246334, 29.368023, 27.136005>,  <33.540764, 29.565170, 27.321594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246334, 29.368023, 27.136005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315209, 0.357006, -0.879312,
		0.599027, -0.793490, -0.107427,
		-0.736077, -0.492869, -0.463971,
		33.025509, 29.220161, 26.996815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760612, 29.031652, 26.760384>,  <33.540764, 29.565170, 27.321594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760612, 29.031652, 26.760384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.390594, 29.153091, 26.669067>,  <33.168583, 29.225954, 26.614279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.390594, 29.153091, 26.669067>,  <33.760612, 29.031652, 26.760384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390594, 29.153091, 26.669067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345546, 0.422989, -0.837662,
		-0.157747, -0.853762, -0.496192,
		-0.925048, 0.303596, -0.228289,
		33.113079, 29.244169, 26.600580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754925, 29.084242, 26.028292>,  <33.760612, 29.031652, 26.760384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754925, 29.084242, 26.028292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.437149, 29.296227, 26.146954>,  <33.246483, 29.423418, 26.218151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.437149, 29.296227, 26.146954>,  <33.754925, 29.084242, 26.028292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437149, 29.296227, 26.146954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032872, 0.525251, -0.850312,
		-0.606453, -0.665770, -0.434701,
		-0.794439, 0.529964, 0.296655,
		33.198818, 29.455215, 26.235950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464741, 29.217318, 25.388725>,  <33.754925, 29.084242, 26.028292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464741, 29.217318, 25.388725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.298004, 29.484322, 25.635521>,  <33.197964, 29.644524, 25.783598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.298004, 29.484322, 25.635521>,  <33.464741, 29.217318, 25.388725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298004, 29.484322, 25.635521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048913, 0.694259, -0.718062,
		-0.907663, -0.269138, -0.322045,
		-0.416840, 0.667510, 0.616988,
		33.172951, 29.684574, 25.820618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076263, 29.496046, 24.917009>,  <33.464741, 29.217318, 25.388725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076263, 29.496046, 24.917009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.078941, 29.754948, 25.221909>,  <33.080547, 29.910288, 25.404848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.078941, 29.754948, 25.221909>,  <33.076263, 29.496046, 24.917009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078941, 29.754948, 25.221909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005869, 0.762276, -0.647226,
		-0.999960, -0.000142, 0.008900,
		0.006693, 0.647252, 0.762247,
		33.080948, 29.949123, 25.450583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593418, 29.956909, 24.776258>,  <33.076263, 29.496046, 24.917009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593418, 29.956909, 24.776258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.813435, 30.178631, 25.026123>,  <32.945442, 30.311665, 25.176043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.813435, 30.178631, 25.026123>,  <32.593418, 29.956909, 24.776258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813435, 30.178631, 25.026123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146943, 0.800539, -0.580986,
		-0.822111, 0.227775, 0.521779,
		0.550038, 0.554307, 0.624662,
		32.978447, 30.344923, 25.213522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879614, 29.884041, 24.711866>,  <32.593418, 29.956909, 24.776258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879614, 29.884041, 24.711866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.559198, 29.744305, 24.517426>,  <31.366949, 29.660463, 24.400761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.559198, 29.744305, 24.517426>,  <31.879614, 29.884041, 24.711866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559198, 29.744305, 24.517426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161952, -0.908242, 0.385835,
		-0.576288, 0.230344, 0.784114,
		-0.801039, -0.349341, -0.486104,
		31.318886, 29.639502, 24.371593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359486, 29.613098, 25.194088>,  <31.879614, 29.884041, 24.711866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359486, 29.613098, 25.194088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.244741, 29.407669, 24.870617>,  <31.175896, 29.284412, 24.676535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.244741, 29.407669, 24.870617>,  <31.359486, 29.613098, 25.194088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244741, 29.407669, 24.870617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089385, -0.826122, 0.556357,
		-0.953794, 0.231880, 0.191075,
		-0.286859, -0.513571, -0.808676,
		31.158684, 29.253597, 24.628014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019632, 29.179890, 25.562160>,  <31.359486, 29.613098, 25.194088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019632, 29.179890, 25.562160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.967405, 29.024212, 25.197418>,  <30.936069, 28.930805, 24.978573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.967405, 29.024212, 25.197418>,  <31.019632, 29.179890, 25.562160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967405, 29.024212, 25.197418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189658, -0.892938, 0.408278,
		-0.973130, 0.226249, 0.042775,
		-0.130568, -0.389195, -0.911855,
		30.928234, 28.907454, 24.923862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330542, 28.815899, 25.491138>,  <31.019632, 29.179890, 25.562160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330542, 28.815899, 25.491138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.590149, 28.661358, 25.228992>,  <30.745914, 28.568632, 25.071705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.590149, 28.661358, 25.228992>,  <30.330542, 28.815899, 25.491138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590149, 28.661358, 25.228992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201357, -0.917964, 0.341756,
		-0.733640, -0.089845, -0.673573,
		0.649020, -0.386355, -0.655364,
		30.784855, 28.545452, 25.032383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974672, 28.212992, 25.208393>,  <30.330542, 28.815899, 25.491138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974672, 28.212992, 25.208393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.364326, 28.139633, 25.155582>,  <30.598118, 28.095619, 25.123896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.364326, 28.139633, 25.155582>,  <29.974672, 28.212992, 25.208393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364326, 28.139633, 25.155582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125920, -0.925674, 0.356753,
		-0.187640, -0.330900, -0.924822,
		0.974133, -0.183395, -0.132027,
		30.656567, 28.084616, 25.115974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912077, 27.545958, 24.934729>,  <29.974672, 28.212992, 25.208393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912077, 27.545958, 24.934729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.282644, 27.597343, 25.076290>,  <30.504984, 27.628174, 25.161228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.282644, 27.597343, 25.076290>,  <29.912077, 27.545958, 24.934729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282644, 27.597343, 25.076290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006819, -0.945559, 0.325378,
		0.376438, -0.299022, -0.876858,
		0.926417, 0.128464, 0.353905,
		30.560570, 27.635883, 25.182461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404327, 27.080482, 24.619764>,  <29.912077, 27.545958, 24.934729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404327, 27.080482, 24.619764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.599216, 27.147408, 24.962605>,  <30.716150, 27.187563, 25.168308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.599216, 27.147408, 24.962605>,  <30.404327, 27.080482, 24.619764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599216, 27.147408, 24.962605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139401, -0.983790, 0.112799,
		0.862080, 0.064522, -0.502648,
		0.487222, 0.167312, 0.857100,
		30.745382, 27.197601, 25.219734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795132, 26.510025, 24.775743>,  <30.404327, 27.080482, 24.619764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795132, 26.510025, 24.775743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.840023, 26.694984, 25.127560>,  <30.866959, 26.805960, 25.338650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.840023, 26.694984, 25.127560>,  <30.795132, 26.510025, 24.775743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840023, 26.694984, 25.127560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139298, -0.883714, 0.446817,
		0.983870, 0.072373, -0.163589,
		0.112229, 0.462398, 0.879541,
		30.873692, 26.833704, 25.391422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259315, 26.035580, 25.210100>,  <30.795132, 26.510025, 24.775743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259315, 26.035580, 25.210100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.043398, 26.275093, 25.446770>,  <30.913847, 26.418802, 25.588772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.043398, 26.275093, 25.446770>,  <31.259315, 26.035580, 25.210100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043398, 26.275093, 25.446770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233460, -0.781786, 0.578193,
		0.808777, 0.173971, 0.561795,
		-0.539792, 0.598786, 0.591676,
		30.881460, 26.454729, 25.624273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576639, 25.922148, 25.896721>,  <31.259315, 26.035580, 25.210100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576639, 25.922148, 25.896721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.192202, 26.030369, 25.918999>,  <30.961540, 26.095303, 25.932365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.192202, 26.030369, 25.918999>,  <31.576639, 25.922148, 25.896721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192202, 26.030369, 25.918999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167297, -0.730568, 0.662029,
		0.219803, 0.626954, 0.747406,
		-0.961092, 0.270555, 0.055693,
		30.903873, 26.111536, 25.935707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458063, 25.986351, 26.650026>,  <31.576639, 25.922148, 25.896721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458063, 25.986351, 26.650026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.089043, 25.958271, 26.498253>,  <30.867630, 25.941423, 26.407188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.089043, 25.958271, 26.498253>,  <31.458063, 25.986351, 26.650026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089043, 25.958271, 26.498253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187054, -0.778697, 0.598867,
		-0.337506, 0.623460, 0.705256,
		-0.922551, -0.070200, -0.379436,
		30.812277, 25.937210, 26.384422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000660, 26.162624, 27.279591>,  <31.458063, 25.986351, 26.650026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000660, 26.162624, 27.279591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.756346, 25.990078, 27.014000>,  <30.609756, 25.886549, 26.854647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.756346, 25.990078, 27.014000>,  <31.000660, 26.162624, 27.279591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756346, 25.990078, 27.014000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494618, -0.446958, 0.745373,
		-0.618299, 0.783678, 0.059634,
		-0.610786, -0.431367, -0.663975,
		30.573111, 25.860668, 26.814808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.318470, 26.229004, 27.569157>,  <31.000660, 26.162624, 27.279591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.318470, 26.229004, 27.569157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.300009, 25.910576, 27.327782>,  <30.288933, 25.719519, 27.182957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.300009, 25.910576, 27.327782>,  <30.318470, 26.229004, 27.569157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300009, 25.910576, 27.327782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346338, -0.553861, 0.757157,
		-0.936974, 0.243939, -0.250147,
		-0.046154, -0.796072, -0.603439,
		30.286163, 25.671755, 27.146749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693806, 25.947674, 27.631954>,  <30.318470, 26.229004, 27.569157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693806, 25.947674, 27.631954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.915960, 25.652889, 27.477848>,  <30.049253, 25.476019, 27.385384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.915960, 25.652889, 27.477848>,  <29.693806, 25.947674, 27.631954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915960, 25.652889, 27.477848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277694, -0.601050, 0.749416,
		-0.783856, -0.309231, -0.538466,
		0.555388, -0.736963, -0.385265,
		30.082577, 25.431801, 27.362268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095566, 26.138578, 27.224327>,  <29.693806, 25.947674, 27.631954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095566, 26.138578, 27.224327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.701471, 26.070869, 27.214062>,  <28.465015, 26.030245, 27.207903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.701471, 26.070869, 27.214062>,  <29.095566, 26.138578, 27.224327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701471, 26.070869, 27.214062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111597, 0.748633, -0.653525,
		0.129836, -0.641012, -0.756470,
		-0.985235, -0.169271, -0.025664,
		28.405901, 26.020088, 27.206362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747112, 25.985163, 26.474245>,  <29.095566, 26.138578, 27.224327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747112, 25.985163, 26.474245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.460020, 26.152981, 26.696541>,  <28.287766, 26.253672, 26.829918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.460020, 26.152981, 26.696541>,  <28.747112, 25.985163, 26.474245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460020, 26.152981, 26.696541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210967, 0.629574, -0.747750,
		-0.663593, -0.653925, -0.363354,
		-0.717730, 0.419546, 0.555738,
		28.244701, 26.278845, 26.863262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433298, 26.352579, 25.970196>,  <28.747112, 25.985163, 26.474245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433298, 26.352579, 25.970196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.294821, 26.510612, 26.310562>,  <28.211735, 26.605433, 26.514782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.294821, 26.510612, 26.310562>,  <28.433298, 26.352579, 25.970196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.294821, 26.510612, 26.310562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173213, 0.864491, -0.471860,
		-0.922035, -0.310744, -0.230846,
		-0.346192, 0.395085, 0.850916,
		28.190964, 26.629139, 26.565838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880793, 26.767773, 25.731125>,  <28.433298, 26.352579, 25.970196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880793, 26.767773, 25.731125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.964439, 26.881256, 26.105457>,  <28.014627, 26.949347, 26.330057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.964439, 26.881256, 26.105457>,  <27.880793, 26.767773, 25.731125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964439, 26.881256, 26.105457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312574, 0.926177, -0.210936,
		-0.926589, -0.248405, 0.282360,
		0.209118, 0.283710, 0.935830,
		28.027174, 26.966370, 26.386206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270876, 27.052023, 26.049393>,  <27.880793, 26.767773, 25.731125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.270876, 27.052023, 26.049393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.600142, 27.202698, 26.219337>,  <27.797701, 27.293102, 26.321304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.600142, 27.202698, 26.219337>,  <27.270876, 27.052023, 26.049393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600142, 27.202698, 26.219337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326258, 0.926185, -0.189042,
		-0.464708, 0.016998, 0.885301,
		0.823166, 0.376686, 0.424860,
		27.847092, 27.315704, 26.346796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065531, 27.722811, 26.408546>,  <27.270876, 27.052023, 26.049393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065531, 27.722811, 26.408546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.460976, 27.765697, 26.366310>,  <27.698242, 27.791430, 26.340967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.460976, 27.765697, 26.366310>,  <27.065531, 27.722811, 26.408546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460976, 27.765697, 26.366310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136275, 0.935495, -0.326003,
		0.063828, 0.336680, 0.939453,
		0.988613, 0.107215, -0.105592,
		27.757559, 27.797863, 26.334633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264488, 28.259563, 26.867369>,  <27.065531, 27.722811, 26.408546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264488, 28.259563, 26.867369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.557192, 28.255936, 26.594769>,  <27.732815, 28.253759, 26.431208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.557192, 28.255936, 26.594769>,  <27.264488, 28.259563, 26.867369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.557192, 28.255936, 26.594769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267633, 0.915772, -0.299557,
		0.626815, 0.401596, 0.667699,
		0.731761, -0.009068, -0.681501,
		27.776720, 28.253216, 26.390318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583853, 28.962009, 26.862070>,  <27.264488, 28.259563, 26.867369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583853, 28.962009, 26.862070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.678795, 28.768303, 26.525227>,  <27.735760, 28.652079, 26.323120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.678795, 28.768303, 26.525227>,  <27.583853, 28.962009, 26.862070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678795, 28.768303, 26.525227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230131, 0.814175, -0.533065,
		0.943771, 0.320320, 0.081804,
		0.237354, -0.484265, -0.842110,
		27.750002, 28.623024, 26.272593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961094, 29.407740, 26.441198>,  <27.583853, 28.962009, 26.862070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.961094, 29.407740, 26.441198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.763588, 29.159801, 26.197235>,  <27.645084, 29.011038, 26.050858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.763588, 29.159801, 26.197235>,  <27.961094, 29.407740, 26.441198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763588, 29.159801, 26.197235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277669, 0.777036, -0.564902,
		0.824075, -0.109573, -0.555782,
		-0.493761, -0.619845, -0.609912,
		27.615459, 28.973848, 26.014263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309759, 29.371038, 25.778151>,  <27.961094, 29.407740, 26.441198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309759, 29.371038, 25.778151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.925819, 29.266796, 25.736633>,  <27.695456, 29.204250, 25.711723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.925819, 29.266796, 25.736633>,  <28.309759, 29.371038, 25.778151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925819, 29.266796, 25.736633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122838, 0.723132, -0.679699,
		0.252188, -0.639659, -0.726111,
		-0.959850, -0.260606, -0.103791,
		27.637865, 29.188614, 25.705496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182798, 29.258106, 25.160069>,  <28.309759, 29.371038, 25.778151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.182798, 29.258106, 25.160069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.813944, 29.340996, 25.290741>,  <27.592630, 29.390730, 25.369144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.813944, 29.340996, 25.290741>,  <28.182798, 29.258106, 25.160069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.813944, 29.340996, 25.290741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162970, 0.557778, -0.813833,
		-0.350864, -0.803705, -0.480576,
		-0.922136, 0.207225, 0.326683,
		27.537302, 29.403164, 25.388746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765785, 29.250645, 24.561760>,  <28.182798, 29.258106, 25.160069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765785, 29.250645, 24.561760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.524242, 29.443333, 24.815784>,  <27.379316, 29.558945, 24.968199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.524242, 29.443333, 24.815784>,  <27.765785, 29.250645, 24.561760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524242, 29.443333, 24.815784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267989, 0.627647, -0.730919,
		-0.750691, -0.611560, -0.249914,
		-0.603858, 0.481720, 0.635060,
		27.343084, 29.587849, 25.006302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197557, 29.503424, 24.145287>,  <27.765785, 29.250645, 24.561760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197557, 29.503424, 24.145287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.174603, 29.726032, 24.476826>,  <27.160830, 29.859598, 24.675749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.174603, 29.726032, 24.476826>,  <27.197557, 29.503424, 24.145287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.174603, 29.726032, 24.476826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094093, 0.823507, -0.559448,
		-0.993908, -0.110093, 0.005107,
		-0.057386, 0.556521, 0.828849,
		27.157387, 29.892988, 24.725481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.599131, 29.819901, 24.075157>,  <27.197557, 29.503424, 24.145287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.599131, 29.819901, 24.075157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.778049, 30.049099, 24.349850>,  <26.885401, 30.186617, 24.514666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.778049, 30.049099, 24.349850>,  <26.599131, 29.819901, 24.075157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778049, 30.049099, 24.349850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268686, 0.818448, -0.507889,
		-0.853072, 0.042663, 0.520046,
		0.447299, 0.572995, 0.686732,
		26.912239, 30.220997, 24.555870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.267399, 30.648970, 30.694321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.646889, 30.709892, 30.805119>,  <39.874580, 30.746447, 30.871597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.646889, 30.709892, 30.805119>,  <39.267399, 30.648970, 30.694321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646889, 30.709892, 30.805119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264889, 0.095152, -0.959573,
		-0.172508, 0.983742, 0.049928,
		0.948723, 0.152309, 0.276997,
		39.931507, 30.755585, 30.888218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477329, 31.127068, 30.260365>,  <39.267399, 30.648970, 30.694321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477329, 31.127068, 30.260365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.818317, 30.958237, 30.383743>,  <40.022911, 30.856937, 30.457771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.818317, 30.958237, 30.383743>,  <39.477329, 31.127068, 30.260365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818317, 30.958237, 30.383743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340729, 0.001121, -0.940161,
		0.396476, 0.906558, 0.144771,
		0.852473, -0.422078, 0.308446,
		40.074059, 30.831614, 30.476276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086376, 31.476177, 29.946543>,  <39.477329, 31.127068, 30.260365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086376, 31.476177, 29.946543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.211864, 31.105518, 30.029396>,  <40.287159, 30.883123, 30.079107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.211864, 31.105518, 30.029396>,  <40.086376, 31.476177, 29.946543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211864, 31.105518, 30.029396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440332, -0.051286, -0.896369,
		0.841241, 0.372418, 0.391942,
		0.313723, -0.926647, 0.207132,
		40.305981, 30.827524, 30.091536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684662, 31.435879, 29.544895>,  <40.086376, 31.476177, 29.946543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684662, 31.435879, 29.544895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.610050, 31.059639, 29.658375>,  <40.565285, 30.833895, 29.726461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.610050, 31.059639, 29.658375>,  <40.684662, 31.435879, 29.544895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610050, 31.059639, 29.658375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344704, -0.333065, -0.877637,
		0.919993, -0.065912, 0.386353,
		-0.186528, -0.940597, 0.283697,
		40.554092, 30.777460, 29.743484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281094, 31.055683, 29.387056>,  <40.684662, 31.435879, 29.544895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281094, 31.055683, 29.387056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.987778, 30.784443, 29.406929>,  <40.811787, 30.621698, 29.418852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.987778, 30.784443, 29.406929>,  <41.281094, 31.055683, 29.387056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987778, 30.784443, 29.406929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291516, -0.379569, -0.878035,
		0.614253, -0.629371, 0.476011,
		-0.733288, -0.678101, 0.049680,
		40.767792, 30.581013, 29.421833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316795, 30.726278, 28.686512>,  <41.281094, 31.055683, 29.387056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316795, 30.726278, 28.686512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.992844, 30.540260, 28.829521>,  <40.798473, 30.428650, 28.915327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.992844, 30.540260, 28.829521>,  <41.316795, 30.726278, 28.686512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992844, 30.540260, 28.829521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251189, -0.275841, -0.927802,
		0.530088, -0.841217, 0.106585,
		-0.809883, -0.465044, 0.357525,
		40.749878, 30.400747, 28.936779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329159, 29.941656, 28.559290>,  <41.316795, 30.726278, 28.686512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329159, 29.941656, 28.559290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.952309, 30.074635, 28.576614>,  <40.726196, 30.154421, 28.587009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.952309, 30.074635, 28.576614>,  <41.329159, 29.941656, 28.559290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952309, 30.074635, 28.576614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129708, -0.242317, -0.961487,
		-0.309150, -0.911461, 0.271415,
		-0.942127, 0.332448, 0.043312,
		40.669670, 30.174368, 28.589609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878086, 29.472519, 28.136015>,  <41.329159, 29.941656, 28.559290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878086, 29.472519, 28.136015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.647316, 29.797016, 28.174046>,  <40.508854, 29.991714, 28.196865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.647316, 29.797016, 28.174046>,  <40.878086, 29.472519, 28.136015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647316, 29.797016, 28.174046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283597, -0.089790, -0.954731,
		-0.765981, -0.577775, 0.281868,
		-0.576929, 0.811242, 0.095078,
		40.474236, 30.040388, 28.202570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434460, 29.334846, 27.675896>,  <40.878086, 29.472519, 28.136015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434460, 29.334846, 27.675896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.349880, 29.716179, 27.762104>,  <40.299133, 29.944979, 27.813829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.349880, 29.716179, 27.762104>,  <40.434460, 29.334846, 27.675896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349880, 29.716179, 27.762104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364111, 0.127803, -0.922545,
		-0.907035, -0.273544, 0.320095,
		-0.211448, 0.953331, 0.215522,
		40.286446, 30.002178, 27.826761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687122, 29.488344, 27.351877>,  <40.434460, 29.334846, 27.675896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687122, 29.488344, 27.351877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.891773, 29.829891, 27.390129>,  <40.014565, 30.034821, 27.413080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.891773, 29.829891, 27.390129>,  <39.687122, 29.488344, 27.351877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891773, 29.829891, 27.390129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312209, 0.288448, -0.905165,
		-0.800476, 0.433251, 0.414164,
		0.511628, 0.853868, 0.095631,
		40.045261, 30.086052, 27.418818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279095, 30.101784, 27.112198>,  <39.687122, 29.488344, 27.351877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279095, 30.101784, 27.112198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.652073, 30.246109, 27.104572>,  <39.875858, 30.332705, 27.099997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.652073, 30.246109, 27.104572>,  <39.279095, 30.101784, 27.112198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652073, 30.246109, 27.104572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225301, 0.539377, -0.811364,
		-0.282469, 0.760846, 0.584230,
		0.932443, 0.360813, -0.019062,
		39.931805, 30.354353, 27.098854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224033, 30.816999, 26.946404>,  <39.279095, 30.101784, 27.112198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224033, 30.816999, 26.946404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.608334, 30.746719, 26.860535>,  <39.838913, 30.704552, 26.809013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.608334, 30.746719, 26.860535>,  <39.224033, 30.816999, 26.946404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608334, 30.746719, 26.860535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064249, 0.611876, -0.788340,
		0.269862, 0.771192, 0.576574,
		0.960753, -0.175698, -0.214670,
		39.896561, 30.694010, 26.796133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587120, 31.470968, 26.616966>,  <39.224033, 30.816999, 26.946404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587120, 31.470968, 26.616966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.843266, 31.184547, 26.505829>,  <39.996952, 31.012695, 26.439146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.843266, 31.184547, 26.505829>,  <39.587120, 31.470968, 26.616966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843266, 31.184547, 26.505829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052139, 0.401435, -0.914402,
		0.766297, 0.571067, 0.294400,
		0.640367, -0.716053, -0.277844,
		40.035378, 30.969732, 26.422476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150745, 31.777328, 26.245123>,  <39.587120, 31.470968, 26.616966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150745, 31.777328, 26.245123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.192970, 31.398453, 26.124001>,  <40.218304, 31.171127, 26.051327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.192970, 31.398453, 26.124001>,  <40.150745, 31.777328, 26.245123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192970, 31.398453, 26.124001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171653, 0.317293, -0.932663,
		0.979486, 0.046475, 0.196082,
		0.105561, -0.947188, -0.302807,
		40.224640, 31.114296, 26.033159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774261, 31.796026, 25.837255>,  <40.150745, 31.777328, 26.245123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.774261, 31.796026, 25.837255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.557735, 31.482529, 25.715450>,  <40.427822, 31.294430, 25.642366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.557735, 31.482529, 25.715450>,  <40.774261, 31.796026, 25.837255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557735, 31.482529, 25.715450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248284, 0.197020, -0.948440,
		0.803330, -0.589006, 0.087942,
		-0.541310, -0.783744, -0.304513,
		40.395344, 31.247406, 25.624096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244137, 31.468174, 25.424746>,  <40.774261, 31.796026, 25.837255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244137, 31.468174, 25.424746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.870720, 31.340446, 25.359589>,  <40.646671, 31.263811, 25.320496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.870720, 31.340446, 25.359589>,  <41.244137, 31.468174, 25.424746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870720, 31.340446, 25.359589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046897, 0.341711, -0.938634,
		0.355395, -0.883891, -0.304025,
		-0.933539, -0.319328, -0.162894,
		40.590656, 31.244652, 25.310722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265663, 31.050333, 24.737450>,  <41.244137, 31.468174, 25.424746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265663, 31.050333, 24.737450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.877201, 31.138924, 24.772774>,  <40.644123, 31.192078, 24.793968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.877201, 31.138924, 24.772774>,  <41.265663, 31.050333, 24.737450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877201, 31.138924, 24.772774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029518, 0.479210, -0.877204,
		-0.236602, -0.849297, -0.471926,
		-0.971158, 0.221478, 0.088312,
		40.585854, 31.205368, 24.799267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081249, 30.909336, 24.056068>,  <41.265663, 31.050333, 24.737450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081249, 30.909336, 24.056068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.783432, 31.130024, 24.206406>,  <40.604740, 31.262436, 24.296608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.783432, 31.130024, 24.206406>,  <41.081249, 30.909336, 24.056068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783432, 31.130024, 24.206406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011442, 0.573465, -0.819150,
		-0.667475, -0.605593, -0.433283,
		-0.744544, 0.551720, 0.375844,
		40.560070, 31.295540, 24.319159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582554, 30.978037, 23.521500>,  <41.081249, 30.909336, 24.056068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582554, 30.978037, 23.521500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.545635, 31.281567, 23.779388>,  <40.523483, 31.463684, 23.934122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.545635, 31.281567, 23.779388>,  <40.582554, 30.978037, 23.521500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545635, 31.281567, 23.779388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149882, 0.650699, -0.744397,
		-0.984386, 0.027924, -0.173794,
		-0.092301, 0.758822, 0.644724,
		40.517944, 31.509212, 23.972805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169559, 31.461332, 23.248833>,  <40.582554, 30.978037, 23.521500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169559, 31.461332, 23.248833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.348061, 31.679070, 23.532959>,  <40.455162, 31.809711, 23.703434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.348061, 31.679070, 23.532959>,  <40.169559, 31.461332, 23.248833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348061, 31.679070, 23.532959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081424, 0.765742, -0.637973,
		-0.891195, 0.342534, 0.297392,
		0.446253, 0.544344, 0.710316,
		40.481937, 31.842373, 23.746054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796421, 32.014294, 23.313368>,  <40.169559, 31.461332, 23.248833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796421, 32.014294, 23.313368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.161839, 32.111328, 23.443958>,  <40.381088, 32.169548, 23.522312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.161839, 32.111328, 23.443958>,  <39.796421, 32.014294, 23.313368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161839, 32.111328, 23.443958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040197, 0.744898, -0.665966,
		-0.404746, 0.621513, 0.670747,
		0.913545, 0.242585, 0.326477,
		40.435902, 32.184105, 23.541901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554295, 32.733215, 23.370958>,  <39.796421, 32.014294, 23.313368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554295, 32.733215, 23.370958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.207787, 32.715076, 23.171955>,  <38.999882, 32.704193, 23.052553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.207787, 32.715076, 23.171955>,  <39.554295, 32.733215, 23.370958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207787, 32.715076, 23.171955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419293, 0.607412, 0.674718,
		0.271597, 0.793092, -0.545197,
		-0.866273, -0.045346, -0.497509,
		38.947906, 32.701473, 23.022703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277325, 33.361492, 23.480026>,  <39.554295, 32.733215, 23.370958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277325, 33.361492, 23.480026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.953285, 33.173771, 23.339455>,  <38.758862, 33.061138, 23.255112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.953285, 33.173771, 23.339455>,  <39.277325, 33.361492, 23.480026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953285, 33.173771, 23.339455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566424, 0.471712, 0.675760,
		-0.151360, 0.746489, -0.647954,
		-0.810095, -0.469300, -0.351431,
		38.710258, 33.032982, 23.234026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718277, 33.866169, 23.525995>,  <39.277325, 33.361492, 23.480026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718277, 33.866169, 23.525995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.559963, 33.499119, 23.540493>,  <38.464977, 33.278889, 23.549192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.559963, 33.499119, 23.540493>,  <38.718277, 33.866169, 23.525995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559963, 33.499119, 23.540493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417885, 0.215102, 0.882669,
		-0.817759, 0.334198, -0.468596,
		-0.395782, -0.917629, 0.036245,
		38.441227, 33.223831, 23.551367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027122, 33.975262, 23.730412>,  <38.718277, 33.866169, 23.525995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027122, 33.975262, 23.730412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.097328, 33.592163, 23.821548>,  <38.139450, 33.362305, 23.876230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.097328, 33.592163, 23.821548>,  <38.027122, 33.975262, 23.730412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097328, 33.592163, 23.821548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429307, 0.133813, 0.893191,
		-0.885941, -0.254580, -0.387682,
		0.175512, -0.957749, 0.227844,
		38.149982, 33.304840, 23.889902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487480, 33.829872, 24.209486>,  <38.027122, 33.975262, 23.730412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487480, 33.829872, 24.209486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.706234, 33.497868, 24.253296>,  <37.837486, 33.298664, 24.279583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.706234, 33.497868, 24.253296>,  <37.487480, 33.829872, 24.209486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706234, 33.497868, 24.253296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355223, -0.111584, 0.928098,
		-0.758109, -0.546472, -0.355863,
		0.546889, -0.830010, 0.109526,
		37.870300, 33.248863, 24.286154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015755, 33.271358, 24.409464>,  <37.487480, 33.829872, 24.209486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015755, 33.271358, 24.409464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.368748, 33.144676, 24.548565>,  <37.580544, 33.068668, 24.632027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.368748, 33.144676, 24.548565>,  <37.015755, 33.271358, 24.409464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368748, 33.144676, 24.548565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378586, -0.039528, 0.924722,
		-0.279114, -0.947702, -0.154781,
		0.882478, -0.316701, 0.347754,
		37.633492, 33.049667, 24.652891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886723, 32.643173, 24.792048>,  <37.015755, 33.271358, 24.409464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886723, 32.643173, 24.792048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.220245, 32.821747, 24.921947>,  <37.420361, 32.928890, 24.999887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.220245, 32.821747, 24.921947>,  <36.886723, 32.643173, 24.792048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220245, 32.821747, 24.921947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243583, -0.230388, 0.942119,
		0.495415, -0.864648, -0.083355,
		0.833805, 0.446436, 0.324751,
		37.470387, 32.955677, 25.019373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190243, 32.144333, 25.340199>,  <36.886723, 32.643173, 24.792048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190243, 32.144333, 25.340199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.353497, 32.499672, 25.424362>,  <37.451447, 32.712875, 25.474861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.353497, 32.499672, 25.424362>,  <37.190243, 32.144333, 25.340199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353497, 32.499672, 25.424362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179544, -0.147871, 0.972573,
		0.895095, -0.434713, 0.099147,
		0.408129, 0.888346, 0.210409,
		37.475937, 32.766174, 25.487484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634018, 32.050777, 25.942022>,  <37.190243, 32.144333, 25.340199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634018, 32.050777, 25.942022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.525036, 32.435631, 25.945374>,  <37.459648, 32.666542, 25.947384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.525036, 32.435631, 25.945374>,  <37.634018, 32.050777, 25.942022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525036, 32.435631, 25.945374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026655, -0.016251, 0.999513,
		0.961799, 0.272099, 0.030073,
		-0.272455, 0.962132, 0.008378,
		37.443298, 32.724270, 25.947887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920471, 32.248333, 26.464003>,  <37.634018, 32.050777, 25.942022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920471, 32.248333, 26.464003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.708900, 32.585899, 26.428135>,  <37.581959, 32.788441, 26.406614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.708900, 32.585899, 26.428135>,  <37.920471, 32.248333, 26.464003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708900, 32.585899, 26.428135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023588, 0.120239, 0.992465,
		0.848338, 0.522828, -0.083504,
		-0.528929, 0.843915, -0.089671,
		37.550220, 32.839073, 26.401234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227612, 32.704483, 26.890926>,  <37.920471, 32.248333, 26.464003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227612, 32.704483, 26.890926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.879684, 32.898438, 26.854481>,  <37.670929, 33.014809, 26.832613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.879684, 32.898438, 26.854481>,  <38.227612, 32.704483, 26.890926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879684, 32.898438, 26.854481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007756, 0.171219, 0.985202,
		0.493307, 0.857656, -0.145169,
		-0.869821, 0.484881, -0.091115,
		37.618740, 33.043903, 26.827147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294979, 33.305637, 27.355774>,  <38.227612, 32.704483, 26.890926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294979, 33.305637, 27.355774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.899242, 33.266075, 27.313011>,  <37.661800, 33.242336, 27.287354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.899242, 33.266075, 27.313011>,  <38.294979, 33.305637, 27.355774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899242, 33.266075, 27.313011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106368, -0.010707, 0.994269,
		-0.099484, 0.995039, 0.000072,
		-0.989338, -0.098906, -0.106906,
		37.602440, 33.236404, 27.280939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913715, 33.964588, 27.503466>,  <38.294979, 33.305637, 27.355774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913715, 33.964588, 27.503466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.626011, 33.694038, 27.566944>,  <37.453388, 33.531708, 27.605032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.626011, 33.694038, 27.566944>,  <37.913715, 33.964588, 27.503466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626011, 33.694038, 27.566944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069902, 0.297721, 0.952090,
		-0.691215, 0.673708, -0.261419,
		-0.719261, -0.676372, 0.158696,
		37.410233, 33.491127, 27.614553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456306, 34.253288, 28.049120>,  <37.913715, 33.964588, 27.503466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456306, 34.253288, 28.049120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.358120, 33.865562, 28.043968>,  <37.299206, 33.632927, 28.040876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.358120, 33.865562, 28.043968>,  <37.456306, 34.253288, 28.049120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358120, 33.865562, 28.043968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277303, 0.057480, 0.959062,
		-0.928896, 0.238993, -0.282905,
		-0.245471, -0.969319, -0.012881,
		37.284477, 33.574768, 28.040104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810566, 34.166687, 28.388737>,  <37.456306, 34.253288, 28.049120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810566, 34.166687, 28.388737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.976696, 33.803143, 28.404163>,  <37.076374, 33.585018, 28.413420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.976696, 33.803143, 28.404163>,  <36.810566, 34.166687, 28.388737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976696, 33.803143, 28.404163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208363, -0.053775, 0.976572,
		-0.885490, -0.413628, -0.211706,
		0.415322, -0.908857, 0.038567,
		37.101292, 33.530487, 28.415733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347477, 33.778755, 28.852385>,  <36.810566, 34.166687, 28.388737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347477, 33.778755, 28.852385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.697838, 33.586964, 28.830860>,  <36.908054, 33.471889, 28.817945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.697838, 33.586964, 28.830860>,  <36.347477, 33.778755, 28.852385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697838, 33.586964, 28.830860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070342, -0.237232, 0.968903,
		-0.477338, -0.844877, -0.241519,
		0.875900, -0.479483, -0.053810,
		36.960609, 33.443119, 28.814716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261646, 33.112110, 29.183943>,  <36.347477, 33.778755, 28.852385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261646, 33.112110, 29.183943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.654926, 33.183559, 29.198956>,  <36.890896, 33.226429, 29.207962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.654926, 33.183559, 29.198956>,  <36.261646, 33.112110, 29.183943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654926, 33.183559, 29.198956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037238, -0.004991, 0.999294,
		0.178685, -0.983905, 0.001745,
		0.983201, 0.178624, 0.037530,
		36.949886, 33.237144, 29.210215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490219, 32.609032, 29.722652>,  <36.261646, 33.112110, 29.183943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490219, 32.609032, 29.722652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.775681, 32.886639, 29.684628>,  <36.946957, 33.053204, 29.661812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.775681, 32.886639, 29.684628>,  <36.490219, 32.609032, 29.722652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775681, 32.886639, 29.684628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158495, -0.027788, 0.986969,
		0.682335, -0.719419, -0.129829,
		0.713652, 0.694021, -0.095064,
		36.989777, 33.094845, 29.656109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054756, 32.386013, 29.996580>,  <36.490219, 32.609032, 29.722652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054756, 32.386013, 29.996580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.160759, 32.771694, 30.000046>,  <37.224361, 33.003105, 30.002125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.160759, 32.771694, 30.000046>,  <37.054756, 32.386013, 29.996580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160759, 32.771694, 30.000046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210218, -0.066542, 0.975387,
		0.941052, -0.256664, -0.220327,
		0.265008, 0.964207, 0.008664,
		37.240261, 33.060955, 30.002645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639652, 32.386642, 30.443878>,  <37.054756, 32.386013, 29.996580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639652, 32.386642, 30.443878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.537891, 32.771145, 30.401405>,  <37.476837, 33.001846, 30.375921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.537891, 32.771145, 30.401405>,  <37.639652, 32.386642, 30.443878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537891, 32.771145, 30.401405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143380, 0.146072, 0.978829,
		0.956412, 0.233787, -0.174985,
		-0.254398, 0.961253, -0.106184,
		37.461571, 33.059521, 30.369551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082504, 32.762730, 30.914211>,  <37.639652, 32.386642, 30.443878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082504, 32.762730, 30.914211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.768570, 33.005455, 30.863926>,  <37.580208, 33.151093, 30.833755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.768570, 33.005455, 30.863926>,  <38.082504, 32.762730, 30.914211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768570, 33.005455, 30.863926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000669, 0.203692, 0.979035,
		0.619700, 0.768300, -0.160271,
		-0.784838, 0.606815, -0.125714,
		37.533119, 33.187500, 30.826212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<28.445475, 27.639103, 29.096893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.767195, 27.668659, 29.332737>,  <28.960226, 27.686394, 29.474243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.767195, 27.668659, 29.332737>,  <28.445475, 27.639103, 29.096893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767195, 27.668659, 29.332737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174530, -0.919099, 0.353264,
		0.568013, -0.387035, -0.726336,
		0.804301, 0.073891, 0.589610,
		29.008486, 27.690826, 29.509621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840847, 26.992266, 29.076220>,  <28.445475, 27.639103, 29.096893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840847, 26.992266, 29.076220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.004263, 27.151726, 29.404652>,  <29.102312, 27.247402, 29.601711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.004263, 27.151726, 29.404652>,  <28.840847, 26.992266, 29.076220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004263, 27.151726, 29.404652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171911, -0.849869, 0.498166,
		0.896406, -0.344672, -0.278671,
		0.408538, 0.398652, 0.821081,
		29.126823, 27.271322, 29.650976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042408, 26.407019, 29.386223>,  <28.840847, 26.992266, 29.076220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042408, 26.407019, 29.386223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.089495, 26.683956, 29.670982>,  <29.117746, 26.850119, 29.841839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.089495, 26.683956, 29.670982>,  <29.042408, 26.407019, 29.386223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089495, 26.683956, 29.670982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123289, -0.701147, 0.702276,
		0.985364, -0.170439, 0.002822,
		0.117717, 0.692346, 0.711899,
		29.124809, 26.891661, 29.884552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347511, 26.031414, 29.923378>,  <29.042408, 26.407019, 29.386223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347511, 26.031414, 29.923378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.217478, 26.347298, 30.131485>,  <29.139458, 26.536829, 30.256350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.217478, 26.347298, 30.131485>,  <29.347511, 26.031414, 29.923378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217478, 26.347298, 30.131485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209879, -0.596675, 0.774551,
		0.922102, 0.142599, 0.359712,
		-0.325081, 0.789711, 0.520267,
		29.119953, 26.584211, 30.287565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571033, 25.947409, 30.614294>,  <29.347511, 26.031414, 29.923378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571033, 25.947409, 30.614294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.243923, 26.177433, 30.604912>,  <29.047657, 26.315447, 30.599283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.243923, 26.177433, 30.604912>,  <29.571033, 25.947409, 30.614294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243923, 26.177433, 30.604912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387381, -0.519827, 0.761391,
		0.425651, 0.631733, 0.647869,
		-0.817776, 0.575059, -0.023456,
		28.998590, 26.349951, 30.597876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386803, 26.124157, 31.345142>,  <29.571033, 25.947409, 30.614294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386803, 26.124157, 31.345142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.051708, 26.205887, 31.142578>,  <28.850651, 26.254925, 31.021040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.051708, 26.205887, 31.142578>,  <29.386803, 26.124157, 31.345142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051708, 26.205887, 31.142578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539863, -0.449381, 0.711761,
		-0.082140, 0.869660, 0.486770,
		-0.837736, 0.204325, -0.506409,
		28.800388, 26.267185, 30.990656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.897121, 26.151735, 31.900459>,  <29.386803, 26.124157, 31.345142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.897121, 26.151735, 31.900459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.640940, 26.138901, 31.593529>,  <28.487230, 26.131201, 31.409370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.640940, 26.138901, 31.593529>,  <28.897121, 26.151735, 31.900459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640940, 26.138901, 31.593529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684053, -0.430365, 0.588945,
		-0.349127, 0.902085, 0.253681,
		-0.640454, -0.032085, -0.767326,
		28.448803, 26.129274, 31.363331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214504, 26.335407, 32.222229>,  <28.897121, 26.151735, 31.900459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214504, 26.335407, 32.222229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.168486, 26.127338, 31.883717>,  <28.140875, 26.002497, 31.680611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.168486, 26.127338, 31.883717>,  <28.214504, 26.335407, 32.222229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168486, 26.127338, 31.883717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752008, -0.511026, 0.416338,
		-0.649037, 0.684306, -0.332380,
		-0.115048, -0.520170, -0.846278,
		28.133970, 25.971287, 31.629833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506250, 26.429600, 32.086216>,  <28.214504, 26.335407, 32.222229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506250, 26.429600, 32.086216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.611090, 26.110352, 31.869217>,  <27.673994, 25.918802, 31.739017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.611090, 26.110352, 31.869217>,  <27.506250, 26.429600, 32.086216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611090, 26.110352, 31.869217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890862, -0.416239, 0.181965,
		-0.371039, 0.435598, -0.820113,
		0.262099, -0.798123, -0.542498,
		27.689720, 25.870914, 31.706467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925005, 26.372757, 31.581806>,  <27.506250, 26.429600, 32.086216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925005, 26.372757, 31.581806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.103884, 26.017712, 31.625919>,  <27.211210, 25.804686, 31.652388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.103884, 26.017712, 31.625919>,  <26.925005, 26.372757, 31.581806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.103884, 26.017712, 31.625919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894433, -0.443489, 0.057499,
		-0.002128, -0.124353, -0.992236,
		0.447196, -0.887612, 0.110281,
		27.238043, 25.751429, 31.659004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.519163, 25.816397, 31.237688>,  <26.925005, 26.372757, 31.581806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.519163, 25.816397, 31.237688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.750896, 25.612904, 31.492424>,  <26.889936, 25.490807, 31.645266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.750896, 25.612904, 31.492424>,  <26.519163, 25.816397, 31.237688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750896, 25.612904, 31.492424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801122, -0.499422, 0.329820,
		0.150261, -0.701261, -0.696889,
		0.579332, -0.508734, 0.636839,
		26.924696, 25.460283, 31.683475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296585, 25.164845, 31.177568>,  <26.519163, 25.816397, 31.237688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296585, 25.164845, 31.177568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.486511, 25.165222, 31.529602>,  <26.600468, 25.165449, 31.740822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.486511, 25.165222, 31.529602>,  <26.296585, 25.164845, 31.177568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486511, 25.165222, 31.529602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729167, -0.559540, 0.393992,
		0.492814, -0.828803, -0.264991,
		0.474815, 0.000942, 0.880085,
		26.628956, 25.165504, 31.793627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.560217, 24.521320, 31.328306>,  <26.296585, 25.164845, 31.177568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.560217, 24.521320, 31.328306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.484806, 24.723244, 31.665264>,  <26.439560, 24.844398, 31.867439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.484806, 24.723244, 31.665264>,  <26.560217, 24.521320, 31.328306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484806, 24.723244, 31.665264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736903, -0.639731, 0.218442,
		0.649177, -0.579579, 0.492602,
		-0.188529, 0.504808, 0.842393,
		26.428247, 24.874685, 31.917982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.503748, 23.986275, 31.772640>,  <26.560217, 24.521320, 31.328306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.503748, 23.986275, 31.772640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.295889, 24.277641, 31.951244>,  <26.171173, 24.452461, 32.058407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.295889, 24.277641, 31.951244>,  <26.503748, 23.986275, 31.772640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295889, 24.277641, 31.951244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687323, -0.666838, 0.287948,
		0.507498, -0.157267, 0.847179,
		-0.519647, 0.728419, 0.446513,
		26.139996, 24.496166, 32.085197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.402430, 23.203424, 31.695644>,  <26.503748, 23.986275, 31.772640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.402430, 23.203424, 31.695644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.511265, 22.876839, 31.491936>,  <26.576565, 22.680887, 31.369711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.511265, 22.876839, 31.491936>,  <26.402430, 23.203424, 31.695644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.511265, 22.876839, 31.491936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253659, 0.571373, -0.780506,
		0.928238, 0.083184, 0.362566,
		0.272086, -0.816464, -0.509270,
		26.592890, 22.631899, 31.339155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.017534, 23.448521, 31.375000>,  <26.402430, 23.203424, 31.695644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.017534, 23.448521, 31.375000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.879675, 23.128452, 31.178658>,  <26.796959, 22.936411, 31.060852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.879675, 23.128452, 31.178658>,  <27.017534, 23.448521, 31.375000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.879675, 23.128452, 31.178658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225460, 0.437032, -0.870730,
		0.911254, -0.410766, 0.029784,
		-0.344650, -0.800172, -0.490858,
		26.776279, 22.888401, 31.031401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536299, 23.398705, 30.918900>,  <27.017534, 23.448521, 31.375000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.536299, 23.398705, 30.918900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.232527, 23.191746, 30.761131>,  <27.050264, 23.067570, 30.666470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.232527, 23.191746, 30.761131>,  <27.536299, 23.398705, 30.918900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.232527, 23.191746, 30.761131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237505, 0.343931, -0.908462,
		0.605689, -0.783589, -0.138306,
		-0.759429, -0.517397, -0.394421,
		27.004698, 23.036528, 30.642805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745131, 22.938349, 30.359009>,  <27.536299, 23.398705, 30.918900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745131, 22.938349, 30.359009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.359432, 23.009254, 30.280209>,  <27.128014, 23.051798, 30.232927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.359432, 23.009254, 30.280209>,  <27.745131, 22.938349, 30.359009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359432, 23.009254, 30.280209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222685, 0.138930, -0.964940,
		-0.143681, -0.974307, -0.173437,
		-0.964244, 0.177266, -0.197002,
		27.070158, 23.062433, 30.221107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688715, 22.789385, 29.715132>,  <27.745131, 22.938349, 30.359009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688715, 22.789385, 29.715132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.330564, 22.962864, 29.755550>,  <27.115675, 23.066952, 29.779802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.330564, 22.962864, 29.755550>,  <27.688715, 22.789385, 29.715132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.330564, 22.962864, 29.755550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051262, 0.325792, -0.944051,
		-0.442351, -0.840100, -0.313938,
		-0.895376, 0.433695, 0.101049,
		27.061953, 23.092972, 29.785866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335106, 22.614429, 29.109772>,  <27.688715, 22.789385, 29.715132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.335106, 22.614429, 29.109772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.219591, 22.964802, 29.264355>,  <27.150282, 23.175024, 29.357105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.219591, 22.964802, 29.264355>,  <27.335106, 22.614429, 29.109772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219591, 22.964802, 29.264355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147243, 0.439490, -0.886097,
		-0.946003, -0.198989, -0.255892,
		-0.288785, 0.875930, 0.386459,
		27.132956, 23.227581, 29.380293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071920, 23.028751, 28.546173>,  <27.335106, 22.614429, 29.109772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071920, 23.028751, 28.546173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.103531, 23.313278, 28.825539>,  <27.122498, 23.483995, 28.993158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.103531, 23.313278, 28.825539>,  <27.071920, 23.028751, 28.546173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.103531, 23.313278, 28.825539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118992, 0.688863, -0.715058,
		-0.989745, 0.139616, -0.030202,
		0.079028, 0.711319, 0.698412,
		27.127239, 23.526674, 29.035063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667534, 23.665585, 28.345678>,  <27.071920, 23.028751, 28.546173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.667534, 23.665585, 28.345678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.930294, 23.816990, 28.606510>,  <27.087950, 23.907833, 28.763010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.930294, 23.816990, 28.606510>,  <26.667534, 23.665585, 28.345678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.930294, 23.816990, 28.606510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213559, 0.736030, -0.642380,
		-0.723101, 0.561238, 0.402663,
		0.656900, 0.378513, 0.652082,
		27.127363, 23.930544, 28.802135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465940, 24.327625, 28.375418>,  <26.667534, 23.665585, 28.345678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.465940, 24.327625, 28.375418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.842955, 24.308231, 28.507645>,  <27.069162, 24.296595, 28.586981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.842955, 24.308231, 28.507645>,  <26.465940, 24.327625, 28.375418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.842955, 24.308231, 28.507645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249725, 0.759527, -0.600630,
		-0.221955, 0.648667, 0.727989,
		0.942536, -0.048484, 0.330569,
		27.125715, 24.293686, 28.606815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675556, 25.003286, 28.460453>,  <26.465940, 24.327625, 28.375418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675556, 25.003286, 28.460453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.035105, 24.830940, 28.492428>,  <27.250834, 24.727533, 28.511614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.035105, 24.830940, 28.492428>,  <26.675556, 25.003286, 28.460453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.035105, 24.830940, 28.492428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381027, 0.678345, -0.628225,
		0.216453, 0.595150, 0.773915,
		0.898870, -0.430864, 0.079938,
		27.304766, 24.701681, 28.516409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.090778, 25.536535, 28.622963>,  <26.675556, 25.003286, 28.460453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.090778, 25.536535, 28.622963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.339748, 25.258152, 28.479729>,  <27.489130, 25.091122, 28.393787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.339748, 25.258152, 28.479729>,  <27.090778, 25.536535, 28.622963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339748, 25.258152, 28.479729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451242, 0.692914, -0.562362,
		0.639504, 0.188446, 0.745334,
		0.622427, -0.695958, -0.358087,
		27.526476, 25.049364, 28.372303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701233, 25.907486, 28.718830>,  <27.090778, 25.536535, 28.622963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.701233, 25.907486, 28.718830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.756826, 25.621220, 28.445042>,  <27.790182, 25.449459, 28.280767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.756826, 25.621220, 28.445042>,  <27.701233, 25.907486, 28.718830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756826, 25.621220, 28.445042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332026, 0.684851, -0.648643,
		0.932975, -0.137111, 0.332805,
		0.138986, -0.715668, -0.684473,
		27.798523, 25.406519, 28.239700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500608, 25.879072, 28.574337>,  <27.701233, 25.907486, 28.718830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500608, 25.879072, 28.574337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.311287, 25.694355, 28.274277>,  <28.197693, 25.583525, 28.094240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.311287, 25.694355, 28.274277>,  <28.500608, 25.879072, 28.574337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311287, 25.694355, 28.274277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449743, 0.605549, -0.656538,
		0.757439, -0.648119, -0.078921,
		-0.473305, -0.461793, -0.750153,
		28.169296, 25.555817, 28.049231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984266, 25.983286, 27.979853>,  <28.500608, 25.879072, 28.574337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984266, 25.983286, 27.979853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.628933, 25.902691, 27.814800>,  <28.415733, 25.854334, 27.715769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.628933, 25.902691, 27.814800>,  <28.984266, 25.983286, 27.979853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628933, 25.902691, 27.814800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167950, 0.693767, -0.700343,
		0.427380, -0.691440, -0.582457,
		-0.888335, -0.201489, -0.412630,
		28.362432, 25.842243, 27.691011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273952, 25.294912, 27.883251>,  <28.984266, 25.983286, 27.979853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273952, 25.294912, 27.883251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.621895, 25.157990, 27.741169>,  <29.830660, 25.075836, 27.655920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.621895, 25.157990, 27.741169>,  <29.273952, 25.294912, 27.883251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621895, 25.157990, 27.741169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027474, -0.685325, 0.727719,
		-0.492536, -0.642772, -0.586731,
		0.869858, -0.342308, -0.355206,
		29.882853, 25.055298, 27.634607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281160, 24.507557, 27.665199>,  <29.273952, 25.294912, 27.883251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281160, 24.507557, 27.665199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.651171, 24.619766, 27.767673>,  <29.873177, 24.687092, 27.829159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.651171, 24.619766, 27.767673>,  <29.281160, 24.507557, 27.665199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651171, 24.619766, 27.767673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074710, -0.795508, 0.601319,
		0.372483, -0.537097, -0.756825,
		0.925027, 0.280523, 0.256187,
		29.928679, 24.703922, 27.844530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485703, 23.971495, 28.004646>,  <29.281160, 24.507557, 27.665199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485703, 23.971495, 28.004646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.788975, 24.208439, 28.113659>,  <29.970938, 24.350605, 28.179068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.788975, 24.208439, 28.113659>,  <29.485703, 23.971495, 28.004646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788975, 24.208439, 28.113659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090310, -0.509333, 0.855818,
		0.645763, -0.624250, -0.439661,
		0.758178, 0.592361, 0.272533,
		30.016428, 24.386147, 28.195419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085091, 23.511150, 28.126041>,  <29.485703, 23.971495, 28.004646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085091, 23.511150, 28.126041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.173546, 23.850243, 28.318893>,  <30.226620, 24.053698, 28.434605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.173546, 23.850243, 28.318893>,  <30.085091, 23.511150, 28.126041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173546, 23.850243, 28.318893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088704, -0.509803, 0.855706,
		0.971200, -0.146463, -0.187934,
		0.221138, 0.847732, 0.482129,
		30.239887, 24.104563, 28.463531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615860, 23.372887, 28.606468>,  <30.085091, 23.511150, 28.126041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615860, 23.372887, 28.606468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.447601, 23.699883, 28.763828>,  <30.346645, 23.896080, 28.858244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.447601, 23.699883, 28.763828>,  <30.615860, 23.372887, 28.606468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447601, 23.699883, 28.763828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237596, -0.319229, 0.917410,
		0.875560, 0.479376, -0.059950,
		-0.420647, 0.817491, 0.393402,
		30.321407, 23.945129, 28.881849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995146, 23.420418, 29.273369>,  <30.615860, 23.372887, 28.606468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995146, 23.420418, 29.273369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.659925, 23.637497, 29.295811>,  <30.458794, 23.767744, 29.309277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.659925, 23.637497, 29.295811>,  <30.995146, 23.420418, 29.273369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659925, 23.637497, 29.295811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072993, -0.213439, 0.974226,
		0.540685, 0.812357, 0.218486,
		-0.838053, 0.542697, 0.056107,
		30.408510, 23.800306, 29.312643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123936, 23.777792, 29.895557>,  <30.995146, 23.420418, 29.273369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123936, 23.777792, 29.895557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.725718, 23.787987, 29.859238>,  <30.486788, 23.794104, 29.837446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.725718, 23.787987, 29.859238>,  <31.123936, 23.777792, 29.895557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725718, 23.787987, 29.859238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094042, -0.340641, 0.935478,
		-0.007085, 0.939848, 0.341520,
		-0.995543, 0.025489, -0.090799,
		30.427055, 23.795633, 29.831999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335508, 24.375456, 30.425097>,  <31.123936, 23.777792, 29.895557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335508, 24.375456, 30.425097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.675341, 24.450684, 30.622211>,  <31.879240, 24.495821, 30.740480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.675341, 24.450684, 30.622211>,  <31.335508, 24.375456, 30.425097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675341, 24.450684, 30.622211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085604, 0.872721, -0.480656,
		-0.520462, 0.450541, 0.725349,
		0.849583, 0.188070, 0.492786,
		31.930216, 24.507105, 30.770048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295635, 25.122070, 30.635195>,  <31.335508, 24.375456, 30.425097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295635, 25.122070, 30.635195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.685177, 25.031929, 30.646667>,  <31.918901, 24.977844, 30.653551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.685177, 25.031929, 30.646667>,  <31.295635, 25.122070, 30.635195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685177, 25.031929, 30.646667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209941, 0.844544, -0.492615,
		0.086788, 0.485758, 0.869774,
		0.973855, -0.225354, 0.028684,
		31.977333, 24.964323, 30.655273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613876, 25.746609, 30.871897>,  <31.295635, 25.122070, 30.635195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613876, 25.746609, 30.871897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.903681, 25.532902, 30.697704>,  <32.077564, 25.404676, 30.593189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.903681, 25.532902, 30.697704>,  <31.613876, 25.746609, 30.871897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903681, 25.532902, 30.697704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258362, 0.796243, -0.547034,
		0.639011, 0.283820, 0.714920,
		0.724509, -0.534269, -0.435480,
		32.121033, 25.372622, 30.567060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208488, 26.201120, 30.994282>,  <31.613876, 25.746609, 30.871897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208488, 26.201120, 30.994282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.273464, 25.947273, 30.692059>,  <32.312450, 25.794964, 30.510725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.273464, 25.947273, 30.692059>,  <32.208488, 26.201120, 30.994282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273464, 25.947273, 30.692059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331661, 0.756294, -0.563932,
		0.929308, -0.158984, 0.333332,
		0.162441, -0.634620, -0.755560,
		32.322197, 25.756887, 30.465391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964031, 26.449747, 30.748989>,  <32.208488, 26.201120, 30.994282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964031, 26.449747, 30.748989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.789059, 26.235931, 30.459736>,  <32.684074, 26.107641, 30.286184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.789059, 26.235931, 30.459736>,  <32.964031, 26.449747, 30.748989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789059, 26.235931, 30.459736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255407, 0.697181, -0.669856,
		0.862218, -0.477710, -0.168444,
		-0.437433, -0.534540, -0.723132,
		32.657829, 26.075569, 30.242796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410526, 26.303984, 30.257591>,  <32.964031, 26.449747, 30.748989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410526, 26.303984, 30.257591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.051216, 26.297188, 30.081951>,  <32.835629, 26.293110, 29.976566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.051216, 26.297188, 30.081951>,  <33.410526, 26.303984, 30.257591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051216, 26.297188, 30.081951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294504, 0.718354, -0.630265,
		0.326139, -0.695470, -0.640277,
		-0.898276, -0.016990, -0.439103,
		32.781734, 26.292091, 29.950220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587154, 26.429974, 29.569712>,  <33.410526, 26.303984, 30.257591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587154, 26.429974, 29.569712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.190678, 26.480347, 29.553310>,  <32.952793, 26.510571, 29.543470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.190678, 26.480347, 29.553310>,  <33.587154, 26.429974, 29.569712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190678, 26.480347, 29.553310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118456, 0.704538, -0.699710,
		-0.059228, -0.698403, -0.713250,
		-0.991191, 0.125931, -0.041001,
		32.893322, 26.518126, 29.541010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.822279, 25.562201, 34.370548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.770519, 25.529102, 33.975296>,  <28.739464, 25.509243, 33.738144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.770519, 25.529102, 33.975296>,  <28.822279, 25.562201, 34.370548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770519, 25.529102, 33.975296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152951, 0.982920, -0.102338,
		0.979725, -0.164378, -0.114532,
		-0.129398, -0.082745, -0.988135,
		28.731701, 25.504278, 33.678856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386387, 25.934973, 33.984207>,  <28.822279, 25.562201, 34.370548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386387, 25.934973, 33.984207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.041435, 25.955837, 33.782780>,  <28.834463, 25.968357, 33.661922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.041435, 25.955837, 33.782780>,  <29.386387, 25.934973, 33.984207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041435, 25.955837, 33.782780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223296, 0.931888, -0.285873,
		0.454354, -0.358975, -0.815290,
		-0.862381, 0.052163, -0.503565,
		28.782721, 25.971487, 33.631710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529207, 26.080250, 33.225082>,  <29.386387, 25.934973, 33.984207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529207, 26.080250, 33.225082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.151258, 26.189606, 33.297161>,  <28.924488, 26.255219, 33.340408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.151258, 26.189606, 33.297161>,  <29.529207, 26.080250, 33.225082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.151258, 26.189606, 33.297161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160988, 0.867108, -0.471388,
		-0.285126, -0.416392, -0.863320,
		-0.944873, 0.273389, 0.180201,
		28.867796, 26.271622, 33.351223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419256, 26.642057, 32.828609>,  <29.529207, 26.080250, 33.225082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419256, 26.642057, 32.828609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.081810, 26.649006, 33.043278>,  <28.879343, 26.653175, 33.172077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.081810, 26.649006, 33.043278>,  <29.419256, 26.642057, 32.828609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081810, 26.649006, 33.043278> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157817, 0.947309, -0.278747,
		-0.513233, -0.319851, -0.796421,
		-0.843614, 0.017373, 0.536668,
		28.828726, 26.654219, 33.204277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841400, 26.762526, 32.369503>,  <29.419256, 26.642057, 32.828609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841400, 26.762526, 32.369503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.750557, 26.881226, 32.740524>,  <28.696051, 26.952446, 32.963139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.750557, 26.881226, 32.740524>,  <28.841400, 26.762526, 32.369503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750557, 26.881226, 32.740524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081803, 0.954891, -0.285468,
		-0.970428, 0.011045, -0.241137,
		-0.227107, 0.296752, 0.927556,
		28.682425, 26.970251, 33.018791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303612, 27.337229, 32.314541>,  <28.841400, 26.762526, 32.369503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303612, 27.337229, 32.314541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.472250, 27.374729, 32.675312>,  <28.573433, 27.397230, 32.891773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.472250, 27.374729, 32.675312>,  <28.303612, 27.337229, 32.314541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472250, 27.374729, 32.675312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204390, 0.959220, -0.195248,
		-0.883449, 0.266660, 0.385241,
		0.421595, 0.093753, 0.901924,
		28.598728, 27.402855, 32.945889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120583, 28.004841, 32.485916>,  <28.303612, 27.337229, 32.314541>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120583, 28.004841, 32.485916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.395103, 27.941059, 32.769764>,  <28.559816, 27.902790, 32.940075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.395103, 27.941059, 32.769764>,  <28.120583, 28.004841, 32.485916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395103, 27.941059, 32.769764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229332, 0.973343, -0.003081,
		-0.690214, 0.164853, 0.704576,
		0.686302, -0.159455, 0.709622,
		28.600994, 27.893223, 32.982651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033762, 28.546267, 33.047897>,  <28.120583, 28.004841, 32.485916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033762, 28.546267, 33.047897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.404884, 28.402237, 33.086941>,  <28.627558, 28.315819, 33.110367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.404884, 28.402237, 33.086941>,  <28.033762, 28.546267, 33.047897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404884, 28.402237, 33.086941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360771, 0.932589, 0.011024,
		-0.094997, 0.024986, 0.995164,
		0.927804, -0.360074, 0.097607,
		28.683226, 28.294214, 33.116222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330517, 28.975271, 33.521664>,  <28.033762, 28.546267, 33.047897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330517, 28.975271, 33.521664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.618813, 28.798069, 33.308392>,  <28.791790, 28.691748, 33.180428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.618813, 28.798069, 33.308392>,  <28.330517, 28.975271, 33.521664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618813, 28.798069, 33.308392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546677, 0.836174, 0.044231,
		0.426240, -0.323358, 0.844842,
		0.720738, -0.443003, -0.533184,
		28.835033, 28.665169, 33.148438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955008, 29.174509, 33.850121>,  <28.330517, 28.975271, 33.521664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955008, 29.174509, 33.850121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.048399, 29.079605, 33.472931>,  <29.104435, 29.022663, 33.246616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.048399, 29.079605, 33.472931>,  <28.955008, 29.174509, 33.850121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048399, 29.079605, 33.472931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368654, 0.918972, -0.139943,
		0.899767, -0.314956, 0.302029,
		0.233481, -0.237260, -0.942971,
		29.118443, 29.008427, 33.190041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681345, 29.466524, 33.765919>,  <28.955008, 29.174509, 33.850121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681345, 29.466524, 33.765919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.504454, 29.437164, 33.408363>,  <29.398319, 29.419548, 33.193829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.504454, 29.437164, 33.408363>,  <29.681345, 29.466524, 33.765919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504454, 29.437164, 33.408363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344766, 0.906160, -0.244971,
		0.827991, -0.416518, -0.375425,
		-0.442230, -0.073400, -0.893893,
		29.371784, 29.415144, 33.140194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132566, 29.726639, 33.288963>,  <29.681345, 29.466524, 33.765919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132566, 29.726639, 33.288963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.798555, 29.748226, 33.069939>,  <29.598148, 29.761179, 32.938526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.798555, 29.748226, 33.069939>,  <30.132566, 29.726639, 33.288963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798555, 29.748226, 33.069939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320760, 0.856320, -0.404759,
		0.447040, -0.513618, -0.732360,
		-0.835026, 0.053969, -0.547558,
		29.548048, 29.764418, 32.905670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616936, 29.167088, 32.841255>,  <30.132566, 29.726639, 33.288963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616936, 29.167088, 32.841255> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.982086, 29.092995, 32.695736>,  <31.201176, 29.048540, 32.608425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.982086, 29.092995, 32.695736>,  <30.616936, 29.167088, 32.841255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982086, 29.092995, 32.695736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076316, -0.952859, 0.293658,
		-0.401038, -0.240310, -0.883979,
		0.912877, -0.185230, -0.363794,
		31.255949, 29.037426, 32.586597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520254, 28.516687, 32.500347>,  <30.616936, 29.167088, 32.841255>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520254, 28.516687, 32.500347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.909559, 28.564148, 32.579021>,  <31.143143, 28.592625, 32.626225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.909559, 28.564148, 32.579021>,  <30.520254, 28.516687, 32.500347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909559, 28.564148, 32.579021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084635, -0.981252, 0.173152,
		0.213542, -0.151876, -0.965056,
		0.973261, 0.118653, 0.196685,
		31.201538, 28.599745, 32.638027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858875, 27.949768, 32.200012>,  <30.520254, 28.516687, 32.500347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858875, 27.949768, 32.200012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.149574, 28.057274, 32.452869>,  <31.323994, 28.121777, 32.604584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.149574, 28.057274, 32.452869>,  <30.858875, 27.949768, 32.200012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149574, 28.057274, 32.452869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097904, -0.951411, 0.291947,
		0.679892, -0.150282, -0.717748,
		0.726748, 0.268763, 0.632143,
		31.367599, 28.137903, 32.642513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379120, 27.545856, 32.034935>,  <30.858875, 27.949768, 32.200012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379120, 27.545856, 32.034935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.473179, 27.657734, 32.407272>,  <31.529615, 27.724859, 32.630676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.473179, 27.657734, 32.407272>,  <31.379120, 27.545856, 32.034935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473179, 27.657734, 32.407272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238280, -0.945066, 0.223770,
		0.942299, 0.169183, -0.288876,
		0.235149, 0.279691, 0.930848,
		31.543724, 27.741642, 32.686527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979427, 27.142963, 32.328571>,  <31.379120, 27.545856, 32.034935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979427, 27.142963, 32.328571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.823156, 27.283276, 32.668999>,  <31.729395, 27.367462, 32.873257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.823156, 27.283276, 32.668999>,  <31.979427, 27.142963, 32.328571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823156, 27.283276, 32.668999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168206, -0.881779, 0.440650,
		0.905030, 0.315307, 0.285486,
		-0.390676, 0.350781, 0.851073,
		31.705954, 27.388510, 32.924320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431118, 26.850647, 32.834846>,  <31.979427, 27.142963, 32.328571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431118, 26.850647, 32.834846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.089272, 26.969845, 33.004944>,  <31.884163, 27.041363, 33.107002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.089272, 26.969845, 33.004944>,  <32.431118, 26.850647, 32.834846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089272, 26.969845, 33.004944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021454, -0.838505, 0.544471,
		0.518818, 0.456190, 0.722993,
		-0.854616, 0.297993, 0.425244,
		31.832888, 27.059242, 33.132519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497860, 26.743717, 33.596760>,  <32.431118, 26.850647, 32.834846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497860, 26.743717, 33.596760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.110744, 26.768650, 33.499195>,  <31.878473, 26.783609, 33.440659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.110744, 26.768650, 33.499195>,  <32.497860, 26.743717, 33.596760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110744, 26.768650, 33.499195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150841, -0.919266, 0.363590,
		-0.201554, 0.388671, 0.899061,
		-0.967793, 0.062333, -0.243909,
		31.820406, 26.787350, 33.426022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087429, 26.450205, 34.208424>,  <32.497860, 26.743717, 33.596760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087429, 26.450205, 34.208424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.865355, 26.415100, 33.877590>,  <31.732111, 26.394037, 33.679089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.865355, 26.415100, 33.877590>,  <32.087429, 26.450205, 34.208424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865355, 26.415100, 33.877590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156512, -0.965628, 0.207522,
		-0.816869, 0.244662, 0.522366,
		-0.555184, -0.087762, -0.827084,
		31.698799, 26.388771, 33.629463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460102, 26.232454, 34.517719>,  <32.087429, 26.450205, 34.208424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460102, 26.232454, 34.517719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.486660, 26.148766, 34.127476>,  <31.502596, 26.098553, 33.893330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.486660, 26.148766, 34.127476>,  <31.460102, 26.232454, 34.517719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486660, 26.148766, 34.127476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383438, -0.908040, 0.168635,
		-0.921177, 0.362890, -0.140513,
		0.066395, -0.209221, -0.975612,
		31.506578, 26.085999, 33.834793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805891, 25.959068, 34.232231>,  <31.460102, 26.232454, 34.517719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805891, 25.959068, 34.232231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.026991, 25.808887, 33.934639>,  <31.159651, 25.718779, 33.756084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.026991, 25.808887, 33.934639>,  <30.805891, 25.959068, 34.232231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026991, 25.808887, 33.934639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380091, -0.908075, 0.175871,
		-0.741621, 0.185568, -0.644642,
		0.552747, -0.375452, -0.743980,
		31.192816, 25.696251, 33.711445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389809, 25.461962, 33.959843>,  <30.805891, 25.959068, 34.232231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389809, 25.461962, 33.959843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.756084, 25.394699, 33.813839>,  <30.975849, 25.354342, 33.726234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.756084, 25.394699, 33.813839>,  <30.389809, 25.461962, 33.959843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756084, 25.394699, 33.813839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134532, -0.984111, 0.115877,
		-0.378699, -0.057001, -0.923763,
		0.915690, -0.168159, -0.365013,
		31.030792, 25.344252, 33.704334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210087, 24.982452, 33.475727>,  <30.389809, 25.461962, 33.959843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210087, 24.982452, 33.475727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.592628, 24.960548, 33.590538>,  <30.822153, 24.947407, 33.659424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.592628, 24.960548, 33.590538>,  <30.210087, 24.982452, 33.475727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592628, 24.960548, 33.590538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093797, -0.987831, 0.124061,
		0.276743, -0.145569, -0.949854,
		0.956355, -0.054760, 0.287029,
		30.879536, 24.944120, 33.676647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431978, 24.288773, 33.246864>,  <30.210087, 24.982452, 33.475727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431978, 24.288773, 33.246864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.737080, 24.384193, 33.487297>,  <30.920141, 24.441446, 33.631557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.737080, 24.384193, 33.487297>,  <30.431978, 24.288773, 33.246864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737080, 24.384193, 33.487297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140805, -0.968440, 0.205667,
		0.631173, -0.072238, -0.772271,
		0.762755, 0.238551, 0.601082,
		30.965906, 24.455759, 33.667622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905317, 23.791616, 33.149998>,  <30.431978, 24.288773, 33.246864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905317, 23.791616, 33.149998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.016874, 23.937336, 33.505413>,  <31.083809, 24.024767, 33.718662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.016874, 23.937336, 33.505413>,  <30.905317, 23.791616, 33.149998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016874, 23.937336, 33.505413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210854, -0.925904, 0.313436,
		0.936889, 0.099938, -0.335040,
		0.278891, 0.364299, 0.888541,
		31.100542, 24.046625, 33.771976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340813, 23.319820, 33.458874>,  <30.905317, 23.791616, 33.149998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340813, 23.319820, 33.458874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.339552, 23.024849, 33.188705>,  <31.338795, 22.847866, 33.026604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.339552, 23.024849, 33.188705>,  <31.340813, 23.319820, 33.458874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339552, 23.024849, 33.188705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367316, 0.627351, -0.686665,
		0.930091, -0.250256, 0.268892,
		-0.003153, -0.737430, -0.675417,
		31.338606, 22.803619, 32.986080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003368, 23.321423, 33.188362>,  <31.340813, 23.319820, 33.458874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003368, 23.321423, 33.188362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.776266, 23.144379, 32.910732>,  <31.640005, 23.038153, 32.744152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.776266, 23.144379, 32.910732>,  <32.003368, 23.321423, 33.188362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776266, 23.144379, 32.910732> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446373, 0.542904, -0.711341,
		0.691667, -0.713687, -0.110668,
		-0.567757, -0.442612, -0.694079,
		31.605938, 23.011595, 32.702507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458408, 23.092546, 32.776737>,  <32.003368, 23.321423, 33.188362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458408, 23.092546, 32.776737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.125816, 23.105389, 32.554886>,  <31.926262, 23.113094, 32.421776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.125816, 23.105389, 32.554886>,  <32.458408, 23.092546, 32.776737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125816, 23.105389, 32.554886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479585, 0.545407, -0.687408,
		0.280428, -0.837556, -0.468892,
		-0.831480, 0.032106, -0.554627,
		31.876373, 23.115021, 32.388496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655613, 22.991169, 32.042442>,  <32.458408, 23.092546, 32.776737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655613, 22.991169, 32.042442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.301491, 23.174469, 32.010849>,  <32.089016, 23.284449, 31.991894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.301491, 23.174469, 32.010849>,  <32.655613, 22.991169, 32.042442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301491, 23.174469, 32.010849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342610, 0.527959, -0.777096,
		-0.314407, -0.715028, -0.624407,
		-0.885306, 0.458252, -0.078982,
		32.035900, 23.311945, 31.987154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642239, 23.137184, 31.346256>,  <32.655613, 22.991169, 32.042442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642239, 23.137184, 31.346256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.355396, 23.374683, 31.492260>,  <32.183292, 23.517183, 31.579863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.355396, 23.374683, 31.492260>,  <32.642239, 23.137184, 31.346256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355396, 23.374683, 31.492260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086439, 0.595430, -0.798744,
		-0.691588, -0.541229, -0.478306,
		-0.717102, 0.593746, 0.365009,
		32.140266, 23.552807, 31.601763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159519, 23.257282, 30.798006>,  <32.642239, 23.137184, 31.346256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159519, 23.257282, 30.798006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.110577, 23.562073, 31.052383>,  <32.081211, 23.744947, 31.205009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.110577, 23.562073, 31.052383>,  <32.159519, 23.257282, 30.798006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110577, 23.562073, 31.052383> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124767, 0.647484, -0.751796,
		-0.984613, -0.012643, -0.174293,
		-0.122357, 0.761974, 0.635943,
		32.073868, 23.790665, 31.243166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613831, 23.716766, 30.557196>,  <32.159519, 23.257282, 30.798006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613831, 23.716766, 30.557196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.825949, 23.938602, 30.813702>,  <31.953218, 24.071703, 30.967606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.825949, 23.938602, 30.813702>,  <31.613831, 23.716766, 30.557196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825949, 23.938602, 30.813702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032450, 0.742543, -0.669012,
		-0.847193, 0.375582, 0.375770,
		0.530294, 0.554588, 0.641264,
		31.985037, 24.104979, 31.006081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770727, 23.898781, 30.572926>,  <31.613831, 23.716766, 30.557196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770727, 23.898781, 30.572926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.439308, 23.794518, 30.374706>,  <30.240458, 23.731960, 30.255775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.439308, 23.794518, 30.374706>,  <30.770727, 23.898781, 30.572926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439308, 23.794518, 30.374706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429084, -0.273006, 0.861020,
		-0.359720, 0.926026, 0.114354,
		-0.828546, -0.260659, -0.495548,
		30.190744, 23.716320, 30.226042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166265, 24.169149, 30.997719>,  <30.770727, 23.898781, 30.572926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166265, 24.169149, 30.997719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.032028, 23.867275, 30.772213>,  <29.951485, 23.686152, 30.636909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.032028, 23.867275, 30.772213>,  <30.166265, 24.169149, 30.997719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032028, 23.867275, 30.772213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604809, -0.286208, 0.743163,
		-0.722206, 0.590371, -0.360390,
		-0.335595, -0.754684, -0.563763,
		29.931349, 23.640871, 30.603085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417955, 24.189650, 31.034853>,  <30.166265, 24.169149, 30.997719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417955, 24.189650, 31.034853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.538857, 23.826439, 30.918835>,  <29.611397, 23.608513, 30.849224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.538857, 23.826439, 30.918835>,  <29.417955, 24.189650, 31.034853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538857, 23.826439, 30.918835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518221, -0.411914, 0.749516,
		-0.800056, -0.076237, -0.595062,
		0.302255, -0.908028, -0.290047,
		29.629534, 23.554031, 30.831821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727299, 23.867176, 31.220070>,  <29.417955, 24.189650, 31.034853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727299, 23.867176, 31.220070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.967531, 23.560066, 31.130787>,  <29.111671, 23.375801, 31.077217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.967531, 23.560066, 31.130787>,  <28.727299, 23.867176, 31.220070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967531, 23.560066, 31.130787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596701, -0.616206, 0.514041,
		-0.532211, -0.175536, -0.828215,
		0.600583, -0.767774, -0.223209,
		29.147707, 23.329733, 31.063824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314713, 23.256941, 31.107924>,  <28.727299, 23.867176, 31.220070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314713, 23.256941, 31.107924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.670565, 23.088383, 31.178329>,  <28.884077, 22.987247, 31.220573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.670565, 23.088383, 31.178329>,  <28.314713, 23.256941, 31.107924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670565, 23.088383, 31.178329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401932, -0.539507, 0.739853,
		-0.216809, -0.728944, -0.649335,
		0.889632, -0.421395, 0.176017,
		28.937454, 22.961964, 31.231134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338213, 22.496885, 30.784262>,  <28.314713, 23.256941, 31.107924>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338213, 22.496885, 30.784262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.580605, 22.548916, 31.098171>,  <28.726040, 22.580133, 31.286516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.580605, 22.548916, 31.098171>,  <28.338213, 22.496885, 30.784262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580605, 22.548916, 31.098171> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443878, -0.763380, 0.469279,
		0.660123, -0.632717, -0.404854,
		0.605978, 0.130076, 0.784774,
		28.762398, 22.587938, 31.333603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398428, 21.853632, 31.000883>,  <28.338213, 22.496885, 30.784262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398428, 21.853632, 31.000883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.524586, 22.048386, 31.326698>,  <28.600281, 22.165237, 31.522186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.524586, 22.048386, 31.326698>,  <28.398428, 21.853632, 31.000883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524586, 22.048386, 31.326698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379258, -0.722143, 0.578509,
		0.869880, -0.491377, -0.043104,
		0.315393, 0.486886, 0.814536,
		28.619204, 22.194452, 31.571058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917253, 21.489094, 31.283220>,  <28.398428, 21.853632, 31.000883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917253, 21.489094, 31.283220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.753498, 21.703358, 31.578644>,  <28.655245, 21.831915, 31.755898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.753498, 21.703358, 31.578644>,  <28.917253, 21.489094, 31.283220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753498, 21.703358, 31.578644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227002, -0.843852, 0.486194,
		0.883669, 0.031388, 0.467058,
		-0.409388, 0.535658, 0.738561,
		28.630682, 21.864056, 31.800213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962673, 20.980371, 31.819120>,  <28.917253, 21.489094, 31.283220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962673, 20.980371, 31.819120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.734419, 21.277538, 31.959091>,  <28.597466, 21.455837, 32.043076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.734419, 21.277538, 31.959091>,  <28.962673, 20.980371, 31.819120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734419, 21.277538, 31.959091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433787, -0.634509, 0.639709,
		0.697283, 0.213247, 0.684341,
		-0.570636, 0.742916, 0.349929,
		28.563229, 21.500414, 32.064072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.197731, 34.530945, 22.871653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842739, 34.372963, 22.966644>,  <30.629744, 34.278175, 23.023640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842739, 34.372963, 22.966644>,  <31.197731, 34.530945, 22.871653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842739, 34.372963, 22.966644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430640, -0.894217, 0.122164,
		0.164110, 0.210686, 0.963680,
		-0.887478, -0.394951, 0.237480,
		30.576496, 34.254478, 23.037888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333048, 34.081913, 23.500288>,  <31.197731, 34.530945, 22.871653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333048, 34.081913, 23.500288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975111, 33.974281, 23.357822>,  <30.760349, 33.909702, 23.272343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975111, 33.974281, 23.357822>,  <31.333048, 34.081913, 23.500288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975111, 33.974281, 23.357822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187821, -0.950791, 0.246415,
		-0.404942, 0.153608, 0.901347,
		-0.894844, -0.269076, -0.356164,
		30.706657, 33.893559, 23.250973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020954, 33.722496, 24.046696>,  <31.333048, 34.081913, 23.500288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020954, 33.722496, 24.046696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831984, 33.599686, 23.716228>,  <30.718601, 33.526001, 23.517948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831984, 33.599686, 23.716228>,  <31.020954, 33.722496, 24.046696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.831984, 33.599686, 23.716228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104710, -0.950279, 0.293269,
		-0.875128, 0.052040, 0.481086,
		-0.472427, -0.307022, -0.826166,
		30.690256, 33.507580, 23.468378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511837, 33.224419, 24.326881>,  <31.020954, 33.722496, 24.046696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511837, 33.224419, 24.326881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542385, 33.151745, 23.934727>,  <30.560713, 33.108139, 23.699434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542385, 33.151745, 23.934727>,  <30.511837, 33.224419, 24.326881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542385, 33.151745, 23.934727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089408, -0.980545, 0.174754,
		-0.993063, 0.074309, -0.091128,
		0.076369, -0.181689, -0.980386,
		30.565296, 33.097237, 23.640612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920038, 32.797794, 23.999567>,  <30.511837, 33.224419, 24.326881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920038, 32.797794, 23.999567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219259, 32.732216, 23.742340>,  <30.398792, 32.692871, 23.588003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219259, 32.732216, 23.742340>,  <29.920038, 32.797794, 23.999567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219259, 32.732216, 23.742340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072524, -0.983398, 0.166341,
		-0.659663, -0.077795, -0.747524,
		0.748054, -0.163942, -0.643069,
		30.443676, 32.683033, 23.549419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703403, 32.149834, 23.760103>,  <29.920038, 32.797794, 23.999567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703403, 32.149834, 23.760103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088303, 32.206337, 23.667046>,  <30.319242, 32.240238, 23.611212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088303, 32.206337, 23.667046>,  <29.703403, 32.149834, 23.760103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088303, 32.206337, 23.667046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167610, -0.981009, 0.097609,
		-0.214438, -0.132917, -0.967652,
		0.962249, 0.141258, -0.232644,
		30.376978, 32.248714, 23.597252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856932, 31.656633, 23.301165>,  <29.703403, 32.149834, 23.760103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856932, 31.656633, 23.301165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241514, 31.732502, 23.380787>,  <30.472263, 31.778023, 23.428560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241514, 31.732502, 23.380787>,  <29.856932, 31.656633, 23.301165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241514, 31.732502, 23.380787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180722, -0.981555, 0.062371,
		0.207215, -0.023993, -0.978001,
		0.961458, 0.189671, 0.199057,
		30.529951, 31.789404, 23.440504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308537, 31.381376, 22.804544>,  <29.856932, 31.656633, 23.301165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308537, 31.381376, 22.804544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501886, 31.403675, 23.153999>,  <30.617895, 31.417055, 23.363672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501886, 31.403675, 23.153999>,  <30.308537, 31.381376, 22.804544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501886, 31.403675, 23.153999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094211, -0.995487, 0.011396,
		0.870330, 0.076798, -0.486444,
		0.483373, 0.055747, 0.873638,
		30.646898, 31.420399, 23.416090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651100, 30.824289, 22.748943>,  <30.308537, 31.381376, 22.804544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651100, 30.824289, 22.748943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691273, 30.919796, 23.135292>,  <30.715376, 30.977100, 23.367102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691273, 30.919796, 23.135292>,  <30.651100, 30.824289, 22.748943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691273, 30.919796, 23.135292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156198, -0.962524, 0.221696,
		0.982607, 0.128602, -0.133962,
		0.100431, 0.238764, 0.965870,
		30.721401, 30.991425, 23.425053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197071, 30.463369, 22.946264>,  <30.651100, 30.824289, 22.748943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197071, 30.463369, 22.946264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032221, 30.526630, 23.305183>,  <30.933311, 30.564587, 23.520535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032221, 30.526630, 23.305183>,  <31.197071, 30.463369, 22.946264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032221, 30.526630, 23.305183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180992, -0.950984, 0.250743,
		0.892969, 0.265741, 0.363301,
		-0.412126, 0.158151, 0.897296,
		30.908583, 30.574076, 23.574371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703793, 30.213373, 23.296328>,  <31.197071, 30.463369, 22.946264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703793, 30.213373, 23.296328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387218, 30.235119, 23.539860>,  <31.197273, 30.248165, 23.685980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387218, 30.235119, 23.539860>,  <31.703793, 30.213373, 23.296328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387218, 30.235119, 23.539860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226668, -0.898922, 0.374915,
		0.567673, 0.434724, 0.699116,
		-0.791435, 0.054362, 0.608832,
		31.149788, 30.251427, 23.722509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923487, 30.092693, 24.029650>,  <31.703793, 30.213373, 23.296328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923487, 30.092693, 24.029650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529911, 30.022198, 24.041023>,  <31.293766, 29.979900, 24.047848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529911, 30.022198, 24.041023>,  <31.923487, 30.092693, 24.029650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529911, 30.022198, 24.041023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172063, -0.893816, 0.414111,
		-0.047566, 0.412351, 0.909782,
		-0.983937, -0.176237, 0.028435,
		31.234730, 29.969326, 24.049553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254143, 30.579233, 24.617125>,  <31.923487, 30.092693, 24.029650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254143, 30.579233, 24.617125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595375, 30.675537, 24.802288>,  <32.800114, 30.733320, 24.913385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595375, 30.675537, 24.802288>,  <32.254143, 30.579233, 24.617125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595375, 30.675537, 24.802288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067924, 0.828386, -0.556024,
		-0.517337, 0.505777, 0.690328,
		0.853082, 0.240762, 0.462909,
		32.851299, 30.747766, 24.941160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214645, 31.291939, 24.742392>,  <32.254143, 30.579233, 24.617125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214645, 31.291939, 24.742392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604053, 31.203552, 24.765797>,  <32.837700, 31.150520, 24.779840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604053, 31.203552, 24.765797>,  <32.214645, 31.291939, 24.742392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604053, 31.203552, 24.765797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210376, 0.766019, -0.607418,
		0.089396, 0.603647, 0.792224,
		0.973525, -0.220966, 0.058513,
		32.896111, 31.137262, 24.783350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640251, 31.912849, 24.876629>,  <32.214645, 31.291939, 24.742392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640251, 31.912849, 24.876629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919510, 31.659573, 24.742970>,  <33.087067, 31.507607, 24.662773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919510, 31.659573, 24.742970>,  <32.640251, 31.912849, 24.876629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919510, 31.659573, 24.742970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515957, 0.768541, -0.378329,
		0.496362, 0.091724, 0.863256,
		0.698150, -0.633191, -0.334149,
		33.128956, 31.469616, 24.642725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315350, 32.350159, 24.943193>,  <32.640251, 31.912849, 24.876629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315350, 32.350159, 24.943193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365955, 32.055370, 24.677601>,  <33.396320, 31.878498, 24.518246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365955, 32.055370, 24.677601>,  <33.315350, 32.350159, 24.943193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365955, 32.055370, 24.677601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642540, 0.570841, -0.511159,
		0.755736, -0.361967, 0.545750,
		0.126514, -0.736967, -0.663983,
		33.403908, 31.834280, 24.478405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969769, 32.317207, 24.799433>,  <33.315350, 32.350159, 24.943193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969769, 32.317207, 24.799433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797741, 32.160240, 24.474213>,  <33.694527, 32.066059, 24.279081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797741, 32.160240, 24.474213>,  <33.969769, 32.317207, 24.799433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797741, 32.160240, 24.474213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563012, 0.587427, -0.581332,
		0.705734, -0.707767, -0.031693,
		-0.430065, -0.392422, -0.813049,
		33.668720, 32.042515, 24.230297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515057, 32.007488, 24.328653>,  <33.969769, 32.317207, 24.799433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515057, 32.007488, 24.328653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193321, 32.095810, 24.108006>,  <34.000278, 32.148804, 23.975616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193321, 32.095810, 24.108006>,  <34.515057, 32.007488, 24.328653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193321, 32.095810, 24.108006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579033, 0.499532, -0.644351,
		0.133275, -0.837683, -0.529647,
		-0.804337, 0.220807, -0.551621,
		33.952019, 32.162052, 23.942518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720448, 31.994328, 23.630768>,  <34.515057, 32.007488, 24.328653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720448, 31.994328, 23.630768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384289, 32.210972, 23.622780>,  <34.182594, 32.340958, 23.617987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384289, 32.210972, 23.622780>,  <34.720448, 31.994328, 23.630768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384289, 32.210972, 23.622780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373757, 0.552468, -0.745040,
		-0.392488, -0.633590, -0.666721,
		-0.840392, 0.541610, -0.019972,
		34.132172, 32.373455, 23.616789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784298, 32.203541, 22.963520>,  <34.720448, 31.994328, 23.630768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784298, 32.203541, 22.963520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497921, 32.432812, 23.122963>,  <34.326096, 32.570374, 23.218630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497921, 32.432812, 23.122963>,  <34.784298, 32.203541, 22.963520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497921, 32.432812, 23.122963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430316, 0.811886, -0.394551,
		-0.549772, -0.110950, -0.827914,
		-0.715947, 0.573177, 0.398609,
		34.283138, 32.604763, 23.242546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472515, 32.568581, 22.370306>,  <34.784298, 32.203541, 22.963520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472515, 32.568581, 22.370306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415714, 32.768719, 22.711948>,  <34.381634, 32.888802, 22.916933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415714, 32.768719, 22.711948>,  <34.472515, 32.568581, 22.370306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415714, 32.768719, 22.711948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452197, 0.800342, -0.393664,
		-0.880542, 0.330322, -0.339903,
		-0.142002, 0.500341, 0.854105,
		34.373112, 32.918819, 22.968180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342953, 33.317135, 22.155273>,  <34.472515, 32.568581, 22.370306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342953, 33.317135, 22.155273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430634, 33.345020, 22.544548>,  <34.483242, 33.361752, 22.778112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430634, 33.345020, 22.544548>,  <34.342953, 33.317135, 22.155273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430634, 33.345020, 22.544548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591216, 0.783977, -0.189325,
		-0.776154, 0.616864, 0.130633,
		0.219201, 0.069713, 0.973186,
		34.496395, 33.365932, 22.836504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285458, 34.030426, 22.298464>,  <34.342953, 33.317135, 22.155273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285458, 34.030426, 22.298464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495125, 33.881809, 22.604980>,  <34.620926, 33.792637, 22.788891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495125, 33.881809, 22.604980>,  <34.285458, 34.030426, 22.298464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495125, 33.881809, 22.604980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461201, 0.880282, 0.111339,
		-0.715919, 0.295053, 0.632774,
		0.524169, -0.371546, 0.766290,
		34.652374, 33.770344, 22.834867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193966, 34.520370, 22.781380>,  <34.285458, 34.030426, 22.298464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193966, 34.520370, 22.781380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533798, 34.344749, 22.898304>,  <34.737698, 34.239376, 22.968458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533798, 34.344749, 22.898304>,  <34.193966, 34.520370, 22.781380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533798, 34.344749, 22.898304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449545, 0.892605, 0.034138,
		-0.275906, 0.102404, 0.955714,
		0.849580, -0.439055, 0.292310,
		34.788673, 34.213032, 22.985996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460987, 34.888748, 23.418222>,  <34.193966, 34.520370, 22.781380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460987, 34.888748, 23.418222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772129, 34.679787, 23.278488>,  <34.958813, 34.554409, 23.194647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772129, 34.679787, 23.278488>,  <34.460987, 34.888748, 23.418222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772129, 34.679787, 23.278488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501410, 0.851003, -0.156148,
		0.378859, -0.053701, 0.923895,
		0.777852, -0.522408, -0.349336,
		35.005486, 34.523064, 23.173687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957203, 35.104046, 23.799370>,  <34.460987, 34.888748, 23.418222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957203, 35.104046, 23.799370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140427, 34.976551, 23.467445>,  <35.250359, 34.900055, 23.268291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140427, 34.976551, 23.467445>,  <34.957203, 35.104046, 23.799370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140427, 34.976551, 23.467445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305057, 0.933178, -0.190053,
		0.834939, -0.166084, 0.524683,
		0.458058, -0.318741, -0.829812,
		35.277843, 34.880928, 23.218502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738541, 34.841362, 24.525106>,  <34.957203, 35.104046, 23.799370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738541, 34.841362, 24.525106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437714, 35.099064, 24.469505>,  <34.257217, 35.253685, 24.436144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437714, 35.099064, 24.469505>,  <34.738541, 34.841362, 24.525106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437714, 35.099064, 24.469505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437226, -0.645508, -0.626221,
		-0.493175, -0.410186, 0.767154,
		-0.752071, 0.644256, -0.139005,
		34.212093, 35.292339, 24.427803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920418, 34.562214, 24.663694>,  <34.738541, 34.841362, 24.525106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920418, 34.562214, 24.663694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974926, 34.816856, 24.360073>,  <34.007629, 34.969643, 24.177900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974926, 34.816856, 24.360073>,  <33.920418, 34.562214, 24.663694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974926, 34.816856, 24.360073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420355, -0.656651, -0.626187,
		-0.897069, 0.404402, 0.178119,
		0.136269, 0.636606, -0.759054,
		34.015808, 35.007839, 24.132357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737804, 35.223602, 25.098446>,  <33.920418, 34.562214, 24.663694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737804, 35.223602, 25.098446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415215, 35.444061, 25.184082>,  <33.221661, 35.576336, 25.235464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415215, 35.444061, 25.184082>,  <33.737804, 35.223602, 25.098446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415215, 35.444061, 25.184082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145485, -0.535931, 0.831632,
		0.573089, 0.639544, 0.512398,
		-0.806476, 0.551145, 0.214092,
		33.173271, 35.609406, 25.248310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853828, 35.472412, 25.781832>,  <33.737804, 35.223602, 25.098446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853828, 35.472412, 25.781832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463581, 35.487106, 25.695274>,  <33.229435, 35.495922, 25.643339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463581, 35.487106, 25.695274>,  <33.853828, 35.472412, 25.781832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463581, 35.487106, 25.695274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205908, -0.494609, 0.844372,
		-0.076015, 0.868339, 0.490111,
		-0.975614, 0.036733, -0.216395,
		33.170898, 35.498127, 25.630356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606655, 35.650188, 26.348310>,  <33.853828, 35.472412, 25.781832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606655, 35.650188, 26.348310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292099, 35.483776, 26.165657>,  <33.103367, 35.383930, 26.056065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292099, 35.483776, 26.165657>,  <33.606655, 35.650188, 26.348310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292099, 35.483776, 26.165657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333399, -0.336460, 0.880704,
		-0.520035, 0.844817, 0.125886,
		-0.786390, -0.416027, -0.456632,
		33.056183, 35.358967, 26.028667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014286, 35.766407, 26.750822>,  <33.606655, 35.650188, 26.348310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014286, 35.766407, 26.750822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927654, 35.446934, 26.526253>,  <32.875675, 35.255249, 26.391512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927654, 35.446934, 26.526253>,  <33.014286, 35.766407, 26.750822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927654, 35.446934, 26.526253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474741, -0.416335, 0.775426,
		-0.853060, 0.434475, -0.288997,
		-0.216584, -0.798684, -0.561422,
		32.862679, 35.207329, 26.357826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386864, 35.597061, 26.978325>,  <33.014286, 35.766407, 26.750822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386864, 35.597061, 26.978325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512745, 35.275074, 26.777130>,  <32.588272, 35.081882, 26.656414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512745, 35.275074, 26.777130>,  <32.386864, 35.597061, 26.978325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512745, 35.275074, 26.777130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378306, -0.592373, 0.711322,
		-0.870543, -0.033574, -0.490945,
		0.314704, -0.804964, -0.502985,
		32.607155, 35.033585, 26.626234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905455, 35.067802, 27.106253>,  <32.386864, 35.597061, 26.978325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905455, 35.067802, 27.106253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230785, 34.861267, 26.999004>,  <32.425983, 34.737347, 26.934654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230785, 34.861267, 26.999004>,  <31.905455, 35.067802, 27.106253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230785, 34.861267, 26.999004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207793, -0.688247, 0.695081,
		-0.543433, -0.509615, -0.667063,
		0.813328, -0.516340, -0.268122,
		32.474785, 34.706364, 26.918568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682854, 34.376492, 26.961836>,  <31.905455, 35.067802, 27.106253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682854, 34.376492, 26.961836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078789, 34.362434, 27.016956>,  <32.316349, 34.354000, 27.050028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078789, 34.362434, 27.016956>,  <31.682854, 34.376492, 26.961836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078789, 34.362434, 27.016956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122310, -0.704753, 0.698830,
		0.072557, -0.708582, -0.701888,
		0.989836, -0.035143, 0.137801,
		32.375740, 34.351891, 27.058296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803066, 33.771839, 26.933598>,  <31.682854, 34.376492, 26.961836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803066, 33.771839, 26.933598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135559, 33.889595, 27.122231>,  <32.335052, 33.960251, 27.235411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135559, 33.889595, 27.122231>,  <31.803066, 33.771839, 26.933598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135559, 33.889595, 27.122231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186424, -0.651552, 0.735341,
		0.523739, -0.699152, -0.486708,
		0.831230, 0.294392, 0.471582,
		32.384930, 33.977913, 27.263704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146782, 33.147873, 27.241232>,  <31.803066, 33.771839, 26.933598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146782, 33.147873, 27.241232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323280, 33.449066, 27.436504>,  <32.429180, 33.629780, 27.553669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323280, 33.449066, 27.436504>,  <32.146782, 33.147873, 27.241232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323280, 33.449066, 27.436504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025477, -0.533275, 0.845559,
		0.897025, -0.385535, -0.216120,
		0.441244, 0.752982, 0.488183,
		32.455654, 33.674961, 27.582960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520813, 32.777634, 27.673967>,  <32.146782, 33.147873, 27.241232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520813, 32.777634, 27.673967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483177, 33.146042, 27.825161>,  <32.460594, 33.367085, 27.915876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483177, 33.146042, 27.825161>,  <32.520813, 32.777634, 27.673967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483177, 33.146042, 27.825161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225105, -0.389518, 0.893087,
		0.969781, -0.001053, 0.243977,
		-0.094093, 0.921018, 0.377984,
		32.454948, 33.422348, 27.938557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044964, 32.895016, 28.213116>,  <32.520813, 32.777634, 27.673967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044964, 32.895016, 28.213116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762154, 33.167805, 28.287987>,  <32.592468, 33.331478, 28.332909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762154, 33.167805, 28.287987>,  <33.044964, 32.895016, 28.213116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762154, 33.167805, 28.287987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161959, -0.413789, 0.895850,
		0.688393, 0.603074, 0.403010,
		-0.707025, 0.681968, 0.187176,
		32.550045, 33.372395, 28.344139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201794, 33.197426, 28.843908>,  <33.044964, 32.895016, 28.213116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201794, 33.197426, 28.843908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812214, 33.246181, 28.767422>,  <32.578465, 33.275436, 28.721531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812214, 33.246181, 28.767422>,  <33.201794, 33.197426, 28.843908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812214, 33.246181, 28.767422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221930, -0.339265, 0.914137,
		0.046552, 0.932760, 0.357479,
		-0.973951, 0.121890, -0.191214,
		32.520027, 33.282749, 28.710058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870426, 33.499866, 29.428028>,  <33.201794, 33.197426, 28.843908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870426, 33.499866, 29.428028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573410, 33.310791, 29.238209>,  <32.395199, 33.197346, 29.124317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573410, 33.310791, 29.238209>,  <32.870426, 33.499866, 29.428028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573410, 33.310791, 29.238209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300191, -0.398494, 0.866653,
		-0.598759, 0.785984, 0.154004,
		-0.742545, -0.472686, -0.474548,
		32.350647, 33.168983, 29.095844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385979, 33.475533, 29.982443>,  <32.870426, 33.499866, 29.428028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385979, 33.475533, 29.982443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226448, 33.231289, 29.708775>,  <32.130730, 33.084743, 29.544573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226448, 33.231289, 29.708775>,  <32.385979, 33.475533, 29.982443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226448, 33.231289, 29.708775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408346, -0.549771, 0.728701,
		-0.821091, 0.570004, -0.030077,
		-0.398827, -0.610612, -0.684171,
		32.106800, 33.048107, 29.503523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650190, 33.320404, 30.246376>,  <32.385979, 33.475533, 29.982443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650190, 33.320404, 30.246376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767286, 33.030281, 29.997143>,  <31.837543, 32.856209, 29.847603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767286, 33.030281, 29.997143>,  <31.650190, 33.320404, 30.246376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767286, 33.030281, 29.997143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452259, -0.679160, 0.578104,
		-0.842475, 0.112560, -0.526845,
		0.292741, -0.725309, -0.623081,
		31.855108, 32.812687, 29.810219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046490, 32.914993, 30.159840>,  <31.650190, 33.320404, 30.246376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046490, 32.914993, 30.159840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364492, 32.698742, 30.049797>,  <31.555294, 32.568989, 29.983772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364492, 32.698742, 30.049797>,  <31.046490, 32.914993, 30.159840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364492, 32.698742, 30.049797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291226, -0.738002, 0.608721,
		-0.532121, -0.403819, -0.744162,
		0.795006, -0.540633, -0.275104,
		31.602995, 32.536552, 29.967266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801449, 32.241409, 30.097017>,  <31.046490, 32.914993, 30.159840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801449, 32.241409, 30.097017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196791, 32.220356, 30.154121>,  <31.433996, 32.207722, 30.188383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196791, 32.220356, 30.154121>,  <30.801449, 32.241409, 30.097017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196791, 32.220356, 30.154121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126156, -0.808027, 0.575481,
		0.085062, -0.586790, -0.805259,
		0.988357, -0.052637, 0.142759,
		31.493298, 32.204563, 30.196949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952909, 31.607613, 30.098406>,  <30.801449, 32.241409, 30.097017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952909, 31.607613, 30.098406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272573, 31.755672, 30.287861>,  <31.464371, 31.844509, 30.401535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272573, 31.755672, 30.287861>,  <30.952909, 31.607613, 30.098406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272573, 31.755672, 30.287861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072893, -0.841786, 0.534868,
		0.596685, -0.392919, -0.699701,
		0.799158, 0.370151, 0.473640,
		31.512321, 31.866718, 30.429953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483183, 31.078135, 30.001034>,  <30.952909, 31.607613, 30.098406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483183, 31.078135, 30.001034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627338, 31.299953, 30.301060>,  <31.713831, 31.433044, 30.481075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627338, 31.299953, 30.301060>,  <31.483183, 31.078135, 30.001034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627338, 31.299953, 30.301060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166927, -0.829457, 0.533044,
		0.917745, -0.066897, -0.391497,
		0.360389, 0.554550, 0.750063,
		31.735455, 31.466318, 30.526079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120380, 30.679005, 30.301861>,  <31.483183, 31.078135, 30.001034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120380, 30.679005, 30.301861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002380, 30.924297, 30.594959>,  <31.931580, 31.071474, 30.770819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002380, 30.924297, 30.594959>,  <32.120380, 30.679005, 30.301861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002380, 30.924297, 30.594959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203535, -0.708944, 0.675257,
		0.933567, 0.348343, 0.084327,
		-0.295004, 0.613234, 0.732746,
		31.913879, 31.108267, 30.814783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650455, 30.615776, 30.783283>,  <32.120380, 30.679005, 30.301861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650455, 30.615776, 30.783283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325981, 30.754021, 30.971973>,  <32.131294, 30.836967, 31.085188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325981, 30.754021, 30.971973>,  <32.650455, 30.615776, 30.783283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325981, 30.754021, 30.971973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104217, -0.708315, 0.698161,
		0.575421, 0.615503, 0.538560,
		-0.811190, 0.345610, 0.471725,
		32.082623, 30.857704, 31.113491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729881, 30.355989, 31.399714>,  <32.650455, 30.615776, 30.783283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729881, 30.355989, 31.399714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348492, 30.475693, 31.414341>,  <32.119659, 30.547514, 31.423117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348492, 30.475693, 31.414341>,  <32.729881, 30.355989, 31.399714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348492, 30.475693, 31.414341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161919, -0.610625, 0.775190,
		0.254310, 0.733200, 0.630669,
		-0.953472, 0.299256, 0.036569,
		32.062450, 30.565470, 31.425312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567394, 30.446138, 32.128220>,  <32.729881, 30.355989, 31.399714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567394, 30.446138, 32.128220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224911, 30.378258, 31.933033>,  <32.019421, 30.337530, 31.815920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224911, 30.378258, 31.933033>,  <32.567394, 30.446138, 32.128220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224911, 30.378258, 31.933033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249940, -0.690565, 0.678712,
		-0.452151, 0.703081, 0.548851,
		-0.856206, -0.169700, -0.487968,
		31.968048, 30.327347, 31.786642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160896, 30.336348, 32.672852>,  <32.567394, 30.446138, 32.128220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160896, 30.336348, 32.672852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952391, 30.191593, 32.363705>,  <31.827288, 30.104740, 32.178215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952391, 30.191593, 32.363705>,  <32.160896, 30.336348, 32.672852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952391, 30.191593, 32.363705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397370, -0.698543, 0.595092,
		-0.755238, 0.617313, 0.220320,
		-0.521260, -0.361888, -0.772868,
		31.796013, 30.083027, 32.131844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519447, 30.215351, 32.973820>,  <32.160896, 30.336348, 32.672852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519447, 30.215351, 32.973820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538702, 29.983097, 32.648724>,  <31.550255, 29.843744, 32.453667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538702, 29.983097, 32.648724>,  <31.519447, 30.215351, 32.973820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538702, 29.983097, 32.648724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346888, -0.772756, 0.531523,
		-0.936670, 0.256344, -0.238613,
		0.048137, -0.580634, -0.812741,
		31.553143, 29.808907, 32.404900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958380, 29.720387, 33.127327>,  <31.519447, 30.215351, 32.973820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958380, 29.720387, 33.127327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189360, 29.566193, 32.839451>,  <31.327948, 29.473677, 32.666725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189360, 29.566193, 32.839451>,  <30.958380, 29.720387, 33.127327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189360, 29.566193, 32.839451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319430, -0.917916, 0.235359,
		-0.751342, 0.093983, -0.653186,
		0.577451, -0.385482, -0.719690,
		31.362595, 29.450548, 32.623543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316561, 29.889503, 32.617771>,  <30.958380, 29.720387, 33.127327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316561, 29.889503, 32.617771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925177, 29.972069, 32.618717>,  <29.690346, 30.021608, 32.619286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925177, 29.972069, 32.618717>,  <30.316561, 29.889503, 32.617771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925177, 29.972069, 32.618717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177096, 0.845280, -0.504122,
		-0.106057, -0.492845, -0.863629,
		-0.978462, 0.206411, 0.002367,
		29.631638, 30.033993, 32.619427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179157, 30.045298, 31.968145>,  <30.316561, 29.889503, 32.617771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179157, 30.045298, 31.968145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867353, 30.202637, 32.163139>,  <29.680271, 30.297041, 32.280136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867353, 30.202637, 32.163139>,  <30.179157, 30.045298, 31.968145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867353, 30.202637, 32.163139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072120, 0.829429, -0.553938,
		-0.622223, -0.396643, -0.674917,
		-0.779511, 0.393348, 0.487484,
		29.633501, 30.320641, 32.309383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818642, 30.320518, 31.415821>,  <30.179157, 30.045298, 31.968145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818642, 30.320518, 31.415821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666008, 30.508198, 31.734379>,  <29.574429, 30.620806, 31.925514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666008, 30.508198, 31.734379>,  <29.818642, 30.320518, 31.415821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666008, 30.508198, 31.734379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223827, 0.789043, -0.572112,
		-0.896826, -0.396562, -0.196064,
		-0.381582, 0.469200, 0.796396,
		29.551533, 30.648958, 31.973297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234669, 30.486914, 31.176510>,  <29.818642, 30.320518, 31.415821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234669, 30.486914, 31.176510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318644, 30.720470, 31.490196>,  <29.369028, 30.860605, 31.678408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318644, 30.720470, 31.490196>,  <29.234669, 30.486914, 31.176510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318644, 30.720470, 31.490196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382122, 0.787295, -0.483889,
		-0.899949, -0.198081, 0.388401,
		0.209937, 0.583892, 0.784217,
		29.381624, 30.895638, 31.725462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.631023, 30.958073, 31.359671>,  <29.234669, 30.486914, 31.176510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.631023, 30.958073, 31.359671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977474, 31.126896, 31.466774>,  <29.185345, 31.228189, 31.531036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977474, 31.126896, 31.466774>,  <28.631023, 30.958073, 31.359671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977474, 31.126896, 31.466774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282954, 0.855623, -0.433413,
		-0.412024, 0.299627, 0.860500,
		0.866125, 0.422058, 0.267757,
		29.237312, 31.253513, 31.547102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
