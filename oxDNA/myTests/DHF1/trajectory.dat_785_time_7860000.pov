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
	<1.489307, 2.102783, 3.070284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.779133, 1.845314, 3.168827>,  <1.953028, 1.690833, 3.227953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.779133, 1.845314, 3.168827>,  <1.489307, 2.102783, 3.070284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.779133, 1.845314, 3.168827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650455, -0.520473, 0.553188,
		-0.227849, -0.561066, -0.795795,
		0.724565, -0.643672, 0.246359,
		1.996502, 1.652212, 3.242734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.369195, 1.405183, 2.860527>,  <1.489307, 2.102783, 3.070284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.369195, 1.405183, 2.860527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.579578, 1.430439, 3.199792>,  <1.705809, 1.445593, 3.403351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.579578, 1.430439, 3.199792>,  <1.369195, 1.405183, 2.860527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.579578, 1.430439, 3.199792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761091, -0.410166, 0.502499,
		0.379615, -0.909823, -0.167675,
		0.525959, 0.063141, 0.848163,
		1.737366, 1.449381, 3.454241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.474386, 0.702955, 3.302316>,  <1.369195, 1.405183, 2.860527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.474386, 0.702955, 3.302316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.419827, 1.050529, 3.492620>,  <1.387091, 1.259074, 3.606803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.419827, 1.050529, 3.492620>,  <1.474386, 0.702955, 3.302316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.419827, 1.050529, 3.492620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706647, -0.421920, 0.568008,
		0.694295, -0.258718, 0.671580,
		-0.136399, 0.868935, 0.475760,
		1.378907, 1.311210, 3.635348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.401363, 0.571096, 4.013460>,  <1.474386, 0.702955, 3.302316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.401363, 0.571096, 4.013460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.222231, 0.919353, 3.932047>,  <1.114752, 1.128308, 3.883199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.222231, 0.919353, 3.932047>,  <1.401363, 0.571096, 4.013460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.222231, 0.919353, 3.932047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764229, -0.254564, 0.592581,
		0.464115, 0.420922, 0.779373,
		-0.447831, 0.870645, -0.203533,
		1.087882, 1.180547, 3.870987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.388663, 0.945081, 4.616796>,  <1.401363, 0.571096, 4.013460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.388663, 0.945081, 4.616796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.096067, 1.046291, 4.363529>,  <0.920510, 1.107018, 4.211569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.096067, 1.046291, 4.363529>,  <1.388663, 0.945081, 4.616796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.096067, 1.046291, 4.363529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681299, -0.233812, 0.693659,
		0.027471, 0.938781, 0.343418,
		-0.731489, 0.253026, -0.633168,
		0.876621, 1.122199, 4.173579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.868628, 1.199443, 5.041502>,  <1.388663, 0.945081, 4.616796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.868628, 1.199443, 5.041502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.685123, 1.096157, 4.701417>,  <0.575021, 1.034185, 4.497366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.685123, 1.096157, 4.701417>,  <0.868628, 1.199443, 5.041502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.685123, 1.096157, 4.701417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651762, -0.552565, 0.519498,
		-0.603940, 0.792462, 0.085201,
		-0.458762, -0.258215, -0.850213,
		0.547495, 1.018692, 4.446353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.232920, 1.354067, 5.175878>,  <0.868628, 1.199443, 5.041502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.232920, 1.354067, 5.175878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.225491, 1.090584, 4.875010>,  <0.221033, 0.932494, 4.694489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.225491, 1.090584, 4.875010>,  <0.232920, 1.354067, 5.175878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.225491, 1.090584, 4.875010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525494, -0.633581, 0.567830,
		-0.850595, 0.405807, -0.334379,
		-0.018573, -0.658708, -0.752170,
		0.219919, 0.892972, 4.649359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.489550, 1.105528, 5.102284>,  <0.232920, 1.354067, 5.175878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.489550, 1.105528, 5.102284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.259726, 0.825024, 4.933470>,  <-0.121831, 0.656721, 4.832181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.259726, 0.825024, 4.933470>,  <-0.489550, 1.105528, 5.102284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.259726, 0.825024, 4.933470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561865, -0.712894, 0.419630,
		-0.595137, -0.003975, -0.803614,
		0.574560, -0.701260, -0.422036,
		-0.087357, 0.614646, 4.806859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.688810, -0.143414, 5.601659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.543350, -0.459595, 5.404501>,  <-0.456075, -0.649303, 5.286206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.543350, -0.459595, 5.404501>,  <-0.688810, -0.143414, 5.601659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.543350, -0.459595, 5.404501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424426, 0.611602, -0.667687,
		0.829230, 0.033606, 0.557896,
		0.363649, -0.790452, -0.492895,
		-0.434256, -0.696730, 5.256632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.151949, -0.071246, 5.526590>,  <-0.688810, -0.143414, 5.601659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.151949, -0.071246, 5.526590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.075424, -0.211304, 5.228789>,  <-0.211848, -0.295339, 5.050109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.075424, -0.211304, 5.228789>,  <0.151949, -0.071246, 5.526590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.075424, -0.211304, 5.228789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358012, 0.709477, -0.607018,
		0.740752, -0.611589, -0.277932,
		-0.568431, -0.350147, -0.744502,
		-0.245954, -0.316347, 5.005439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.564768, -0.328926, 4.929912>,  <0.151949, -0.071246, 5.526590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.564768, -0.328926, 4.929912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.207970, -0.164452, 4.854790>,  <-0.006109, -0.065767, 4.809717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.207970, -0.164452, 4.854790>,  <0.564768, -0.328926, 4.929912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.207970, -0.164452, 4.854790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436334, 0.674592, -0.595431,
		-0.118142, -0.613067, -0.781148,
		-0.891995, 0.411187, -0.187804,
		-0.059629, -0.041096, 4.798449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.528434, -0.309778, 4.249023>,  <0.564768, -0.328926, 4.929912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.528434, -0.309778, 4.249023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.291992, -0.016663, 4.383853>,  <0.150127, 0.159206, 4.464751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.291992, -0.016663, 4.383853>,  <0.528434, -0.309778, 4.249023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.291992, -0.016663, 4.383853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487856, 0.657598, -0.574075,
		-0.642335, -0.174893, -0.746203,
		-0.591103, 0.732787, 0.337075,
		0.114661, 0.203174, 4.484975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.197541, -0.012381, 3.690461>,  <0.528434, -0.309778, 4.249023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.197541, -0.012381, 3.690461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.207993, 0.270973, 3.972598>,  <0.214263, 0.440986, 4.141880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.207993, 0.270973, 3.972598>,  <0.197541, -0.012381, 3.690461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.207993, 0.270973, 3.972598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519518, 0.593193, -0.614999,
		-0.854060, 0.382507, -0.352520,
		0.026129, 0.708386, 0.705341,
		0.215831, 0.483489, 4.184200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.104430, 0.677103, 3.376422>,  <0.197541, -0.012381, 3.690461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.104430, 0.677103, 3.376422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.124420, 0.777336, 3.688801>,  <0.261731, 0.837476, 3.876228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.124420, 0.777336, 3.688801>,  <-0.104430, 0.677103, 3.376422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.124420, 0.777336, 3.688801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478333, 0.671530, -0.565903,
		-0.666235, 0.697321, 0.264338,
		0.572127, 0.250582, 0.780948,
		0.296058, 0.852511, 3.923085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.010047, 1.334088, 3.176708>,  <-0.104430, 0.677103, 3.376422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.010047, 1.334088, 3.176708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.258144, 1.275040, 3.484865>,  <0.407003, 1.239610, 3.669760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.258144, 1.275040, 3.484865>,  <0.010047, 1.334088, 3.176708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.258144, 1.275040, 3.484865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636730, 0.668346, -0.384563,
		-0.458120, 0.729055, 0.508532,
		0.620243, -0.147622, 0.770394,
		0.444217, 1.230753, 3.715984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.179946, 2.075760, 3.467191>,  <0.010047, 1.334088, 3.176708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.179946, 2.075760, 3.467191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.465668, 1.813103, 3.564013>,  <0.637101, 1.655508, 3.622106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.465668, 1.813103, 3.564013>,  <0.179946, 2.075760, 3.467191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.465668, 1.813103, 3.564013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696829, 0.635312, -0.332878,
		0.064803, 0.406446, 0.911374,
		0.714304, -0.656643, 0.242054,
		0.679959, 1.616110, 3.636629>
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
