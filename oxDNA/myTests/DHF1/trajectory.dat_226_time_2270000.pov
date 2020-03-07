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
	<1.163986, -0.396180, 1.635339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.940174, -0.292274, 1.320518>,  <0.805887, -0.229931, 1.131626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.940174, -0.292274, 1.320518>,  <1.163986, -0.396180, 1.635339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.940174, -0.292274, 1.320518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365884, 0.774657, 0.515787,
		0.743677, 0.576568, -0.338401,
		-0.559530, 0.259764, -0.787051,
		0.772315, -0.214345, 1.084403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.446288, 0.163895, 1.222841>,  <1.163986, -0.396180, 1.635339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.446288, 0.163895, 1.222841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.047123, 0.166451, 1.197128>,  <0.807624, 0.167984, 1.181701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.047123, 0.166451, 1.197128>,  <1.446288, 0.163895, 1.222841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.047123, 0.166451, 1.197128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014022, 0.949948, 0.312092,
		0.063058, 0.312342, -0.947874,
		-0.997911, 0.006389, -0.064282,
		0.747750, 0.168367, 1.177844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.163341, 0.636960, 0.725974>,  <1.446288, 0.163895, 1.222841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.163341, 0.636960, 0.725974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.939800, 0.579063, 1.052589>,  <0.805676, 0.544326, 1.248559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.939800, 0.579063, 1.052589>,  <1.163341, 0.636960, 0.725974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.939800, 0.579063, 1.052589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026165, 0.981082, 0.191815,
		-0.828855, 0.128561, -0.544492,
		-0.558851, -0.144740, 0.816539,
		0.772145, 0.535641, 1.297551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.635127, 1.086412, 0.668762>,  <1.163341, 0.636960, 0.725974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.635127, 1.086412, 0.668762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.733994, 0.991699, 1.044601>,  <0.793313, 0.934871, 1.270105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.733994, 0.991699, 1.044601>,  <0.635127, 1.086412, 0.668762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.733994, 0.991699, 1.044601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167420, 0.965535, 0.199279,
		-0.954400, 0.108053, 0.278289,
		0.247165, -0.236783, 0.939597,
		0.808143, 0.920664, 1.326481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.258181, 1.574202, 1.097549>,  <0.635127, 1.086412, 0.668762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.258181, 1.574202, 1.097549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.592674, 1.452438, 1.279999>,  <0.793370, 1.379380, 1.389469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.592674, 1.452438, 1.279999>,  <0.258181, 1.574202, 1.097549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.592674, 1.452438, 1.279999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205030, 0.945010, 0.254792,
		-0.508603, -0.119546, 0.852661,
		0.836233, -0.304409, 0.456124,
		0.843544, 1.361116, 1.416836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.296846, 1.950276, 1.778461>,  <0.258181, 1.574202, 1.097549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.296846, 1.950276, 1.778461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.656609, 1.841560, 1.641525>,  <0.872466, 1.776331, 1.559364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.656609, 1.841560, 1.641525>,  <0.296846, 1.950276, 1.778461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.656609, 1.841560, 1.641525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293727, 0.955803, 0.012864,
		0.323714, -0.112124, 0.939488,
		0.899408, -0.271788, -0.342340,
		0.926431, 1.760024, 1.538823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.794553, 2.271344, 2.109225>,  <0.296846, 1.950276, 1.778461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.794553, 2.271344, 2.109225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.950748, 2.186615, 1.750862>,  <1.044466, 2.135777, 1.535844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.950748, 2.186615, 1.750862>,  <0.794553, 2.271344, 2.109225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.950748, 2.186615, 1.750862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420480, 0.906768, -0.031122,
		0.818972, -0.364558, 0.443150,
		0.390488, -0.211823, -0.895907,
		1.067895, 2.123068, 1.482090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.483253, 2.512892, 2.144234>,  <0.794553, 2.271344, 2.109225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.483253, 2.512892, 2.144234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.449619, 2.503990, 1.745750>,  <1.429439, 2.498649, 1.506660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.449619, 2.503990, 1.745750>,  <1.483253, 2.512892, 2.144234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.449619, 2.503990, 1.745750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392921, 0.918005, -0.053672,
		0.915720, -0.395945, -0.068442,
		-0.084081, -0.022256, -0.996210,
		1.424394, 2.497314, 1.446887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.272388, 3.821055, 0.252461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.583084, 3.700150, 0.473480>,  <2.769502, 3.627606, 0.606092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.583084, 3.700150, 0.473480>,  <2.272388, 3.821055, 0.252461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.583084, 3.700150, 0.473480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620570, -0.517102, 0.589490,
		0.107542, -0.800776, -0.589230,
		0.776742, -0.302264, 0.552548,
		2.816107, 3.609470, 0.639244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.012402, 3.686165, 0.981327>,  <2.272388, 3.821055, 0.252461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.012402, 3.686165, 0.981327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.042859, 3.436615, 0.670204>,  <2.061134, 3.286885, 0.483531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.042859, 3.436615, 0.670204>,  <2.012402, 3.686165, 0.981327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.042859, 3.436615, 0.670204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504574, -0.696927, 0.509606,
		-0.860004, 0.353658, -0.367858,
		0.076144, -0.623875, -0.777806,
		2.065702, 3.249453, 0.436862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.287626, 3.401595, 0.789629>,  <2.012402, 3.686165, 0.981327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.287626, 3.401595, 0.789629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.590160, 3.162460, 0.683388>,  <1.771681, 3.018980, 0.619643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.590160, 3.162460, 0.683388>,  <1.287626, 3.401595, 0.789629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.590160, 3.162460, 0.683388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533109, -0.798580, 0.279401,
		-0.379142, -0.069725, -0.922708,
		0.756337, -0.597837, -0.265604,
		1.817062, 2.983109, 0.603706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.051115, 2.865027, 0.301273>,  <1.287626, 3.401595, 0.789629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.051115, 2.865027, 0.301273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.353217, 2.745102, 0.534409>,  <1.534478, 2.673146, 0.674290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.353217, 2.745102, 0.534409>,  <1.051115, 2.865027, 0.301273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.353217, 2.745102, 0.534409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516616, -0.819557, 0.247860,
		0.403358, -0.488302, -0.773863,
		0.755255, -0.299814, 0.582839,
		1.579794, 2.655158, 0.709260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.381770, 2.200634, 0.218174>,  <1.051115, 2.865027, 0.301273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.381770, 2.200634, 0.218174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.437577, 2.275726, 0.607079>,  <1.471061, 2.320781, 0.840421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.437577, 2.275726, 0.607079>,  <1.381770, 2.200634, 0.218174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.437577, 2.275726, 0.607079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299068, -0.928024, 0.222104,
		0.943977, -0.321759, -0.073331,
		0.139517, 0.187730, 0.972262,
		1.479432, 2.332045, 0.898757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.770780, 1.735804, 0.460207>,  <1.381770, 2.200634, 0.218174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.770780, 1.735804, 0.460207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.557789, 1.869232, 0.771385>,  <1.429994, 1.949289, 0.958092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.557789, 1.869232, 0.771385>,  <1.770780, 1.735804, 0.460207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.557789, 1.869232, 0.771385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344948, -0.924808, 0.160439,
		0.772968, -0.182921, 0.607504,
		-0.532477, 0.333571, 0.777945,
		1.398046, 1.969304, 1.004769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.965339, 1.493627, 1.135085>,  <1.770780, 1.735804, 0.460207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.965339, 1.493627, 1.135085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.574673, 1.579193, 1.127472>,  <1.340273, 1.630533, 1.122904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.574673, 1.579193, 1.127472>,  <1.965339, 1.493627, 1.135085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.574673, 1.579193, 1.127472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214760, -0.973139, 0.082935,
		-0.000780, 0.085087, 0.996373,
		-0.976666, 0.213916, -0.019032,
		1.281673, 1.643368, 1.121762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.573165, 1.278755, 1.768084>,  <1.965339, 1.493627, 1.135085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.573165, 1.278755, 1.768084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.329440, 1.285034, 1.450974>,  <1.183205, 1.288802, 1.260707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.329440, 1.285034, 1.450974>,  <1.573165, 1.278755, 1.768084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.329440, 1.285034, 1.450974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361995, -0.895042, 0.260499,
		-0.705478, 0.445705, 0.551043,
		-0.609312, 0.015699, -0.792775,
		1.146646, 1.289744, 1.213141>
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
