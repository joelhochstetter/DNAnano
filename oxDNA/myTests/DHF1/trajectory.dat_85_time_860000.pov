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
	<3.030613, 1.015929, 0.853819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.952170, 0.978710, 0.463356>,  <2.905105, 0.956379, 0.229078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.952170, 0.978710, 0.463356>,  <3.030613, 1.015929, 0.853819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.952170, 0.978710, 0.463356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979042, 0.074368, 0.189597,
		0.054953, 0.992881, -0.105682,
		-0.196106, -0.093048, -0.976158,
		2.893338, 0.950796, 0.170509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.639686, 1.543044, 0.564303>,  <3.030613, 1.015929, 0.853819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.639686, 1.543044, 0.564303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.563832, 1.193359, 0.385509>,  <2.518320, 0.983549, 0.278233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.563832, 1.193359, 0.385509>,  <2.639686, 1.543044, 0.564303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.563832, 1.193359, 0.385509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979925, 0.139983, 0.141956,
		-0.061530, 0.464930, -0.883207,
		-0.189634, -0.874211, -0.446983,
		2.506942, 0.931096, 0.251415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.243582, 1.734559, -0.057867>,  <2.639686, 1.543044, 0.564303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.243582, 1.734559, -0.057867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.157887, 1.370766, 0.084650>,  <2.106470, 1.152490, 0.170160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.157887, 1.370766, 0.084650>,  <2.243582, 1.734559, -0.057867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.157887, 1.370766, 0.084650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950124, 0.278669, 0.140031,
		-0.226644, -0.308523, -0.923822,
		-0.214237, -0.909482, 0.356293,
		2.093615, 1.097921, 0.191538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.603612, 1.464387, -0.397494>,  <2.243582, 1.734559, -0.057867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.603612, 1.464387, -0.397494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.647181, 1.258518, -0.057318>,  <1.673322, 1.134997, 0.146788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.647181, 1.258518, -0.057318>,  <1.603612, 1.464387, -0.397494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.647181, 1.258518, -0.057318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975164, 0.110654, 0.191861,
		-0.192850, -0.850216, -0.489838,
		0.108921, -0.514673, 0.850440,
		1.679857, 1.104117, 0.197814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.154615, 0.846430, -0.400822>,  <1.603612, 1.464387, -0.397494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.154615, 0.846430, -0.400822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.215909, 0.979427, -0.028593>,  <1.252686, 1.059226, 0.194745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.215909, 0.979427, -0.028593>,  <1.154615, 0.846430, -0.400822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.215909, 0.979427, -0.028593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903558, -0.334157, 0.268182,
		0.400127, -0.881922, 0.249223,
		0.153236, 0.332495, 0.930573,
		1.261880, 1.079175, 0.250579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.973293, 0.295811, 0.151471>,  <1.154615, 0.846430, -0.400822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.973293, 0.295811, 0.151471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.905915, 0.659672, 0.303345>,  <0.865488, 0.877988, 0.394469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.905915, 0.659672, 0.303345>,  <0.973293, 0.295811, 0.151471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.905915, 0.659672, 0.303345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911547, -0.290334, 0.291184,
		0.375111, -0.297051, 0.878096,
		-0.168445, 0.909652, 0.379683,
		0.855382, 0.932567, 0.417250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.527886, 0.172551, 0.653824>,  <0.973293, 0.295811, 0.151471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.527886, 0.172551, 0.653824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.492319, 0.570580, 0.671389>,  <0.470979, 0.809397, 0.681927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.492319, 0.570580, 0.671389>,  <0.527886, 0.172551, 0.653824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.492319, 0.570580, 0.671389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848344, -0.098759, 0.520153,
		0.521926, 0.008999, 0.852943,
		-0.088917, 0.995071, 0.043911,
		0.465644, 0.869101, 0.684562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.472409, 0.357355, 1.282142>,  <0.527886, 0.172551, 0.653824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.472409, 0.357355, 1.282142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.279419, 0.655502, 1.098124>,  <0.163625, 0.834391, 0.987712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.279419, 0.655502, 1.098124>,  <0.472409, 0.357355, 1.282142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.279419, 0.655502, 1.098124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773725, -0.116482, 0.622721,
		0.410570, 0.656397, 0.632910,
		-0.482475, 0.745369, -0.460046,
		0.134676, 0.879113, 0.960110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.644891, 0.874883, -0.621798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.754089, 1.253471, -0.552900>,  <2.819608, 1.480624, -0.511562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.754089, 1.253471, -0.552900>,  <2.644891, 0.874883, -0.621798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.754089, 1.253471, -0.552900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659643, -0.314490, 0.682617,
		0.700246, -0.072732, -0.710187,
		0.272995, 0.946470, 0.172243,
		2.835988, 1.537412, -0.501227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.429615, 1.024929, -0.687792>,  <2.644891, 0.874883, -0.621798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.429615, 1.024929, -0.687792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.280373, 1.291206, -0.429291>,  <3.190827, 1.450973, -0.274190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.280373, 1.291206, -0.429291>,  <3.429615, 1.024929, -0.687792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.280373, 1.291206, -0.429291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619719, -0.339561, 0.707564,
		0.690464, 0.664491, -0.285851,
		-0.373106, 0.665694, 0.646253,
		3.168441, 1.490915, -0.235415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.937182, 1.662919, -0.256140>,  <3.429615, 1.024929, -0.687792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.937182, 1.662919, -0.256140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.621513, 1.534462, -0.046730>,  <3.432112, 1.457388, 0.078916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.621513, 1.534462, -0.046730>,  <3.937182, 1.662919, -0.256140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.621513, 1.534462, -0.046730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603310, -0.245729, 0.758706,
		-0.115007, 0.914596, 0.387670,
		-0.789171, -0.321142, 0.523524,
		3.384762, 1.438119, 0.110327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.224138, 1.127245, 0.209262>,  <3.937182, 1.662919, -0.256140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.224138, 1.127245, 0.209262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.411636, 1.126122, 0.562593>,  <4.524136, 1.125448, 0.774592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.411636, 1.126122, 0.562593>,  <4.224138, 1.127245, 0.209262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.411636, 1.126122, 0.562593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873755, 0.148330, -0.463195,
		-0.129724, 0.988934, 0.071983,
		0.468747, -0.002808, 0.883328,
		4.552260, 1.125279, 0.827592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.616120, 1.807869, 0.271971>,  <4.224138, 1.127245, 0.209262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.616120, 1.807869, 0.271971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.797623, 1.538750, 0.505705>,  <4.906524, 1.377278, 0.645945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.797623, 1.538750, 0.505705>,  <4.616120, 1.807869, 0.271971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.797623, 1.538750, 0.505705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883702, 0.255265, -0.392313,
		0.114787, 0.694393, 0.710381,
		0.453756, -0.672798, 0.584336,
		4.933749, 1.336910, 0.681006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.148338, 2.112297, 0.744693>,  <4.616120, 1.807869, 0.271971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.148338, 2.112297, 0.744693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.261097, 1.733253, 0.684597>,  <5.328753, 1.505827, 0.648540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.261097, 1.733253, 0.684597>,  <5.148338, 2.112297, 0.744693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.261097, 1.733253, 0.684597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925416, 0.309880, -0.218130,
		0.253258, -0.077543, 0.964286,
		0.281898, -0.947608, -0.150239,
		5.345666, 1.448971, 0.639525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.735888, 2.178316, 0.963275>,  <5.148338, 2.112297, 0.744693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.735888, 2.178316, 0.963275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.755245, 1.816635, 0.793533>,  <5.766860, 1.599627, 0.691688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.755245, 1.816635, 0.793533>,  <5.735888, 2.178316, 0.963275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.755245, 1.816635, 0.793533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994043, 0.085139, -0.068050,
		0.097660, -0.418533, 0.902936,
		0.048394, -0.904202, -0.424355,
		5.769763, 1.545375, 0.666227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.196744, 1.768865, 1.410164>,  <5.735888, 2.178316, 0.963275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.196744, 1.768865, 1.410164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.229553, 1.599991, 1.049047>,  <6.249239, 1.498666, 0.832378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.229553, 1.599991, 1.049047>,  <6.196744, 1.768865, 1.410164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.229553, 1.599991, 1.049047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995987, 0.002178, 0.089472,
		-0.035808, -0.906507, 0.420670,
		0.082024, -0.422186, -0.902791,
		6.254160, 1.473335, 0.778210>
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
