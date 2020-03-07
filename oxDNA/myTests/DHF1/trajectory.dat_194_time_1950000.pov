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
	<2.966190, 3.931938, 0.936729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.193832, 4.003143, 0.615623>,  <3.330418, 4.045866, 0.422960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.193832, 4.003143, 0.615623>,  <2.966190, 3.931938, 0.936729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.193832, 4.003143, 0.615623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498063, -0.851436, 0.164288,
		-0.654256, -0.493324, -0.573219,
		0.569107, 0.178012, -0.802763,
		3.364564, 4.056547, 0.374795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.928886, 3.354339, 0.428704>,  <2.966190, 3.931938, 0.936729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.928886, 3.354339, 0.428704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.287079, 3.532379, 0.428589>,  <3.501994, 3.639203, 0.428520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.287079, 3.532379, 0.428589>,  <2.928886, 3.354339, 0.428704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.287079, 3.532379, 0.428589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440202, -0.885531, 0.148514,
		0.065849, -0.133118, -0.988910,
		0.895481, 0.445099, -0.000287,
		3.555723, 3.665909, 0.428503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.394276, 2.986809, 0.127073>,  <2.928886, 3.354339, 0.428704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.394276, 2.986809, 0.127073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.580219, 3.205170, 0.405899>,  <3.691785, 3.336186, 0.573195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.580219, 3.205170, 0.405899>,  <3.394276, 2.986809, 0.127073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.580219, 3.205170, 0.405899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496654, -0.812546, 0.305130,
		0.732968, 0.204358, -0.648842,
		0.464858, 0.545900, 0.697065,
		3.719677, 3.368940, 0.615019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.175898, 2.795982, 0.186022>,  <3.394276, 2.986809, 0.127073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.175898, 2.795982, 0.186022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.062153, 2.927002, 0.546432>,  <3.993906, 3.005614, 0.762679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.062153, 2.927002, 0.546432>,  <4.175898, 2.795982, 0.186022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.062153, 2.927002, 0.546432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402860, -0.811999, 0.422328,
		0.869966, 0.483082, 0.098945,
		-0.284363, 0.327550, 0.901026,
		3.976844, 3.025267, 0.816740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.787127, 2.932797, 0.623931>,  <4.175898, 2.795982, 0.186022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.787127, 2.932797, 0.623931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.445232, 2.821808, 0.799400>,  <4.240096, 2.755214, 0.904682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.445232, 2.821808, 0.799400>,  <4.787127, 2.932797, 0.623931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.445232, 2.821808, 0.799400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448253, -0.820701, 0.354285,
		0.261715, 0.499457, 0.825862,
		-0.854736, -0.277474, 0.438673,
		4.188811, 2.738566, 0.931002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.086729, 2.583766, 1.100015>,  <4.787127, 2.932797, 0.623931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.086729, 2.583766, 1.100015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.706963, 2.463638, 1.136719>,  <4.479103, 2.391562, 1.158741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.706963, 2.463638, 1.136719>,  <5.086729, 2.583766, 1.100015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.706963, 2.463638, 1.136719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309351, -0.844228, 0.437700,
		-0.053984, 0.443945, 0.894426,
		-0.949415, -0.300320, 0.091760,
		4.422138, 2.373542, 1.164247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.873990, 2.327965, 1.853859>,  <5.086729, 2.583766, 1.100015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.873990, 2.327965, 1.853859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.635990, 2.147949, 1.587494>,  <4.493190, 2.039940, 1.427675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.635990, 2.147949, 1.587494>,  <4.873990, 2.327965, 1.853859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.635990, 2.147949, 1.587494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154789, -0.877186, 0.454516,
		-0.788680, 0.167360, 0.591586,
		-0.594999, -0.450039, -0.665914,
		4.457490, 2.012938, 1.387720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.247704, 1.925471, 2.212749>,  <4.873990, 2.327965, 1.853859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.247704, 1.925471, 2.212749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.345871, 1.759613, 1.862244>,  <4.404771, 1.660098, 1.651940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.345871, 1.759613, 1.862244>,  <4.247704, 1.925471, 2.212749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.345871, 1.759613, 1.862244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247527, -0.847142, 0.470191,
		-0.937284, -0.332292, -0.105267,
		0.245417, -0.414646, -0.876264,
		4.419496, 1.635219, 1.599364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.185402, 0.101147, 2.198737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.190508, 0.038757, 1.803665>,  <5.193572, 0.001324, 1.566622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.190508, 0.038757, 1.803665>,  <5.185402, 0.101147, 2.198737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.190508, 0.038757, 1.803665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128564, 0.979305, -0.156312,
		0.991619, 0.128976, -0.007551,
		0.012766, -0.155973, -0.987679,
		5.194337, -0.008035, 1.507362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.574609, 0.643661, 1.915163>,  <5.185402, 0.101147, 2.198737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.574609, 0.643661, 1.915163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.311590, 0.512375, 1.643898>,  <5.153779, 0.433603, 1.481139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.311590, 0.512375, 1.643898>,  <5.574609, 0.643661, 1.915163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.311590, 0.512375, 1.643898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249429, 0.944196, -0.215124,
		0.710926, 0.027700, -0.702721,
		-0.657547, -0.328216, -0.678163,
		5.114326, 0.413910, 1.440449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.571610, 1.068694, 1.232456>,  <5.574609, 0.643661, 1.915163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.571610, 1.068694, 1.232456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.200438, 0.928818, 1.284088>,  <4.977734, 0.844892, 1.315068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.200438, 0.928818, 1.284088>,  <5.571610, 1.068694, 1.232456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.200438, 0.928818, 1.284088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367247, 0.916959, -0.155936,
		-0.063833, -0.192102, -0.979297,
		-0.927931, -0.349690, 0.129081,
		4.922058, 0.823911, 1.322812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.114131, 1.111197, 0.660600>,  <5.571610, 1.068694, 1.232456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.114131, 1.111197, 0.660600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.872141, 1.112289, 0.979095>,  <4.726947, 1.112945, 1.170193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.872141, 1.112289, 0.979095>,  <5.114131, 1.111197, 0.660600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.872141, 1.112289, 0.979095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299252, 0.925904, -0.230545,
		-0.737871, -0.377750, -0.559331,
		-0.604975, 0.002731, 0.796240,
		4.690649, 1.113109, 1.217967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.421683, 1.294241, 0.307600>,  <5.114131, 1.111197, 0.660600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.421683, 1.294241, 0.307600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.435986, 1.371078, 0.699890>,  <4.444567, 1.417181, 0.935264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.435986, 1.371078, 0.699890>,  <4.421683, 1.294241, 0.307600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.435986, 1.371078, 0.699890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452429, 0.878138, -0.155506,
		-0.891084, -0.438148, 0.118307,
		0.035755, 0.192095, 0.980725,
		4.446712, 1.428707, 0.994108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.782434, 1.445227, 0.462350>,  <4.421683, 1.294241, 0.307600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.782434, 1.445227, 0.462350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.967571, 1.604584, 0.779099>,  <4.078654, 1.700198, 0.969148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.967571, 1.604584, 0.779099>,  <3.782434, 1.445227, 0.462350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.967571, 1.604584, 0.779099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524563, 0.843208, -0.117614,
		-0.714569, -0.360949, 0.599255,
		0.462844, 0.398391, 0.791871,
		4.106424, 1.724101, 1.016660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.295022, 1.831655, 0.834309>,  <3.782434, 1.445227, 0.462350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.295022, 1.831655, 0.834309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.623844, 2.019363, 0.963310>,  <3.821137, 2.131989, 1.040711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.623844, 2.019363, 0.963310>,  <3.295022, 1.831655, 0.834309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.623844, 2.019363, 0.963310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509116, 0.859402, 0.047218,
		-0.255003, -0.203008, 0.945390,
		0.822055, 0.469272, 0.322504,
		3.870461, 2.160145, 1.060061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.106425, 2.244823, 1.481718>,  <3.295022, 1.831655, 0.834309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.106425, 2.244823, 1.481718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.434389, 2.377686, 1.295204>,  <3.631167, 2.457403, 1.183296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.434389, 2.377686, 1.295204>,  <3.106425, 2.244823, 1.481718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.434389, 2.377686, 1.295204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368284, 0.929599, 0.014610,
		0.438310, 0.159746, 0.884514,
		0.819910, 0.332156, -0.466284,
		3.680362, 2.477332, 1.155319>
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
