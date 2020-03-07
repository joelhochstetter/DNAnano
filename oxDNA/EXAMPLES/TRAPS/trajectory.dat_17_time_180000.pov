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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.828259, 52.985413, 50.020119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570160, 53.269398, 50.132980>,  <36.415302, 53.439789, 50.200699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570160, 53.269398, 50.132980>,  <36.828259, 52.985413, 50.020119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570160, 53.269398, 50.132980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402223, 0.629686, -0.664615,
		-0.649522, -0.315348, -0.691864,
		-0.645242, 0.709966, 0.282154,
		36.376587, 53.482388, 50.217628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163399, 53.332729, 49.605072>,  <36.828259, 52.985413, 50.020119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163399, 53.332729, 49.605072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848103, 53.538532, 49.740108>,  <36.658924, 53.662014, 49.821129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848103, 53.538532, 49.740108>,  <37.163399, 53.332729, 49.605072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848103, 53.538532, 49.740108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253935, 0.771663, -0.583141,
		-0.560533, -0.373928, -0.738905,
		-0.788238, 0.514504, 0.337589,
		36.611629, 53.692883, 49.841385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817978, 52.938633, 49.295639>,  <37.163399, 53.332729, 49.605072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817978, 52.938633, 49.295639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129959, 53.060329, 49.076878>,  <38.317150, 53.133347, 48.945621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129959, 53.060329, 49.076878>,  <37.817978, 52.938633, 49.295639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129959, 53.060329, 49.076878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425249, 0.383518, 0.819803,
		0.459166, -0.871982, 0.169749,
		0.779955, 0.304240, -0.546908,
		38.363945, 53.151600, 48.912804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516453, 52.671677, 49.418419>,  <37.817978, 52.938633, 49.295639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516453, 52.671677, 49.418419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518875, 53.056480, 49.309242>,  <38.520329, 53.287361, 49.243736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518875, 53.056480, 49.309242>,  <38.516453, 52.671677, 49.418419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518875, 53.056480, 49.309242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517810, 0.230488, 0.823861,
		0.855474, -0.146324, -0.496743,
		0.006058, 0.962011, -0.272944,
		38.520691, 53.345085, 49.227360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196095, 52.926517, 49.102989>,  <38.516453, 52.671677, 49.418419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196095, 52.926517, 49.102989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963673, 53.187103, 49.298119>,  <38.824219, 53.343452, 49.415195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963673, 53.187103, 49.298119>,  <39.196095, 52.926517, 49.102989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963673, 53.187103, 49.298119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697254, 0.089317, 0.711238,
		0.419773, 0.753406, -0.506132,
		-0.581057, 0.651461, 0.487823,
		38.789356, 53.382542, 49.444466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078758, 52.834023, 49.824574>,  <39.196095, 52.926517, 49.102989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078758, 52.834023, 49.824574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414654, 53.045666, 49.775776>,  <39.616192, 53.172653, 49.746498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414654, 53.045666, 49.775776>,  <39.078758, 52.834023, 49.824574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414654, 53.045666, 49.775776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476152, -0.609551, 0.633820,
		0.261002, -0.590328, -0.763800,
		0.839737, 0.529113, -0.121992,
		39.666576, 53.204399, 49.739178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607616, 52.301399, 49.693756>,  <39.078758, 52.834023, 49.824574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607616, 52.301399, 49.693756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744751, 52.631920, 49.872505>,  <39.827034, 52.830231, 49.979755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744751, 52.631920, 49.872505>,  <39.607616, 52.301399, 49.693756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744751, 52.631920, 49.872505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686965, -0.544992, 0.480690,
		0.640734, 0.142184, -0.754483,
		0.342841, 0.826297, 0.446871,
		39.847603, 52.879810, 50.006565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922932, 51.946316, 49.139355>,  <39.607616, 52.301399, 49.693756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922932, 51.946316, 49.139355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288197, 51.792488, 49.085331>,  <40.507355, 51.700191, 49.052917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288197, 51.792488, 49.085331>,  <39.922932, 51.946316, 49.139355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288197, 51.792488, 49.085331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352492, -0.911471, 0.212062,
		-0.204653, -0.146041, -0.967879,
		0.913163, -0.384568, -0.135057,
		40.562145, 51.677116, 49.044815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965099, 51.422413, 48.515507>,  <39.922932, 51.946316, 49.139355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965099, 51.422413, 48.515507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190918, 51.391960, 48.844261>,  <40.326408, 51.373688, 49.041515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190918, 51.391960, 48.844261>,  <39.965099, 51.422413, 48.515507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190918, 51.391960, 48.844261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517562, -0.808318, 0.280628,
		0.642979, -0.583803, -0.495734,
		0.564542, -0.076135, 0.821885,
		40.360279, 51.369118, 49.090828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228664, 50.665199, 48.759998>,  <39.965099, 51.422413, 48.515507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228664, 50.665199, 48.759998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270752, 50.863007, 49.105106>,  <40.296005, 50.981693, 49.312172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270752, 50.863007, 49.105106>,  <40.228664, 50.665199, 48.759998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270752, 50.863007, 49.105106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299522, -0.811541, 0.501684,
		0.948270, -0.311206, 0.062731,
		0.105219, 0.494522, 0.862773,
		40.302319, 51.011364, 49.363937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664864, 50.300289, 49.143383>,  <40.228664, 50.665199, 48.759998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664864, 50.300289, 49.143383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399651, 50.517639, 49.349350>,  <40.240524, 50.648048, 49.472931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399651, 50.517639, 49.349350>,  <40.664864, 50.300289, 49.143383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399651, 50.517639, 49.349350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283056, -0.818753, 0.499523,
		0.693013, 0.185450, 0.696664,
		-0.663033, 0.543371, 0.514913,
		40.200741, 50.680649, 49.503822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993073, 50.363609, 49.736687>,  <40.664864, 50.300289, 49.143383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993073, 50.363609, 49.736687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153164, 50.318794, 49.372871>,  <41.249218, 50.291904, 49.154583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153164, 50.318794, 49.372871>,  <40.993073, 50.363609, 49.736687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153164, 50.318794, 49.372871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804746, 0.517774, 0.290334,
		0.438408, -0.848150, 0.297390,
		0.400227, -0.112039, -0.909541,
		41.273232, 50.285183, 49.100010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713078, 50.024349, 49.773659>,  <40.993073, 50.363609, 49.736687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713078, 50.024349, 49.773659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663750, 50.284042, 49.473450>,  <41.634151, 50.439857, 49.293324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663750, 50.284042, 49.473450>,  <41.713078, 50.024349, 49.773659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663750, 50.284042, 49.473450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651991, 0.623169, 0.431937,
		0.748131, -0.436065, -0.500148,
		-0.123324, 0.649237, -0.750521,
		41.626751, 50.478813, 49.248295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276886, 50.175091, 49.145096>,  <41.713078, 50.024349, 49.773659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276886, 50.175091, 49.145096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.052605, 50.462273, 49.310093>,  <41.918037, 50.634583, 49.409092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.052605, 50.462273, 49.310093>,  <42.276886, 50.175091, 49.145096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.052605, 50.462273, 49.310093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806822, 0.361729, 0.467108,
		0.186153, 0.594717, -0.782086,
		-0.560701, 0.717958, 0.412494,
		41.884396, 50.677662, 49.433842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631596, 50.795818, 49.022385>,  <42.276886, 50.175091, 49.145096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631596, 50.795818, 49.022385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383987, 50.846218, 49.332466>,  <42.235420, 50.876457, 49.518513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383987, 50.846218, 49.332466>,  <42.631596, 50.795818, 49.022385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.383987, 50.846218, 49.332466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785369, 0.096253, 0.611499,
		0.002432, 0.987350, -0.158538,
		-0.619024, 0.125997, 0.775200,
		42.198280, 50.884018, 49.565025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024097, 51.070629, 48.409508>,  <42.631596, 50.795818, 49.022385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024097, 51.070629, 48.409508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378975, 51.247604, 48.461876>,  <43.591900, 51.353790, 48.493298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378975, 51.247604, 48.461876>,  <43.024097, 51.070629, 48.409508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378975, 51.247604, 48.461876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421031, 0.892363, -0.162542,
		-0.188748, 0.089082, 0.977977,
		0.887191, 0.442439, 0.130925,
		43.645130, 51.380337, 48.501152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969971, 51.678085, 48.710587>,  <43.024097, 51.070629, 48.409508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.969971, 51.678085, 48.710587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.314342, 51.738594, 48.516300>,  <43.520966, 51.774899, 48.399731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.314342, 51.738594, 48.516300>,  <42.969971, 51.678085, 48.710587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314342, 51.738594, 48.516300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318271, 0.905000, -0.282275,
		0.396867, 0.397607, 0.827288,
		0.860930, 0.151276, -0.485711,
		43.572620, 51.783978, 48.370586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.360863, 52.147888, 49.052990>,  <42.969971, 51.678085, 48.710587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.360863, 52.147888, 49.052990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529015, 51.808556, 49.181740>,  <43.629906, 51.604954, 49.258991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529015, 51.808556, 49.181740>,  <43.360863, 52.147888, 49.052990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529015, 51.808556, 49.181740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905332, 0.368545, -0.211066,
		0.060428, 0.380136, 0.922954,
		0.420384, -0.848334, 0.321879,
		43.655128, 51.554054, 49.278305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740608, 52.421844, 49.581497>,  <43.360863, 52.147888, 49.052990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740608, 52.421844, 49.581497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.868877, 52.094154, 49.391327>,  <43.945839, 51.897541, 49.277225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.868877, 52.094154, 49.391327>,  <43.740608, 52.421844, 49.581497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.868877, 52.094154, 49.391327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833346, 0.482602, -0.269500,
		0.450225, -0.309776, 0.837458,
		0.320674, -0.819228, -0.475430,
		43.965080, 51.848385, 49.248699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.280811, 52.311646, 49.750435>,  <43.740608, 52.421844, 49.581497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.280811, 52.311646, 49.750435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.300850, 52.132633, 49.393288>,  <44.312874, 52.025227, 49.179001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.300850, 52.132633, 49.393288>,  <44.280811, 52.311646, 49.750435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300850, 52.132633, 49.393288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929671, 0.347584, -0.122055,
		0.364969, -0.823955, 0.433469,
		0.050099, -0.447530, -0.892864,
		44.315880, 51.998375, 49.125427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.901226, 51.838486, 49.804070>,  <44.280811, 52.311646, 49.750435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.901226, 51.838486, 49.804070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.826160, 51.946041, 49.426186>,  <44.781120, 52.010574, 49.199455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.826160, 51.946041, 49.426186>,  <44.901226, 51.838486, 49.804070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.826160, 51.946041, 49.426186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948147, 0.300769, -0.102737,
		0.256516, -0.915006, -0.311390,
		-0.187662, 0.268890, -0.944712,
		44.769863, 52.026707, 49.142773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512810, 52.381199, 49.934151>,  <44.901226, 51.838486, 49.804070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512810, 52.381199, 49.934151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.250824, 52.676952, 49.996536>,  <45.093632, 52.854404, 50.033966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.250824, 52.676952, 49.996536>,  <45.512810, 52.381199, 49.934151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.250824, 52.676952, 49.996536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612731, 0.640442, -0.463028,
		-0.442241, -0.207706, -0.872514,
		-0.654969, 0.739386, 0.155962,
		45.054333, 52.898769, 50.043324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.152798, 52.116360, 49.654469>,  <45.512810, 52.381199, 49.934151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.152798, 52.116360, 49.654469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.288494, 52.419331, 49.877617>,  <46.369911, 52.601112, 50.011505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.288494, 52.419331, 49.877617>,  <46.152798, 52.116360, 49.654469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.288494, 52.419331, 49.877617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824743, 0.045763, -0.563653,
		-0.452455, 0.651316, -0.609156,
		0.339239, 0.757425, 0.557874,
		46.390266, 52.646557, 50.044979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.295101, 52.788952, 49.335320>,  <46.152798, 52.116360, 49.654469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.295101, 52.788952, 49.335320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.576698, 52.750656, 49.616810>,  <46.745655, 52.727680, 49.785706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.576698, 52.750656, 49.616810>,  <46.295101, 52.788952, 49.335320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.576698, 52.750656, 49.616810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707460, 0.007402, -0.706714,
		0.062452, 0.995379, 0.072944,
		0.703988, -0.095740, 0.703729,
		46.787895, 52.721935, 49.827927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.761105, 53.209866, 49.212227>,  <46.295101, 52.788952, 49.335320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.761105, 53.209866, 49.212227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934509, 52.923126, 49.430656>,  <47.038551, 52.751083, 49.561714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934509, 52.923126, 49.430656>,  <46.761105, 53.209866, 49.212227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.934509, 52.923126, 49.430656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801063, 0.028991, -0.597877,
		0.412757, 0.696625, 0.586810,
		0.433508, -0.716849, 0.546075,
		47.064560, 52.708073, 49.594479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.353745, 53.447716, 49.736938>,  <46.761105, 53.209866, 49.212227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.353745, 53.447716, 49.736938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.392483, 53.078384, 49.588303>,  <47.415726, 52.856785, 49.499119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.392483, 53.078384, 49.588303>,  <47.353745, 53.447716, 49.736938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.392483, 53.078384, 49.588303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887383, 0.249179, -0.387892,
		0.450746, -0.292182, 0.843479,
		0.096842, -0.923331, -0.371594,
		47.421535, 52.801384, 49.476826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.988235, 53.033688, 50.022182>,  <47.353745, 53.447716, 49.736938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.988235, 53.033688, 50.022182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.873104, 52.949165, 49.648552>,  <47.804024, 52.898453, 49.424374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.873104, 52.949165, 49.648552>,  <47.988235, 53.033688, 50.022182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.873104, 52.949165, 49.648552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914876, 0.227676, -0.333416,
		0.283119, -0.950534, 0.127783,
		-0.287830, -0.211302, -0.934080,
		47.786755, 52.885777, 49.368328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.348339, 52.402767, 49.705616>,  <47.988235, 53.033688, 50.022182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.348339, 52.402767, 49.705616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.265472, 52.706535, 49.458923>,  <48.215752, 52.888798, 49.310905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.265472, 52.706535, 49.458923>,  <48.348339, 52.402767, 49.705616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.265472, 52.706535, 49.458923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974531, 0.215528, -0.061954,
		0.085874, -0.613860, -0.784730,
		-0.207162, 0.759423, -0.616733,
		48.203323, 52.934361, 49.273903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.577721, 52.187859, 49.065964>,  <48.348339, 52.402767, 49.705616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.577721, 52.187859, 49.065964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.601704, 52.584564, 49.111233>,  <48.616093, 52.822586, 49.138393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.601704, 52.584564, 49.111233>,  <48.577721, 52.187859, 49.065964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.601704, 52.584564, 49.111233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942117, -0.093689, 0.321927,
		0.329879, 0.087322, -0.939976,
		0.059954, 0.991765, 0.113173,
		48.619690, 52.882095, 49.145184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.132534, 52.461864, 48.668240>,  <48.577721, 52.187859, 49.065964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.132534, 52.461864, 48.668240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.051853, 52.648041, 49.012955>,  <49.003445, 52.759747, 49.219784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.051853, 52.648041, 49.012955>,  <49.132534, 52.461864, 48.668240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.051853, 52.648041, 49.012955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854657, -0.346134, 0.386979,
		0.478412, 0.814587, -0.327980,
		-0.201703, 0.465445, 0.861787,
		48.991341, 52.787674, 49.271492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.585247, 53.057587, 48.722248>,  <49.132534, 52.461864, 48.668240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.585247, 53.057587, 48.722248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.512318, 52.907867, 49.085930>,  <49.468559, 52.818035, 49.304138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.512318, 52.907867, 49.085930>,  <49.585247, 53.057587, 48.722248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.512318, 52.907867, 49.085930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972593, -0.204362, 0.110904,
		0.144295, 0.904508, 0.401302,
		-0.182325, -0.374301, 0.909207,
		49.457619, 52.795578, 49.358692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.249981, 53.145676, 49.020523>,  <49.585247, 53.057587, 48.722248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.249981, 53.145676, 49.020523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.054180, 52.936707, 49.299797>,  <49.936699, 52.811325, 49.467361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.054180, 52.936707, 49.299797>,  <50.249981, 53.145676, 49.020523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.054180, 52.936707, 49.299797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871973, -0.286451, 0.397000,
		-0.007404, 0.803132, 0.595755,
		-0.489498, -0.522421, 0.698189,
		49.907330, 52.779980, 49.509254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.725166, 53.118553, 49.472961>,  <50.249981, 53.145676, 49.020523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.725166, 53.118553, 49.472961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.467556, 52.845490, 49.611069>,  <50.312988, 52.681652, 49.693932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.467556, 52.845490, 49.611069>,  <50.725166, 53.118553, 49.472961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.467556, 52.845490, 49.611069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721263, -0.391423, 0.571462,
		-0.254966, 0.617065, 0.744461,
		-0.644028, -0.682656, 0.345267,
		50.274349, 52.640694, 49.714649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.607140, 53.057709, 50.234062>,  <50.725166, 53.118553, 49.472961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.607140, 53.057709, 50.234062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.604336, 52.691189, 50.073891>,  <50.602654, 52.471275, 49.977787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.604336, 52.691189, 50.073891>,  <50.607140, 53.057709, 50.234062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.604336, 52.691189, 50.073891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809920, -0.240069, 0.535160,
		-0.586498, -0.320563, 0.743814,
		-0.007014, -0.916301, -0.400430,
		50.602230, 52.416298, 49.953762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.647472, 52.605404, 50.741978>,  <50.607140, 53.057709, 50.234062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.647472, 52.605404, 50.741978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.815090, 52.437439, 50.419968>,  <50.915661, 52.336658, 50.226761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.815090, 52.437439, 50.419968>,  <50.647472, 52.605404, 50.741978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.815090, 52.437439, 50.419968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788220, -0.271846, 0.552095,
		-0.450678, -0.865892, 0.217071,
		0.419045, -0.419917, -0.805029,
		50.940804, 52.311462, 50.178459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.890991, 51.839592, 50.858692>,  <50.647472, 52.605404, 50.741978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.890991, 51.839592, 50.858692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.103134, 52.071671, 50.611435>,  <51.230419, 52.210918, 50.463081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.103134, 52.071671, 50.611435>,  <50.890991, 51.839592, 50.858692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.103134, 52.071671, 50.611435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772979, -0.031490, 0.633650,
		0.348176, -0.813868, -0.465180,
		0.530356, 0.580196, -0.618139,
		51.262241, 52.245728, 50.425995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.500195, 51.609489, 51.026886>,  <50.890991, 51.839592, 50.858692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.500195, 51.609489, 51.026886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.572849, 51.949341, 50.828842>,  <51.616440, 52.153252, 50.710014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.572849, 51.949341, 50.828842>,  <51.500195, 51.609489, 51.026886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.572849, 51.949341, 50.828842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839956, 0.127771, 0.527398,
		0.511355, -0.511665, -0.690446,
		0.181632, 0.849632, -0.495112,
		51.627338, 52.204231, 50.680309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.082737, 51.559608, 50.337025>,  <51.500195, 51.609489, 51.026886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.082737, 51.559608, 50.337025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.057789, 51.893093, 50.556496>,  <52.042820, 52.093182, 50.688179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.057789, 51.893093, 50.556496>,  <52.082737, 51.559608, 50.337025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.057789, 51.893093, 50.556496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827519, -0.264140, 0.495422,
		0.557964, 0.484936, -0.673434,
		-0.062367, 0.833707, 0.548674,
		52.039078, 52.143204, 50.721096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.691509, 51.809822, 50.375751>,  <52.082737, 51.559608, 50.337025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.691509, 51.809822, 50.375751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.488419, 51.932419, 50.697815>,  <52.366562, 52.005978, 50.891052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.488419, 51.932419, 50.697815>,  <52.691509, 51.809822, 50.375751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.488419, 51.932419, 50.697815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755056, -0.291728, 0.587184,
		0.414851, 0.906068, -0.083296,
		-0.507729, 0.306487, 0.805157,
		52.336102, 52.024364, 50.939362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.053238, 52.291927, 50.803337>,  <52.691509, 51.809822, 50.375751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.053238, 52.291927, 50.803337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.780788, 52.147861, 51.058319>,  <52.617321, 52.061420, 51.211308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.780788, 52.147861, 51.058319>,  <53.053238, 52.291927, 50.803337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.780788, 52.147861, 51.058319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715824, -0.144628, 0.683139,
		-0.153848, 0.921609, 0.356324,
		-0.681121, -0.360165, 0.637460,
		52.576450, 52.039810, 51.249557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.184654, 52.706985, 51.483440>,  <53.053238, 52.291927, 50.803337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.184654, 52.706985, 51.483440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.006199, 52.350819, 51.519493>,  <52.899124, 52.137119, 51.541126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.006199, 52.350819, 51.519493>,  <53.184654, 52.706985, 51.483440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.006199, 52.350819, 51.519493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595804, -0.220347, 0.772312,
		-0.667816, 0.398260, 0.628817,
		-0.446139, -0.890414, 0.090134,
		52.872356, 52.083694, 51.546532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.557888, 52.510830, 52.124905>,  <53.184654, 52.706985, 51.483440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.557888, 52.510830, 52.124905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.858826, 52.744301, 52.247078>,  <54.039391, 52.884384, 52.320381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.858826, 52.744301, 52.247078>,  <53.557888, 52.510830, 52.124905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.858826, 52.744301, 52.247078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465068, 0.142220, 0.873776,
		0.466567, -0.799432, 0.378450,
		0.752348, 0.583680, 0.305435,
		54.084530, 52.919403, 52.338707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.863888, 52.271511, 52.668140>,  <53.557888, 52.510830, 52.124905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.863888, 52.271511, 52.668140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.866940, 52.671490, 52.665451>,  <53.868771, 52.911476, 52.663837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.866940, 52.671490, 52.665451>,  <53.863888, 52.271511, 52.668140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.866940, 52.671490, 52.665451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696986, 0.010139, 0.717013,
		0.717044, -0.000779, 0.697028,
		0.007626, 0.999948, -0.006727,
		53.869228, 52.971474, 52.663433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.940208, 52.494152, 53.378750>,  <53.863888, 52.271511, 52.668140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.940208, 52.494152, 53.378750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.761002, 52.758961, 53.138412>,  <53.653477, 52.917847, 52.994209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.761002, 52.758961, 53.138412>,  <53.940208, 52.494152, 53.378750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.761002, 52.758961, 53.138412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714970, 0.138179, 0.685365,
		0.536748, 0.736639, 0.411417,
		-0.448018, 0.662019, -0.600842,
		53.626595, 52.957565, 52.958160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.653572, 52.988731, 53.860157>,  <53.940208, 52.494152, 53.378750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.653572, 52.988731, 53.860157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.452244, 53.057293, 53.521385>,  <53.331448, 53.098431, 53.318123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.452244, 53.057293, 53.521385>,  <53.653572, 52.988731, 53.860157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.452244, 53.057293, 53.521385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825501, 0.194291, 0.529904,
		0.255380, 0.965852, 0.043705,
		-0.503318, 0.171405, -0.846931,
		53.301247, 53.108715, 53.267307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.291786, 52.679684, 54.062168>,  <53.653572, 52.988731, 53.860157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.291786, 52.679684, 54.062168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.418251, 52.506905, 54.400036>,  <54.494129, 52.403236, 54.602757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.418251, 52.506905, 54.400036>,  <54.291786, 52.679684, 54.062168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.418251, 52.506905, 54.400036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206535, -0.837647, -0.505658,
		0.925952, 0.334323, -0.175618,
		0.316159, -0.431944, 0.844670,
		54.513100, 52.377323, 54.653439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.837299, 53.043602, 54.510464>,  <54.291786, 52.679684, 54.062168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.837299, 53.043602, 54.510464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.065323, 52.947842, 54.824844>,  <55.202137, 52.890385, 55.013474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.065323, 52.947842, 54.824844>,  <54.837299, 53.043602, 54.510464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.065323, 52.947842, 54.824844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009866, 0.954542, 0.297914,
		-0.821545, -0.177583, 0.541782,
		0.570058, -0.239405, 0.785951,
		55.236340, 52.876019, 55.060631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.644341, 53.420151, 54.998352>,  <54.837299, 53.043602, 54.510464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.644341, 53.420151, 54.998352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.478935, 53.773190, 55.087814>,  <54.379692, 53.985012, 55.141491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.478935, 53.773190, 55.087814>,  <54.644341, 53.420151, 54.998352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.478935, 53.773190, 55.087814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894409, 0.439736, -0.081632,
		-0.170397, 0.166282, -0.971244,
		-0.413517, 0.882600, 0.223654,
		54.354881, 54.037968, 55.154911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.020435, 54.041588, 54.497318>,  <54.644341, 53.420151, 54.998352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.020435, 54.041588, 54.497318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.845566, 54.191780, 54.824219>,  <54.740646, 54.281895, 55.020359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.845566, 54.191780, 54.824219>,  <55.020435, 54.041588, 54.497318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.845566, 54.191780, 54.824219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854421, 0.457092, 0.247046,
		-0.280797, 0.806276, -0.520647,
		-0.437171, 0.375482, 0.817249,
		54.714413, 54.304424, 55.069393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.177010, 54.742733, 54.569397>,  <55.020435, 54.041588, 54.497318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.177010, 54.742733, 54.569397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.097656, 54.614330, 54.939823>,  <55.050045, 54.537289, 55.162079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.097656, 54.614330, 54.939823>,  <55.177010, 54.742733, 54.569397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.097656, 54.614330, 54.939823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866079, 0.384928, 0.318962,
		-0.458857, 0.865325, 0.201651,
		-0.198384, -0.321004, 0.926067,
		55.038139, 54.518028, 55.217644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.314793, 55.261127, 55.088943>,  <55.177010, 54.742733, 54.569397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.314793, 55.261127, 55.088943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.419960, 54.935883, 55.296684>,  <55.483059, 54.740734, 55.421329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.419960, 54.935883, 55.296684>,  <55.314793, 55.261127, 55.088943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.419960, 54.935883, 55.296684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702165, 0.530425, 0.474988,
		-0.661695, 0.239789, 0.710395,
		0.262914, -0.813112, 0.519351,
		55.498833, 54.691948, 55.452488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.304474, 55.433861, 55.716030>,  <55.314793, 55.261127, 55.088943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.304474, 55.433861, 55.716030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.571503, 55.136452, 55.700462>,  <55.731720, 54.958008, 55.691120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.571503, 55.136452, 55.700462>,  <55.304474, 55.433861, 55.716030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.571503, 55.136452, 55.700462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679924, 0.587503, 0.438798,
		-0.303390, -0.319394, 0.897743,
		0.667576, -0.743524, -0.038921,
		55.771774, 54.913395, 55.688786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.519585, 55.457092, 56.359753>,  <55.304474, 55.433861, 55.716030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.519585, 55.457092, 56.359753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.798088, 55.342960, 56.096298>,  <55.965191, 55.274483, 55.938225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.798088, 55.342960, 56.096298>,  <55.519585, 55.457092, 56.359753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.798088, 55.342960, 56.096298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609804, 0.719161, 0.333088,
		0.378628, -0.633557, 0.674719,
		0.696262, -0.285330, -0.658640,
		56.006966, 55.257362, 55.898705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.158039, 55.319485, 56.686974>,  <55.519585, 55.457092, 56.359753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.158039, 55.319485, 56.686974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.261993, 55.449261, 56.323174>,  <56.324368, 55.527126, 56.104893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.261993, 55.449261, 56.323174>,  <56.158039, 55.319485, 56.686974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.261993, 55.449261, 56.323174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572675, 0.706573, 0.415689,
		0.777497, -0.628883, -0.002170,
		0.259886, 0.324440, -0.909505,
		56.339958, 55.546593, 56.050323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.810673, 55.319206, 56.504662>,  <56.158039, 55.319485, 56.686974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.810673, 55.319206, 56.504662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.659416, 55.629162, 56.302055>,  <56.568665, 55.815136, 56.180492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.659416, 55.629162, 56.302055>,  <56.810673, 55.319206, 56.504662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.659416, 55.629162, 56.302055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594187, 0.622723, 0.509076,
		0.709896, -0.108464, -0.695904,
		-0.378139, 0.774888, -0.506517,
		56.545975, 55.861629, 56.150101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.368732, 55.676548, 56.450348>,  <56.810673, 55.319206, 56.504662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.368732, 55.676548, 56.450348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.048149, 55.903492, 56.374695>,  <56.855801, 56.039658, 56.329304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.048149, 55.903492, 56.374695>,  <57.368732, 55.676548, 56.450348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.048149, 55.903492, 56.374695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401842, 0.745098, 0.532308,
		0.442930, 0.350622, -0.825153,
		-0.801459, 0.567356, -0.189131,
		56.807713, 56.073700, 56.317955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.769848, 55.693405, 56.999012>,  <57.368732, 55.676548, 56.450348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.769848, 55.693405, 56.999012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.651062, 55.402000, 56.752083>,  <57.579792, 55.227158, 56.603928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.651062, 55.402000, 56.752083>,  <57.769848, 55.693405, 56.999012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.651062, 55.402000, 56.752083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577269, 0.378008, -0.723789,
		0.760640, -0.571298, 0.308293,
		-0.296962, -0.728511, -0.617321,
		57.561974, 55.183449, 56.566887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.237595, 55.113842, 56.829540>,  <57.769848, 55.693405, 56.999012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.237595, 55.113842, 56.829540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.002205, 55.249069, 56.535759>,  <57.860973, 55.330204, 56.359489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.002205, 55.249069, 56.535759>,  <58.237595, 55.113842, 56.829540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.002205, 55.249069, 56.535759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804068, 0.339886, -0.487803,
		0.084720, -0.877604, -0.471840,
		-0.588470, 0.338064, -0.734449,
		57.825665, 55.350487, 56.315426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.570599, 54.760616, 56.150490>,  <58.237595, 55.113842, 56.829540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.570599, 54.760616, 56.150490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.390457, 55.117302, 56.132454>,  <58.282372, 55.331314, 56.121632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.390457, 55.117302, 56.132454>,  <58.570599, 54.760616, 56.150490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.390457, 55.117302, 56.132454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841295, 0.406896, -0.355891,
		-0.299004, -0.198212, -0.933439,
		-0.450355, 0.891710, -0.045091,
		58.255352, 55.384815, 56.118927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.686802, 55.022915, 55.365345>,  <58.570599, 54.760616, 56.150490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.686802, 55.022915, 55.365345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.630623, 55.298588, 55.649681>,  <58.596916, 55.463993, 55.820282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.630623, 55.298588, 55.649681>,  <58.686802, 55.022915, 55.365345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.630623, 55.298588, 55.649681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853481, 0.448185, -0.265895,
		-0.501840, 0.569345, -0.651155,
		-0.140452, 0.689185, 0.710842,
		58.588486, 55.505344, 55.862934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.647762, 55.641193, 54.981834>,  <58.686802, 55.022915, 55.365345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.647762, 55.641193, 54.981834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.797630, 55.674538, 55.351196>,  <58.887550, 55.694542, 55.572815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.797630, 55.674538, 55.351196>,  <58.647762, 55.641193, 54.981834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.797630, 55.674538, 55.351196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816362, 0.442470, -0.371177,
		-0.439519, 0.892901, 0.097731,
		0.374667, 0.083356, 0.923405,
		58.910030, 55.699543, 55.628220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.844093, 56.409798, 55.108170>,  <58.647762, 55.641193, 54.981834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.844093, 56.409798, 55.108170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.039932, 56.110264, 55.286850>,  <59.157436, 55.930542, 55.394058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.039932, 56.110264, 55.286850>,  <58.844093, 56.409798, 55.108170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.039932, 56.110264, 55.286850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841656, 0.271995, -0.466512,
		0.227841, 0.604370, 0.763430,
		0.489596, -0.748836, 0.446700,
		59.186810, 55.885612, 55.420860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.454487, 56.627144, 55.361477>,  <58.844093, 56.409798, 55.108170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.454487, 56.627144, 55.361477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.500961, 56.237915, 55.281837>,  <59.528847, 56.004379, 55.234055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.500961, 56.237915, 55.281837>,  <59.454487, 56.627144, 55.361477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.500961, 56.237915, 55.281837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834990, 0.204243, -0.510956,
		0.537859, -0.106877, 0.836233,
		0.116185, -0.973068, -0.199096,
		59.535816, 55.945995, 55.222107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.336414, 56.489193, 55.470303>,  <59.454487, 56.627144, 55.361477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.336414, 56.489193, 55.470303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.132027, 56.272705, 55.203171>,  <60.009392, 56.142815, 55.042892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.132027, 56.272705, 55.203171>,  <60.336414, 56.489193, 55.470303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.132027, 56.272705, 55.203171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760786, 0.076915, -0.644430,
		0.400141, -0.837359, 0.372448,
		-0.510972, -0.541215, -0.667827,
		59.978737, 56.110340, 55.002823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.998882, 56.045502, 56.048054>,  <60.336414, 56.489193, 55.470303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.998882, 56.045502, 56.048054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.951103, 55.974113, 56.438721>,  <59.922436, 55.931282, 56.673122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.951103, 55.974113, 56.438721>,  <59.998882, 56.045502, 56.048054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.951103, 55.974113, 56.438721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982054, 0.123372, 0.142649,
		-0.145952, 0.976180, 0.160532,
		-0.119446, -0.178471, 0.976668,
		59.915268, 55.920570, 56.731720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.279675, 56.604710, 56.491104>,  <59.998882, 56.045502, 56.048054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.279675, 56.604710, 56.491104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.335564, 56.240517, 56.646797>,  <60.369099, 56.022003, 56.740211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.335564, 56.240517, 56.646797>,  <60.279675, 56.604710, 56.491104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.335564, 56.240517, 56.646797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988234, 0.152922, 0.002961,
		-0.062218, 0.384241, 0.921134,
		0.139724, -0.910480, 0.389234,
		60.377480, 55.967373, 56.763569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.679405, 56.674419, 57.038982>,  <60.279675, 56.604710, 56.491104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.679405, 56.674419, 57.038982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.732872, 56.286453, 56.957603>,  <60.764954, 56.053673, 56.908775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.732872, 56.286453, 56.957603>,  <60.679405, 56.674419, 57.038982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.732872, 56.286453, 56.957603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989699, 0.141266, -0.023219,
		0.051260, -0.198245, 0.978811,
		0.133670, -0.969919, -0.203445,
		60.772972, 55.995476, 56.896568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.200665, 56.428181, 57.557301>,  <60.679405, 56.674419, 57.038982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.200665, 56.428181, 57.557301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.178375, 56.186489, 57.239357>,  <61.165001, 56.041473, 57.048592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.178375, 56.186489, 57.239357>,  <61.200665, 56.428181, 57.557301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.178375, 56.186489, 57.239357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998284, -0.019357, -0.055269,
		0.018009, -0.796574, 0.604272,
		-0.055723, -0.604231, -0.794859,
		61.161659, 56.005219, 57.000900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.647118, 55.987274, 57.737907>,  <61.200665, 56.428181, 57.557301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.647118, 55.987274, 57.737907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.594872, 55.953266, 57.342796>,  <61.563522, 55.932861, 57.105728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.594872, 55.953266, 57.342796>,  <61.647118, 55.987274, 57.737907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.594872, 55.953266, 57.342796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984099, -0.132077, -0.118764,
		-0.120366, -0.987587, 0.100918,
		-0.130619, -0.085018, -0.987781,
		61.555687, 55.927761, 57.046463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.870911, 55.327923, 57.503708>,  <61.647118, 55.987274, 57.737907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.870911, 55.327923, 57.503708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.903313, 55.592388, 57.205368>,  <61.922756, 55.751068, 57.026363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.903313, 55.592388, 57.205368>,  <61.870911, 55.327923, 57.503708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.903313, 55.592388, 57.205368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923908, -0.330559, -0.192679,
		-0.373941, -0.673490, -0.637636,
		0.081009, 0.661167, -0.745852,
		61.927616, 55.790737, 56.981613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.845715, 54.571461, 57.720119>,  <61.870911, 55.327923, 57.503708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.845715, 54.571461, 57.720119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.986473, 54.282257, 57.957916>,  <62.070927, 54.108734, 58.100594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.986473, 54.282257, 57.957916>,  <61.845715, 54.571461, 57.720119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.986473, 54.282257, 57.957916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832308, -0.532290, -0.154697,
		0.428290, -0.440362, -0.789081,
		0.351897, -0.723014, 0.594491,
		62.092041, 54.065353, 58.136265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.548988, 54.661381, 57.532719>,  <61.845715, 54.571461, 57.720119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.548988, 54.661381, 57.532719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.635696, 54.424145, 57.222557>,  <62.687721, 54.281803, 57.036461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.635696, 54.424145, 57.222557>,  <62.548988, 54.661381, 57.532719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.635696, 54.424145, 57.222557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368765, 0.785188, -0.497486,
		0.903893, -0.178101, 0.388918,
		0.216771, -0.593094, -0.775403,
		62.700729, 54.246216, 56.989937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.773869, 55.326027, 57.530178>,  <62.548988, 54.661381, 57.532719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.773869, 55.326027, 57.530178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.891472, 55.410011, 57.157196>,  <62.962032, 55.460403, 56.933407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.891472, 55.410011, 57.157196>,  <62.773869, 55.326027, 57.530178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.891472, 55.410011, 57.157196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955620, -0.045500, 0.291066,
		0.018687, -0.976649, -0.214024,
		0.294008, 0.209965, -0.932456,
		62.979675, 55.473000, 56.877460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.223858, 54.823784, 57.389675>,  <62.773869, 55.326027, 57.530178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.223858, 54.823784, 57.389675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.288483, 55.152676, 57.171379>,  <63.327259, 55.350010, 57.040401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.288483, 55.152676, 57.171379>,  <63.223858, 54.823784, 57.389675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.288483, 55.152676, 57.171379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955865, 0.007126, 0.293721,
		0.245396, -0.569107, -0.784792,
		0.161566, 0.822233, -0.545738,
		63.336952, 55.399345, 57.007656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.852859, 54.676838, 56.996181>,  <63.223858, 54.823784, 57.389675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.852859, 54.676838, 56.996181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.775375, 55.067142, 57.036896>,  <63.728886, 55.301327, 57.061325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.775375, 55.067142, 57.036896>,  <63.852859, 54.676838, 56.996181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.775375, 55.067142, 57.036896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903647, 0.137065, 0.405753,
		0.381968, 0.170577, -0.908297,
		-0.193708, 0.975765, 0.101787,
		63.717262, 55.359871, 57.067432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.317352, 54.988911, 57.462292>,  <63.852859, 54.676838, 56.996181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.317352, 54.988911, 57.462292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.213921, 55.350201, 57.325287>,  <64.151863, 55.566975, 57.243084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.213921, 55.350201, 57.325287>,  <64.317352, 54.988911, 57.462292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.213921, 55.350201, 57.325287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663303, 0.423791, 0.616791,
		0.702256, -0.067699, -0.708698,
		-0.258583, 0.903227, -0.342515,
		64.136345, 55.621170, 57.222534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.943489, 55.396950, 57.156898>,  <64.317352, 54.988911, 57.462292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.943489, 55.396950, 57.156898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.653366, 55.621433, 57.316383>,  <64.479294, 55.756123, 57.412075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.653366, 55.621433, 57.316383>,  <64.943489, 55.396950, 57.156898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.653366, 55.621433, 57.316383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687232, 0.556185, 0.467300,
		0.040491, 0.612948, -0.789085,
		-0.725308, 0.561206, 0.398717,
		64.435776, 55.789795, 57.435997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.060204, 56.119194, 57.085430>,  <64.943489, 55.396950, 57.156898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.060204, 56.119194, 57.085430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.825279, 56.092529, 57.408073>,  <64.684326, 56.076530, 57.601662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.825279, 56.092529, 57.408073>,  <65.060204, 56.119194, 57.085430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.825279, 56.092529, 57.408073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687234, 0.485354, 0.540501,
		-0.427521, 0.871773, -0.239245,
		-0.587313, -0.066658, 0.806610,
		64.649086, 56.072533, 57.650055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.810905, 56.742126, 57.395752>,  <65.060204, 56.119194, 57.085430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.810905, 56.742126, 57.395752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.917374, 56.425026, 57.615097>,  <64.981255, 56.234764, 57.746704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.917374, 56.425026, 57.615097>,  <64.810905, 56.742126, 57.395752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.917374, 56.425026, 57.615097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890421, 0.420097, 0.175126,
		-0.369197, 0.441661, 0.817697,
		0.266166, -0.792751, 0.548363,
		64.997223, 56.187202, 57.779606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.943665, 56.996235, 58.092545>,  <64.810905, 56.742126, 57.395752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.943665, 56.996235, 58.092545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.147148, 56.659462, 58.020576>,  <65.269234, 56.457397, 57.977398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.147148, 56.659462, 58.020576>,  <64.943665, 56.996235, 58.092545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.147148, 56.659462, 58.020576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835718, 0.432679, 0.338178,
		-0.206876, -0.322392, 0.923724,
		0.508702, -0.841933, -0.179918,
		65.299759, 56.406883, 57.966602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.421425, 56.924404, 58.570389>,  <64.943665, 56.996235, 58.092545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.421425, 56.924404, 58.570389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.582436, 56.691109, 58.288170>,  <65.679047, 56.551132, 58.118839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.582436, 56.691109, 58.288170>,  <65.421425, 56.924404, 58.570389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.582436, 56.691109, 58.288170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871868, 0.479140, 0.101347,
		0.278948, -0.655941, 0.701377,
		0.402535, -0.583238, -0.705549,
		65.703194, 56.516136, 58.076504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.068726, 56.943501, 58.784725>,  <65.421425, 56.924404, 58.570389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.068726, 56.943501, 58.784725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.057159, 56.823303, 58.403389>,  <66.050217, 56.751183, 58.174587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.057159, 56.823303, 58.403389>,  <66.068726, 56.943501, 58.784725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.057159, 56.823303, 58.403389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784074, 0.584743, -0.208094,
		0.619993, -0.753510, 0.218702,
		-0.028916, -0.300495, -0.953345,
		66.048485, 56.733154, 58.117386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.682503, 56.466042, 58.553864>,  <66.068726, 56.943501, 58.784725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.682503, 56.466042, 58.553864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.518723, 56.663906, 58.247231>,  <66.420456, 56.782627, 58.063251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.518723, 56.663906, 58.247231>,  <66.682503, 56.466042, 58.553864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.518723, 56.663906, 58.247231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892422, 0.391743, -0.223878,
		0.189560, -0.775786, -0.601850,
		-0.409451, 0.494666, -0.766587,
		66.395889, 56.812305, 58.017254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.119301, 56.265999, 58.037792>,  <66.682503, 56.466042, 58.553864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.119301, 56.265999, 58.037792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.936096, 56.619354, 57.998108>,  <66.826172, 56.831367, 57.974297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.936096, 56.619354, 57.998108>,  <67.119301, 56.265999, 58.037792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.936096, 56.619354, 57.998108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886869, 0.461713, 0.016843,
		0.060685, -0.080271, -0.994924,
		-0.458017, 0.883390, -0.099209,
		66.798691, 56.884373, 57.968346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.807861, 56.538105, 58.059204>,  <67.119301, 56.265999, 58.037792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.807861, 56.538105, 58.059204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.963600, 56.183239, 58.158272>,  <68.057045, 55.970318, 58.217712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.963600, 56.183239, 58.158272>,  <67.807861, 56.538105, 58.059204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.963600, 56.183239, 58.158272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906693, 0.416506, 0.066564,
		-0.162207, 0.198639, 0.966556,
		0.389354, -0.887167, 0.247665,
		68.080406, 55.917088, 58.232571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.047829, 56.510715, 58.765419>,  <67.807861, 56.538105, 58.059204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.047829, 56.510715, 58.765419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.246124, 56.312973, 58.479805>,  <68.365105, 56.194328, 58.308437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.246124, 56.312973, 58.479805>,  <68.047829, 56.510715, 58.765419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.246124, 56.312973, 58.479805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773690, 0.624881, 0.104536,
		0.394511, -0.604267, 0.692259,
		0.495747, -0.494353, -0.714038,
		68.394852, 56.164669, 58.265594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.806343, 56.533070, 58.986164>,  <68.047829, 56.510715, 58.765419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.806343, 56.533070, 58.986164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.773476, 56.482510, 58.590736>,  <68.753754, 56.452171, 58.353481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.773476, 56.482510, 58.590736>,  <68.806343, 56.533070, 58.986164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.773476, 56.482510, 58.590736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754436, 0.640255, -0.144568,
		0.651211, -0.757691, 0.042756,
		-0.082163, -0.126401, -0.988571,
		68.748825, 56.444588, 58.294167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.420425, 56.241943, 58.691875>,  <68.806343, 56.533070, 58.986164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.420425, 56.241943, 58.691875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.214584, 56.470287, 58.435966>,  <69.091080, 56.607296, 58.282421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.214584, 56.470287, 58.435966>,  <69.420425, 56.241943, 58.691875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.214584, 56.470287, 58.435966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791480, 0.603227, -0.098367,
		0.329773, -0.556985, -0.762245,
		-0.514596, 0.570863, -0.639770,
		69.060204, 56.641548, 58.244034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.675484, 56.287128, 57.985134>,  <69.420425, 56.241943, 58.691875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.675484, 56.287128, 57.985134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.492241, 56.620983, 58.107452>,  <69.382294, 56.821297, 58.180843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.492241, 56.620983, 58.107452>,  <69.675484, 56.287128, 57.985134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.492241, 56.620983, 58.107452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849372, 0.512464, -0.126283,
		-0.262108, 0.201879, -0.943686,
		-0.458111, 0.834641, 0.305791,
		69.354805, 56.871376, 58.199188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.893250, 56.870567, 57.517155>,  <69.675484, 56.287128, 57.985134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.893250, 56.870567, 57.517155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.785072, 57.033108, 57.866264>,  <69.720169, 57.130630, 58.075729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.785072, 57.033108, 57.866264>,  <69.893250, 56.870567, 57.517155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.785072, 57.033108, 57.866264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818642, 0.574142, -0.013640,
		-0.506641, 0.710803, -0.487928,
		-0.270445, 0.406349, 0.872777,
		69.703941, 57.155014, 58.128098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.095993, 57.624714, 57.503792>,  <69.893250, 56.870567, 57.517155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.095993, 57.624714, 57.503792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.049301, 57.558628, 57.895523>,  <70.021286, 57.518978, 58.130562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.049301, 57.558628, 57.895523>,  <70.095993, 57.624714, 57.503792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.049301, 57.558628, 57.895523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782188, 0.592341, 0.193168,
		-0.612008, 0.788566, 0.060081,
		-0.116737, -0.165215, 0.979324,
		70.014282, 57.509064, 58.189320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.011314, 58.258801, 57.929077>,  <70.095993, 57.624714, 57.503792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.011314, 58.258801, 57.929077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.127640, 57.972588, 58.183144>,  <70.197433, 57.800858, 58.335583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.127640, 57.972588, 58.183144>,  <70.011314, 58.258801, 57.929077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.127640, 57.972588, 58.183144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819314, 0.529081, 0.220902,
		-0.494117, 0.456159, 0.740113,
		0.290813, -0.715537, 0.635165,
		70.214882, 57.757927, 58.373692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.100121, 58.557213, 58.672039>,  <70.011314, 58.258801, 57.929077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.100121, 58.557213, 58.672039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.373848, 58.280067, 58.581139>,  <70.538086, 58.113781, 58.526596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.373848, 58.280067, 58.581139>,  <70.100121, 58.557213, 58.672039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.373848, 58.280067, 58.581139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729103, 0.645709, 0.226865,
		-0.010445, -0.320942, 0.947041,
		0.684324, -0.692861, -0.227256,
		70.579147, 58.072208, 58.512962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.709129, 58.462223, 59.259117>,  <70.100121, 58.557213, 58.672039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.709129, 58.462223, 59.259117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.817085, 58.426060, 58.875664>,  <70.881859, 58.404362, 58.645592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.817085, 58.426060, 58.875664>,  <70.709129, 58.462223, 59.259117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.817085, 58.426060, 58.875664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671423, 0.731284, 0.120061,
		0.690181, -0.676055, 0.258070,
		0.269890, -0.090410, -0.958637,
		70.898056, 58.398937, 58.588074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.452293, 58.187222, 59.352661>,  <70.709129, 58.462223, 59.259117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.452293, 58.187222, 59.352661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.310806, 58.437588, 59.074638>,  <71.225914, 58.587807, 58.907825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.310806, 58.437588, 59.074638>,  <71.452293, 58.187222, 59.352661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.310806, 58.437588, 59.074638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617013, 0.714630, 0.329545,
		0.702980, -0.312296, -0.638977,
		-0.353716, 0.625920, -0.695060,
		71.204689, 58.625362, 58.866119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.427696, 57.405651, 59.419193>,  <71.452293, 58.187222, 59.352661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.427696, 57.405651, 59.419193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.639130, 57.090511, 59.292763>,  <71.765991, 56.901428, 59.216904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.639130, 57.090511, 59.292763>,  <71.427696, 57.405651, 59.419193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.639130, 57.090511, 59.292763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848678, 0.482275, 0.217154,
		-0.018649, -0.383029, 0.923548,
		0.528580, -0.787845, -0.316075,
		71.797707, 56.854156, 59.197941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.937187, 57.325378, 59.908970>,  <71.427696, 57.405651, 59.419193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.937187, 57.325378, 59.908970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.055466, 57.132133, 59.579323>,  <72.126434, 57.016186, 59.381535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.055466, 57.132133, 59.579323>,  <71.937187, 57.325378, 59.908970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.055466, 57.132133, 59.579323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949334, 0.244739, 0.197150,
		0.106446, -0.840655, 0.531007,
		0.295693, -0.483117, -0.824114,
		72.144173, 56.987198, 59.332088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.376915, 56.850739, 60.203884>,  <71.937187, 57.325378, 59.908970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.376915, 56.850739, 60.203884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.442070, 56.971737, 59.828232>,  <72.481163, 57.044334, 59.602840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.442070, 56.971737, 59.828232>,  <72.376915, 56.850739, 60.203884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.442070, 56.971737, 59.828232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966565, 0.142128, 0.213430,
		0.198038, -0.942495, -0.269229,
		0.162891, 0.302495, -0.939129,
		72.490936, 57.062485, 59.546494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.031410, 56.520096, 60.029331>,  <72.376915, 56.850739, 60.203884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.031410, 56.520096, 60.029331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.965942, 56.827141, 59.781464>,  <72.926659, 57.011368, 59.632744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.965942, 56.827141, 59.781464>,  <73.031410, 56.520096, 60.029331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.965942, 56.827141, 59.781464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974669, 0.222875, 0.018650,
		0.152424, -0.600920, -0.784642,
		-0.163669, 0.767608, -0.619669,
		72.916840, 57.057423, 59.595562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.342606, 57.162960, 60.253090>,  <73.031410, 56.520096, 60.029331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.342606, 57.162960, 60.253090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.627953, 57.179253, 60.532928>,  <73.799164, 57.189030, 60.700832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.627953, 57.179253, 60.532928>,  <73.342606, 57.162960, 60.253090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.627953, 57.179253, 60.532928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490510, 0.742011, 0.456969,
		-0.500495, -0.669149, 0.549312,
		0.713376, 0.040732, 0.699597,
		73.841965, 57.191471, 60.742809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
