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
	<36.768288, 53.294426, 49.048088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529301, 53.199379, 49.354439>,  <36.385910, 53.142353, 49.538250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529301, 53.199379, 49.354439>,  <36.768288, 53.294426, 49.048088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529301, 53.199379, 49.354439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625727, 0.459155, 0.630589,
		-0.501495, 0.855988, -0.125648,
		-0.597468, -0.237615, 0.765879,
		36.350060, 53.128094, 49.584202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932232, 53.760117, 49.528984>,  <36.768288, 53.294426, 49.048088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932232, 53.760117, 49.528984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735275, 53.484158, 49.741245>,  <36.617100, 53.318584, 49.868603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735275, 53.484158, 49.741245>,  <36.932232, 53.760117, 49.528984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735275, 53.484158, 49.741245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403556, 0.359225, 0.841487,
		-0.771161, 0.628492, 0.101531,
		-0.492395, -0.689895, 0.530652,
		36.587555, 53.277187, 49.900440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691360, 54.020088, 50.105247>,  <36.932232, 53.760117, 49.528984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691360, 54.020088, 50.105247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795998, 53.640385, 50.035423>,  <36.858780, 53.412563, 49.993530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795998, 53.640385, 50.035423>,  <36.691360, 54.020088, 50.105247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795998, 53.640385, 50.035423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782617, 0.102769, 0.613962,
		-0.564872, -0.297220, 0.769793,
		0.261592, -0.949262, -0.174558,
		36.874474, 53.355606, 49.983055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725201, 53.627914, 50.706989>,  <36.691360, 54.020088, 50.105247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725201, 53.627914, 50.706989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002254, 53.534184, 50.434120>,  <37.168488, 53.477947, 50.270401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002254, 53.534184, 50.434120>,  <36.725201, 53.627914, 50.706989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002254, 53.534184, 50.434120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714325, 0.353979, 0.603688,
		0.100015, -0.905423, 0.412561,
		0.692630, -0.234325, -0.682170,
		37.210045, 53.463886, 50.229469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191177, 53.152554, 50.881844>,  <36.725201, 53.627914, 50.706989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191177, 53.152554, 50.881844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367794, 53.388187, 50.611137>,  <37.473766, 53.529568, 50.448711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367794, 53.388187, 50.611137>,  <37.191177, 53.152554, 50.881844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367794, 53.388187, 50.611137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677537, 0.275569, 0.681913,
		0.588203, -0.759630, -0.277453,
		0.441544, 0.589088, -0.676768,
		37.500256, 53.564915, 50.408108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860649, 52.904610, 50.717991>,  <37.191177, 53.152554, 50.881844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860649, 52.904610, 50.717991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830986, 53.299290, 50.660118>,  <37.813190, 53.536098, 50.625393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830986, 53.299290, 50.660118>,  <37.860649, 52.904610, 50.717991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830986, 53.299290, 50.660118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641384, 0.158284, 0.750715,
		0.763628, -0.037130, -0.644588,
		-0.074154, 0.986695, -0.144684,
		37.808739, 53.595299, 50.616714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590523, 53.231972, 50.769733>,  <37.860649, 52.904610, 50.717991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590523, 53.231972, 50.769733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321720, 53.523369, 50.822952>,  <38.160439, 53.698208, 50.854881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321720, 53.523369, 50.822952>,  <38.590523, 53.231972, 50.769733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321720, 53.523369, 50.822952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511446, 0.326637, 0.794815,
		0.535560, 0.602168, -0.592089,
		-0.672010, 0.728493, 0.133042,
		38.120117, 53.741917, 50.862865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045803, 52.952518, 51.354267>,  <38.590523, 53.231972, 50.769733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045803, 52.952518, 51.354267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227703, 53.122143, 51.040993>,  <39.336842, 53.223919, 50.853027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227703, 53.122143, 51.040993>,  <39.045803, 52.952518, 51.354267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227703, 53.122143, 51.040993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827456, 0.124100, 0.547645,
		0.329428, -0.897091, -0.294457,
		0.454745, 0.424060, -0.783186,
		39.364128, 53.249359, 50.806038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834724, 52.832134, 51.312790>,  <39.045803, 52.952518, 51.354267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834724, 52.832134, 51.312790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778133, 53.197159, 51.159313>,  <39.744179, 53.416172, 51.067226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778133, 53.197159, 51.159313>,  <39.834724, 52.832134, 51.312790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778133, 53.197159, 51.159313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724303, 0.359628, 0.588262,
		0.674811, -0.194685, -0.711849,
		-0.141475, 0.912560, -0.383692,
		39.735691, 53.470928, 51.044205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481571, 53.157688, 51.368114>,  <39.834724, 52.832134, 51.312790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481571, 53.157688, 51.368114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200665, 53.434822, 51.302631>,  <40.032120, 53.601101, 51.263344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200665, 53.434822, 51.302631>,  <40.481571, 53.157688, 51.368114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200665, 53.434822, 51.302631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403513, 0.576828, 0.710244,
		0.586508, 0.432727, -0.684657,
		-0.702271, 0.692832, -0.163703,
		39.989983, 53.642673, 51.253521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842411, 53.954376, 51.236355>,  <40.481571, 53.157688, 51.368114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842411, 53.954376, 51.236355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473068, 53.904549, 51.381622>,  <40.251461, 53.874653, 51.468781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473068, 53.904549, 51.381622>,  <40.842411, 53.954376, 51.236355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473068, 53.904549, 51.381622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235015, 0.564597, 0.791201,
		-0.303603, 0.815912, -0.492049,
		-0.923360, -0.124572, 0.363165,
		40.196060, 53.867176, 51.490570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430855, 54.165524, 50.835003>,  <40.842411, 53.954376, 51.236355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430855, 54.165524, 50.835003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219467, 54.501007, 50.887596>,  <41.092632, 54.702297, 50.919151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219467, 54.501007, 50.887596>,  <41.430855, 54.165524, 50.835003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219467, 54.501007, 50.887596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240772, -0.000451, 0.970582,
		0.814093, 0.544583, -0.201699,
		-0.528471, 0.838707, 0.131488,
		41.060925, 54.752621, 50.927044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000771, 54.651627, 51.176186>,  <41.430855, 54.165524, 50.835003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.000771, 54.651627, 51.176186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608097, 54.698177, 51.236526>,  <41.372494, 54.726109, 51.272732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608097, 54.698177, 51.236526>,  <42.000771, 54.651627, 51.176186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608097, 54.698177, 51.236526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143373, -0.070182, 0.987177,
		0.125470, 0.990723, 0.052211,
		-0.981683, 0.116375, 0.150849,
		41.313591, 54.733089, 51.281780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848446, 55.161110, 51.740810>,  <42.000771, 54.651627, 51.176186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848446, 55.161110, 51.740810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.550011, 54.895721, 51.718323>,  <41.370949, 54.736488, 51.704830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.550011, 54.895721, 51.718323>,  <41.848446, 55.161110, 51.740810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550011, 54.895721, 51.718323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087940, -0.181885, 0.979380,
		-0.660015, 0.725759, 0.194048,
		-0.746088, -0.663470, -0.056223,
		41.326183, 54.696682, 51.701454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172421, 55.330074, 52.032322>,  <41.848446, 55.161110, 51.740810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172421, 55.330074, 52.032322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262379, 54.941864, 52.066978>,  <41.316353, 54.708939, 52.087772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262379, 54.941864, 52.066978>,  <41.172421, 55.330074, 52.032322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262379, 54.941864, 52.066978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084010, 0.107901, 0.990606,
		-0.970754, -0.215505, 0.105800,
		0.224897, -0.970523, 0.086641,
		41.329849, 54.650707, 52.092972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800606, 55.636677, 52.686966>,  <41.172421, 55.330074, 52.032322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800606, 55.636677, 52.686966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773811, 56.014378, 52.558037>,  <40.757736, 56.240997, 52.480679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773811, 56.014378, 52.558037>,  <40.800606, 55.636677, 52.686966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773811, 56.014378, 52.558037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406645, 0.269170, 0.873034,
		0.911128, 0.189550, 0.365947,
		-0.066982, 0.944255, -0.322327,
		40.753716, 56.297653, 52.461338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132698, 56.108711, 53.187252>,  <40.800606, 55.636677, 52.686966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132698, 56.108711, 53.187252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809998, 56.231472, 52.985275>,  <40.616379, 56.305126, 52.864090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809998, 56.231472, 52.985275>,  <41.132698, 56.108711, 53.187252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809998, 56.231472, 52.985275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349446, 0.441296, 0.826526,
		0.476488, 0.843250, -0.248772,
		-0.806750, 0.306897, -0.504943,
		40.567974, 56.323540, 52.833794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659409, 56.653091, 53.124439>,  <41.132698, 56.108711, 53.187252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.659409, 56.653091, 53.124439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787899, 56.409603, 52.834263>,  <41.864994, 56.263508, 52.660156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787899, 56.409603, 52.834263>,  <41.659409, 56.653091, 53.124439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787899, 56.409603, 52.834263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730353, 0.646877, -0.219398,
		0.602826, -0.459354, 0.652377,
		0.321226, -0.608724, -0.725444,
		41.884266, 56.226986, 52.616631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339054, 56.507999, 53.223839>,  <41.659409, 56.653091, 53.124439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339054, 56.507999, 53.223839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279552, 56.480045, 52.829277>,  <42.243851, 56.463272, 52.592541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279552, 56.480045, 52.829277>,  <42.339054, 56.507999, 53.223839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279552, 56.480045, 52.829277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709573, 0.687215, -0.155698,
		0.688751, -0.723085, -0.052638,
		-0.148757, -0.069886, -0.986401,
		42.234924, 56.459080, 52.533356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940144, 56.699207, 53.000267>,  <42.339054, 56.507999, 53.223839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940144, 56.699207, 53.000267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698456, 56.708313, 52.681671>,  <42.553444, 56.713776, 52.490513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698456, 56.708313, 52.681671>,  <42.940144, 56.699207, 53.000267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698456, 56.708313, 52.681671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408319, 0.867219, -0.284968,
		0.684248, -0.497407, -0.533283,
		-0.604219, 0.022761, -0.796493,
		42.517189, 56.715141, 52.442722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.372162, 56.894154, 52.443432>,  <42.940144, 56.699207, 53.000267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.372162, 56.894154, 52.443432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991161, 57.003002, 52.388741>,  <42.762562, 57.068314, 52.355927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991161, 57.003002, 52.388741>,  <43.372162, 56.894154, 52.443432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991161, 57.003002, 52.388741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292645, 0.942120, -0.163609,
		0.084296, -0.195852, -0.977004,
		-0.952498, 0.272124, -0.136732,
		42.705410, 57.084641, 52.347721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073338, 57.019264, 52.400902>,  <43.372162, 56.894154, 52.443432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073338, 57.019264, 52.400902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.764114, 57.109016, 52.638229>,  <43.578579, 57.162868, 52.780628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.764114, 57.109016, 52.638229>,  <44.073338, 57.019264, 52.400902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.764114, 57.109016, 52.638229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578011, 0.136131, -0.804594,
		-0.261305, -0.964947, 0.024457,
		-0.773061, 0.224381, 0.593321,
		43.532196, 57.176331, 52.816227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.077385, 56.718971, 53.096588>,  <44.073338, 57.019264, 52.400902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.077385, 56.718971, 53.096588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152641, 56.912651, 53.438385>,  <44.197796, 57.028858, 53.643463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152641, 56.912651, 53.438385>,  <44.077385, 56.718971, 53.096588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152641, 56.912651, 53.438385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975465, 0.009161, -0.219964,
		-0.114334, 0.874909, -0.470597,
		0.188137, 0.484200, 0.854491,
		44.209084, 57.057911, 53.694733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350780, 57.470856, 53.051373>,  <44.077385, 56.718971, 53.096588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350780, 57.470856, 53.051373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491062, 57.295425, 53.382347>,  <44.575233, 57.190166, 53.580933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491062, 57.295425, 53.382347>,  <44.350780, 57.470856, 53.051373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.491062, 57.295425, 53.382347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936433, 0.154938, -0.314782,
		0.009852, 0.885239, 0.465032,
		0.350708, -0.438573, 0.827440,
		44.596275, 57.163853, 53.630581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.979984, 57.846970, 53.115902>,  <44.350780, 57.470856, 53.051373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.979984, 57.846970, 53.115902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.021564, 57.525845, 53.350739>,  <45.046513, 57.333168, 53.491642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.021564, 57.525845, 53.350739>,  <44.979984, 57.846970, 53.115902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.021564, 57.525845, 53.350739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982378, -0.009316, -0.186674,
		0.155334, 0.596154, 0.787700,
		0.103948, -0.802816, 0.587096,
		45.052750, 57.285000, 53.526867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.523991, 57.991665, 53.619518>,  <44.979984, 57.846970, 53.115902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.523991, 57.991665, 53.619518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.486164, 57.613888, 53.493607>,  <45.463467, 57.387222, 53.418060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.486164, 57.613888, 53.493607>,  <45.523991, 57.991665, 53.619518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.486164, 57.613888, 53.493607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901570, 0.052842, -0.429394,
		0.422171, -0.324405, 0.846483,
		-0.094568, -0.944441, -0.314782,
		45.457794, 57.330555, 53.399174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.076328, 57.653545, 53.760513>,  <45.523991, 57.991665, 53.619518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.076328, 57.653545, 53.760513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.925560, 57.438904, 53.458523>,  <45.835098, 57.310120, 53.277328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.925560, 57.438904, 53.458523>,  <46.076328, 57.653545, 53.760513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.925560, 57.438904, 53.458523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861358, 0.096641, -0.498723,
		0.340580, -0.838280, 0.425785,
		-0.376921, -0.536608, -0.754972,
		45.812485, 57.277920, 53.232033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.582981, 57.140919, 53.473778>,  <46.076328, 57.653545, 53.760513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.582981, 57.140919, 53.473778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352222, 57.256210, 53.168068>,  <46.213768, 57.325386, 52.984642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352222, 57.256210, 53.168068>,  <46.582981, 57.140919, 53.473778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.352222, 57.256210, 53.168068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816774, 0.213051, -0.536181,
		0.008284, -0.933558, -0.358331,
		-0.576899, 0.288234, -0.764270,
		46.179153, 57.342682, 52.938786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.683628, 56.686302, 52.898033>,  <46.582981, 57.140919, 53.473778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.683628, 56.686302, 52.898033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.629448, 57.075123, 52.821327>,  <46.596939, 57.308414, 52.775303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.629448, 57.075123, 52.821327>,  <46.683628, 56.686302, 52.898033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.629448, 57.075123, 52.821327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933644, 0.060444, -0.353066,
		-0.331607, -0.226861, -0.915735,
		-0.135448, 0.972050, -0.191764,
		46.588814, 57.366737, 52.763798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.880363, 56.874592, 52.147068>,  <46.683628, 56.686302, 52.898033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.880363, 56.874592, 52.147068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.915077, 57.225330, 52.336216>,  <46.935905, 57.435772, 52.449707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.915077, 57.225330, 52.336216>,  <46.880363, 56.874592, 52.147068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.915077, 57.225330, 52.336216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758163, 0.249786, -0.602325,
		-0.646263, 0.410791, -0.643113,
		0.086789, 0.876846, 0.472874,
		46.941113, 57.488384, 52.478077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.384327, 57.204071, 52.598366>,  <46.880363, 56.874592, 52.147068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.384327, 57.204071, 52.598366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.100197, 57.387039, 52.812355>,  <46.929718, 57.496822, 52.940750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.100197, 57.387039, 52.812355>,  <47.384327, 57.204071, 52.598366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.100197, 57.387039, 52.812355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642714, 0.731386, 0.228021,
		-0.286969, 0.505804, -0.813518,
		-0.710329, 0.457424, 0.534972,
		46.887096, 57.524265, 52.972847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.563759, 57.900585, 52.496338>,  <47.384327, 57.204071, 52.598366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.563759, 57.900585, 52.496338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.376240, 57.834034, 52.843334>,  <47.263729, 57.794102, 53.051533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.376240, 57.834034, 52.843334>,  <47.563759, 57.900585, 52.496338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.376240, 57.834034, 52.843334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623622, 0.633184, 0.458447,
		-0.625561, 0.755907, -0.193075,
		-0.468795, -0.166381, 0.867496,
		47.235600, 57.784119, 53.103584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.421757, 58.544483, 52.858181>,  <47.563759, 57.900585, 52.496338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.421757, 58.544483, 52.858181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.427799, 58.281658, 53.159653>,  <47.431427, 58.123962, 53.340538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.427799, 58.281658, 53.159653>,  <47.421757, 58.544483, 52.858181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.427799, 58.281658, 53.159653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806499, 0.453569, 0.379254,
		-0.591042, 0.602115, 0.536775,
		0.015110, -0.657064, 0.753684,
		47.432331, 58.084538, 53.385757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.528152, 58.987152, 53.495430>,  <47.421757, 58.544483, 52.858181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.528152, 58.987152, 53.495430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.644836, 58.610733, 53.563942>,  <47.714848, 58.384880, 53.605049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.644836, 58.610733, 53.563942>,  <47.528152, 58.987152, 53.495430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.644836, 58.610733, 53.563942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809169, 0.338275, 0.480432,
		-0.510049, -0.001551, 0.860144,
		0.291710, -0.941046, 0.171282,
		47.732349, 58.328419, 53.615326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.762062, 58.986629, 54.124615>,  <47.528152, 58.987152, 53.495430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.762062, 58.986629, 54.124615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.954319, 58.706436, 53.913597>,  <48.069672, 58.538319, 53.786987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.954319, 58.706436, 53.913597>,  <47.762062, 58.986629, 54.124615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.954319, 58.706436, 53.913597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867253, 0.290641, 0.404228,
		-0.129828, -0.651805, 0.747191,
		0.480642, -0.700484, -0.527546,
		48.098511, 58.496292, 53.755333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.365395, 58.794407, 54.456070>,  <47.762062, 58.986629, 54.124615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.365395, 58.794407, 54.456070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.545383, 58.678101, 54.118317>,  <48.653378, 58.608318, 53.915665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.545383, 58.678101, 54.118317>,  <48.365395, 58.794407, 54.456070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.545383, 58.678101, 54.118317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887505, 0.250725, 0.386617,
		0.099291, -0.923359, 0.370877,
		0.449974, -0.290767, -0.844380,
		48.680374, 58.590870, 53.865002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.745125, 58.201416, 54.429379>,  <48.365395, 58.794407, 54.456070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.745125, 58.201416, 54.429379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.894253, 58.485413, 54.190407>,  <48.983730, 58.655811, 54.047024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.894253, 58.485413, 54.190407>,  <48.745125, 58.201416, 54.429379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.894253, 58.485413, 54.190407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856411, -0.015465, 0.516064,
		0.357160, -0.704045, -0.613806,
		0.372824, 0.709988, -0.597428,
		49.006100, 58.698410, 54.011177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.379555, 57.942814, 54.245338>,  <48.745125, 58.201416, 54.429379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.379555, 57.942814, 54.245338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.341007, 58.340767, 54.233215>,  <49.317879, 58.579540, 54.225941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.341007, 58.340767, 54.233215>,  <49.379555, 57.942814, 54.245338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.341007, 58.340767, 54.233215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817546, 0.096487, 0.567722,
		0.567741, 0.029938, -0.822663,
		-0.096373, 0.994884, -0.030304,
		49.312096, 58.639233, 54.224125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.963512, 58.349026, 53.989742>,  <49.379555, 57.942814, 54.245338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.963512, 58.349026, 53.989742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.760605, 58.549435, 54.270214>,  <49.638859, 58.669682, 54.438496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.760605, 58.549435, 54.270214>,  <49.963512, 58.349026, 53.989742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.760605, 58.549435, 54.270214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812921, 0.008104, 0.582318,
		0.286074, 0.865395, -0.411405,
		-0.507269, 0.501025, 0.701179,
		49.608425, 58.699741, 54.480568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.409607, 58.932465, 54.230053>,  <49.963512, 58.349026, 53.989742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.409607, 58.932465, 54.230053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.166782, 58.860889, 54.539753>,  <50.021088, 58.817944, 54.725574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.166782, 58.860889, 54.539753>,  <50.409607, 58.932465, 54.230053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.166782, 58.860889, 54.539753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794367, -0.110295, 0.597340,
		-0.021493, 0.977658, 0.209100,
		-0.607057, -0.178941, 0.774249,
		49.984665, 58.807209, 54.772026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.870655, 59.420094, 53.955624>,  <50.409607, 58.932465, 54.230053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.870655, 59.420094, 53.955624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.943718, 59.072613, 54.139797>,  <50.987556, 58.864124, 54.250301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.943718, 59.072613, 54.139797>,  <50.870655, 59.420094, 53.955624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.943718, 59.072613, 54.139797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977533, 0.210568, 0.009489,
		-0.105196, 0.448358, 0.887643,
		0.182655, -0.868698, 0.460435,
		50.998516, 58.812004, 54.277927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.231770, 59.649128, 54.590862>,  <50.870655, 59.420094, 53.955624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.231770, 59.649128, 54.590862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.312862, 59.283989, 54.449097>,  <51.361519, 59.064903, 54.364037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.312862, 59.283989, 54.449097>,  <51.231770, 59.649128, 54.590862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.312862, 59.283989, 54.449097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975073, 0.154849, 0.158915,
		-0.090186, -0.377792, 0.921488,
		0.202728, -0.912850, -0.354410,
		51.373680, 59.010136, 54.342773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.783974, 60.048969, 54.349964>,  <51.231770, 59.649128, 54.590862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.783974, 60.048969, 54.349964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.753361, 60.297943, 54.038395>,  <51.734993, 60.447327, 53.851456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.753361, 60.297943, 54.038395>,  <51.783974, 60.048969, 54.349964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.753361, 60.297943, 54.038395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456482, -0.672658, -0.582371,
		-0.886435, -0.400133, -0.232651,
		-0.076531, 0.622435, -0.778921,
		51.730400, 60.484673, 53.804718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.533779, 59.827827, 53.734356>,  <51.783974, 60.048969, 54.349964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.533779, 59.827827, 53.734356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.794472, 60.108238, 53.618561>,  <51.950890, 60.276485, 53.549084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.794472, 60.108238, 53.618561>,  <51.533779, 59.827827, 53.734356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.794472, 60.108238, 53.618561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395944, -0.640025, -0.658480,
		-0.646894, 0.314531, -0.694693,
		0.651733, 0.701026, -0.289492,
		51.989990, 60.318546, 53.531712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.767254, 59.751572, 52.988071>,  <51.533779, 59.827827, 53.734356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.767254, 59.751572, 52.988071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.061722, 59.993980, 53.108604>,  <52.238403, 60.139423, 53.180923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.061722, 59.993980, 53.108604>,  <51.767254, 59.751572, 52.988071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.061722, 59.993980, 53.108604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676676, -0.667631, -0.310448,
		0.013042, 0.432446, -0.901565,
		0.736165, 0.606019, 0.301333,
		52.282570, 60.175785, 53.199005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.270550, 59.846859, 52.425587>,  <51.767254, 59.751572, 52.988071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.270550, 59.846859, 52.425587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.443169, 59.879784, 52.784916>,  <52.546741, 59.899540, 53.000515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.443169, 59.879784, 52.784916>,  <52.270550, 59.846859, 52.425587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.443169, 59.879784, 52.784916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815288, -0.461807, -0.349341,
		0.386098, 0.883153, -0.266402,
		0.431548, 0.082315, 0.898327,
		52.572632, 59.904480, 53.054413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.967670, 60.058994, 52.314728>,  <52.270550, 59.846859, 52.425587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.967670, 60.058994, 52.314728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.927166, 59.884693, 52.672470>,  <52.902863, 59.780113, 52.887115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.927166, 59.884693, 52.672470>,  <52.967670, 60.058994, 52.314728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.927166, 59.884693, 52.672470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734074, -0.639485, -0.228462,
		0.671478, 0.633387, 0.384628,
		-0.101259, -0.435752, 0.894353,
		52.896790, 59.753967, 52.940777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.594204, 59.802383, 52.473698>,  <52.967670, 60.058994, 52.314728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.594204, 59.802383, 52.473698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.301632, 59.601498, 52.658215>,  <53.126087, 59.480968, 52.768925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.301632, 59.601498, 52.658215>,  <53.594204, 59.802383, 52.473698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.301632, 59.601498, 52.658215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395871, -0.863526, -0.312424,
		0.555244, -0.045904, 0.830420,
		-0.731431, -0.502211, 0.461296,
		53.082203, 59.450836, 52.796604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.925560, 60.272888, 52.877911>,  <53.594204, 59.802383, 52.473698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.925560, 60.272888, 52.877911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.784817, 60.067642, 53.191063>,  <53.700371, 59.944492, 53.378956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.784817, 60.067642, 53.191063>,  <53.925560, 60.272888, 52.877911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.784817, 60.067642, 53.191063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664874, 0.451721, 0.594887,
		-0.658892, 0.729834, 0.182218,
		-0.351857, -0.513119, 0.782883,
		53.679260, 59.913708, 53.425926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.841457, 60.548275, 53.639332>,  <53.925560, 60.272888, 52.877911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.841457, 60.548275, 53.639332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.922966, 60.157227, 53.660244>,  <53.971870, 59.922596, 53.672791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.922966, 60.157227, 53.660244>,  <53.841457, 60.548275, 53.639332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.922966, 60.157227, 53.660244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498579, 0.149583, 0.853841,
		-0.842554, -0.147920, 0.517902,
		0.203770, -0.977622, 0.052282,
		53.984097, 59.863941, 53.675930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.880688, 60.471920, 54.292168>,  <53.841457, 60.548275, 53.639332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.880688, 60.471920, 54.292168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.118683, 60.196201, 54.126823>,  <54.261478, 60.030769, 54.027618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.118683, 60.196201, 54.126823>,  <53.880688, 60.471920, 54.292168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.118683, 60.196201, 54.126823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665521, 0.134160, 0.734222,
		-0.450639, -0.711950, 0.538564,
		0.594984, -0.689295, -0.413360,
		54.297176, 59.989414, 54.002815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.904751, 59.920803, 54.852093>,  <53.880688, 60.471920, 54.292168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.904751, 59.920803, 54.852093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.226028, 59.979706, 54.621201>,  <54.418797, 60.015045, 54.482666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.226028, 59.979706, 54.621201>,  <53.904751, 59.920803, 54.852093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.226028, 59.979706, 54.621201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565396, 0.116754, 0.816515,
		0.187631, -0.982184, 0.010518,
		0.803195, 0.147256, -0.577229,
		54.466988, 60.023884, 54.448032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.381798, 59.441597, 55.083748>,  <53.904751, 59.920803, 54.852093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.381798, 59.441597, 55.083748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.573730, 59.757706, 54.931313>,  <54.688889, 59.947372, 54.839851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.573730, 59.757706, 54.931313>,  <54.381798, 59.441597, 55.083748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.573730, 59.757706, 54.931313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598984, 0.022307, 0.800450,
		0.641077, -0.612345, -0.462659,
		0.479831, 0.790276, -0.381085,
		54.717678, 59.994789, 54.816986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.017654, 59.299915, 55.386700>,  <54.381798, 59.441597, 55.083748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.017654, 59.299915, 55.386700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.037903, 59.676537, 55.253487>,  <55.050053, 59.902512, 55.173561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.037903, 59.676537, 55.253487>,  <55.017654, 59.299915, 55.386700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.037903, 59.676537, 55.253487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781692, 0.170191, 0.599994,
		0.621607, -0.290699, -0.727392,
		0.050622, 0.941557, -0.333029,
		55.053089, 59.959003, 55.153580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.700390, 59.467560, 55.323975>,  <55.017654, 59.299915, 55.386700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.700390, 59.467560, 55.323975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.502724, 59.815125, 55.335251>,  <55.384125, 60.023663, 55.342018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.502724, 59.815125, 55.335251>,  <55.700390, 59.467560, 55.323975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.502724, 59.815125, 55.335251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752775, 0.411440, 0.513854,
		0.434895, 0.275149, -0.857414,
		-0.494161, 0.868913, 0.028192,
		55.354477, 60.075798, 55.343708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.952415, 60.134338, 55.016060>,  <55.700390, 59.467560, 55.323975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.952415, 60.134338, 55.016060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.765282, 60.199631, 55.363503>,  <55.653000, 60.238808, 55.571968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.765282, 60.199631, 55.363503>,  <55.952415, 60.134338, 55.016060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.765282, 60.199631, 55.363503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828238, 0.423980, 0.366419,
		-0.308462, 0.890840, -0.333549,
		-0.467839, 0.163232, 0.868609,
		55.624931, 60.248600, 55.624084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.677917, 60.831375, 55.089874>,  <55.952415, 60.134338, 55.016060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.677917, 60.831375, 55.089874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.771805, 60.667442, 55.442451>,  <55.828136, 60.569084, 55.653999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.771805, 60.667442, 55.442451>,  <55.677917, 60.831375, 55.089874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.771805, 60.667442, 55.442451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908708, 0.414519, -0.049243,
		-0.345195, 0.812535, 0.469710,
		0.234715, -0.409831, 0.881446,
		55.842220, 60.544495, 55.706886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.987831, 61.334690, 55.481190>,  <55.677917, 60.831375, 55.089874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.987831, 61.334690, 55.481190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.117973, 60.978413, 55.608192>,  <56.196060, 60.764645, 55.684395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.117973, 60.978413, 55.608192>,  <55.987831, 61.334690, 55.481190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.117973, 60.978413, 55.608192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924773, 0.369790, 0.089727,
		-0.197330, 0.264428, 0.944001,
		0.325356, -0.890692, 0.317506,
		56.215580, 60.711205, 55.703445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.631561, 61.551083, 55.735470>,  <55.987831, 61.334690, 55.481190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.631561, 61.551083, 55.735470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.617149, 61.152000, 55.758400>,  <56.608501, 60.912552, 55.772160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.617149, 61.152000, 55.758400>,  <56.631561, 61.551083, 55.735470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.617149, 61.152000, 55.758400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994136, -0.029926, 0.103915,
		-0.101961, 0.060736, 0.992933,
		-0.036026, -0.997705, 0.057329,
		56.606342, 60.852688, 55.775597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.952271, 61.384228, 56.305698>,  <56.631561, 61.551083, 55.735470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.952271, 61.384228, 56.305698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.003677, 61.064819, 56.070465>,  <57.034519, 60.873173, 55.929325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.003677, 61.064819, 56.070465>,  <56.952271, 61.384228, 56.305698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.003677, 61.064819, 56.070465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988859, 0.058273, 0.136971,
		-0.075106, -0.599134, 0.797118,
		0.128515, -0.798525, -0.588083,
		57.042233, 60.825260, 55.894039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.311436, 60.877052, 56.732662>,  <56.952271, 61.384228, 56.305698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.311436, 60.877052, 56.732662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.378120, 60.831329, 56.340919>,  <57.418133, 60.803894, 56.105873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.378120, 60.831329, 56.340919>,  <57.311436, 60.877052, 56.732662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.378120, 60.831329, 56.340919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976495, -0.118473, 0.180057,
		-0.136610, -0.986356, 0.091869,
		0.166717, -0.114307, -0.979357,
		57.428135, 60.797039, 56.047112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.626396, 60.250458, 56.476048>,  <57.311436, 60.877052, 56.732662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.626396, 60.250458, 56.476048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.745720, 60.550636, 56.240135>,  <57.817314, 60.730743, 56.098587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.745720, 60.550636, 56.240135>,  <57.626396, 60.250458, 56.476048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.745720, 60.550636, 56.240135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949675, -0.295223, 0.104695,
		-0.095549, -0.591331, -0.800748,
		0.298309, 0.750447, -0.589781,
		57.835213, 60.775772, 56.063202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.935467, 60.050285, 55.826393>,  <57.626396, 60.250458, 56.476048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.935467, 60.050285, 55.826393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.124512, 60.386997, 55.930740>,  <58.237938, 60.589024, 55.993347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.124512, 60.386997, 55.930740>,  <57.935467, 60.050285, 55.826393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.124512, 60.386997, 55.930740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861743, -0.503397, 0.063169,
		0.184495, 0.194948, -0.963305,
		0.472610, 0.841776, 0.260870,
		58.266296, 60.639530, 56.009003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.564228, 60.091640, 55.524284>,  <57.935467, 60.050285, 55.826393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.564228, 60.091640, 55.524284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.616302, 60.324963, 55.844986>,  <58.647549, 60.464958, 56.037407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.616302, 60.324963, 55.844986>,  <58.564228, 60.091640, 55.524284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.616302, 60.324963, 55.844986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924253, -0.364105, 0.114826,
		0.358900, 0.726070, -0.586526,
		0.130185, 0.583309, 0.801750,
		58.655357, 60.499954, 56.085510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.148720, 60.439384, 55.518562>,  <58.564228, 60.091640, 55.524284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.148720, 60.439384, 55.518562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.048332, 60.349010, 55.895065>,  <58.988098, 60.294788, 56.120968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.048332, 60.349010, 55.895065>,  <59.148720, 60.439384, 55.518562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.048332, 60.349010, 55.895065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850603, -0.515616, 0.103034,
		0.462050, 0.826496, 0.321581,
		-0.250969, -0.225930, 0.941260,
		58.973042, 60.281231, 56.177444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.778587, 60.459770, 56.006100>,  <59.148720, 60.439384, 55.518562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.778587, 60.459770, 56.006100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.522575, 60.195587, 56.163147>,  <59.368969, 60.037075, 56.257374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.522575, 60.195587, 56.163147>,  <59.778587, 60.459770, 56.006100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.522575, 60.195587, 56.163147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753034, -0.640710, 0.149768,
		0.152639, 0.391511, 0.907425,
		-0.640032, -0.660462, 0.392618,
		59.330566, 59.997448, 56.280933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.141224, 60.116253, 56.610600>,  <59.778587, 60.459770, 56.006100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.141224, 60.116253, 56.610600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.823982, 59.877476, 56.562180>,  <59.633636, 59.734211, 56.533127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.823982, 59.877476, 56.562180>,  <60.141224, 60.116253, 56.610600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.823982, 59.877476, 56.562180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518766, -0.766159, 0.379318,
		-0.319171, 0.238042, 0.917314,
		-0.793103, -0.596939, -0.121047,
		59.586052, 59.698395, 56.525864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.938648, 59.859592, 56.839066>,  <60.141224, 60.116253, 56.610600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.938648, 59.859592, 56.839066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.106125, 60.222473, 56.822701>,  <61.206612, 60.440201, 56.812881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.106125, 60.222473, 56.822701>,  <60.938648, 59.859592, 56.839066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.106125, 60.222473, 56.822701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906997, -0.419994, -0.031005,
		-0.045312, -0.024129, -0.998681,
		0.418692, 0.907206, -0.040916,
		61.231731, 60.494637, 56.810425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.552155, 59.665520, 56.644188>,  <60.938648, 59.859592, 56.839066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.552155, 59.665520, 56.644188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.590714, 60.053360, 56.734154>,  <61.613850, 60.286064, 56.788136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.590714, 60.053360, 56.734154>,  <61.552155, 59.665520, 56.644188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.590714, 60.053360, 56.734154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975778, -0.136644, 0.170840,
		0.196379, 0.203000, -0.959284,
		0.096400, 0.969598, 0.224917,
		61.619633, 60.344238, 56.801628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.368664, 59.298805, 56.069832>,  <61.552155, 59.665520, 56.644188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.368664, 59.298805, 56.069832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.200874, 59.104431, 55.763130>,  <61.100201, 58.987808, 55.579109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.200874, 59.104431, 55.763130>,  <61.368664, 59.298805, 56.069832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.200874, 59.104431, 55.763130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333638, 0.703012, -0.628060,
		0.844234, -0.519271, -0.132766,
		-0.419470, -0.485934, -0.766755,
		61.075035, 58.958652, 55.533104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.923916, 59.304794, 55.517895>,  <61.368664, 59.298805, 56.069832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.923916, 59.304794, 55.517895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.561615, 59.269745, 55.352036>,  <61.344234, 59.248714, 55.252518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.561615, 59.269745, 55.352036>,  <61.923916, 59.304794, 55.517895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.561615, 59.269745, 55.352036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242771, 0.694695, -0.677097,
		0.347383, -0.713948, -0.607950,
		-0.905752, -0.087619, -0.414651,
		61.289890, 59.243458, 55.227638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.216106, 60.042015, 55.376366>,  <61.923916, 59.304794, 55.517895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.216106, 60.042015, 55.376366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.149132, 59.839779, 55.037819>,  <62.108948, 59.718437, 54.834690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.149132, 59.839779, 55.037819>,  <62.216106, 60.042015, 55.376366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.149132, 59.839779, 55.037819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014893, -0.859690, 0.510599,
		-0.985770, 0.072890, 0.151476,
		-0.167440, -0.505589, -0.846371,
		62.098900, 59.688103, 54.783909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.082462, 60.725666, 55.715439>,  <62.216106, 60.042015, 55.376366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.082462, 60.725666, 55.715439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.390648, 60.471016, 55.702240>,  <62.575562, 60.318226, 55.694321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.390648, 60.471016, 55.702240>,  <62.082462, 60.725666, 55.715439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.390648, 60.471016, 55.702240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522054, 0.659822, -0.540457,
		0.365841, 0.399178, 0.840724,
		0.770467, -0.636625, -0.032997,
		62.621788, 60.280029, 55.692341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.699116, 60.931805, 55.995621>,  <62.082462, 60.725666, 55.715439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.699116, 60.931805, 55.995621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.759064, 60.677200, 55.692993>,  <62.795033, 60.524437, 55.511417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.759064, 60.677200, 55.692993>,  <62.699116, 60.931805, 55.995621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.759064, 60.677200, 55.692993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463932, 0.721011, -0.514695,
		0.873102, -0.273858, 0.403355,
		0.149870, -0.636510, -0.756568,
		62.804024, 60.486248, 55.466022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.437817, 60.991264, 55.841148>,  <62.699116, 60.931805, 55.995621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.437817, 60.991264, 55.841148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.259071, 60.842636, 55.515633>,  <63.151825, 60.753460, 55.320324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.259071, 60.842636, 55.515633>,  <63.437817, 60.991264, 55.841148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.259071, 60.842636, 55.515633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701822, 0.418499, -0.576459,
		0.554764, -0.828731, 0.073765,
		-0.446859, -0.371568, -0.813790,
		63.125015, 60.731167, 55.271496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.029442, 60.653179, 55.296200>,  <63.437817, 60.991264, 55.841148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.029442, 60.653179, 55.296200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.689423, 60.764252, 55.117172>,  <63.485413, 60.830894, 55.009754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.689423, 60.764252, 55.117172>,  <64.029442, 60.653179, 55.296200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.689423, 60.764252, 55.117172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525743, 0.395741, -0.752983,
		-0.031966, -0.875376, -0.482386,
		-0.850043, 0.277681, -0.447572,
		63.434410, 60.847557, 54.982903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.974514, 59.846603, 55.543415>,  <64.029442, 60.653179, 55.296200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.974514, 59.846603, 55.543415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.142136, 59.930309, 55.190010>,  <64.242706, 59.980534, 54.977966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.142136, 59.930309, 55.190010>,  <63.974514, 59.846603, 55.543415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.142136, 59.930309, 55.190010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605170, -0.789795, 0.099967,
		-0.676874, -0.576568, -0.457614,
		0.419059, 0.209269, -0.883514,
		64.267853, 59.993092, 54.924957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.985992, 59.304482, 55.167782>,  <63.974514, 59.846603, 55.543415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.985992, 59.304482, 55.167782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.280937, 59.535187, 55.027130>,  <64.457901, 59.673611, 54.942738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.280937, 59.535187, 55.027130>,  <63.985992, 59.304482, 55.167782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.280937, 59.535187, 55.027130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668439, -0.698064, 0.256701,
		-0.097405, -0.424325, -0.900256,
		0.737361, 0.576763, -0.351630,
		64.502144, 59.708214, 54.921642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.454834, 58.828602, 55.076698>,  <63.985992, 59.304482, 55.167782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.454834, 58.828602, 55.076698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.632545, 59.186802, 55.066078>,  <64.739174, 59.401722, 55.059708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.632545, 59.186802, 55.066078>,  <64.454834, 58.828602, 55.076698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.632545, 59.186802, 55.066078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839653, -0.405872, 0.360904,
		0.312412, -0.182635, -0.932225,
		0.444278, 0.895496, -0.026551,
		64.765831, 59.455452, 55.058113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.960899, 58.818878, 54.532921>,  <64.454834, 58.828602, 55.076698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.960899, 58.818878, 54.532921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.049767, 59.034603, 54.857826>,  <65.103088, 59.164040, 55.052769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.049767, 59.034603, 54.857826>,  <64.960899, 58.818878, 54.532921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.049767, 59.034603, 54.857826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757642, -0.619860, 0.204334,
		0.613693, 0.570011, -0.546323,
		0.222171, 0.539315, 0.812268,
		65.116417, 59.196396, 55.101505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.664635, 59.199333, 54.547356>,  <64.960899, 58.818878, 54.532921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.664635, 59.199333, 54.547356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.556686, 59.065296, 54.908440>,  <65.491913, 58.984875, 55.125088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.556686, 59.065296, 54.908440>,  <65.664635, 59.199333, 54.547356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.556686, 59.065296, 54.908440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616419, -0.780335, -0.105377,
		0.739725, 0.528007, 0.417153,
		-0.269879, -0.335091, 0.902707,
		65.475723, 58.964767, 55.179253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.166115, 59.399925, 55.044910>,  <65.664635, 59.199333, 54.547356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.166115, 59.399925, 55.044910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.996048, 59.056110, 55.158340>,  <65.894005, 58.849819, 55.226398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.996048, 59.056110, 55.158340>,  <66.166115, 59.399925, 55.044910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.996048, 59.056110, 55.158340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882674, -0.463086, -0.080232,
		0.200284, 0.216194, 0.955587,
		-0.425173, -0.859541, 0.283578,
		65.868500, 58.798248, 55.243412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.877083, 59.364029, 54.871944>,  <66.166115, 59.399925, 55.044910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.877083, 59.364029, 54.871944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.807083, 58.975563, 54.807182>,  <66.765083, 58.742485, 54.768326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.807083, 58.975563, 54.807182>,  <66.877083, 59.364029, 54.871944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.807083, 58.975563, 54.807182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938248, -0.214339, 0.271571,
		-0.298442, -0.104378, 0.948703,
		-0.174998, -0.971166, -0.161901,
		66.754585, 58.684212, 54.758614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.994041, 58.911175, 55.495903>,  <66.877083, 59.364029, 54.871944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.994041, 58.911175, 55.495903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.066269, 58.698322, 55.165031>,  <67.109604, 58.570610, 54.966507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.066269, 58.698322, 55.165031>,  <66.994041, 58.911175, 55.495903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.066269, 58.698322, 55.165031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950316, -0.122426, 0.286202,
		-0.253566, -0.837762, 0.483590,
		0.180565, -0.532135, -0.827181,
		67.120438, 58.538681, 54.916878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.297684, 58.317730, 55.693218>,  <66.994041, 58.911175, 55.495903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.297684, 58.317730, 55.693218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.406166, 58.429398, 55.324760>,  <67.471252, 58.496399, 55.103683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.406166, 58.429398, 55.324760>,  <67.297684, 58.317730, 55.693218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.406166, 58.429398, 55.324760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962142, -0.051745, 0.267592,
		0.027040, -0.958845, -0.282638,
		0.271204, 0.279174, -0.921146,
		67.487526, 58.513149, 55.048416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.931488, 57.960690, 55.536198>,  <67.297684, 58.317730, 55.693218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.931488, 57.960690, 55.536198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.921837, 58.244282, 55.254272>,  <67.916046, 58.414436, 55.085117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.921837, 58.244282, 55.254272>,  <67.931488, 57.960690, 55.536198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.921837, 58.244282, 55.254272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998029, 0.057938, 0.024123,
		0.057938, -0.702841, -0.708983,
		-0.024123, 0.708983, -0.704813,
		67.914597, 58.456978, 55.042828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.416748, 57.747215, 56.127228>,  <67.931488, 57.960690, 55.536198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.416748, 57.747215, 56.127228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.440536, 58.013046, 56.425171>,  <68.454811, 58.172543, 56.603935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.440536, 58.013046, 56.425171>,  <68.416748, 57.747215, 56.127228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.440536, 58.013046, 56.425171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486421, -0.632302, 0.602984,
		0.871699, -0.398166, 0.285665,
		0.059461, 0.664573, 0.744853,
		68.458374, 58.212418, 56.648628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.721046, 57.434696, 56.724655>,  <68.416748, 57.747215, 56.127228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.721046, 57.434696, 56.724655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.460495, 57.725990, 56.809875>,  <68.304169, 57.900768, 56.861008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.460495, 57.725990, 56.809875>,  <68.721046, 57.434696, 56.724655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.460495, 57.725990, 56.809875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498556, -0.622446, 0.603327,
		0.571979, 0.286769, 0.768508,
		-0.651370, 0.728234, 0.213055,
		68.265083, 57.944462, 56.873791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.804604, 56.905594, 57.355972>,  <68.721046, 57.434696, 56.724655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.804604, 56.905594, 57.355972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.129913, 57.025749, 57.156639>,  <69.325104, 57.097843, 57.037041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.129913, 57.025749, 57.156639>,  <68.804604, 56.905594, 57.355972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.129913, 57.025749, 57.156639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570841, -0.245966, 0.783352,
		0.112740, -0.921556, -0.371516,
		0.813283, 0.300392, -0.498332,
		69.373901, 57.115868, 57.007141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.390388, 56.413357, 57.373844>,  <68.804604, 56.905594, 57.355972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.390388, 56.413357, 57.373844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.559029, 56.774311, 57.338188>,  <69.660217, 56.990883, 57.316795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.559029, 56.774311, 57.338188>,  <69.390388, 56.413357, 57.373844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.559029, 56.774311, 57.338188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709173, -0.266873, 0.652574,
		0.565086, -0.338344, -0.752463,
		0.421606, 0.902387, -0.089138,
		69.685509, 57.045029, 57.311447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.066330, 56.286587, 57.510361>,  <69.390388, 56.413357, 57.373844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.066330, 56.286587, 57.510361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.028168, 56.683807, 57.537910>,  <70.005272, 56.922138, 57.554440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.028168, 56.683807, 57.537910>,  <70.066330, 56.286587, 57.510361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.028168, 56.683807, 57.537910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667431, 0.012476, 0.744567,
		0.738535, 0.117005, -0.663984,
		-0.095401, 0.993053, 0.068879,
		69.999550, 56.981724, 57.558575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.692314, 56.625057, 57.542953>,  <70.066330, 56.286587, 57.510361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.692314, 56.625057, 57.542953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.462494, 56.870346, 57.759781>,  <70.324600, 57.017521, 57.889877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.462494, 56.870346, 57.759781>,  <70.692314, 56.625057, 57.542953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.462494, 56.870346, 57.759781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714411, 0.052574, 0.697749,
		0.399376, 0.788159, -0.468299,
		-0.574557, 0.613222, 0.542072,
		70.290123, 57.054314, 57.922401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.999260, 57.217632, 57.814083>,  <70.692314, 56.625057, 57.542953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.999260, 57.217632, 57.814083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.713737, 57.121803, 58.077316>,  <70.542419, 57.064304, 58.235256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.713737, 57.121803, 58.077316>,  <70.999260, 57.217632, 57.814083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.713737, 57.121803, 58.077316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664958, 0.063022, 0.744217,
		-0.219770, 0.968830, 0.114322,
		-0.713815, -0.239576, 0.658082,
		70.499596, 57.049931, 58.274742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.244164, 57.504440, 58.434471>,  <70.999260, 57.217632, 57.814083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.244164, 57.504440, 58.434471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.969475, 57.224842, 58.514297>,  <70.804665, 57.057083, 58.562191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.969475, 57.224842, 58.514297>,  <71.244164, 57.504440, 58.434471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.969475, 57.224842, 58.514297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465287, -0.211737, 0.859462,
		-0.558507, 0.683059, 0.470638,
		-0.686715, -0.698997, 0.199562,
		70.763458, 57.015144, 58.574165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.542450, 57.362583, 59.173115>,  <71.244164, 57.504440, 58.434471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.542450, 57.362583, 59.173115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.731888, 57.697510, 59.063858>,  <71.845551, 57.898468, 58.998302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.731888, 57.697510, 59.063858>,  <71.542450, 57.362583, 59.173115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.731888, 57.697510, 59.063858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739344, -0.209423, 0.639932,
		0.478626, -0.505012, -0.718248,
		0.473591, 0.837320, -0.273142,
		71.873962, 57.948708, 58.981915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.174828, 57.169586, 59.134853>,  <71.542450, 57.362583, 59.173115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.174828, 57.169586, 59.134853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.206345, 57.565479, 59.182564>,  <72.225258, 57.803013, 59.211189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.206345, 57.565479, 59.182564>,  <72.174828, 57.169586, 59.134853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.206345, 57.565479, 59.182564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768196, -0.136540, 0.625486,
		0.635348, 0.042346, -0.771064,
		0.078794, 0.989729, 0.119280,
		72.229980, 57.862396, 59.218349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.920387, 57.394516, 58.994328>,  <72.174828, 57.169586, 59.134853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.920387, 57.394516, 58.994328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.742546, 57.622879, 59.270409>,  <72.635841, 57.759899, 59.436058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.742546, 57.622879, 59.270409>,  <72.920387, 57.394516, 58.994328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.742546, 57.622879, 59.270409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786308, -0.120292, 0.606012,
		0.429005, 0.812151, -0.395430,
		-0.444606, 0.570912, 0.690206,
		72.609161, 57.794151, 59.477470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.312256, 58.028622, 59.094193>,  <72.920387, 57.394516, 58.994328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.312256, 58.028622, 59.094193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.120819, 57.859123, 59.401802>,  <73.005959, 57.757423, 59.586369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.120819, 57.859123, 59.401802>,  <73.312256, 58.028622, 59.094193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.120819, 57.859123, 59.401802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861261, -0.056157, 0.505050,
		-0.170828, 0.904038, 0.391833,
		-0.478588, -0.423747, 0.769020,
		72.977242, 57.731998, 59.632507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.461197, 58.359287, 59.826889>,  <73.312256, 58.028622, 59.094193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.461197, 58.359287, 59.826889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.375252, 57.969200, 59.847984>,  <73.323685, 57.735149, 59.860641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.375252, 57.969200, 59.847984>,  <73.461197, 58.359287, 59.826889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.375252, 57.969200, 59.847984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746840, -0.129279, 0.652317,
		-0.629333, 0.179549, 0.756109,
		-0.214872, -0.975217, 0.052735,
		73.310791, 57.676636, 59.863804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<74.067055, 58.293251, 60.270267>,  <73.461197, 58.359287, 59.826889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<74.067055, 58.293251, 60.270267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<74.100029, 57.920898, 60.127914>,  <74.119812, 57.697487, 60.042503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<74.100029, 57.920898, 60.127914>,  <74.067055, 58.293251, 60.270267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<74.100029, 57.920898, 60.127914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656267, -0.319452, 0.683567,
		-0.750012, 0.177207, -0.637244,
		0.082436, -0.930886, -0.355887,
		74.124763, 57.641632, 60.021149>
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
