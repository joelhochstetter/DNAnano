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
	<24.522127, 35.053192, 35.374493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.496809, 35.183163, 34.997044>,  <24.481617, 35.261147, 34.770576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.496809, 35.183163, 34.997044>,  <24.522127, 35.053192, 35.374493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.496809, 35.183163, 34.997044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281443, 0.912950, 0.295486,
		0.957488, -0.246871, -0.149235,
		-0.063297, 0.324926, -0.943619,
		24.477819, 35.280640, 34.713959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.921499, 35.660656, 35.483158>,  <24.522127, 35.053192, 35.374493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.921499, 35.660656, 35.483158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.234339, 35.569633, 35.251110>,  <25.422043, 35.515022, 35.111881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.234339, 35.569633, 35.251110>,  <24.921499, 35.660656, 35.483158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.234339, 35.569633, 35.251110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618037, -0.402301, -0.675413,
		-0.079690, 0.886777, -0.455277,
		0.782099, -0.227555, -0.580120,
		25.468969, 35.501366, 35.077072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.752916, 35.763905, 34.769520>,  <24.921499, 35.660656, 35.483158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.752916, 35.763905, 34.769520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.071028, 35.524048, 34.733822>,  <25.261894, 35.380135, 34.712402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.071028, 35.524048, 34.733822>,  <24.752916, 35.763905, 34.769520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.071028, 35.524048, 34.733822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407519, -0.419773, -0.810999,
		0.448845, 0.681338, -0.578201,
		0.795277, -0.599641, -0.089245,
		25.309610, 35.344154, 34.707047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.049965, 35.777225, 34.070202>,  <24.752916, 35.763905, 34.769520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.049965, 35.777225, 34.070202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.168633, 35.429966, 34.229355>,  <25.239832, 35.221611, 34.324844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.168633, 35.429966, 34.229355>,  <25.049965, 35.777225, 34.070202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.168633, 35.429966, 34.229355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174942, -0.458990, -0.871047,
		0.938820, 0.188806, -0.288043,
		0.296668, -0.868148, 0.397879,
		25.257633, 35.169521, 34.348717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.521170, 35.675793, 33.694447>,  <25.049965, 35.777225, 34.070202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.521170, 35.675793, 33.694447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.424435, 35.320038, 33.849625>,  <25.366394, 35.106583, 33.942730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.424435, 35.320038, 33.849625>,  <25.521170, 35.675793, 33.694447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.424435, 35.320038, 33.849625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027846, -0.406005, -0.913446,
		0.969917, -0.210102, 0.122953,
		-0.241836, -0.889391, 0.387941,
		25.351883, 35.053219, 33.966007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.049650, 35.265354, 33.485992>,  <25.521170, 35.675793, 33.694447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.049650, 35.265354, 33.485992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.704552, 35.071400, 33.543339>,  <25.497492, 34.955029, 33.577747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.704552, 35.071400, 33.543339>,  <26.049650, 35.265354, 33.485992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.704552, 35.071400, 33.543339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091949, -0.429259, -0.898489,
		0.497204, -0.761987, 0.414927,
		-0.862748, -0.484884, 0.143365,
		25.445726, 34.925934, 33.586349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298147, 34.679779, 33.373940>,  <26.049650, 35.265354, 33.485992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298147, 34.679779, 33.373940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.900402, 34.677605, 33.331593>,  <25.661755, 34.676300, 33.306183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.900402, 34.677605, 33.331593>,  <26.298147, 34.679779, 33.373940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.900402, 34.677605, 33.331593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103578, -0.262558, -0.959341,
		-0.022583, -0.964901, 0.261642,
		-0.994365, -0.005435, -0.105872,
		25.602093, 34.675976, 33.299831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053932, 34.030930, 33.179440>,  <26.298147, 34.679779, 33.373940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.053932, 34.030930, 33.179440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813469, 34.321949, 33.047211>,  <25.669191, 34.496563, 32.967873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813469, 34.321949, 33.047211>,  <26.053932, 34.030930, 33.179440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813469, 34.321949, 33.047211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046324, -0.381239, -0.923315,
		-0.797787, -0.570371, 0.195481,
		-0.601158, 0.727553, -0.330570,
		25.633121, 34.540215, 32.948040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.572643, 33.697220, 32.707771>,  <26.053932, 34.030930, 33.179440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.572643, 33.697220, 32.707771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616112, 34.079483, 32.598293>,  <25.642193, 34.308842, 32.532608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616112, 34.079483, 32.598293>,  <25.572643, 33.697220, 32.707771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.616112, 34.079483, 32.598293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287073, -0.293765, -0.911752,
		-0.951725, 0.020512, -0.306267,
		0.108672, 0.955657, -0.273695,
		25.648714, 34.366180, 32.516186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.090973, 33.848198, 32.108280>,  <25.572643, 33.697220, 32.707771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.090973, 33.848198, 32.108280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400764, 34.100929, 32.095806>,  <25.586639, 34.252567, 32.088322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400764, 34.100929, 32.095806>,  <25.090973, 33.848198, 32.108280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400764, 34.100929, 32.095806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208086, -0.301000, -0.930644,
		-0.597399, 0.714273, -0.364593,
		0.774477, 0.631833, -0.031187,
		25.633108, 34.290478, 32.086449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148720, 34.028004, 31.416573>,  <25.090973, 33.848198, 32.108280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148720, 34.028004, 31.416573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506296, 34.149612, 31.548292>,  <25.720842, 34.222580, 31.627323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506296, 34.149612, 31.548292>,  <25.148720, 34.028004, 31.416573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.506296, 34.149612, 31.548292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389275, -0.162573, -0.906661,
		-0.222112, 0.938690, -0.263680,
		0.893941, 0.304025, 0.329299,
		25.774479, 34.240818, 31.647081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.355068, 34.492313, 30.903528>,  <25.148720, 34.028004, 31.416573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.355068, 34.492313, 30.903528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689903, 34.333580, 31.054159>,  <25.890804, 34.238338, 31.144539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689903, 34.333580, 31.054159>,  <25.355068, 34.492313, 30.903528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689903, 34.333580, 31.054159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296115, -0.250140, -0.921817,
		0.460004, 0.883150, -0.091880,
		0.837086, -0.396832, 0.376579,
		25.941029, 34.214531, 31.167133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.647852, 34.126152, 30.349346>,  <25.355068, 34.492313, 30.903528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.647852, 34.126152, 30.349346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.046251, 34.127476, 30.313627>,  <26.285292, 34.128269, 30.292196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.046251, 34.127476, 30.313627>,  <25.647852, 34.126152, 30.349346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.046251, 34.127476, 30.313627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083826, 0.311549, 0.946525,
		0.030948, -0.950224, 0.310025,
		0.996000, 0.003305, -0.089296,
		26.345051, 34.128468, 30.286839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.906214, 33.729435, 30.858892>,  <25.647852, 34.126152, 30.349346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.906214, 33.729435, 30.858892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124056, 34.047852, 30.753265>,  <26.254761, 34.238899, 30.689890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124056, 34.047852, 30.753265>,  <25.906214, 33.729435, 30.858892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.124056, 34.047852, 30.753265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114497, 0.241341, 0.963662,
		0.830841, -0.555049, 0.040292,
		0.544604, 0.796037, -0.264068,
		26.287437, 34.286663, 30.674046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404768, 33.754482, 31.364775>,  <25.906214, 33.729435, 30.858892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404768, 33.754482, 31.364775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397278, 34.123234, 31.209961>,  <26.392784, 34.344482, 31.117073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397278, 34.123234, 31.209961>,  <26.404768, 33.754482, 31.364775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397278, 34.123234, 31.209961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109318, 0.382893, 0.917302,
		0.993830, 0.059486, 0.093608,
		-0.018725, 0.921875, -0.387034,
		26.391661, 34.399796, 31.093851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.906561, 34.029392, 31.776419>,  <26.404768, 33.754482, 31.364775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.906561, 34.029392, 31.776419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640457, 34.275795, 31.607676>,  <26.480795, 34.423637, 31.506430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640457, 34.275795, 31.607676>,  <26.906561, 34.029392, 31.776419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640457, 34.275795, 31.607676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400415, 0.182526, 0.897971,
		0.630157, 0.766302, 0.125232,
		-0.665259, 0.616008, -0.421859,
		26.440880, 34.460598, 31.481117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934948, 34.710007, 31.961494>,  <26.906561, 34.029392, 31.776419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934948, 34.710007, 31.961494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570978, 34.581966, 31.855989>,  <26.352596, 34.505142, 31.792686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570978, 34.581966, 31.855989>,  <26.934948, 34.710007, 31.961494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.570978, 34.581966, 31.855989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369093, 0.334773, 0.867005,
		-0.189230, 0.886262, -0.422765,
		-0.909925, -0.320103, -0.263764,
		26.298000, 34.485935, 31.776861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.473715, 35.312244, 32.026096>,  <26.934948, 34.710007, 31.961494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.473715, 35.312244, 32.026096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.216465, 35.006844, 32.049603>,  <26.062115, 34.823605, 32.063705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.216465, 35.006844, 32.049603>,  <26.473715, 35.312244, 32.026096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.216465, 35.006844, 32.049603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500917, 0.477501, 0.721855,
		-0.579199, 0.434806, -0.689545,
		-0.643126, -0.763502, 0.058767,
		26.023527, 34.777794, 32.067234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.781046, 35.651413, 32.173588>,  <26.473715, 35.312244, 32.026096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.781046, 35.651413, 32.173588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741106, 35.268353, 32.281616>,  <25.717142, 35.038517, 32.346436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741106, 35.268353, 32.281616>,  <25.781046, 35.651413, 32.173588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.741106, 35.268353, 32.281616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511354, 0.282231, 0.811704,
		-0.853550, -0.057056, -0.517877,
		-0.099848, -0.957648, 0.270074,
		25.711151, 34.981056, 32.362640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.078089, 35.673435, 32.361160>,  <25.781046, 35.651413, 32.173588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.078089, 35.673435, 32.361160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.242928, 35.352699, 32.534237>,  <25.341831, 35.160259, 32.638084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.242928, 35.352699, 32.534237>,  <25.078089, 35.673435, 32.361160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.242928, 35.352699, 32.534237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597061, 0.121074, 0.793006,
		-0.688253, -0.585142, -0.428854,
		0.412098, -0.801841, 0.432696,
		25.366558, 35.112148, 32.664047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.642885, 35.060158, 32.676868>,  <25.078089, 35.673435, 32.361160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.642885, 35.060158, 32.676868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.800543, 34.708187, 32.782982>,  <24.895138, 34.497005, 32.846649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.800543, 34.708187, 32.782982>,  <24.642885, 35.060158, 32.676868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.800543, 34.708187, 32.782982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074060, 0.318119, 0.945154,
		-0.916061, -0.352878, 0.190552,
		0.394142, -0.879931, 0.265283,
		24.918785, 34.444206, 32.862568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.254610, 34.699722, 33.250763>,  <24.642885, 35.060158, 32.676868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.254610, 34.699722, 33.250763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.652733, 34.662571, 33.261600>,  <24.891607, 34.640282, 33.268105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.652733, 34.662571, 33.261600>,  <24.254610, 34.699722, 33.250763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.652733, 34.662571, 33.261600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013896, 0.139947, 0.990062,
		-0.095744, -0.985794, 0.138000,
		0.995309, -0.092874, 0.027098,
		24.951326, 34.634708, 33.269730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.291224, 34.268635, 33.825127>,  <24.254610, 34.699722, 33.250763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.291224, 34.268635, 33.825127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.643614, 34.446808, 33.761284>,  <24.855047, 34.553711, 33.722977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.643614, 34.446808, 33.761284>,  <24.291224, 34.268635, 33.825127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.643614, 34.446808, 33.761284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124405, 0.107397, 0.986402,
		0.456517, -0.888851, 0.039200,
		0.880974, 0.445433, -0.159606,
		24.907906, 34.580437, 33.713402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.631001, 33.605583, 34.019051>,  <24.291224, 34.268635, 33.825127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.631001, 33.605583, 34.019051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.836470, 33.420033, 34.307758>,  <24.959751, 33.308701, 34.480984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.836470, 33.420033, 34.307758>,  <24.631001, 33.605583, 34.019051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.836470, 33.420033, 34.307758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185194, 0.761464, 0.621189,
		-0.837762, -0.452755, 0.305233,
		0.513671, -0.463881, 0.721773,
		24.990570, 33.280869, 34.524292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.099865, 33.914471, 34.591183>,  <24.631001, 33.605583, 34.019051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.099865, 33.914471, 34.591183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.205704, 34.234406, 34.375683>,  <25.269207, 34.426365, 34.246384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.205704, 34.234406, 34.375683>,  <25.099865, 33.914471, 34.591183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.205704, 34.234406, 34.375683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254365, 0.480988, 0.839016,
		0.930208, -0.359040, -0.076182,
		0.264598, 0.799837, -0.538747,
		25.285084, 34.474358, 34.214058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.759998, 34.078251, 34.879704>,  <25.099865, 33.914471, 34.591183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.759998, 34.078251, 34.879704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619942, 34.408947, 34.703568>,  <25.535908, 34.607365, 34.597885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619942, 34.408947, 34.703568>,  <25.759998, 34.078251, 34.879704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.619942, 34.408947, 34.703568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369183, 0.553851, 0.746293,
		0.860875, 0.098741, -0.499144,
		-0.350141, 0.826740, -0.440343,
		25.514900, 34.656967, 34.571465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.321802, 34.581524, 34.779591>,  <25.759998, 34.078251, 34.879704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.321802, 34.581524, 34.779591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972969, 34.776924, 34.791157>,  <25.763668, 34.894165, 34.798096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972969, 34.776924, 34.791157>,  <26.321802, 34.581524, 34.779591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972969, 34.776924, 34.791157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412433, 0.701913, 0.580704,
		0.263379, 0.518348, -0.813601,
		-0.872084, 0.488501, 0.028914,
		25.711344, 34.923473, 34.799831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.485672, 35.312370, 34.590157>,  <26.321802, 34.581524, 34.779591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.485672, 35.312370, 34.590157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.162561, 35.250534, 34.817699>,  <25.968695, 35.213432, 34.954224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.162561, 35.250534, 34.817699>,  <26.485672, 35.312370, 34.590157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.162561, 35.250534, 34.817699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237728, 0.797622, 0.554332,
		-0.539427, 0.583010, -0.607551,
		-0.807777, -0.154590, 0.568857,
		25.920229, 35.204159, 34.988358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.032532, 35.968468, 34.604515>,  <26.485672, 35.312370, 34.590157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.032532, 35.968468, 34.604515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977497, 35.771729, 34.948410>,  <25.944477, 35.653683, 35.154747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977497, 35.771729, 34.948410>,  <26.032532, 35.968468, 34.604515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.977497, 35.771729, 34.948410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061147, 0.870557, 0.488254,
		-0.988601, 0.014607, -0.149851,
		-0.137586, -0.491851, 0.859740,
		25.936222, 35.624172, 35.206333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.343849, 36.112125, 34.962677>,  <26.032532, 35.968468, 34.604515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.343849, 36.112125, 34.962677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676165, 36.086952, 35.183884>,  <25.875555, 36.071850, 35.316608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676165, 36.086952, 35.183884>,  <25.343849, 36.112125, 34.962677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.676165, 36.086952, 35.183884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264949, 0.829078, 0.492374,
		-0.489480, -0.555580, 0.672116,
		0.830789, -0.062931, 0.553017,
		25.925402, 36.068073, 35.349789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.227127, 36.296700, 35.563400>,  <25.343849, 36.112125, 34.962677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.227127, 36.296700, 35.563400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.625135, 36.323746, 35.592682>,  <25.863941, 36.339973, 35.610252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.625135, 36.323746, 35.592682>,  <25.227127, 36.296700, 35.563400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.625135, 36.323746, 35.592682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098710, 0.769772, 0.630640,
		-0.013709, -0.634727, 0.772615,
		0.995022, 0.067620, 0.073207,
		25.923641, 36.344032, 35.614643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.304079, 36.754414, 36.077629>,  <25.227127, 36.296700, 35.563400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.304079, 36.754414, 36.077629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.680899, 36.728706, 35.945923>,  <25.906990, 36.713284, 35.866898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.680899, 36.728706, 35.945923>,  <25.304079, 36.754414, 36.077629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.680899, 36.728706, 35.945923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286066, 0.666597, 0.688342,
		0.175253, -0.742643, 0.646350,
		0.942047, -0.064265, -0.329268,
		25.963512, 36.709427, 35.847141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.769661, 36.593597, 36.772957>,  <25.304079, 36.754414, 36.077629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.769661, 36.593597, 36.772957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957254, 36.795898, 36.483330>,  <26.069811, 36.917278, 36.309555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957254, 36.795898, 36.483330>,  <25.769661, 36.593597, 36.772957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.957254, 36.795898, 36.483330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217662, 0.728345, 0.649721,
		0.855968, -0.462308, 0.231496,
		0.468980, 0.505752, -0.724066,
		26.097948, 36.947624, 36.266109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390810, 36.953575, 37.082558>,  <25.769661, 36.593597, 36.772957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390810, 36.953575, 37.082558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328762, 37.155956, 36.743156>,  <26.291534, 37.277386, 36.539516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328762, 37.155956, 36.743156>,  <26.390810, 36.953575, 37.082558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.328762, 37.155956, 36.743156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081410, 0.862521, 0.499429,
		0.984536, 0.008394, -0.174982,
		-0.155118, 0.505951, -0.848500,
		26.282227, 37.307743, 36.488605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841951, 37.444157, 37.026684>,  <26.390810, 36.953575, 37.082558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841951, 37.444157, 37.026684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518497, 37.555984, 36.819630>,  <26.324425, 37.623081, 36.695396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518497, 37.555984, 36.819630>,  <26.841951, 37.444157, 37.026684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.518497, 37.555984, 36.819630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067191, 0.830232, 0.553353,
		0.584460, 0.482242, -0.652571,
		-0.808636, 0.279566, -0.517640,
		26.275908, 37.639854, 36.664337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.380722, 38.035793, 37.213978>,  <26.841951, 37.444157, 37.026684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.380722, 38.035793, 37.213978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.446432, 37.871967, 36.855030>,  <26.485857, 37.773670, 36.639664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.446432, 37.871967, 36.855030>,  <26.380722, 38.035793, 37.213978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.446432, 37.871967, 36.855030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329121, 0.834837, -0.441279,
		0.929889, 0.367833, 0.002344,
		0.164274, -0.409569, -0.897367,
		26.495714, 37.749096, 36.585819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925146, 38.450634, 36.703278>,  <26.380722, 38.035793, 37.213978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925146, 38.450634, 36.703278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.636976, 38.255089, 36.506504>,  <26.464073, 38.137764, 36.388439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.636976, 38.255089, 36.506504>,  <26.925146, 38.450634, 36.703278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.636976, 38.255089, 36.506504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272359, 0.851763, -0.447572,
		0.637814, -0.188459, -0.746777,
		-0.720426, -0.488859, -0.491938,
		26.420849, 38.108433, 36.358921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905273, 38.677525, 35.981712>,  <26.925146, 38.450634, 36.703278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905273, 38.677525, 35.981712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536839, 38.551449, 36.073147>,  <26.315777, 38.475803, 36.128010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536839, 38.551449, 36.073147>,  <26.905273, 38.677525, 35.981712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.536839, 38.551449, 36.073147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384453, 0.829125, -0.405891,
		-0.061597, -0.461743, -0.884872,
		-0.921087, -0.315190, 0.228590,
		26.260511, 38.456890, 36.141724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611570, 39.119331, 35.556870>,  <26.905273, 38.677525, 35.981712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611570, 39.119331, 35.556870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314972, 38.978054, 35.785061>,  <26.137012, 38.893288, 35.921974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314972, 38.978054, 35.785061>,  <26.611570, 39.119331, 35.556870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.314972, 38.978054, 35.785061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465279, 0.883268, -0.057918,
		-0.483428, -0.308376, -0.819269,
		-0.741494, -0.353189, 0.570478,
		26.092524, 38.872097, 35.956203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956539, 39.316879, 35.254204>,  <26.611570, 39.119331, 35.556870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956539, 39.316879, 35.254204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927757, 39.287094, 35.652054>,  <25.910488, 39.269222, 35.890762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927757, 39.287094, 35.652054>,  <25.956539, 39.316879, 35.254204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.927757, 39.287094, 35.652054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489911, 0.871263, 0.029788,
		-0.868798, -0.485134, -0.099172,
		-0.071954, -0.074465, 0.994624,
		25.906172, 39.264755, 35.950439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.666162, 39.944393, 35.628571>,  <25.956539, 39.316879, 35.254204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.666162, 39.944393, 35.628571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323362, 39.852264, 35.812962>,  <25.117682, 39.796986, 35.923595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323362, 39.852264, 35.812962>,  <25.666162, 39.944393, 35.628571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.323362, 39.852264, 35.812962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067568, -0.937058, -0.342573,
		0.510868, -0.262438, 0.818621,
		-0.857000, -0.230323, 0.460981,
		25.066263, 39.783169, 35.951256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.640705, 39.676060, 36.281971>,  <25.666162, 39.944393, 35.628571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.640705, 39.676060, 36.281971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.347429, 39.527924, 36.053841>,  <25.171463, 39.439041, 35.916962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.347429, 39.527924, 36.053841>,  <25.640705, 39.676060, 36.281971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.347429, 39.527924, 36.053841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379535, -0.918770, 0.108690,
		-0.564255, -0.136770, 0.814193,
		-0.733191, -0.370344, -0.570330,
		25.127472, 39.416821, 35.882740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.147608, 39.254875, 36.820011>,  <25.640705, 39.676060, 36.281971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.147608, 39.254875, 36.820011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247438, 39.189651, 36.438198>,  <25.307337, 39.150517, 36.209110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247438, 39.189651, 36.438198>,  <25.147608, 39.254875, 36.820011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.247438, 39.189651, 36.438198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400431, -0.880117, 0.255048,
		-0.881685, -0.445875, -0.154358,
		0.249572, -0.163063, -0.954528,
		25.322311, 39.140732, 36.151840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.137526, 38.565536, 36.810711>,  <25.147608, 39.254875, 36.820011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.137526, 38.565536, 36.810711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404940, 38.651825, 36.526028>,  <25.565388, 38.703598, 36.355217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404940, 38.651825, 36.526028>,  <25.137526, 38.565536, 36.810711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.404940, 38.651825, 36.526028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327246, -0.944705, 0.021049,
		-0.667811, -0.246975, -0.702162,
		0.668535, 0.215723, -0.711706,
		25.605499, 38.716541, 36.312515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.097710, 37.975338, 36.367184>,  <25.137526, 38.565536, 36.810711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.097710, 37.975338, 36.367184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459827, 38.120628, 36.279083>,  <25.677097, 38.207802, 36.226223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459827, 38.120628, 36.279083>,  <25.097710, 37.975338, 36.367184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.459827, 38.120628, 36.279083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392051, -0.914038, 0.104064,
		-0.163517, -0.180558, -0.969877,
		0.905294, 0.363225, -0.220249,
		25.731415, 38.229595, 36.213009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.377304, 37.598606, 35.797443>,  <25.097710, 37.975338, 36.367184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.377304, 37.598606, 35.797443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701412, 37.741020, 35.983646>,  <25.895878, 37.826469, 36.095367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701412, 37.741020, 35.983646>,  <25.377304, 37.598606, 35.797443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.701412, 37.741020, 35.983646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421800, -0.905741, -0.041449,
		0.406876, 0.229937, -0.884071,
		0.810270, 0.356037, 0.465511,
		25.944492, 37.847832, 36.123299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.972878, 37.779953, 35.328632>,  <25.377304, 37.598606, 35.797443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.972878, 37.779953, 35.328632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095062, 37.649818, 35.686592>,  <26.168373, 37.571739, 35.901367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095062, 37.649818, 35.686592>,  <25.972878, 37.779953, 35.328632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.095062, 37.649818, 35.686592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471926, -0.764550, -0.439032,
		0.827029, 0.556436, -0.080008,
		0.305464, -0.325334, 0.894902,
		26.186701, 37.552219, 35.955063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755793, 37.555275, 35.282185>,  <25.972878, 37.779953, 35.328632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755793, 37.555275, 35.282185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582214, 37.352646, 35.580196>,  <26.478067, 37.231068, 35.759003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582214, 37.352646, 35.580196>,  <26.755793, 37.555275, 35.282185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.582214, 37.352646, 35.580196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182556, -0.859237, -0.477897,
		0.882250, -0.071370, 0.465339,
		-0.433944, -0.506575, 0.745033,
		26.452030, 37.200672, 35.803707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156351, 36.884327, 35.375618>,  <26.755793, 37.555275, 35.282185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156351, 36.884327, 35.375618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.793745, 36.817562, 35.530731>,  <26.576181, 36.777504, 35.623798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.793745, 36.817562, 35.530731>,  <27.156351, 36.884327, 35.375618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.793745, 36.817562, 35.530731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119287, -0.779825, -0.614528,
		0.404975, -0.603334, 0.687010,
		-0.906513, -0.166917, 0.387779,
		26.521791, 36.767487, 35.647064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157852, 36.167908, 35.585144>,  <27.156351, 36.884327, 35.375618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157852, 36.167908, 35.585144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.829334, 36.335850, 35.430641>,  <26.632223, 36.436615, 35.337940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.829334, 36.335850, 35.430641>,  <27.157852, 36.167908, 35.585144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829334, 36.335850, 35.430641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135971, -0.513476, -0.847263,
		-0.554069, -0.748369, 0.364624,
		-0.821291, 0.419864, -0.386258,
		26.582945, 36.461807, 35.314766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667717, 35.661148, 35.261040>,  <27.157852, 36.167908, 35.585144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.667717, 35.661148, 35.261040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614752, 36.013676, 35.079605>,  <26.582973, 36.225193, 34.970745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614752, 36.013676, 35.079605>,  <26.667717, 35.661148, 35.261040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.614752, 36.013676, 35.079605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025278, -0.454464, -0.890406,
		-0.990873, -0.129366, 0.037898,
		-0.132411, 0.881321, -0.453587,
		26.575029, 36.278072, 34.943531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130322, 35.471561, 35.870708>,  <26.667717, 35.661148, 35.261040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.130322, 35.471561, 35.870708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250942, 35.170582, 36.104935>,  <27.323315, 34.989994, 36.245472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250942, 35.170582, 36.104935>,  <27.130322, 35.471561, 35.870708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250942, 35.170582, 36.104935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950534, -0.189256, 0.246308,
		-0.074511, -0.630877, -0.772297,
		0.301552, -0.752447, 0.585568,
		27.341408, 34.944847, 36.280605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682070, 35.067944, 35.467216>,  <27.130322, 35.471561, 35.870708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682070, 35.067944, 35.467216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550659, 35.105255, 35.091267>,  <27.471813, 35.127644, 34.865696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550659, 35.105255, 35.091267>,  <27.682070, 35.067944, 35.467216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550659, 35.105255, 35.091267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907074, -0.246169, -0.341493,
		-0.263223, -0.964728, -0.003740,
		-0.328527, 0.093281, -0.939876,
		27.452101, 35.133240, 34.809303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753874, 34.446033, 34.878914>,  <27.682070, 35.067944, 35.467216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753874, 34.446033, 34.878914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786179, 34.808525, 34.712914>,  <27.805561, 35.026020, 34.613312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786179, 34.808525, 34.712914>,  <27.753874, 34.446033, 34.878914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786179, 34.808525, 34.712914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897913, -0.246897, -0.364409,
		-0.432701, -0.343204, -0.833655,
		0.080760, 0.906230, -0.415000,
		27.810406, 35.080395, 34.588413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793587, 34.498352, 34.128899>,  <27.753874, 34.446033, 34.878914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793587, 34.498352, 34.128899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985106, 34.808010, 34.294525>,  <28.100018, 34.993805, 34.393902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985106, 34.808010, 34.294525>,  <27.793587, 34.498352, 34.128899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985106, 34.808010, 34.294525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847811, -0.285246, -0.447048,
		-0.227970, 0.565094, -0.792905,
		0.478797, 0.774147, 0.414065,
		28.128744, 35.040253, 34.418743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244026, 34.867542, 33.555801>,  <27.793587, 34.498352, 34.128899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244026, 34.867542, 33.555801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379025, 34.941643, 33.924969>,  <28.460024, 34.986103, 34.146469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379025, 34.941643, 33.924969>,  <28.244026, 34.867542, 33.555801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379025, 34.941643, 33.924969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938056, -0.147844, -0.313357,
		0.078397, 0.971505, -0.223676,
		0.337497, 0.185255, 0.922917,
		28.480274, 34.997219, 34.201843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719521, 35.390331, 33.524426>,  <28.244026, 34.867542, 33.555801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719521, 35.390331, 33.524426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.790655, 35.190571, 33.863594>,  <28.833336, 35.070717, 34.067097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.790655, 35.190571, 33.863594>,  <28.719521, 35.390331, 33.524426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.790655, 35.190571, 33.863594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967246, -0.069891, -0.244028,
		0.181129, 0.863548, 0.470613,
		0.177839, -0.499399, 0.847923,
		28.844007, 35.040752, 34.117970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165636, 35.665615, 34.054802>,  <28.719521, 35.390331, 33.524426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165636, 35.665615, 34.054802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.216030, 35.271038, 34.012733>,  <29.246267, 35.034290, 33.987492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.216030, 35.271038, 34.012733>,  <29.165636, 35.665615, 34.054802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216030, 35.271038, 34.012733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927080, 0.154804, -0.341407,
		0.353060, -0.054492, 0.934013,
		0.125985, -0.986441, -0.105174,
		29.253826, 34.975105, 33.981182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798744, 35.438374, 34.269108>,  <29.165636, 35.665615, 34.054802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798744, 35.438374, 34.269108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721285, 35.145649, 34.007744>,  <29.674809, 34.970013, 33.850925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721285, 35.145649, 34.007744>,  <29.798744, 35.438374, 34.269108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721285, 35.145649, 34.007744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965093, -0.022385, -0.260951,
		0.176341, -0.681135, 0.710605,
		-0.193650, -0.731815, -0.653411,
		29.663191, 34.926105, 33.811722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300735, 34.994884, 34.191784>,  <29.798744, 35.438374, 34.269108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300735, 34.994884, 34.191784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144779, 34.973022, 33.824089>,  <30.051207, 34.959908, 33.603474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144779, 34.973022, 33.824089>,  <30.300735, 34.994884, 34.191784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144779, 34.973022, 33.824089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918577, -0.093353, -0.384059,
		-0.064824, -0.994132, 0.086599,
		-0.389889, -0.054652, -0.919238,
		30.027813, 34.956627, 33.548317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430405, 34.327557, 33.834969>,  <30.300735, 34.994884, 34.191784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430405, 34.327557, 33.834969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382944, 34.609882, 33.555611>,  <30.354467, 34.779278, 33.387997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382944, 34.609882, 33.555611>,  <30.430405, 34.327557, 33.834969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382944, 34.609882, 33.555611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797948, -0.350819, -0.490108,
		-0.590933, -0.615433, -0.521575,
		-0.118650, 0.705810, -0.698394,
		30.347349, 34.821625, 33.346092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343035, 34.033577, 33.202583>,  <30.430405, 34.327557, 33.834969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343035, 34.033577, 33.202583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.494917, 34.399315, 33.146290>,  <30.586046, 34.618755, 33.112514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.494917, 34.399315, 33.146290>,  <30.343035, 34.033577, 33.202583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494917, 34.399315, 33.146290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712273, -0.386021, -0.586221,
		-0.590331, 0.122352, -0.797834,
		0.379706, 0.914340, -0.140733,
		30.608829, 34.673618, 33.104069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863432, 34.098049, 32.707722>,  <30.343035, 34.033577, 33.202583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863432, 34.098049, 32.707722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700174, 33.736614, 32.759796>,  <30.602219, 33.519753, 32.791039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700174, 33.736614, 32.759796>,  <30.863432, 34.098049, 32.707722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700174, 33.736614, 32.759796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805046, -0.423485, -0.415405,
		0.430485, -0.064742, 0.900273,
		-0.408146, -0.903587, 0.130184,
		30.577730, 33.465538, 32.798851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317402, 33.632122, 33.206394>,  <30.863432, 34.098049, 32.707722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317402, 33.632122, 33.206394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114391, 33.440262, 32.920078>,  <30.992584, 33.325146, 32.748291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114391, 33.440262, 32.920078>,  <31.317402, 33.632122, 33.206394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114391, 33.440262, 32.920078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853600, -0.393083, -0.341837,
		-0.117402, -0.784488, 0.608929,
		-0.507527, -0.479650, -0.715788,
		30.962133, 33.296368, 32.705341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771646, 33.178635, 33.199883>,  <31.317402, 33.632122, 33.206394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771646, 33.178635, 33.199883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602955, 33.134033, 32.839947>,  <31.501740, 33.107273, 32.623985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602955, 33.134033, 32.839947>,  <31.771646, 33.178635, 33.199883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602955, 33.134033, 32.839947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739511, -0.616539, -0.270189,
		-0.524659, -0.779388, 0.342471,
		-0.421730, -0.111504, -0.899839,
		31.476437, 33.100582, 32.569996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193481, 32.765926, 32.845081>,  <31.771646, 33.178635, 33.199883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193481, 32.765926, 32.845081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938219, 32.790848, 32.538128>,  <31.785063, 32.805801, 32.353954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938219, 32.790848, 32.538128>,  <32.193481, 32.765926, 32.845081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938219, 32.790848, 32.538128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650560, -0.489403, -0.580737,
		-0.411745, -0.869829, 0.271779,
		-0.638151, 0.062308, -0.767385,
		31.746773, 32.809540, 32.307911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189827, 32.156162, 32.457329>,  <32.193481, 32.765926, 32.845081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189827, 32.156162, 32.457329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072121, 32.454540, 32.218338>,  <32.001499, 32.633568, 32.074944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072121, 32.454540, 32.218338>,  <32.189827, 32.156162, 32.457329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072121, 32.454540, 32.218338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549321, -0.379566, -0.744430,
		-0.782084, -0.547264, -0.298071,
		-0.294262, 0.745944, -0.597476,
		31.983843, 32.678322, 32.039097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086113, 31.846331, 31.730196>,  <32.189827, 32.156162, 32.457329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086113, 31.846331, 31.730196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173054, 32.236267, 31.710434>,  <32.225220, 32.470230, 31.698576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173054, 32.236267, 31.710434>,  <32.086113, 31.846331, 31.730196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173054, 32.236267, 31.710434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485165, -0.151817, -0.861143,
		-0.846979, 0.163203, -0.505957,
		0.217353, 0.974842, -0.049405,
		32.238258, 32.528721, 31.695612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825384, 32.014477, 31.161066>,  <32.086113, 31.846331, 31.730196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825384, 32.014477, 31.161066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103107, 32.292664, 31.235102>,  <32.269741, 32.459576, 31.279524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103107, 32.292664, 31.235102>,  <31.825384, 32.014477, 31.161066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103107, 32.292664, 31.235102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346253, -0.097350, -0.933076,
		-0.630909, 0.711930, -0.308400,
		0.694308, 0.695470, 0.185089,
		32.311401, 32.501305, 31.290628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753267, 32.464954, 30.567060>,  <31.825384, 32.014477, 31.161066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753267, 32.464954, 30.567060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110886, 32.539150, 30.730165>,  <32.325459, 32.583668, 30.828030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110886, 32.539150, 30.730165>,  <31.753267, 32.464954, 30.567060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110886, 32.539150, 30.730165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411160, 0.021572, -0.911308,
		-0.177838, 0.982409, -0.056981,
		0.894047, 0.185494, 0.407763,
		32.379101, 32.594799, 30.852495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069126, 32.914249, 30.147675>,  <31.753267, 32.464954, 30.567060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069126, 32.914249, 30.147675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369797, 32.737347, 30.343386>,  <32.550198, 32.631207, 30.460812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369797, 32.737347, 30.343386>,  <32.069126, 32.914249, 30.147675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369797, 32.737347, 30.343386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555861, 0.025541, -0.830883,
		0.354966, 0.896525, 0.265031,
		0.751677, -0.442256, 0.489277,
		32.595299, 32.604671, 30.490170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541927, 33.289124, 29.915453>,  <32.069126, 32.914249, 30.147675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541927, 33.289124, 29.915453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713509, 32.943066, 30.019392>,  <32.816456, 32.735432, 30.081757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713509, 32.943066, 30.019392>,  <32.541927, 33.289124, 29.915453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713509, 32.943066, 30.019392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540911, 0.015615, -0.840935,
		0.723474, 0.501277, 0.474665,
		0.428953, -0.865146, 0.259849,
		32.842194, 32.683521, 30.097347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238255, 33.365734, 29.959198>,  <32.541927, 33.289124, 29.915453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238255, 33.365734, 29.959198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244820, 32.968472, 29.912937>,  <33.248756, 32.730114, 29.885180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244820, 32.968472, 29.912937>,  <33.238255, 33.365734, 29.959198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244820, 32.968472, 29.912937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729702, 0.090973, -0.677687,
		0.683569, -0.073272, 0.726199,
		0.016409, -0.993154, -0.115653,
		33.249741, 32.670525, 29.878241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878723, 33.240746, 29.646559>,  <33.238255, 33.365734, 29.959198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878723, 33.240746, 29.646559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679451, 32.901493, 29.574453>,  <33.559887, 32.697941, 29.531189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679451, 32.901493, 29.574453>,  <33.878723, 33.240746, 29.646559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679451, 32.901493, 29.574453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660451, -0.236468, -0.712662,
		0.561803, -0.474090, 0.677951,
		-0.498179, -0.848129, -0.180265,
		33.529999, 32.647053, 29.520374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428337, 32.739418, 29.605707>,  <33.878723, 33.240746, 29.646559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428337, 32.739418, 29.605707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106289, 32.577408, 29.432394>,  <33.913059, 32.480202, 29.328407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106289, 32.577408, 29.432394>,  <34.428337, 32.739418, 29.605707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106289, 32.577408, 29.432394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560055, -0.278706, -0.780168,
		0.195228, -0.870793, 0.451227,
		-0.805124, -0.405023, -0.433281,
		33.864750, 32.455902, 29.302410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501957, 32.043068, 29.426268>,  <34.428337, 32.739418, 29.605707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501957, 32.043068, 29.426268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238621, 32.212067, 29.177082>,  <34.080620, 32.313465, 29.027571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238621, 32.212067, 29.177082>,  <34.501957, 32.043068, 29.426268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238621, 32.212067, 29.177082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549556, -0.295761, -0.781354,
		-0.514368, -0.856750, -0.037474,
		-0.658342, 0.422498, -0.622962,
		34.041119, 32.338818, 28.990194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507061, 31.593727, 28.760214>,  <34.501957, 32.043068, 29.426268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507061, 31.593727, 28.760214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318829, 31.928049, 28.647089>,  <34.205891, 32.128643, 28.579214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318829, 31.928049, 28.647089>,  <34.507061, 31.593727, 28.760214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318829, 31.928049, 28.647089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311942, -0.142231, -0.939395,
		-0.825377, -0.530280, -0.193793,
		-0.470579, 0.835807, -0.282811,
		34.177654, 32.178791, 28.562246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277000, 31.413359, 28.106239>,  <34.507061, 31.593727, 28.760214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277000, 31.413359, 28.106239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256672, 31.812042, 28.131496>,  <34.244473, 32.051254, 28.146650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256672, 31.812042, 28.131496>,  <34.277000, 31.413359, 28.106239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256672, 31.812042, 28.131496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285359, 0.075082, -0.955475,
		-0.957072, -0.030542, -0.288236,
		-0.050823, 0.996710, 0.063144,
		34.241425, 32.111053, 28.150440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163216, 31.608194, 27.476315>,  <34.277000, 31.413359, 28.106239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163216, 31.608194, 27.476315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279861, 31.960722, 27.625036>,  <34.349850, 32.172237, 27.714270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279861, 31.960722, 27.625036>,  <34.163216, 31.608194, 27.476315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279861, 31.960722, 27.625036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064127, 0.369813, -0.926891,
		-0.954384, 0.294139, 0.051327,
		0.291616, 0.881318, 0.371806,
		34.367348, 32.225117, 27.736578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698502, 32.171555, 27.080885>,  <34.163216, 31.608194, 27.476315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698502, 32.171555, 27.080885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036385, 32.326225, 27.228909>,  <34.239117, 32.419029, 27.317722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036385, 32.326225, 27.228909>,  <33.698502, 32.171555, 27.080885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036385, 32.326225, 27.228909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147607, 0.496297, -0.855513,
		-0.514466, 0.777285, 0.362152,
		0.844712, 0.386676, 0.370060,
		34.289799, 32.442226, 27.339926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657421, 32.974228, 26.964277>,  <33.698502, 32.171555, 27.080885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657421, 32.974228, 26.964277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043747, 32.887604, 27.021282>,  <34.275543, 32.835629, 27.055485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043747, 32.887604, 27.021282>,  <33.657421, 32.974228, 26.964277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043747, 32.887604, 27.021282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247466, 0.606296, -0.755755,
		0.077263, 0.765183, 0.639159,
		0.965811, -0.216562, 0.142512,
		34.333488, 32.822636, 27.064035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026932, 33.608555, 27.092524>,  <33.657421, 32.974228, 26.964277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026932, 33.608555, 27.092524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303612, 33.354210, 26.955574>,  <34.469620, 33.201603, 26.873404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303612, 33.354210, 26.955574>,  <34.026932, 33.608555, 27.092524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303612, 33.354210, 26.955574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299612, 0.684028, -0.665085,
		0.657099, 0.357463, 0.663658,
		0.691704, -0.635867, -0.342374,
		34.511124, 33.163448, 26.852861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505577, 34.029804, 26.904512>,  <34.026932, 33.608555, 27.092524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505577, 34.029804, 26.904512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596146, 33.693890, 26.707132>,  <34.650486, 33.492340, 26.588705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596146, 33.693890, 26.707132>,  <34.505577, 34.029804, 26.904512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596146, 33.693890, 26.707132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163691, 0.532210, -0.830637,
		0.960175, 0.107304, 0.257971,
		0.226426, -0.839784, -0.493451,
		34.664074, 33.441956, 26.559097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946041, 34.254822, 26.397387>,  <34.505577, 34.029804, 26.904512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946041, 34.254822, 26.397387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866047, 33.894726, 26.242691>,  <34.818050, 33.678669, 26.149874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866047, 33.894726, 26.242691>,  <34.946041, 34.254822, 26.397387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866047, 33.894726, 26.242691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171523, 0.356451, -0.918435,
		0.964668, -0.250011, 0.083127,
		-0.199988, -0.900243, -0.386739,
		34.806049, 33.624653, 26.126669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442429, 34.116508, 25.951674>,  <34.946041, 34.254822, 26.397387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442429, 34.116508, 25.951674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152935, 33.869839, 25.827789>,  <34.979237, 33.721836, 25.753458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152935, 33.869839, 25.827789>,  <35.442429, 34.116508, 25.951674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152935, 33.869839, 25.827789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191561, 0.251634, -0.948676,
		0.662954, -0.745921, -0.063987,
		-0.723738, -0.616671, -0.309711,
		34.935814, 33.684837, 25.734877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748058, 33.671494, 25.486677>,  <35.442429, 34.116508, 25.951674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748058, 33.671494, 25.486677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353428, 33.693626, 25.425211>,  <35.116650, 33.706905, 25.388332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353428, 33.693626, 25.425211>,  <35.748058, 33.671494, 25.486677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353428, 33.693626, 25.425211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161297, 0.182324, -0.969918,
		-0.025656, -0.981680, -0.188802,
		-0.986573, 0.055337, -0.153664,
		35.057457, 33.710228, 25.379112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674324, 33.252869, 24.898544>,  <35.748058, 33.671494, 25.486677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674324, 33.252869, 24.898544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321625, 33.441547, 24.900425>,  <35.110004, 33.554756, 24.901552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321625, 33.441547, 24.900425>,  <35.674324, 33.252869, 24.898544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321625, 33.441547, 24.900425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039958, -0.064760, -0.997101,
		-0.470026, -0.879379, 0.075950,
		-0.881748, 0.471698, 0.004700,
		35.057102, 33.583057, 24.901834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318817, 32.844795, 24.574375>,  <35.674324, 33.252869, 24.898544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318817, 32.844795, 24.574375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100357, 33.177998, 24.539022>,  <34.969280, 33.377922, 24.517811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100357, 33.177998, 24.539022>,  <35.318817, 32.844795, 24.574375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100357, 33.177998, 24.539022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012114, -0.113350, -0.993481,
		-0.837599, -0.541521, 0.071997,
		-0.546152, 0.833011, -0.088382,
		34.936512, 33.427902, 24.512508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738235, 32.669994, 24.171314>,  <35.318817, 32.844795, 24.574375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738235, 32.669994, 24.171314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792370, 33.066101, 24.158331>,  <34.824852, 33.303764, 24.150541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792370, 33.066101, 24.158331>,  <34.738235, 32.669994, 24.171314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792370, 33.066101, 24.158331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173367, -0.008584, -0.984820,
		-0.975514, 0.138909, 0.170518,
		0.135337, 0.990268, -0.032456,
		34.832970, 33.363182, 24.148594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140297, 32.912457, 23.874887>,  <34.738235, 32.669994, 24.171314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140297, 32.912457, 23.874887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421993, 33.191628, 23.822828>,  <34.591011, 33.359131, 23.791592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421993, 33.191628, 23.822828>,  <34.140297, 32.912457, 23.874887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421993, 33.191628, 23.822828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143099, -0.040017, -0.988899,
		-0.695392, 0.715046, 0.071692,
		0.704239, 0.697931, -0.130150,
		34.633266, 33.401009, 23.783783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873531, 33.306213, 23.323034>,  <34.140297, 32.912457, 23.874887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873531, 33.306213, 23.323034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251026, 33.437828, 23.336317>,  <34.477524, 33.516796, 23.344288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251026, 33.437828, 23.336317>,  <33.873531, 33.306213, 23.323034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251026, 33.437828, 23.336317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015960, 0.054983, -0.998360,
		-0.330320, 0.942716, 0.046638,
		0.943734, 0.329034, 0.033208,
		34.534145, 33.536537, 23.346279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923294, 34.019035, 23.085869>,  <33.873531, 33.306213, 23.323034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923294, 34.019035, 23.085869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275894, 33.838642, 23.029913>,  <34.487453, 33.730404, 22.996340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275894, 33.838642, 23.029913>,  <33.923294, 34.019035, 23.085869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275894, 33.838642, 23.029913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103185, 0.105121, -0.989092,
		0.460772, 0.886319, 0.046129,
		0.881500, -0.450986, -0.139892,
		34.540344, 33.703346, 22.987946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400394, 34.482716, 22.668541>,  <33.923294, 34.019035, 23.085869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400394, 34.482716, 22.668541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559486, 34.120335, 22.610487>,  <34.654942, 33.902905, 22.575655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559486, 34.120335, 22.610487>,  <34.400394, 34.482716, 22.668541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559486, 34.120335, 22.610487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097413, 0.198984, -0.975149,
		0.912317, 0.373706, 0.167393,
		0.397728, -0.905952, -0.145133,
		34.678806, 33.848549, 22.566948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051060, 34.531601, 22.218796>,  <34.400394, 34.482716, 22.668541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051060, 34.531601, 22.218796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998924, 34.135967, 22.191315>,  <34.967644, 33.898586, 22.174826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998924, 34.135967, 22.191315>,  <35.051060, 34.531601, 22.218796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998924, 34.135967, 22.191315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168597, 0.046176, -0.984603,
		0.977030, -0.139914, 0.160739,
		-0.130337, -0.989086, -0.068705,
		34.959824, 33.839241, 22.170704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602039, 34.259666, 21.785500>,  <35.051060, 34.531601, 22.218796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602039, 34.259666, 21.785500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288300, 34.013321, 21.755798>,  <35.100056, 33.865513, 21.737978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288300, 34.013321, 21.755798>,  <35.602039, 34.259666, 21.785500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288300, 34.013321, 21.755798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081597, 0.016233, -0.996533,
		0.614933, -0.787686, 0.037521,
		-0.784346, -0.615863, -0.074255,
		35.052994, 33.828564, 21.733522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753590, 33.789932, 21.154640>,  <35.602039, 34.259666, 21.785500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753590, 33.789932, 21.154640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366394, 33.725235, 21.231401>,  <35.134075, 33.686417, 21.277458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366394, 33.725235, 21.231401>,  <35.753590, 33.789932, 21.154640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366394, 33.725235, 21.231401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155238, -0.214946, -0.964209,
		0.197208, -0.963139, 0.182957,
		-0.967993, -0.161748, 0.191904,
		35.075996, 33.676712, 21.288973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554035, 33.136948, 20.877028>,  <35.753590, 33.789932, 21.154640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554035, 33.136948, 20.877028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220112, 33.356518, 20.893871>,  <35.019756, 33.488262, 20.903978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220112, 33.356518, 20.893871>,  <35.554035, 33.136948, 20.877028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220112, 33.356518, 20.893871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181997, -0.202972, -0.962122,
		-0.519589, -0.810852, 0.269346,
		-0.834808, 0.548928, 0.042111,
		34.969669, 33.521194, 20.906504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019054, 32.684696, 20.525499>,  <35.554035, 33.136948, 20.877028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019054, 32.684696, 20.525499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859135, 33.050758, 20.504892>,  <34.763184, 33.270397, 20.492529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859135, 33.050758, 20.504892>,  <35.019054, 32.684696, 20.525499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859135, 33.050758, 20.504892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406364, -0.227341, -0.884977,
		-0.821604, -0.332875, 0.462776,
		-0.399795, 0.915156, -0.051516,
		34.739197, 33.325306, 20.489437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647724, 32.624100, 19.980045>,  <35.019054, 32.684696, 20.525499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647724, 32.624100, 19.980045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601284, 33.018890, 20.024597>,  <34.573418, 33.255764, 20.051329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601284, 33.018890, 20.024597>,  <34.647724, 32.624100, 19.980045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601284, 33.018890, 20.024597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398250, 0.056468, -0.915537,
		-0.909900, -0.150654, 0.386505,
		-0.116104, 0.986973, 0.111378,
		34.566452, 33.314983, 20.058010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952515, 32.718582, 19.771452>,  <34.647724, 32.624100, 19.980045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952515, 32.718582, 19.771452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147717, 33.064327, 19.722900>,  <34.264839, 33.271774, 19.693769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147717, 33.064327, 19.722900>,  <33.952515, 32.718582, 19.771452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147717, 33.064327, 19.722900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200575, -0.024291, -0.979377,
		-0.849483, 0.502286, 0.161515,
		0.488004, 0.864360, -0.121381,
		34.294117, 33.323635, 19.686485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472679, 33.233791, 19.499475>,  <33.952515, 32.718582, 19.771452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472679, 33.233791, 19.499475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836369, 33.379185, 19.418299>,  <34.054585, 33.466423, 19.369593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836369, 33.379185, 19.418299>,  <33.472679, 33.233791, 19.499475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836369, 33.379185, 19.418299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242265, 0.065548, -0.967993,
		-0.338549, 0.929291, 0.147657,
		0.909226, 0.363485, -0.202944,
		34.109135, 33.488232, 19.357416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347584, 33.807529, 18.972868>,  <33.472679, 33.233791, 19.499475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347584, 33.807529, 18.972868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738487, 33.725624, 18.950817>,  <33.973030, 33.676479, 18.937588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738487, 33.725624, 18.950817>,  <33.347584, 33.807529, 18.972868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738487, 33.725624, 18.950817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024332, 0.366524, -0.930091,
		0.210653, 0.907597, 0.363170,
		0.977258, -0.204763, -0.055126,
		34.031666, 33.664196, 18.934278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695232, 34.432510, 18.822130>,  <33.347584, 33.807529, 18.972868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695232, 34.432510, 18.822130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961693, 34.153797, 18.715744>,  <34.121571, 33.986568, 18.651913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961693, 34.153797, 18.715744>,  <33.695232, 34.432510, 18.822130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961693, 34.153797, 18.715744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123737, 0.454922, -0.881893,
		0.735480, 0.554564, 0.389264,
		0.666151, -0.696781, -0.265966,
		34.161537, 33.944763, 18.635954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393639, 34.727486, 18.596237>,  <33.695232, 34.432510, 18.822130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393639, 34.727486, 18.596237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359138, 34.362999, 18.435122>,  <34.338440, 34.144306, 18.338451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359138, 34.362999, 18.435122>,  <34.393639, 34.727486, 18.596237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359138, 34.362999, 18.435122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344301, 0.352124, -0.870324,
		0.934889, -0.213744, 0.283365,
		-0.086247, -0.911220, -0.402789,
		34.333263, 34.089634, 18.314285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913017, 34.709393, 18.117790>,  <34.393639, 34.727486, 18.596237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913017, 34.709393, 18.117790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672886, 34.408855, 18.008179>,  <34.528809, 34.228535, 17.942411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672886, 34.408855, 18.008179>,  <34.913017, 34.709393, 18.117790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672886, 34.408855, 18.008179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356044, 0.055734, -0.932806,
		0.716131, -0.657553, 0.234053,
		-0.600325, -0.751344, -0.274030,
		34.492790, 34.183453, 17.925970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243999, 34.460449, 17.608587>,  <34.913017, 34.709393, 18.117790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243999, 34.460449, 17.608587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889622, 34.289452, 17.536640>,  <34.676994, 34.186855, 17.493471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889622, 34.289452, 17.536640>,  <35.243999, 34.460449, 17.608587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889622, 34.289452, 17.536640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138910, 0.125438, -0.982328,
		0.442498, -0.895275, -0.051749,
		-0.885945, -0.427490, -0.179869,
		34.623837, 34.161205, 17.482679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319340, 33.961781, 17.133701>,  <35.243999, 34.460449, 17.608587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319340, 33.961781, 17.133701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938705, 34.083664, 17.117479>,  <34.710327, 34.156792, 17.107746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938705, 34.083664, 17.117479>,  <35.319340, 33.961781, 17.133701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938705, 34.083664, 17.117479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071414, 0.090824, -0.993303,
		-0.298982, -0.948106, -0.108187,
		-0.951583, 0.304706, -0.040553,
		34.653229, 34.175076, 17.105312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033234, 33.502960, 16.557058>,  <35.319340, 33.961781, 17.133701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033234, 33.502960, 16.557058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772202, 33.803532, 16.596027>,  <34.615582, 33.983875, 16.619410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772202, 33.803532, 16.596027>,  <35.033234, 33.502960, 16.557058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772202, 33.803532, 16.596027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091541, 0.049446, -0.994573,
		-0.752169, -0.657958, 0.036519,
		-0.652582, 0.751430, 0.097422,
		34.576427, 34.028961, 16.625254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545921, 33.326370, 16.135130>,  <35.033234, 33.502960, 16.557058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545921, 33.326370, 16.135130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516979, 33.723255, 16.175688>,  <34.499615, 33.961388, 16.200024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516979, 33.723255, 16.175688>,  <34.545921, 33.326370, 16.135130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516979, 33.723255, 16.175688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033493, 0.104022, -0.994011,
		-0.996816, -0.068524, -0.040758,
		-0.072353, 0.992212, 0.101396,
		34.495274, 34.020920, 16.206106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162830, 33.546696, 15.510975>,  <34.545921, 33.326370, 16.135130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162830, 33.546696, 15.510975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305912, 33.880653, 15.678310>,  <34.391762, 34.081028, 15.778711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305912, 33.880653, 15.678310>,  <34.162830, 33.546696, 15.510975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305912, 33.880653, 15.678310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158054, 0.387388, -0.908267,
		-0.920363, 0.391009, 0.006612,
		0.357702, 0.834891, 0.418338,
		34.413223, 34.131119, 15.803812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915459, 34.169319, 15.136837>,  <34.162830, 33.546696, 15.510975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915459, 34.169319, 15.136837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265003, 34.277916, 15.298164>,  <34.474728, 34.343075, 15.394961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265003, 34.277916, 15.298164>,  <33.915459, 34.169319, 15.136837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265003, 34.277916, 15.298164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172603, 0.602287, -0.779396,
		-0.454512, 0.750695, 0.479453,
		0.873858, 0.271490, 0.403319,
		34.527161, 34.359364, 15.419160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973587, 34.902943, 14.883002>,  <33.915459, 34.169319, 15.136837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973587, 34.902943, 14.883002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324814, 34.761017, 15.011439>,  <34.535549, 34.675861, 15.088502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324814, 34.761017, 15.011439>,  <33.973587, 34.902943, 14.883002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324814, 34.761017, 15.011439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468713, 0.772917, -0.427677,
		-0.096434, 0.526031, 0.844980,
		0.878071, -0.354811, 0.321093,
		34.588234, 34.654575, 15.107767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454739, 35.425335, 15.170951>,  <33.973587, 34.902943, 14.883002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454739, 35.425335, 15.170951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686119, 35.136021, 15.020085>,  <34.824947, 34.962433, 14.929566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686119, 35.136021, 15.020085>,  <34.454739, 35.425335, 15.170951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686119, 35.136021, 15.020085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600852, 0.690517, -0.402696,
		0.551703, 0.006319, 0.834017,
		0.578447, -0.723289, -0.377163,
		34.859653, 34.919033, 14.906937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190937, 36.263771, 15.133665>,  <34.454739, 35.425335, 15.170951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190937, 36.263771, 15.133665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475342, 36.543816, 15.159898>,  <34.645985, 36.711842, 15.175637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475342, 36.543816, 15.159898>,  <34.190937, 36.263771, 15.133665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475342, 36.543816, 15.159898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106064, -0.014581, -0.994252,
		-0.695130, 0.713886, -0.084624,
		0.711016, 0.700110, 0.065582,
		34.688648, 36.753849, 15.179572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119549, 36.809452, 14.522244>,  <34.190937, 36.263771, 15.133665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119549, 36.809452, 14.522244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484631, 36.891285, 14.663731>,  <34.703678, 36.940384, 14.748623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484631, 36.891285, 14.663731>,  <34.119549, 36.809452, 14.522244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484631, 36.891285, 14.663731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359650, 0.008697, -0.933047,
		-0.193959, 0.978811, -0.065640,
		0.912706, 0.204580, 0.353716,
		34.758442, 36.952660, 14.769845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578632, 36.118420, 14.228452>,  <34.119549, 36.809452, 14.522244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578632, 36.118420, 14.228452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625908, 35.734940, 14.331928>,  <34.654274, 35.504852, 14.394014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625908, 35.734940, 14.331928>,  <34.578632, 36.118420, 14.228452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625908, 35.734940, 14.331928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776828, -0.073004, -0.625467,
		0.618522, 0.274883, 0.736118,
		0.118191, -0.958702, 0.258692,
		34.661366, 35.447330, 14.409535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289013, 36.079906, 14.303093>,  <34.578632, 36.118420, 14.228452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289013, 36.079906, 14.303093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408836, 36.448875, 14.205596>,  <35.480728, 36.670258, 14.147098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408836, 36.448875, 14.205596>,  <35.289013, 36.079906, 14.303093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408836, 36.448875, 14.205596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192992, 0.308775, 0.931350,
		0.934356, -0.231950, 0.270514,
		0.299554, 0.922419, -0.243742,
		35.498703, 36.725601, 14.132473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764278, 36.367340, 14.838677>,  <35.289013, 36.079906, 14.303093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764278, 36.367340, 14.838677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573231, 36.686302, 14.691154>,  <35.458603, 36.877682, 14.602639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573231, 36.686302, 14.691154>,  <35.764278, 36.367340, 14.838677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573231, 36.686302, 14.691154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253981, 0.276544, 0.926832,
		0.841055, 0.536344, 0.070443,
		-0.477620, 0.797407, -0.368809,
		35.429943, 36.925526, 14.580511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963039, 37.012089, 15.177943>,  <35.764278, 36.367340, 14.838677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963039, 37.012089, 15.177943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585285, 37.025539, 15.047098>,  <35.358631, 37.033607, 14.968591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585285, 37.025539, 15.047098>,  <35.963039, 37.012089, 15.177943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585285, 37.025539, 15.047098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309427, 0.245834, 0.918597,
		0.111302, 0.968729, -0.221758,
		-0.944387, 0.033624, -0.327113,
		35.301968, 37.035625, 14.948964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644657, 37.636013, 15.392340>,  <35.963039, 37.012089, 15.177943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644657, 37.636013, 15.392340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370155, 37.350147, 15.338219>,  <35.205456, 37.178627, 15.305746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370155, 37.350147, 15.338219>,  <35.644657, 37.636013, 15.392340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370155, 37.350147, 15.338219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463131, 0.285891, 0.838914,
		-0.560862, 0.638370, -0.527178,
		-0.686253, -0.714668, -0.135303,
		35.164280, 37.135746, 15.297627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049496, 37.923656, 15.499581>,  <35.644657, 37.636013, 15.392340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049496, 37.923656, 15.499581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973427, 37.533394, 15.543261>,  <34.927788, 37.299236, 15.569468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973427, 37.533394, 15.543261>,  <35.049496, 37.923656, 15.499581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973427, 37.533394, 15.543261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542250, 0.197106, 0.816770,
		-0.818413, 0.096112, -0.566535,
		-0.190169, -0.975660, 0.109197,
		34.916378, 37.240696, 15.576019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568981, 37.937435, 15.930111>,  <35.049496, 37.923656, 15.499581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568981, 37.937435, 15.930111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606098, 37.539558, 15.947930>,  <34.628368, 37.300835, 15.958622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606098, 37.539558, 15.947930>,  <34.568981, 37.937435, 15.930111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606098, 37.539558, 15.947930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398580, 0.003890, 0.917125,
		-0.912427, -0.102860, -0.396102,
		0.092794, -0.994689, 0.044547,
		34.633938, 37.241154, 15.961294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983047, 37.701038, 16.183275>,  <34.568981, 37.937435, 15.930111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983047, 37.701038, 16.183275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260326, 37.423775, 16.262276>,  <34.426693, 37.257416, 16.309677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260326, 37.423775, 16.262276>,  <33.983047, 37.701038, 16.183275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260326, 37.423775, 16.262276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405057, -0.148003, 0.902233,
		-0.596164, -0.705421, -0.383366,
		0.693193, -0.693164, 0.197502,
		34.468285, 37.215824, 16.321526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620628, 37.135391, 16.490969>,  <33.983047, 37.701038, 16.183275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620628, 37.135391, 16.490969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996643, 37.109341, 16.624893>,  <34.222252, 37.093708, 16.705248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996643, 37.109341, 16.624893>,  <33.620628, 37.135391, 16.490969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996643, 37.109341, 16.624893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337215, -0.324907, 0.883585,
		0.051236, -0.943501, -0.327385,
		0.940032, -0.065128, 0.334809,
		34.278652, 37.089802, 16.725336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790821, 36.464272, 16.829906>,  <33.620628, 37.135391, 16.490969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790821, 36.464272, 16.829906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088005, 36.696571, 16.963015>,  <34.266315, 36.835949, 17.042879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088005, 36.696571, 16.963015>,  <33.790821, 36.464272, 16.829906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088005, 36.696571, 16.963015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180821, -0.304536, 0.935180,
		0.644444, -0.754977, -0.121248,
		0.742964, 0.580747, 0.332772,
		34.310894, 36.870796, 17.062847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212158, 35.987747, 17.336071>,  <33.790821, 36.464272, 16.829906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212158, 35.987747, 17.336071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273159, 36.374657, 17.417181>,  <34.309761, 36.606804, 17.465847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273159, 36.374657, 17.417181>,  <34.212158, 35.987747, 17.336071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273159, 36.374657, 17.417181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151724, -0.179828, 0.971927,
		0.976588, -0.178985, 0.119335,
		0.152501, 0.967278, 0.202774,
		34.318909, 36.664841, 17.478014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732044, 36.025482, 17.895628>,  <34.212158, 35.987747, 17.336071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732044, 36.025482, 17.895628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552197, 36.382515, 17.882101>,  <34.444286, 36.596733, 17.873985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552197, 36.382515, 17.882101>,  <34.732044, 36.025482, 17.895628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552197, 36.382515, 17.882101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008287, 0.033692, 0.999398,
		0.893182, 0.449629, -0.007751,
		-0.449620, 0.892580, -0.033819,
		34.417309, 36.650288, 17.871956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954002, 36.311069, 18.490160>,  <34.732044, 36.025482, 17.895628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954002, 36.311069, 18.490160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641460, 36.540043, 18.390724>,  <34.453934, 36.677429, 18.331062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641460, 36.540043, 18.390724>,  <34.954002, 36.311069, 18.490160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641460, 36.540043, 18.390724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142421, 0.224260, 0.964066,
		0.607615, 0.788685, -0.093701,
		-0.781358, 0.572436, -0.248589,
		34.407051, 36.711773, 18.316147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087513, 36.965805, 18.837103>,  <34.954002, 36.311069, 18.490160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087513, 36.965805, 18.837103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697567, 36.922760, 18.759073>,  <34.463600, 36.896931, 18.712255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697567, 36.922760, 18.759073>,  <35.087513, 36.965805, 18.837103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697567, 36.922760, 18.759073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217286, 0.265831, 0.939213,
		-0.049216, 0.957994, -0.282533,
		-0.974866, -0.107615, -0.195075,
		34.405106, 36.890476, 18.700550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928398, 37.408897, 19.330935>,  <35.087513, 36.965805, 18.837103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928398, 37.408897, 19.330935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575378, 37.248734, 19.232330>,  <34.363567, 37.152634, 19.173168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575378, 37.248734, 19.232330>,  <34.928398, 37.408897, 19.330935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575378, 37.248734, 19.232330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339461, 0.179800, 0.923276,
		-0.325369, 0.898521, -0.294608,
		-0.882554, -0.400414, -0.246512,
		34.310612, 37.128609, 19.158377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386505, 37.853210, 19.610588>,  <34.928398, 37.408897, 19.330935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386505, 37.853210, 19.610588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238049, 37.485683, 19.556879>,  <34.148975, 37.265167, 19.524652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238049, 37.485683, 19.556879>,  <34.386505, 37.853210, 19.610588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238049, 37.485683, 19.556879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263682, -0.034367, 0.963997,
		-0.890353, 0.393180, -0.229521,
		-0.371137, -0.918819, -0.134274,
		34.126709, 37.210037, 19.516598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688576, 37.875191, 19.919817>,  <34.386505, 37.853210, 19.610588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688576, 37.875191, 19.919817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810699, 37.494747, 19.901178>,  <33.883972, 37.266479, 19.889996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810699, 37.494747, 19.901178>,  <33.688576, 37.875191, 19.919817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810699, 37.494747, 19.901178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256933, -0.129396, 0.957727,
		-0.916936, -0.280431, -0.283878,
		0.305309, -0.951112, -0.046595,
		33.902294, 37.209412, 19.887199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137394, 37.449741, 20.341423>,  <33.688576, 37.875191, 19.919817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137394, 37.449741, 20.341423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480106, 37.245556, 20.312143>,  <33.685734, 37.123047, 20.294575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480106, 37.245556, 20.312143>,  <33.137394, 37.449741, 20.341423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480106, 37.245556, 20.312143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171886, -0.416518, 0.892731,
		-0.486197, -0.752290, -0.444605,
		0.856778, -0.510463, -0.073202,
		33.737141, 37.092419, 20.290184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927166, 36.757854, 20.555305>,  <33.137394, 37.449741, 20.341423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927166, 36.757854, 20.555305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322746, 36.787334, 20.606766>,  <33.560093, 36.805023, 20.637642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322746, 36.787334, 20.606766>,  <32.927166, 36.757854, 20.555305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322746, 36.787334, 20.606766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099413, -0.314137, 0.944158,
		0.109997, -0.946513, -0.303339,
		0.988948, 0.073699, 0.128649,
		33.619431, 36.809444, 20.645361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161388, 36.110134, 20.924391>,  <32.927166, 36.757854, 20.555305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161388, 36.110134, 20.924391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404701, 36.421066, 20.988577>,  <33.550690, 36.607628, 21.027088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404701, 36.421066, 20.988577>,  <33.161388, 36.110134, 20.924391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404701, 36.421066, 20.988577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043134, -0.169497, 0.984586,
		0.792550, -0.605825, -0.069572,
		0.608279, 0.777333, 0.160466,
		33.587185, 36.654266, 21.036716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669273, 35.937675, 21.441072>,  <33.161388, 36.110134, 20.924391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669273, 35.937675, 21.441072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683250, 36.337162, 21.455786>,  <33.691639, 36.576855, 21.464615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683250, 36.337162, 21.455786>,  <33.669273, 35.937675, 21.441072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683250, 36.337162, 21.455786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020490, -0.037515, 0.999086,
		0.999179, -0.034159, -0.021775,
		0.034944, 0.998712, 0.036784,
		33.693733, 36.636776, 21.466822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021385, 35.991234, 22.050163>,  <33.669273, 35.937675, 21.441072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021385, 35.991234, 22.050163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892857, 36.363808, 21.981834>,  <33.815739, 36.587353, 21.940838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892857, 36.363808, 21.981834>,  <34.021385, 35.991234, 22.050163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892857, 36.363808, 21.981834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154920, 0.229661, 0.960862,
		0.934212, 0.282283, -0.218093,
		-0.321322, 0.931436, -0.170821,
		33.796459, 36.643238, 21.930588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537338, 36.495720, 22.313984>,  <34.021385, 35.991234, 22.050163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537338, 36.495720, 22.313984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181324, 36.676056, 22.286940>,  <33.967716, 36.784260, 22.270714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181324, 36.676056, 22.286940>,  <34.537338, 36.495720, 22.313984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181324, 36.676056, 22.286940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042829, 0.064957, 0.996969,
		0.453867, 0.890237, -0.038505,
		-0.890040, 0.450842, -0.067609,
		33.914310, 36.811310, 22.266657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482811, 37.043831, 22.804283>,  <34.537338, 36.495720, 22.313984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482811, 37.043831, 22.804283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091953, 36.998558, 22.732309>,  <33.857437, 36.971394, 22.689125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091953, 36.998558, 22.732309>,  <34.482811, 37.043831, 22.804283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091953, 36.998558, 22.732309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186448, 0.049782, 0.981203,
		-0.102093, 0.992327, -0.069746,
		-0.977146, -0.113178, -0.179935,
		33.798809, 36.964603, 22.678329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170620, 37.537151, 23.281734>,  <34.482811, 37.043831, 22.804283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170620, 37.537151, 23.281734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901714, 37.261044, 23.174713>,  <33.740372, 37.095379, 23.110500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901714, 37.261044, 23.174713>,  <34.170620, 37.537151, 23.281734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901714, 37.261044, 23.174713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337265, -0.036163, 0.940715,
		-0.659024, 0.722646, -0.208493,
		-0.672265, -0.690271, -0.267555,
		33.700035, 37.053963, 23.094446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428802, 37.703053, 23.490467>,  <34.170620, 37.537151, 23.281734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428802, 37.703053, 23.490467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422318, 37.308121, 23.427334>,  <33.418427, 37.071159, 23.389454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422318, 37.308121, 23.427334>,  <33.428802, 37.703053, 23.490467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422318, 37.308121, 23.427334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290157, -0.146415, 0.945712,
		-0.956842, 0.061128, -0.284108,
		-0.016212, -0.987333, -0.157833,
		33.417454, 37.011921, 23.379984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923893, 37.547283, 23.962706>,  <33.428802, 37.703053, 23.490467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923893, 37.547283, 23.962706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096596, 37.197289, 23.875080>,  <33.200218, 36.987293, 23.822504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096596, 37.197289, 23.875080>,  <32.923893, 37.547283, 23.962706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096596, 37.197289, 23.875080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181816, -0.322307, 0.929011,
		-0.883477, -0.361274, -0.298244,
		0.431754, -0.874985, -0.219066,
		33.226124, 36.934792, 23.809361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348194, 37.110207, 24.090237>,  <32.923893, 37.547283, 23.962706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348194, 37.110207, 24.090237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706028, 36.931847, 24.102207>,  <32.920727, 36.824829, 24.109388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706028, 36.931847, 24.102207>,  <32.348194, 37.110207, 24.090237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706028, 36.931847, 24.102207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108593, -0.151932, 0.982407,
		-0.433509, -0.882094, -0.184337,
		0.894582, -0.445900, 0.029925,
		32.974403, 36.798077, 24.111185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222885, 36.382084, 24.231909>,  <32.348194, 37.110207, 24.090237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222885, 36.382084, 24.231909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607121, 36.460476, 24.310768>,  <32.837662, 36.507511, 24.358084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607121, 36.460476, 24.310768>,  <32.222885, 36.382084, 24.231909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607121, 36.460476, 24.310768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083342, -0.473541, 0.876820,
		0.265198, -0.858691, -0.438543,
		0.960585, 0.195982, 0.197147,
		32.895298, 36.519272, 24.369913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321079, 35.856461, 24.718010>,  <32.222885, 36.382084, 24.231909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321079, 35.856461, 24.718010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637768, 36.095798, 24.767271>,  <32.827782, 36.239403, 24.796827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637768, 36.095798, 24.767271>,  <32.321079, 35.856461, 24.718010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637768, 36.095798, 24.767271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032996, -0.243186, 0.969418,
		0.609996, -0.763442, -0.212278,
		0.791717, 0.598346, 0.123152,
		32.875282, 36.275303, 24.804216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874561, 35.470066, 25.014297>,  <32.321079, 35.856461, 24.718010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874561, 35.470066, 25.014297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955063, 35.852539, 25.099354>,  <33.003365, 36.082024, 25.150387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955063, 35.852539, 25.099354>,  <32.874561, 35.470066, 25.014297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955063, 35.852539, 25.099354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079331, -0.232277, 0.969409,
		0.976322, -0.178225, -0.122601,
		0.201251, 0.956181, 0.212638,
		33.015438, 36.139393, 25.163145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381958, 35.416985, 25.534554>,  <32.874561, 35.470066, 25.014297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381958, 35.416985, 25.534554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271961, 35.799042, 25.578505>,  <33.205963, 36.028278, 25.604876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271961, 35.799042, 25.578505>,  <33.381958, 35.416985, 25.534554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271961, 35.799042, 25.578505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122151, -0.148064, 0.981405,
		0.953655, 0.256457, 0.157389,
		-0.274991, 0.955148, 0.109876,
		33.189465, 36.085587, 25.611467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763714, 35.717709, 26.033602>,  <33.381958, 35.416985, 25.534554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763714, 35.717709, 26.033602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427177, 35.933411, 26.018930>,  <33.225254, 36.062832, 26.010128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427177, 35.933411, 26.018930>,  <33.763714, 35.717709, 26.033602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427177, 35.933411, 26.018930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002128, 0.071168, 0.997462,
		0.540495, 0.839131, -0.061024,
		-0.841344, 0.539253, -0.036681,
		33.174774, 36.095188, 26.007927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906628, 36.300358, 26.528603>,  <33.763714, 35.717709, 26.033602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906628, 36.300358, 26.528603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512558, 36.256367, 26.475927>,  <33.276115, 36.229973, 26.444323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512558, 36.256367, 26.475927>,  <33.906628, 36.300358, 26.528603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512558, 36.256367, 26.475927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134104, 0.014837, 0.990856,
		-0.107021, 0.993823, -0.029366,
		-0.985171, -0.109980, -0.131688,
		33.217007, 36.223373, 26.436420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629314, 36.837849, 26.852423>,  <33.906628, 36.300358, 26.528603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629314, 36.837849, 26.852423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333141, 36.570473, 26.824289>,  <33.155437, 36.410046, 26.807409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333141, 36.570473, 26.824289>,  <33.629314, 36.837849, 26.852423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333141, 36.570473, 26.824289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060619, -0.037803, 0.997445,
		-0.669392, 0.742804, -0.012529,
		-0.740432, -0.668441, -0.070333,
		33.111012, 36.369942, 26.803190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094524, 36.963287, 27.399769>,  <33.629314, 36.837849, 26.852423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094524, 36.963287, 27.399769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036274, 36.576988, 27.313862>,  <33.001324, 36.345207, 27.262318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036274, 36.576988, 27.313862>,  <33.094524, 36.963287, 27.399769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036274, 36.576988, 27.313862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278357, -0.168314, 0.945615,
		-0.949373, 0.197490, -0.244312,
		-0.145629, -0.965747, -0.214765,
		32.992584, 36.287266, 27.249432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396328, 36.726650, 27.645988>,  <33.094524, 36.963287, 27.399769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396328, 36.726650, 27.645988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602009, 36.385315, 27.611557>,  <32.725418, 36.180511, 27.590899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602009, 36.385315, 27.611557>,  <32.396328, 36.726650, 27.645988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602009, 36.385315, 27.611557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156697, -0.192142, 0.968776,
		-0.843235, -0.484655, -0.232515,
		0.514199, -0.853341, -0.086077,
		32.756268, 36.129314, 27.585733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054478, 36.207542, 28.188839>,  <32.396328, 36.726650, 27.645988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054478, 36.207542, 28.188839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401505, 36.027328, 28.104614>,  <32.609722, 35.919201, 28.054079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401505, 36.027328, 28.104614>,  <32.054478, 36.207542, 28.188839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401505, 36.027328, 28.104614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033089, -0.474756, 0.879495,
		-0.496217, -0.756054, -0.426791,
		0.867568, -0.450542, -0.210565,
		32.661774, 35.892166, 28.041445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952921, 35.397541, 28.310963>,  <32.054478, 36.207542, 28.188839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952921, 35.397541, 28.310963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325985, 35.535969, 28.351721>,  <32.549824, 35.619026, 28.376175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325985, 35.535969, 28.351721>,  <31.952921, 35.397541, 28.310963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325985, 35.535969, 28.351721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076006, -0.464606, 0.882250,
		0.352657, -0.815095, -0.459622,
		0.932661, 0.346065, 0.101894,
		32.605782, 35.639790, 28.382290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332413, 34.859440, 28.437424>,  <31.952921, 35.397541, 28.310963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332413, 34.859440, 28.437424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578266, 35.157173, 28.541883>,  <32.725777, 35.335812, 28.604559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578266, 35.157173, 28.541883>,  <32.332413, 34.859440, 28.437424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578266, 35.157173, 28.541883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275670, -0.512878, 0.812996,
		0.739076, -0.427702, -0.520421,
		0.614632, 0.744330, 0.261151,
		32.762657, 35.380474, 28.620230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908218, 34.520714, 28.795218>,  <32.332413, 34.859440, 28.437424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908218, 34.520714, 28.795218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961788, 34.897758, 28.917562>,  <32.993931, 35.123985, 28.990969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961788, 34.897758, 28.917562>,  <32.908218, 34.520714, 28.795218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961788, 34.897758, 28.917562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384029, -0.333888, 0.860837,
		0.913557, 0.002173, -0.406705,
		0.133924, 0.942610, 0.305860,
		33.001965, 35.180542, 29.009321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629261, 34.543015, 29.077648>,  <32.908218, 34.520714, 28.795218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629261, 34.543015, 29.077648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405582, 34.834122, 29.236467>,  <33.271374, 35.008785, 29.331758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405582, 34.834122, 29.236467>,  <33.629261, 34.543015, 29.077648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405582, 34.834122, 29.236467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289466, -0.277385, 0.916115,
		0.776855, 0.627224, -0.055551,
		-0.559201, 0.727769, 0.397048,
		33.237823, 35.052452, 29.355581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067139, 34.893726, 29.542116>,  <33.629261, 34.543015, 29.077648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067139, 34.893726, 29.542116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701378, 34.981606, 29.678120>,  <33.481922, 35.034332, 29.759722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701378, 34.981606, 29.678120>,  <34.067139, 34.893726, 29.542116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701378, 34.981606, 29.678120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335662, -0.058002, 0.940195,
		0.226277, 0.973843, -0.020707,
		-0.914401, 0.219695, 0.340007,
		33.427059, 35.047516, 29.780121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283154, 35.337849, 30.091360>,  <34.067139, 34.893726, 29.542116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283154, 35.337849, 30.091360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899971, 35.245129, 30.158987>,  <33.670059, 35.189499, 30.199562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899971, 35.245129, 30.158987>,  <34.283154, 35.337849, 30.091360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899971, 35.245129, 30.158987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186599, -0.055766, 0.980852,
		-0.217931, 0.971164, 0.096674,
		-0.957960, -0.231798, 0.169065,
		33.612583, 35.175591, 30.209707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652206, 35.925709, 29.806698>,  <34.283154, 35.337849, 30.091360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652206, 35.925709, 29.806698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031216, 35.848125, 29.908354>,  <35.258621, 35.801575, 29.969347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031216, 35.848125, 29.908354>,  <34.652206, 35.925709, 29.806698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031216, 35.848125, 29.908354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315765, 0.692083, -0.649086,
		-0.049989, 0.695270, 0.717008,
		0.947520, -0.193959, 0.254139,
		35.315472, 35.789936, 29.984596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898888, 36.553268, 29.855995>,  <34.652206, 35.925709, 29.806698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898888, 36.553268, 29.855995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225876, 36.327957, 29.807903>,  <35.422070, 36.192768, 29.779049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225876, 36.327957, 29.807903>,  <34.898888, 36.553268, 29.855995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225876, 36.327957, 29.807903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371530, 0.675202, -0.637234,
		0.440120, 0.476252, 0.761234,
		0.817471, -0.563281, -0.120228,
		35.471119, 36.158974, 29.771835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494701, 37.014782, 30.023199>,  <34.898888, 36.553268, 29.855995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494701, 37.014782, 30.023199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621380, 36.707474, 29.800680>,  <35.697388, 36.523090, 29.667168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621380, 36.707474, 29.800680>,  <35.494701, 37.014782, 30.023199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621380, 36.707474, 29.800680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462579, 0.637110, -0.616533,
		0.828086, -0.062081, 0.557153,
		0.316693, -0.768269, -0.556299,
		35.716389, 36.476994, 29.633791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933380, 37.417400, 29.534021>,  <35.494701, 37.014782, 30.023199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933380, 37.417400, 29.534021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917469, 37.047543, 29.382524>,  <35.907921, 36.825626, 29.291626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917469, 37.047543, 29.382524>,  <35.933380, 37.417400, 29.534021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917469, 37.047543, 29.382524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337197, 0.344383, -0.876184,
		0.940593, -0.162566, 0.298088,
		-0.039781, -0.924648, -0.378741,
		35.905533, 36.770149, 29.268902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584244, 37.281261, 29.282400>,  <35.933380, 37.417400, 29.534021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584244, 37.281261, 29.282400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300507, 37.067734, 29.098282>,  <36.130264, 36.939617, 28.987812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300507, 37.067734, 29.098282>,  <36.584244, 37.281261, 29.282400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300507, 37.067734, 29.098282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418835, 0.206023, -0.884382,
		0.566929, -0.820118, 0.077439,
		-0.709344, -0.533816, -0.460295,
		36.087704, 36.907589, 28.960194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948170, 37.058559, 28.728683>,  <36.584244, 37.281261, 29.282400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948170, 37.058559, 28.728683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566635, 36.986507, 28.632557>,  <36.337715, 36.943275, 28.574881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566635, 36.986507, 28.632557>,  <36.948170, 37.058559, 28.728683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566635, 36.986507, 28.632557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233407, 0.058931, -0.970592,
		0.188999, -0.981875, -0.014166,
		-0.953834, -0.180134, -0.240315,
		36.280483, 36.932468, 28.560463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062607, 36.631901, 28.203560>,  <36.948170, 37.058559, 28.728683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062607, 36.631901, 28.203560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705120, 36.803387, 28.150686>,  <36.490627, 36.906277, 28.118961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705120, 36.803387, 28.150686>,  <37.062607, 36.631901, 28.203560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705120, 36.803387, 28.150686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204928, 0.128015, -0.970369,
		-0.399087, -0.894326, -0.202264,
		-0.893719, 0.428711, -0.132183,
		36.437004, 36.931999, 28.111031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854099, 36.303936, 27.585371>,  <37.062607, 36.631901, 28.203560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854099, 36.303936, 27.585371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588112, 36.601185, 27.615274>,  <36.428520, 36.779533, 27.633217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588112, 36.601185, 27.615274>,  <36.854099, 36.303936, 27.585371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588112, 36.601185, 27.615274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039361, 0.134823, -0.990088,
		-0.745835, -0.655433, -0.118902,
		-0.664966, 0.743122, 0.074757,
		36.388622, 36.824123, 27.637701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452000, 36.124176, 27.160757>,  <36.854099, 36.303936, 27.585371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452000, 36.124176, 27.160757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356083, 36.509148, 27.211708>,  <36.298534, 36.740131, 27.242279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356083, 36.509148, 27.211708>,  <36.452000, 36.124176, 27.160757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356083, 36.509148, 27.211708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032529, 0.123165, -0.991853,
		-0.970280, -0.241977, 0.001774,
		-0.239787, 0.962433, 0.127376,
		36.284145, 36.797878, 27.249920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840115, 36.255451, 26.708426>,  <36.452000, 36.124176, 27.160757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840115, 36.255451, 26.708426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028988, 36.600868, 26.779238>,  <36.142311, 36.808117, 26.821726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028988, 36.600868, 26.779238>,  <35.840115, 36.255451, 26.708426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028988, 36.600868, 26.779238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008306, 0.205177, -0.978690,
		-0.881461, 0.460651, 0.104054,
		0.472184, 0.863541, 0.177030,
		36.170643, 36.859932, 26.832346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454105, 36.883598, 26.387089>,  <35.840115, 36.255451, 26.708426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454105, 36.883598, 26.387089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824581, 37.031624, 26.415993>,  <36.046867, 37.120438, 26.433334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824581, 37.031624, 26.415993>,  <35.454105, 36.883598, 26.387089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824581, 37.031624, 26.415993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084073, 0.389510, -0.917177,
		-0.367558, 0.843407, 0.391873,
		0.926192, 0.370062, 0.072260,
		36.102440, 37.142643, 26.437670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398079, 37.550655, 26.079847>,  <35.454105, 36.883598, 26.387089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398079, 37.550655, 26.079847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790470, 37.473881, 26.091438>,  <36.025906, 37.427818, 26.098392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790470, 37.473881, 26.091438>,  <35.398079, 37.550655, 26.079847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790470, 37.473881, 26.091438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110338, 0.428553, -0.896754,
		0.159698, 0.882895, 0.441579,
		0.980980, -0.191933, 0.028978,
		36.084763, 37.416302, 26.100132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695854, 38.133602, 25.898388>,  <35.398079, 37.550655, 26.079847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695854, 38.133602, 25.898388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962891, 37.844933, 25.825161>,  <36.123112, 37.671730, 25.781225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962891, 37.844933, 25.825161>,  <35.695854, 38.133602, 25.898388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962891, 37.844933, 25.825161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197412, 0.408659, -0.891081,
		0.717878, 0.558740, 0.415284,
		0.667592, -0.721670, -0.183066,
		36.163170, 37.628433, 25.770241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168262, 38.393272, 25.463659>,  <35.695854, 38.133602, 25.898388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168262, 38.393272, 25.463659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257256, 38.007801, 25.404556>,  <36.310650, 37.776520, 25.369095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257256, 38.007801, 25.404556>,  <36.168262, 38.393272, 25.463659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257256, 38.007801, 25.404556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197767, 0.193014, -0.961059,
		0.954668, 0.184595, 0.233525,
		0.222480, -0.963675, -0.147757,
		36.324001, 37.718697, 25.360229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739082, 38.400414, 25.086964>,  <36.168262, 38.393272, 25.463659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739082, 38.400414, 25.086964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591331, 38.035679, 25.015287>,  <36.502682, 37.816837, 24.972281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591331, 38.035679, 25.015287>,  <36.739082, 38.400414, 25.086964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591331, 38.035679, 25.015287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273340, 0.077688, -0.958775,
		0.888169, -0.403131, 0.220546,
		-0.369378, -0.911839, -0.179193,
		36.480518, 37.762127, 24.961529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255848, 37.937099, 24.755344>,  <36.739082, 38.400414, 25.086964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255848, 37.937099, 24.755344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891285, 37.798473, 24.666599>,  <36.672546, 37.715298, 24.613352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891285, 37.798473, 24.666599>,  <37.255848, 37.937099, 24.755344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891285, 37.798473, 24.666599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189999, 0.123832, -0.973943,
		0.365012, -0.929815, -0.047014,
		-0.911409, -0.346568, -0.221865,
		36.617863, 37.694504, 24.600040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405003, 37.420837, 24.161234>,  <37.255848, 37.937099, 24.755344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405003, 37.420837, 24.161234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008671, 37.471741, 24.143087>,  <36.770870, 37.502281, 24.132200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008671, 37.471741, 24.143087>,  <37.405003, 37.420837, 24.161234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008671, 37.471741, 24.143087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032497, -0.101440, -0.994311,
		-0.131146, -0.986668, 0.096374,
		-0.990830, 0.127268, -0.045367,
		36.711422, 37.509918, 24.129478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117020, 36.808838, 23.733479>,  <37.405003, 37.420837, 24.161234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117020, 36.808838, 23.733479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825981, 37.083157, 23.726812>,  <36.651356, 37.247749, 23.722813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825981, 37.083157, 23.726812>,  <37.117020, 36.808838, 23.733479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825981, 37.083157, 23.726812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079375, -0.108292, -0.990945,
		-0.681393, -0.719690, 0.133229,
		-0.727601, 0.685798, -0.016664,
		36.607700, 37.288895, 23.721813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641212, 36.514656, 23.377932>,  <37.117020, 36.808838, 23.733479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641212, 36.514656, 23.377932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575089, 36.908207, 23.350657>,  <36.535416, 37.144337, 23.334291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575089, 36.908207, 23.350657>,  <36.641212, 36.514656, 23.377932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575089, 36.908207, 23.350657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044539, -0.076516, -0.996073,
		-0.985236, -0.161623, 0.056470,
		-0.165309, 0.983882, -0.068188,
		36.525497, 37.203373, 23.330200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039776, 36.627934, 22.919010>,  <36.641212, 36.514656, 23.377932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039776, 36.627934, 22.919010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245235, 36.970936, 22.930683>,  <36.368511, 37.176735, 22.937687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245235, 36.970936, 22.930683>,  <36.039776, 36.627934, 22.919010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245235, 36.970936, 22.930683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117789, 0.104162, -0.987561,
		-0.849875, 0.503825, 0.154508,
		0.513652, 0.857502, 0.029180,
		36.399330, 37.228188, 22.939438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696148, 37.066738, 22.568394>,  <36.039776, 36.627934, 22.919010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696148, 37.066738, 22.568394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058491, 37.236156, 22.565844>,  <36.275894, 37.337807, 22.564314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058491, 37.236156, 22.565844>,  <35.696148, 37.066738, 22.568394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058491, 37.236156, 22.565844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090538, 0.178896, -0.979693,
		-0.413803, 0.888036, 0.200401,
		0.905853, 0.423544, -0.006374,
		36.330246, 37.363220, 22.563932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670208, 37.528774, 21.998789>,  <35.696148, 37.066738, 22.568394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670208, 37.528774, 21.998789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068611, 37.512505, 22.030571>,  <36.307652, 37.502743, 22.049641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068611, 37.512505, 22.030571>,  <35.670208, 37.528774, 21.998789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068611, 37.512505, 22.030571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080988, 0.037533, -0.996008,
		0.037533, 0.998467, 0.040678,
		0.996008, -0.040678, 0.079455,
		36.367413, 37.500301, 22.054407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934845, 38.050972, 21.582680>,  <35.670208, 37.528774, 21.998789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934845, 38.050972, 21.582680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224739, 37.779297, 21.629105>,  <36.398674, 37.616291, 21.656960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224739, 37.779297, 21.629105>,  <35.934845, 38.050972, 21.582680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224739, 37.779297, 21.629105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014227, -0.153660, -0.988021,
		0.688884, 0.717702, -0.101700,
		0.724732, -0.679185, 0.116064,
		36.442158, 37.575542, 21.663923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523674, 38.266392, 21.019297>,  <35.934845, 38.050972, 21.582680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523674, 38.266392, 21.019297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508781, 37.885990, 21.142063>,  <36.499847, 37.657749, 21.215723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508781, 37.885990, 21.142063>,  <36.523674, 38.266392, 21.019297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508781, 37.885990, 21.142063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031244, -0.308089, -0.950844,
		0.998818, -0.025813, 0.041184,
		-0.037232, -0.951008, 0.306918,
		36.497612, 37.600689, 21.234138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892780, 37.948978, 20.490047>,  <36.523674, 38.266392, 21.019297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892780, 37.948978, 20.490047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729416, 37.633053, 20.673086>,  <36.631397, 37.443497, 20.782909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729416, 37.633053, 20.673086>,  <36.892780, 37.948978, 20.490047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729416, 37.633053, 20.673086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075294, -0.528752, -0.845430,
		0.909688, -0.310828, 0.275416,
		-0.408411, -0.789815, 0.457595,
		36.606892, 37.396107, 20.810364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258129, 37.455627, 20.193178>,  <36.892780, 37.948978, 20.490047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258129, 37.455627, 20.193178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951530, 37.271080, 20.371899>,  <36.767570, 37.160351, 20.479130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951530, 37.271080, 20.371899>,  <37.258129, 37.455627, 20.193178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951530, 37.271080, 20.371899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042422, -0.657789, -0.752007,
		0.640849, -0.595363, 0.484619,
		-0.766494, -0.461364, 0.446799,
		36.721581, 37.132671, 20.505938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418301, 36.672337, 20.275518>,  <37.258129, 37.455627, 20.193178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418301, 36.672337, 20.275518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023685, 36.737492, 20.269747>,  <36.786915, 36.776585, 20.266283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023685, 36.737492, 20.269747>,  <37.418301, 36.672337, 20.275518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023685, 36.737492, 20.269747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105056, -0.698947, -0.707416,
		-0.125313, -0.696378, 0.706650,
		-0.986539, 0.162887, -0.014428,
		36.727722, 36.786358, 20.265419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180683, 36.079498, 20.203014>,  <37.418301, 36.672337, 20.275518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180683, 36.079498, 20.203014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899754, 36.316608, 20.045351>,  <36.731197, 36.458874, 19.950754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899754, 36.316608, 20.045351>,  <37.180683, 36.079498, 20.203014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899754, 36.316608, 20.045351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073790, -0.611339, -0.787921,
		-0.708027, -0.524288, 0.473097,
		-0.702320, 0.592779, -0.394157,
		36.689056, 36.494442, 19.927103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674263, 35.652298, 19.998007>,  <37.180683, 36.079498, 20.203014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674263, 35.652298, 19.998007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605934, 35.982056, 19.782156>,  <36.564938, 36.179909, 19.652645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605934, 35.982056, 19.782156>,  <36.674263, 35.652298, 19.998007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605934, 35.982056, 19.782156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289850, -0.565491, -0.772144,
		-0.941703, 0.024509, 0.335550,
		-0.170826, 0.824390, -0.539629,
		36.554688, 36.229374, 19.620268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327515, 35.378334, 19.472244>,  <36.674263, 35.652298, 19.998007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327515, 35.378334, 19.472244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385403, 35.751720, 19.340971>,  <36.420135, 35.975750, 19.262207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385403, 35.751720, 19.340971>,  <36.327515, 35.378334, 19.472244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385403, 35.751720, 19.340971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086047, -0.318547, -0.943993,
		-0.985724, 0.164856, 0.034221,
		0.144722, 0.933461, -0.328185,
		36.428818, 36.031757, 19.242516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817173, 35.523533, 18.935101>,  <36.327515, 35.378334, 19.472244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817173, 35.523533, 18.935101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136086, 35.759560, 18.884243>,  <36.327435, 35.901176, 18.853729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136086, 35.759560, 18.884243>,  <35.817173, 35.523533, 18.935101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136086, 35.759560, 18.884243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061006, -0.130789, -0.989532,
		-0.600518, 0.796691, -0.068278,
		0.797281, 0.590066, -0.127144,
		36.375271, 35.936581, 18.846100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657665, 35.793232, 18.346918>,  <35.817173, 35.523533, 18.935101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657665, 35.793232, 18.346918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048115, 35.873081, 18.381157>,  <36.282387, 35.920990, 18.401701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048115, 35.873081, 18.381157>,  <35.657665, 35.793232, 18.346918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048115, 35.873081, 18.381157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149658, -0.332543, -0.931138,
		-0.157411, 0.921719, -0.354479,
		0.976127, 0.199622, 0.085597,
		36.340954, 35.932968, 18.406836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728210, 36.122124, 17.748741>,  <35.657665, 35.793232, 18.346918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728210, 36.122124, 17.748741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082146, 35.968742, 17.854584>,  <36.294506, 35.876713, 17.918089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082146, 35.968742, 17.854584>,  <35.728210, 36.122124, 17.748741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082146, 35.968742, 17.854584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165698, -0.271809, -0.947979,
		0.435433, 0.882655, -0.176969,
		0.884840, -0.383458, 0.264609,
		36.347599, 35.853706, 17.933966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131069, 36.380165, 17.307093>,  <35.728210, 36.122124, 17.748741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131069, 36.380165, 17.307093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327438, 36.058952, 17.442225>,  <36.445259, 35.866226, 17.523304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327438, 36.058952, 17.442225>,  <36.131069, 36.380165, 17.307093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327438, 36.058952, 17.442225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119900, -0.321809, -0.939182,
		0.862912, 0.501574, -0.061701,
		0.490925, -0.803033, 0.337831,
		36.474716, 35.818043, 17.543573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718849, 36.270504, 16.911848>,  <36.131069, 36.380165, 17.307093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718849, 36.270504, 16.911848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684803, 35.911987, 17.085938>,  <36.664375, 35.696877, 17.190392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684803, 35.911987, 17.085938>,  <36.718849, 36.270504, 16.911848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684803, 35.911987, 17.085938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052656, -0.440243, -0.896333,
		0.994979, -0.053377, 0.084667,
		-0.085118, -0.896291, 0.435222,
		36.659267, 35.643101, 17.216503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180717, 35.756859, 16.563135>,  <36.718849, 36.270504, 16.911848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180717, 35.756859, 16.563135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933941, 35.502472, 16.748579>,  <36.785877, 35.349842, 16.859846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933941, 35.502472, 16.748579>,  <37.180717, 35.756859, 16.563135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933941, 35.502472, 16.748579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078214, -0.635708, -0.767957,
		0.783114, -0.437522, 0.441935,
		-0.616940, -0.635964, 0.463612,
		36.748859, 35.311684, 16.887663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497356, 35.037403, 16.440121>,  <37.180717, 35.756859, 16.563135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497356, 35.037403, 16.440121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121746, 34.941936, 16.539125>,  <36.896378, 34.884659, 16.598528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121746, 34.941936, 16.539125>,  <37.497356, 35.037403, 16.440121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121746, 34.941936, 16.539125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102976, -0.882022, -0.459818,
		0.328052, -0.406296, 0.852822,
		-0.939030, -0.238664, 0.247510,
		36.840038, 34.870338, 16.613379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544331, 34.402016, 16.760052>,  <37.497356, 35.037403, 16.440121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544331, 34.402016, 16.760052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173172, 34.451786, 16.619469>,  <36.950478, 34.481647, 16.535118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173172, 34.451786, 16.619469>,  <37.544331, 34.402016, 16.760052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173172, 34.451786, 16.619469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115638, -0.800129, -0.588575,
		-0.354446, -0.586780, 0.728050,
		-0.927898, 0.124428, -0.351457,
		36.894802, 34.489113, 16.514032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829445, 33.708961, 16.639826>,  <37.544331, 34.402016, 16.760052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829445, 33.708961, 16.639826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210262, 33.590748, 16.608131>,  <38.438751, 33.519817, 16.589115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210262, 33.590748, 16.608131>,  <37.829445, 33.708961, 16.639826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210262, 33.590748, 16.608131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102571, 0.064289, 0.992646,
		-0.288272, -0.953165, 0.091519,
		0.952039, -0.295539, -0.079234,
		38.495872, 33.502087, 16.584362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935822, 33.210274, 17.147964>,  <37.829445, 33.708961, 16.639826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935822, 33.210274, 17.147964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299797, 33.339111, 17.043453>,  <38.518181, 33.416412, 16.980745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299797, 33.339111, 17.043453>,  <37.935822, 33.210274, 17.147964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299797, 33.339111, 17.043453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292975, -0.053284, 0.954634,
		0.293561, -0.945207, -0.142851,
		0.909939, 0.322095, -0.261280,
		38.572777, 33.435741, 16.965069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549232, 32.729321, 17.429417>,  <37.935822, 33.210274, 17.147964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549232, 32.729321, 17.429417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660789, 33.111088, 17.386892>,  <38.727726, 33.340149, 17.361378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660789, 33.111088, 17.386892>,  <38.549232, 32.729321, 17.429417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660789, 33.111088, 17.386892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269135, 0.028584, 0.962678,
		0.921838, -0.297097, -0.248895,
		0.278894, 0.954419, -0.106309,
		38.744457, 33.397415, 17.355000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199581, 32.733326, 17.804037>,  <38.549232, 32.729321, 17.429417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199581, 32.733326, 17.804037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135418, 33.121284, 17.730757>,  <39.096920, 33.354061, 17.686789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135418, 33.121284, 17.730757>,  <39.199581, 32.733326, 17.804037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135418, 33.121284, 17.730757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374920, 0.231566, 0.897670,
		0.913074, 0.075306, -0.400780,
		-0.160407, 0.969900, -0.183203,
		39.087296, 33.412254, 17.675797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829212, 33.116035, 18.028452>,  <39.199581, 32.733326, 17.804037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829212, 33.116035, 18.028452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568848, 33.417873, 17.995224>,  <39.412628, 33.598976, 17.975286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568848, 33.417873, 17.995224>,  <39.829212, 33.116035, 18.028452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568848, 33.417873, 17.995224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269637, 0.332092, 0.903886,
		0.709657, 0.565949, -0.419629,
		-0.650909, 0.754597, -0.083070,
		39.373573, 33.644253, 17.970303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206268, 33.683743, 18.254538>,  <39.829212, 33.116035, 18.028452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206268, 33.683743, 18.254538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815243, 33.745617, 18.311731>,  <39.580627, 33.782742, 18.346048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815243, 33.745617, 18.311731>,  <40.206268, 33.683743, 18.254538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815243, 33.745617, 18.311731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182928, 0.286810, 0.940360,
		0.104453, 0.945416, -0.308671,
		-0.977562, 0.154688, 0.142985,
		39.521973, 33.792023, 18.354628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169861, 34.360165, 18.606016>,  <40.206268, 33.683743, 18.254538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169861, 34.360165, 18.606016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798367, 34.221581, 18.658817>,  <39.575470, 34.138432, 18.690498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798367, 34.221581, 18.658817>,  <40.169861, 34.360165, 18.606016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798367, 34.221581, 18.658817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041195, 0.257405, 0.965425,
		-0.368455, 0.902059, -0.224788,
		-0.928732, -0.346456, 0.132003,
		39.519749, 34.117645, 18.698418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941959, 34.708599, 19.254461>,  <40.169861, 34.360165, 18.606016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941959, 34.708599, 19.254461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673969, 34.413219, 19.223925>,  <39.513176, 34.235992, 19.205603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673969, 34.413219, 19.223925>,  <39.941959, 34.708599, 19.254461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673969, 34.413219, 19.223925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098422, -0.013572, 0.995052,
		-0.735830, 0.674175, -0.063587,
		-0.669976, -0.738447, -0.076340,
		39.472977, 34.191685, 19.201023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290359, 34.987915, 19.398447>,  <39.941959, 34.708599, 19.254461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290359, 34.987915, 19.398447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252937, 34.598381, 19.481289>,  <39.230484, 34.364662, 19.530994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252937, 34.598381, 19.481289>,  <39.290359, 34.987915, 19.398447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252937, 34.598381, 19.481289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154929, 0.219724, 0.963181,
		-0.983486, 0.058025, -0.171432,
		-0.093556, -0.973835, 0.207106,
		39.224869, 34.306232, 19.543421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023262, 35.007439, 19.956036>,  <39.290359, 34.987915, 19.398447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023262, 35.007439, 19.956036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131027, 34.622314, 19.964197>,  <39.195686, 34.391239, 19.969093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131027, 34.622314, 19.964197>,  <39.023262, 35.007439, 19.956036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131027, 34.622314, 19.964197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075778, 0.042316, 0.996226,
		-0.960039, -0.266848, 0.084360,
		0.269411, -0.962809, 0.020404,
		39.211849, 34.333473, 19.970318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546844, 34.737034, 20.274347>,  <39.023262, 35.007439, 19.956036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546844, 34.737034, 20.274347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875324, 34.512794, 20.316998>,  <39.072411, 34.378250, 20.342587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875324, 34.512794, 20.316998>,  <38.546844, 34.737034, 20.274347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875324, 34.512794, 20.316998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043254, 0.125161, 0.991193,
		-0.569004, -0.818576, 0.078534,
		0.821197, -0.560596, 0.106624,
		39.121685, 34.344616, 20.348984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476791, 34.632946, 20.955309>,  <38.546844, 34.737034, 20.274347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476791, 34.632946, 20.955309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843754, 34.506168, 20.859055>,  <39.063934, 34.430103, 20.801302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843754, 34.506168, 20.859055>,  <38.476791, 34.632946, 20.955309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843754, 34.506168, 20.859055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329512, 0.265994, 0.905908,
		-0.223113, -0.910382, 0.348462,
		0.917411, -0.316942, -0.240635,
		39.118977, 34.411087, 20.786863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592773, 34.117214, 21.424284>,  <38.476791, 34.632946, 20.955309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592773, 34.117214, 21.424284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901924, 34.317795, 21.268740>,  <39.087414, 34.438145, 21.175413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901924, 34.317795, 21.268740>,  <38.592773, 34.117214, 21.424284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901924, 34.317795, 21.268740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140450, 0.462423, 0.875465,
		0.618823, -0.731238, 0.286965,
		0.772872, 0.501454, -0.388861,
		39.133785, 34.468231, 21.152082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196732, 33.972466, 21.849007>,  <38.592773, 34.117214, 21.424284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196732, 33.972466, 21.849007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269234, 34.320057, 21.664825>,  <39.312737, 34.528614, 21.554317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269234, 34.320057, 21.664825>,  <39.196732, 33.972466, 21.849007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269234, 34.320057, 21.664825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273570, 0.405172, 0.872350,
		0.944619, -0.284086, -0.164287,
		0.181258, 0.868982, -0.460451,
		39.323612, 34.580753, 21.526690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663364, 34.259174, 22.284727>,  <39.196732, 33.972466, 21.849007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663364, 34.259174, 22.284727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560993, 34.579182, 22.067667>,  <39.499569, 34.771187, 21.937431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560993, 34.579182, 22.067667>,  <39.663364, 34.259174, 22.284727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560993, 34.579182, 22.067667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137469, 0.585758, 0.798742,
		0.956872, 0.129823, -0.259890,
		-0.255928, 0.800021, -0.542649,
		39.484215, 34.819187, 21.904873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048512, 34.722519, 22.582134>,  <39.663364, 34.259174, 22.284727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048512, 34.722519, 22.582134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767960, 34.930565, 22.387178>,  <39.599628, 35.055393, 22.270205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767960, 34.930565, 22.387178>,  <40.048512, 34.722519, 22.582134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767960, 34.930565, 22.387178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060280, 0.724614, 0.686513,
		0.710233, 0.452127, -0.539583,
		-0.701381, 0.520110, -0.487391,
		39.557545, 35.086597, 22.240961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202385, 35.389023, 22.685289>,  <40.048512, 34.722519, 22.582134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202385, 35.389023, 22.685289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819733, 35.439331, 22.580189>,  <39.590141, 35.469517, 22.517128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819733, 35.439331, 22.580189>,  <40.202385, 35.389023, 22.685289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819733, 35.439331, 22.580189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116690, 0.661017, 0.741242,
		0.266910, 0.739755, -0.617674,
		-0.956631, 0.125768, -0.262754,
		39.532742, 35.477062, 22.501362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069805, 36.235428, 22.729488>,  <40.202385, 35.389023, 22.685289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069805, 36.235428, 22.729488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738781, 36.014542, 22.769907>,  <39.540169, 35.882011, 22.794159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738781, 36.014542, 22.769907>,  <40.069805, 36.235428, 22.729488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738781, 36.014542, 22.769907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319698, 0.611542, 0.723746,
		-0.461456, 0.566637, -0.682628,
		-0.827557, -0.552212, 0.101047,
		39.490513, 35.848877, 22.800220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590176, 36.771389, 22.939114>,  <40.069805, 36.235428, 22.729488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590176, 36.771389, 22.939114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429001, 36.410969, 23.003309>,  <39.332298, 36.194717, 23.041826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429001, 36.410969, 23.003309>,  <39.590176, 36.771389, 22.939114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429001, 36.410969, 23.003309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476184, 0.356145, 0.803996,
		-0.781596, 0.247535, -0.572568,
		-0.402934, -0.901048, 0.160489,
		39.308121, 36.140656, 23.051456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828293, 36.984039, 23.180183>,  <39.590176, 36.771389, 22.939114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828293, 36.984039, 23.180183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916302, 36.606483, 23.278709>,  <38.969105, 36.379951, 23.337826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916302, 36.606483, 23.278709>,  <38.828293, 36.984039, 23.180183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916302, 36.606483, 23.278709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538113, 0.093174, 0.837707,
		-0.813650, -0.316858, -0.487417,
		0.220020, -0.943885, 0.246317,
		38.982307, 36.323318, 23.352604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211895, 36.650150, 23.376745>,  <38.828293, 36.984039, 23.180183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211895, 36.650150, 23.376745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493668, 36.429550, 23.555464>,  <38.662731, 36.297192, 23.662695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493668, 36.429550, 23.555464>,  <38.211895, 36.650150, 23.376745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493668, 36.429550, 23.555464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368449, 0.253900, 0.894304,
		-0.606652, -0.794595, -0.024346,
		0.704428, -0.551502, 0.446797,
		38.704994, 36.264099, 23.689503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880661, 36.342884, 23.917818>,  <38.211895, 36.650150, 23.376745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880661, 36.342884, 23.917818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261646, 36.292206, 24.028648>,  <38.490238, 36.261799, 24.095146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261646, 36.292206, 24.028648>,  <37.880661, 36.342884, 23.917818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261646, 36.292206, 24.028648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239803, 0.249220, 0.938288,
		-0.187927, -0.960124, 0.206990,
		0.952459, -0.126693, 0.277076,
		38.547382, 36.254196, 24.111771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956936, 35.743439, 24.318876>,  <37.880661, 36.342884, 23.917818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956936, 35.743439, 24.318876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278946, 35.964848, 24.404249>,  <38.472153, 36.097691, 24.455473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278946, 35.964848, 24.404249>,  <37.956936, 35.743439, 24.318876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278946, 35.964848, 24.404249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298974, 0.067796, 0.951850,
		0.512398, -0.830072, 0.220066,
		0.805023, 0.553520, 0.213431,
		38.520454, 36.130905, 24.468279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292191, 35.465542, 24.961374>,  <37.956936, 35.743439, 24.318876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292191, 35.465542, 24.961374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452518, 35.830101, 24.924055>,  <38.548714, 36.048836, 24.901665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452518, 35.830101, 24.924055>,  <38.292191, 35.465542, 24.961374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452518, 35.830101, 24.924055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082169, 0.065662, 0.994453,
		0.912464, -0.406263, -0.048570,
		0.400820, 0.911394, -0.093297,
		38.572765, 36.103519, 24.896067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809826, 35.572502, 25.489861>,  <38.292191, 35.465542, 24.961374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809826, 35.572502, 25.489861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721607, 35.952381, 25.400932>,  <38.668674, 36.180309, 25.347576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721607, 35.952381, 25.400932>,  <38.809826, 35.572502, 25.489861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721607, 35.952381, 25.400932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085428, 0.245866, 0.965532,
		0.971628, 0.193953, -0.135357,
		-0.220547, 0.949701, -0.222321,
		38.655441, 36.237293, 25.334236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298313, 36.006588, 25.737871>,  <38.809826, 35.572502, 25.489861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298313, 36.006588, 25.737871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971615, 36.234165, 25.699434>,  <38.775597, 36.370712, 25.676373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971615, 36.234165, 25.699434>,  <39.298313, 36.006588, 25.737871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971615, 36.234165, 25.699434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007574, 0.155948, 0.987736,
		0.576951, 0.807455, -0.123060,
		-0.816744, 0.568943, -0.096090,
		38.726593, 36.404850, 25.670607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436928, 36.703117, 25.906008>,  <39.298313, 36.006588, 25.737871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436928, 36.703117, 25.906008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053486, 36.618710, 25.982481>,  <38.823421, 36.568066, 26.028364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053486, 36.618710, 25.982481>,  <39.436928, 36.703117, 25.906008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053486, 36.618710, 25.982481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131494, 0.267478, 0.954550,
		-0.252562, 0.940175, -0.228658,
		-0.958604, -0.211015, 0.191182,
		38.765903, 36.555405, 26.039835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285862, 37.193279, 26.477802>,  <39.436928, 36.703117, 25.906008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285862, 37.193279, 26.477802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995285, 36.918449, 26.472000>,  <38.820938, 36.753551, 26.468519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995285, 36.918449, 26.472000>,  <39.285862, 37.193279, 26.477802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995285, 36.918449, 26.472000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091354, 0.075623, 0.992943,
		-0.681130, 0.722640, -0.117703,
		-0.726441, -0.687075, -0.014507,
		38.777351, 36.712326, 26.467648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772041, 37.357601, 26.965075>,  <39.285862, 37.193279, 26.477802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772041, 37.357601, 26.965075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705521, 36.967201, 26.908844>,  <38.665607, 36.732960, 26.875105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705521, 36.967201, 26.908844>,  <38.772041, 37.357601, 26.965075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705521, 36.967201, 26.908844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106842, -0.123888, 0.986527,
		-0.980270, 0.179077, -0.083676,
		-0.166297, -0.976004, -0.140577,
		38.655632, 36.674400, 26.866671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267223, 37.235748, 27.422781>,  <38.772041, 37.357601, 26.965075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267223, 37.235748, 27.422781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414429, 36.872414, 27.343294>,  <38.502754, 36.654411, 27.295603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414429, 36.872414, 27.343294>,  <38.267223, 37.235748, 27.422781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414429, 36.872414, 27.343294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073336, -0.184695, 0.980056,
		-0.926923, -0.375249, -0.001356,
		0.368015, -0.908337, -0.198717,
		38.524834, 36.599911, 27.283678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889927, 36.742702, 27.809124>,  <38.267223, 37.235748, 27.422781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889927, 36.742702, 27.809124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223606, 36.547352, 27.706676>,  <38.423813, 36.430141, 27.645208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223606, 36.547352, 27.706676>,  <37.889927, 36.742702, 27.809124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223606, 36.547352, 27.706676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097261, -0.326862, 0.940054,
		-0.542815, -0.809105, -0.225169,
		0.834201, -0.488375, -0.256120,
		38.473866, 36.400841, 27.629841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801666, 36.118980, 28.190063>,  <37.889927, 36.742702, 27.809124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801666, 36.118980, 28.190063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191196, 36.148472, 28.104057>,  <38.424915, 36.166164, 28.052454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191196, 36.148472, 28.104057>,  <37.801666, 36.118980, 28.190063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191196, 36.148472, 28.104057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227260, -0.297231, 0.927366,
		0.004461, -0.951955, -0.306205,
		0.973824, 0.073725, -0.215015,
		38.483345, 36.170589, 28.039553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110958, 35.488586, 28.438244>,  <37.801666, 36.118980, 28.190063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110958, 35.488586, 28.438244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421768, 35.739048, 28.412430>,  <38.608253, 35.889324, 28.396940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421768, 35.739048, 28.412430>,  <38.110958, 35.488586, 28.438244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421768, 35.739048, 28.412430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253942, -0.218006, 0.942331,
		0.575973, -0.748603, -0.328402,
		0.777025, 0.626152, -0.064536,
		38.654877, 35.926895, 28.393068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714699, 35.141838, 28.840382>,  <38.110958, 35.488586, 28.438244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714699, 35.141838, 28.840382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820488, 35.526566, 28.812212>,  <38.883961, 35.757401, 28.795309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820488, 35.526566, 28.812212>,  <38.714699, 35.141838, 28.840382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820488, 35.526566, 28.812212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323677, -0.019737, 0.945962,
		0.908453, -0.272976, -0.316538,
		0.264473, 0.961818, -0.070426,
		38.899830, 35.815109, 28.791084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425354, 35.155235, 28.994785>,  <38.714699, 35.141838, 28.840382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425354, 35.155235, 28.994785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291473, 35.527599, 29.053272>,  <39.211147, 35.751019, 29.088364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291473, 35.527599, 29.053272>,  <39.425354, 35.155235, 28.994785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291473, 35.527599, 29.053272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290004, -0.045878, 0.955925,
		0.896590, 0.362350, -0.254613,
		-0.334698, 0.930912, 0.146217,
		39.191063, 35.806873, 29.097137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993774, 35.495739, 29.386772>,  <39.425354, 35.155235, 28.994785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993774, 35.495739, 29.386772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660450, 35.708385, 29.447397>,  <39.460457, 35.835976, 29.483772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660450, 35.708385, 29.447397>,  <39.993774, 35.495739, 29.386772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660450, 35.708385, 29.447397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159205, -0.031759, 0.986735,
		0.529382, 0.846387, -0.058171,
		-0.833312, 0.531621, 0.151562,
		39.410458, 35.867870, 29.492867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160686, 36.047245, 29.701843>,  <39.993774, 35.495739, 29.386772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160686, 36.047245, 29.701843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769638, 36.011093, 29.777828>,  <39.535007, 35.989403, 29.823420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769638, 36.011093, 29.777828>,  <40.160686, 36.047245, 29.701843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769638, 36.011093, 29.777828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195299, -0.054358, 0.979236,
		-0.078176, 0.994423, 0.070792,
		-0.977623, -0.090378, 0.189961,
		39.476353, 35.983978, 29.834816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058113, 36.572788, 30.237854>,  <40.160686, 36.047245, 29.701843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058113, 36.572788, 30.237854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766266, 36.299442, 30.248169>,  <39.591156, 36.135433, 30.254358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766266, 36.299442, 30.248169>,  <40.058113, 36.572788, 30.237854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766266, 36.299442, 30.248169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109222, -0.079224, 0.990855,
		-0.675077, 0.725762, 0.132442,
		-0.729617, -0.683369, 0.025787,
		39.547382, 36.094433, 30.255905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722294, 36.715439, 30.814575>,  <40.058113, 36.572788, 30.237854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722294, 36.715439, 30.814575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543087, 36.366768, 30.735115>,  <39.435562, 36.157566, 30.687439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543087, 36.366768, 30.735115>,  <39.722294, 36.715439, 30.814575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543087, 36.366768, 30.735115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104748, -0.169487, 0.979950,
		-0.887866, 0.459846, -0.015372,
		-0.448020, -0.871674, -0.198650,
		39.408680, 36.105267, 30.675520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097984, 36.701817, 31.270468>,  <39.722294, 36.715439, 30.814575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097984, 36.701817, 31.270468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164310, 36.326916, 31.147789>,  <39.204105, 36.101974, 31.074183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164310, 36.326916, 31.147789>,  <39.097984, 36.701817, 31.270468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164310, 36.326916, 31.147789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149265, -0.331270, 0.931654,
		-0.974795, -0.108701, -0.194828,
		0.165812, -0.937253, -0.306696,
		39.214054, 36.045738, 31.055780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615692, 36.287148, 31.550947>,  <39.097984, 36.701817, 31.270468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615692, 36.287148, 31.550947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908596, 36.027805, 31.467594>,  <39.084339, 35.872200, 31.417582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908596, 36.027805, 31.467594>,  <38.615692, 36.287148, 31.550947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908596, 36.027805, 31.467594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014923, -0.321187, 0.946898,
		-0.680861, -0.690267, -0.244868,
		0.732261, -0.648360, -0.208383,
		39.128273, 35.833298, 31.405079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416496, 35.707821, 31.781094>,  <38.615692, 36.287148, 31.550947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416496, 35.707821, 31.781094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816189, 35.704220, 31.765800>,  <39.056004, 35.702061, 31.756624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816189, 35.704220, 31.765800>,  <38.416496, 35.707821, 31.781094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816189, 35.704220, 31.765800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032328, -0.364336, 0.930706,
		-0.022309, -0.931224, -0.363763,
		0.999228, -0.009003, -0.038233,
		39.115959, 35.701519, 31.754332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506756, 35.048119, 31.880749>,  <38.416496, 35.707821, 31.781094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506756, 35.048119, 31.880749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835606, 35.256123, 31.973440>,  <39.032917, 35.380924, 32.029057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835606, 35.256123, 31.973440>,  <38.506756, 35.048119, 31.880749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835606, 35.256123, 31.973440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010057, -0.393709, 0.919180,
		0.569219, -0.758011, -0.318448,
		0.822125, 0.520012, 0.231730,
		39.082245, 35.412125, 32.042957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961597, 34.630852, 32.193398>,  <38.506756, 35.048119, 31.880749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961597, 34.630852, 32.193398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092545, 34.985821, 32.323212>,  <39.171112, 35.198803, 32.401100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092545, 34.985821, 32.323212>,  <38.961597, 34.630852, 32.193398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092545, 34.985821, 32.323212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119846, -0.379679, 0.917323,
		0.937266, -0.261407, -0.230648,
		0.327366, 0.887418, 0.324532,
		39.190754, 35.252045, 32.420570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502415, 34.448219, 32.624126>,  <38.961597, 34.630852, 32.193398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502415, 34.448219, 32.624126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414276, 34.828712, 32.710484>,  <39.361393, 35.057007, 32.762299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414276, 34.828712, 32.710484>,  <39.502415, 34.448219, 32.624126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414276, 34.828712, 32.710484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195486, -0.173781, 0.965187,
		0.955632, 0.254879, -0.147660,
		-0.220346, 0.951229, 0.215896,
		39.348171, 35.114082, 32.775253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941650, 34.640793, 33.100418>,  <39.502415, 34.448219, 32.624126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941650, 34.640793, 33.100418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682709, 34.942802, 33.142136>,  <39.527344, 35.124008, 33.167168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682709, 34.942802, 33.142136>,  <39.941650, 34.640793, 33.100418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682709, 34.942802, 33.142136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096663, -0.054403, 0.993829,
		0.756035, 0.653440, -0.037764,
		-0.647354, 0.755021, 0.104294,
		39.488503, 35.169308, 33.173424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313950, 34.951733, 33.702934>,  <39.941650, 34.640793, 33.100418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313950, 34.951733, 33.702934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933651, 35.073784, 33.724751>,  <39.705471, 35.147015, 33.737839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933651, 35.073784, 33.724751>,  <40.313950, 34.951733, 33.702934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933651, 35.073784, 33.724751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025425, -0.098580, 0.994804,
		0.308920, 0.947195, 0.085967,
		-0.950748, 0.305129, 0.054536,
		39.648426, 35.165321, 33.741112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277119, 35.488487, 34.250664>,  <40.313950, 34.951733, 33.702934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277119, 35.488487, 34.250664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902039, 35.353649, 34.216999>,  <39.676991, 35.272747, 34.196800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902039, 35.353649, 34.216999>,  <40.277119, 35.488487, 34.250664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902039, 35.353649, 34.216999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032074, -0.157218, 0.987043,
		-0.345964, 0.928249, 0.136611,
		-0.937699, -0.337100, -0.084165,
		39.620728, 35.252518, 34.191750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740616, 35.802429, 34.664387>,  <40.277119, 35.488487, 34.250664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740616, 35.802429, 34.664387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606522, 35.431454, 34.598091>,  <39.526066, 35.208866, 34.558315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606522, 35.431454, 34.598091>,  <39.740616, 35.802429, 34.664387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606522, 35.431454, 34.598091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047569, -0.192355, 0.980172,
		-0.940932, 0.320706, 0.108602,
		-0.335237, -0.927441, -0.165737,
		39.505951, 35.153221, 34.548370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224476, 35.692184, 35.125477>,  <39.740616, 35.802429, 34.664387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224476, 35.692184, 35.125477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368706, 35.341644, 34.997726>,  <39.455246, 35.131321, 34.921078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368706, 35.341644, 34.997726>,  <39.224476, 35.692184, 35.125477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368706, 35.341644, 34.997726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096393, -0.305564, 0.947280,
		-0.927735, -0.372354, -0.025706,
		0.360579, -0.876346, -0.319375,
		39.476879, 35.078739, 34.901913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783779, 35.055443, 35.185719>,  <39.224476, 35.692184, 35.125477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783779, 35.055443, 35.185719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180031, 35.032337, 35.235210>,  <39.417782, 35.018475, 35.264904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180031, 35.032337, 35.235210>,  <38.783779, 35.055443, 35.185719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180031, 35.032337, 35.235210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133217, -0.209897, 0.968606,
		-0.029978, -0.976016, -0.215625,
		0.990633, -0.057762, 0.123729,
		39.477222, 35.015007, 35.272327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980709, 34.348862, 35.278400>,  <38.783779, 35.055443, 35.185719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980709, 34.348862, 35.278400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203548, 34.616562, 35.475071>,  <39.337254, 34.777180, 35.593075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203548, 34.616562, 35.475071>,  <38.980709, 34.348862, 35.278400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203548, 34.616562, 35.475071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291137, -0.397095, 0.870377,
		0.777742, -0.628031, -0.026378,
		0.557098, 0.669249, 0.491680,
		39.370678, 34.817337, 35.622574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005367, 33.688194, 35.734505>,  <38.980709, 34.348862, 35.278400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005367, 33.688194, 35.734505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396141, 33.773098, 35.743816>,  <39.630608, 33.824039, 35.749405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396141, 33.773098, 35.743816>,  <39.005367, 33.688194, 35.734505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396141, 33.773098, 35.743816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067744, -0.411489, 0.908894,
		0.202498, -0.886354, -0.416377,
		0.976936, 0.212256, 0.023281,
		39.689220, 33.836773, 35.750801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401096, 33.059433, 35.887131>,  <39.005367, 33.688194, 35.734505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401096, 33.059433, 35.887131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590015, 33.394444, 35.997025>,  <39.703369, 33.595451, 36.062962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590015, 33.394444, 35.997025>,  <39.401096, 33.059433, 35.887131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590015, 33.394444, 35.997025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118512, -0.369198, 0.921763,
		0.873434, -0.402790, -0.273630,
		0.472301, 0.837528, 0.274735,
		39.731705, 33.645702, 36.079445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041237, 32.813038, 36.108200>,  <39.401096, 33.059433, 35.887131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041237, 32.813038, 36.108200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967236, 33.160866, 36.291336>,  <39.922832, 33.369564, 36.401218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967236, 33.160866, 36.291336>,  <40.041237, 32.813038, 36.108200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967236, 33.160866, 36.291336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356810, -0.374654, 0.855758,
		0.915674, 0.321682, -0.240959,
		-0.185005, 0.869572, 0.457840,
		39.911736, 33.421738, 36.428688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617607, 32.956997, 36.457386>,  <40.041237, 32.813038, 36.108200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617607, 32.956997, 36.457386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355942, 33.204044, 36.632027>,  <40.198940, 33.352272, 36.736809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355942, 33.204044, 36.632027>,  <40.617607, 32.956997, 36.457386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355942, 33.204044, 36.632027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484642, -0.100893, 0.868874,
		0.580679, 0.779983, -0.233321,
		-0.654167, 0.617614, 0.436600,
		40.159691, 33.389328, 36.763008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906963, 33.436760, 37.041584>,  <40.617607, 32.956997, 36.457386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906963, 33.436760, 37.041584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518646, 33.457031, 37.135384>,  <40.285656, 33.469193, 37.191662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518646, 33.457031, 37.135384>,  <40.906963, 33.436760, 37.041584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518646, 33.457031, 37.135384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239860, 0.225276, 0.944308,
		-0.004974, 0.972976, -0.230851,
		-0.970795, 0.050675, 0.234499,
		40.227409, 33.472233, 37.205734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941498, 33.814518, 37.624054>,  <40.906963, 33.436760, 37.041584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941498, 33.814518, 37.624054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569023, 33.674007, 37.663025>,  <40.345539, 33.589703, 37.686409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569023, 33.674007, 37.663025>,  <40.941498, 33.814518, 37.624054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569023, 33.674007, 37.663025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116404, -0.033261, 0.992645,
		-0.345449, 0.935682, 0.071862,
		-0.931190, -0.351273, 0.097427,
		40.289665, 33.568626, 37.692253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713902, 34.130718, 38.225464>,  <40.941498, 33.814518, 37.624054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713902, 34.130718, 38.225464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478462, 33.809071, 38.192142>,  <40.337200, 33.616081, 38.172150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478462, 33.809071, 38.192142>,  <40.713902, 34.130718, 38.225464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478462, 33.809071, 38.192142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085857, -0.164642, 0.982610,
		-0.803855, 0.571209, 0.165947,
		-0.588597, -0.804123, -0.083306,
		40.301884, 33.567833, 38.167152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063473, 34.045391, 38.652100>,  <40.713902, 34.130718, 38.225464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063473, 34.045391, 38.652100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171391, 33.675171, 38.545841>,  <40.236141, 33.453037, 38.482086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171391, 33.675171, 38.545841>,  <40.063473, 34.045391, 38.652100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171391, 33.675171, 38.545841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033220, -0.284657, 0.958054,
		-0.962344, -0.249655, -0.107546,
		0.269797, -0.925550, -0.265644,
		40.252331, 33.397507, 38.466148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723492, 33.659702, 39.192883>,  <40.063473, 34.045391, 38.652100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723492, 33.659702, 39.192883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974850, 33.396183, 39.027420>,  <40.125664, 33.238071, 38.928143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974850, 33.396183, 39.027420>,  <39.723492, 33.659702, 39.192883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974850, 33.396183, 39.027420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041359, -0.559300, 0.827933,
		-0.776797, -0.503158, -0.378707,
		0.628392, -0.658799, -0.413652,
		40.163368, 33.198544, 38.903324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520874, 32.912704, 39.101822>,  <39.723492, 33.659702, 39.192883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520874, 32.912704, 39.101822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917488, 32.916080, 39.153641>,  <40.155457, 32.918106, 39.184734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917488, 32.916080, 39.153641>,  <39.520874, 32.912704, 39.101822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917488, 32.916080, 39.153641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082598, -0.728846, 0.679677,
		0.100159, -0.684625, -0.721981,
		0.991537, 0.008442, 0.129550,
		40.214951, 32.918613, 39.192505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720886, 32.192184, 38.938297>,  <39.520874, 32.912704, 39.101822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720886, 32.192184, 38.938297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996975, 32.383656, 39.155354>,  <40.162628, 32.498539, 39.285587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996975, 32.383656, 39.155354>,  <39.720886, 32.192184, 38.938297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996975, 32.383656, 39.155354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037980, -0.772852, 0.633449,
		0.722603, -0.416609, -0.551618,
		0.690219, 0.478682, 0.542642,
		40.204041, 32.527260, 39.318146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340630, 31.816425, 38.946068>,  <39.720886, 32.192184, 38.938297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340630, 31.816425, 38.946068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247402, 32.043011, 39.262245>,  <40.191467, 32.178963, 39.451950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247402, 32.043011, 39.262245>,  <40.340630, 31.816425, 38.946068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247402, 32.043011, 39.262245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032010, -0.816856, 0.575953,
		0.971933, 0.108935, 0.208516,
		-0.233069, 0.566463, 0.790443,
		40.177483, 32.212948, 39.499378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619431, 32.272877, 38.533344>,  <40.340630, 31.816425, 38.946068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619431, 32.272877, 38.533344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359341, 32.563553, 38.622005>,  <40.203285, 32.737961, 38.675201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359341, 32.563553, 38.622005>,  <40.619431, 32.272877, 38.533344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359341, 32.563553, 38.622005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226544, 0.093018, -0.969549,
		-0.725181, -0.680637, 0.104145,
		-0.650223, 0.726692, 0.221649,
		40.164272, 32.781559, 38.688499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227745, 32.419785, 37.974869>,  <40.619431, 32.272877, 38.533344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227745, 32.419785, 37.974869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063587, 32.705849, 38.201183>,  <39.965092, 32.877487, 38.336971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063587, 32.705849, 38.201183>,  <40.227745, 32.419785, 37.974869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063587, 32.705849, 38.201183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373035, 0.434496, -0.819792,
		-0.832118, -0.547498, 0.088465,
		-0.410397, 0.715163, 0.565788,
		39.940468, 32.920399, 38.370918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570694, 32.547062, 37.737640>,  <40.227745, 32.419785, 37.974869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570694, 32.547062, 37.737640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728474, 32.875561, 37.902542>,  <39.823143, 33.072662, 38.001484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728474, 32.875561, 37.902542>,  <39.570694, 32.547062, 37.737640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728474, 32.875561, 37.902542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283723, 0.535557, -0.795412,
		-0.874019, 0.196785, 0.444259,
		0.394451, 0.821252, 0.412255,
		39.846809, 33.121937, 38.026218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091476, 33.066383, 37.734440>,  <39.570694, 32.547062, 37.737640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091476, 33.066383, 37.734440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450527, 33.242504, 37.726452>,  <39.665958, 33.348175, 37.721661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450527, 33.242504, 37.726452>,  <39.091476, 33.066383, 37.734440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450527, 33.242504, 37.726452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219752, 0.407809, -0.886229,
		-0.382066, 0.799891, 0.462817,
		0.897627, 0.440303, -0.019968,
		39.719814, 33.374596, 37.720463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955334, 33.723557, 37.542759>,  <39.091476, 33.066383, 37.734440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955334, 33.723557, 37.542759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331501, 33.635433, 37.439167>,  <39.557201, 33.582558, 37.377010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331501, 33.635433, 37.439167>,  <38.955334, 33.723557, 37.542759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331501, 33.635433, 37.439167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160472, 0.383922, -0.909314,
		0.299756, 0.896699, 0.325696,
		0.940423, -0.220308, -0.258978,
		39.613628, 33.569340, 37.361473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125351, 34.260971, 37.108967>,  <38.955334, 33.723557, 37.542759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125351, 34.260971, 37.108967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419495, 33.998924, 37.039604>,  <39.595982, 33.841694, 36.997986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419495, 33.998924, 37.039604>,  <39.125351, 34.260971, 37.108967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419495, 33.998924, 37.039604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165279, 0.421526, -0.891627,
		0.657216, 0.627005, 0.418249,
		0.735357, -0.655119, -0.173403,
		39.640102, 33.802387, 36.987583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765301, 34.662231, 36.860195>,  <39.125351, 34.260971, 37.108967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765301, 34.662231, 36.860195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782864, 34.280712, 36.741310>,  <39.793404, 34.051800, 36.669979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782864, 34.280712, 36.741310>,  <39.765301, 34.662231, 36.860195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782864, 34.280712, 36.741310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231995, 0.299106, -0.925589,
		0.971725, -0.028309, 0.234411,
		0.043911, -0.953800, -0.297216,
		39.796036, 33.994572, 36.652145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406574, 34.708504, 36.437187>,  <39.765301, 34.662231, 36.860195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406574, 34.708504, 36.437187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212811, 34.376740, 36.325886>,  <40.096550, 34.177681, 36.259106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212811, 34.376740, 36.325886>,  <40.406574, 34.708504, 36.437187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212811, 34.376740, 36.325886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098417, 0.264381, -0.959384,
		0.869287, -0.492121, -0.046441,
		-0.484411, -0.829409, -0.278256,
		40.067486, 34.127918, 36.242409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751583, 34.352882, 35.921673>,  <40.406574, 34.708504, 36.437187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751583, 34.352882, 35.921673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358685, 34.290142, 35.880497>,  <40.122948, 34.252499, 35.855793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358685, 34.290142, 35.880497>,  <40.751583, 34.352882, 35.921673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358685, 34.290142, 35.880497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068699, 0.209887, -0.975309,
		0.174578, -0.965063, -0.195386,
		-0.982244, -0.156845, -0.102940,
		40.064011, 34.243088, 35.849613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590080, 34.799965, 35.278999>,  <40.751583, 34.352882, 35.921673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590080, 34.799965, 35.278999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298153, 34.552830, 35.396065>,  <40.122997, 34.404549, 35.466305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298153, 34.552830, 35.396065>,  <40.590080, 34.799965, 35.278999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298153, 34.552830, 35.396065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540068, 0.258567, -0.800918,
		0.419160, -0.742581, -0.522378,
		-0.729816, -0.617832, 0.292664,
		40.079208, 34.367481, 35.483864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339649, 34.369801, 34.702824>,  <40.590080, 34.799965, 35.278999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339649, 34.369801, 34.702824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017620, 34.381992, 34.939781>,  <39.824402, 34.389305, 35.081955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017620, 34.381992, 34.939781>,  <40.339649, 34.369801, 34.702824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017620, 34.381992, 34.939781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563782, 0.271188, -0.780133,
		-0.184426, -0.962044, -0.201143,
		-0.805070, 0.030476, 0.592397,
		39.776100, 34.391136, 35.117500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727444, 33.862431, 34.560352>,  <40.339649, 34.369801, 34.702824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727444, 33.862431, 34.560352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630886, 34.232510, 34.677483>,  <39.572952, 34.454556, 34.747761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630886, 34.232510, 34.677483>,  <39.727444, 33.862431, 34.560352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630886, 34.232510, 34.677483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501572, 0.139368, -0.853816,
		-0.830756, -0.352976, 0.430409,
		-0.241392, 0.925194, 0.292824,
		39.558468, 34.510067, 34.765331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126289, 33.957661, 34.321629>,  <39.727444, 33.862431, 34.560352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126289, 33.957661, 34.321629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269928, 34.326763, 34.377579>,  <39.356110, 34.548225, 34.411148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269928, 34.326763, 34.377579>,  <39.126289, 33.957661, 34.321629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269928, 34.326763, 34.377579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378374, 0.280940, -0.881990,
		-0.853162, 0.263791, 0.450032,
		0.359093, 0.922761, 0.139876,
		39.377655, 34.603592, 34.419540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776054, 34.341496, 33.822582>,  <39.126289, 33.957661, 34.321629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776054, 34.341496, 33.822582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085892, 34.570164, 33.930805>,  <39.271793, 34.707363, 33.995739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085892, 34.570164, 33.930805>,  <38.776054, 34.341496, 33.822582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085892, 34.570164, 33.930805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086473, 0.328039, -0.940698,
		-0.626518, 0.752056, 0.204664,
		0.774595, 0.571666, 0.270555,
		39.318272, 34.741665, 34.011971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354877, 34.927589, 33.967430>,  <38.776054, 34.341496, 33.822582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354877, 34.927589, 33.967430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732841, 35.011818, 34.067680>,  <38.959618, 35.062355, 34.127831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732841, 35.011818, 34.067680>,  <38.354877, 34.927589, 33.967430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732841, 35.011818, 34.067680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148685, 0.406007, -0.901694,
		-0.291622, 0.889281, 0.352331,
		0.944907, 0.210567, 0.250623,
		39.016315, 35.074989, 34.142868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419239, 35.626579, 33.804893>,  <38.354877, 34.927589, 33.967430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419239, 35.626579, 33.804893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769840, 35.436817, 33.772182>,  <38.980202, 35.322960, 33.752556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769840, 35.436817, 33.772182>,  <38.419239, 35.626579, 33.804893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769840, 35.436817, 33.772182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157291, 0.442771, -0.882731,
		0.454980, 0.760851, 0.462709,
		0.876500, -0.474404, -0.081777,
		39.032791, 35.294495, 33.747650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962845, 36.112904, 33.700203>,  <38.419239, 35.626579, 33.804893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962845, 36.112904, 33.700203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043850, 35.758858, 33.532604>,  <39.092453, 35.546429, 33.432045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043850, 35.758858, 33.532604>,  <38.962845, 36.112904, 33.700203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043850, 35.758858, 33.532604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103829, 0.444861, -0.889561,
		0.973760, 0.136644, 0.181991,
		0.202513, -0.885114, -0.419000,
		39.104603, 35.493324, 33.406906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174839, 36.371990, 32.986599>,  <38.962845, 36.112904, 33.700203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174839, 36.371990, 32.986599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236210, 35.980682, 32.930809>,  <39.273033, 35.745899, 32.897335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236210, 35.980682, 32.930809>,  <39.174839, 36.371990, 32.986599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236210, 35.980682, 32.930809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253406, 0.175374, -0.951330,
		0.955115, 0.110618, 0.274806,
		0.153428, -0.978268, -0.139471,
		39.282238, 35.687202, 32.888969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721062, 36.346302, 32.545750>,  <39.174839, 36.371990, 32.986599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721062, 36.346302, 32.545750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571911, 35.975204, 32.539398>,  <39.482422, 35.752544, 32.535587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571911, 35.975204, 32.539398>,  <39.721062, 36.346302, 32.545750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571911, 35.975204, 32.539398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159841, -0.047370, -0.986005,
		0.914011, -0.370193, 0.165955,
		-0.372874, -0.927746, -0.015875,
		39.460049, 35.696880, 32.534637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257767, 36.040455, 32.208790>,  <39.721062, 36.346302, 32.545750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257767, 36.040455, 32.208790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912758, 35.841694, 32.170551>,  <39.705753, 35.722439, 32.147610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912758, 35.841694, 32.170551>,  <40.257767, 36.040455, 32.208790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912758, 35.841694, 32.170551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041872, 0.118182, -0.992109,
		0.504276, -0.859723, -0.081129,
		-0.862527, -0.496900, -0.095595,
		39.653999, 35.692623, 32.141872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396282, 35.582188, 31.737633>,  <40.257767, 36.040455, 32.208790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396282, 35.582188, 31.737633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002014, 35.649666, 31.738529>,  <39.765453, 35.690151, 31.739067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002014, 35.649666, 31.738529>,  <40.396282, 35.582188, 31.737633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002014, 35.649666, 31.738529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006895, 0.053548, -0.998542,
		-0.168565, -0.984213, -0.053944,
		-0.985667, 0.168691, 0.002241,
		39.706314, 35.700272, 31.739201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222767, 35.163612, 31.205349>,  <40.396282, 35.582188, 31.737633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222767, 35.163612, 31.205349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895615, 35.385468, 31.266584>,  <39.699322, 35.518581, 31.303326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895615, 35.385468, 31.266584>,  <40.222767, 35.163612, 31.205349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895615, 35.385468, 31.266584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050123, 0.196369, -0.979248,
		-0.573194, -0.808586, -0.132807,
		-0.817885, 0.554643, 0.153087,
		39.650249, 35.551861, 31.312510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648991, 35.679211, 30.829649>,  <40.222767, 35.163612, 31.205349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648991, 35.679211, 30.829649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346310, 35.927547, 30.911577>,  <40.164700, 36.076550, 30.960735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346310, 35.927547, 30.911577>,  <40.648991, 35.679211, 30.829649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346310, 35.927547, 30.911577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167052, 0.486522, -0.857549,
		-0.632053, -0.614696, -0.471866,
		-0.756705, 0.620842, 0.204822,
		40.119297, 36.113800, 30.973024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062832, 35.203804, 31.019070>,  <40.648991, 35.679211, 30.829649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062832, 35.203804, 31.019070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445999, 35.093903, 31.052284>,  <41.675900, 35.027962, 31.072212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445999, 35.093903, 31.052284>,  <41.062832, 35.203804, 31.019070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445999, 35.093903, 31.052284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051335, 0.120629, 0.991369,
		-0.282399, -0.953918, 0.101449,
		0.957922, -0.274754, 0.083035,
		41.733376, 35.011475, 31.077194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113991, 34.587402, 31.359953>,  <41.062832, 35.203804, 31.019070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113991, 34.587402, 31.359953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426212, 34.836117, 31.385635>,  <41.613544, 34.985344, 31.401045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426212, 34.836117, 31.385635>,  <41.113991, 34.587402, 31.359953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426212, 34.836117, 31.385635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254248, 0.221966, 0.941323,
		0.571047, -0.751077, 0.331343,
		0.780553, 0.621783, 0.064207,
		41.660378, 35.022652, 31.404898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361515, 34.464073, 31.937452>,  <41.113991, 34.587402, 31.359953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361515, 34.464073, 31.937452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499161, 34.835167, 31.879641>,  <41.581749, 35.057823, 31.844954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499161, 34.835167, 31.879641>,  <41.361515, 34.464073, 31.937452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499161, 34.835167, 31.879641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305598, 0.256214, 0.917041,
		0.887804, -0.271398, 0.371682,
		0.344113, 0.927738, -0.144529,
		41.602394, 35.113487, 31.836283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950748, 34.663151, 32.394753>,  <41.361515, 34.464073, 31.937452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950748, 34.663151, 32.394753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.732681, 34.976257, 32.274704>,  <41.601841, 35.164120, 32.202675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.732681, 34.976257, 32.274704>,  <41.950748, 34.663151, 32.394753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732681, 34.976257, 32.274704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121531, 0.280427, 0.952151,
		0.829472, 0.555555, -0.057749,
		-0.545167, 0.782764, -0.300123,
		41.569130, 35.211086, 32.184666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457993, 34.088985, 32.293945>,  <41.950748, 34.663151, 32.394753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457993, 34.088985, 32.293945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492680, 33.719593, 32.443432>,  <42.513493, 33.497959, 32.533123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492680, 33.719593, 32.443432>,  <42.457993, 34.088985, 32.293945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492680, 33.719593, 32.443432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887507, 0.242021, 0.392120,
		-0.452562, 0.297674, 0.840582,
		0.086714, -0.923481, 0.373717,
		42.518696, 33.442551, 32.555546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620777, 34.227695, 32.971634>,  <42.457993, 34.088985, 32.293945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620777, 34.227695, 32.971634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.718548, 33.855370, 32.862942>,  <42.777210, 33.631973, 32.797726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.718548, 33.855370, 32.862942>,  <42.620777, 34.227695, 32.971634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.718548, 33.855370, 32.862942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881594, 0.096627, 0.462011,
		-0.403792, -0.352479, 0.844222,
		0.244424, -0.930818, -0.271726,
		42.791874, 33.576126, 32.781425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.838230, 33.881542, 33.581936>,  <42.620777, 34.227695, 32.971634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.838230, 33.881542, 33.581936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048351, 33.728882, 33.277725>,  <43.174423, 33.637287, 33.095200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048351, 33.728882, 33.277725>,  <42.838230, 33.881542, 33.581936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048351, 33.728882, 33.277725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785745, -0.125481, 0.605689,
		-0.326592, -0.915751, 0.233962,
		0.525302, -0.381647, -0.760528,
		43.205940, 33.614388, 33.049568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033188, 33.227253, 33.775288>,  <42.838230, 33.881542, 33.581936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033188, 33.227253, 33.775288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342999, 33.355518, 33.557194>,  <43.528885, 33.432476, 33.426338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342999, 33.355518, 33.557194>,  <43.033188, 33.227253, 33.775288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342999, 33.355518, 33.557194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591641, -0.062331, 0.803788,
		0.223762, -0.945139, -0.237996,
		0.774526, 0.320666, -0.545236,
		43.575356, 33.451717, 33.393623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.612480, 32.784050, 33.935577>,  <43.033188, 33.227253, 33.775288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.612480, 32.784050, 33.935577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.708771, 33.156933, 33.827469>,  <43.766544, 33.380661, 33.762604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.708771, 33.156933, 33.827469>,  <43.612480, 32.784050, 33.935577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.708771, 33.156933, 33.827469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671011, 0.041352, 0.740293,
		0.701279, -0.359567, -0.615564,
		0.240730, 0.932202, -0.270273,
		43.780991, 33.436592, 33.746387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.448830, 32.921085, 33.902821>,  <43.612480, 32.784050, 33.935577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.448830, 32.921085, 33.902821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.249912, 33.256321, 33.992527>,  <44.130562, 33.457462, 34.046352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.249912, 33.256321, 33.992527>,  <44.448830, 32.921085, 33.902821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.249912, 33.256321, 33.992527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582262, 0.130775, 0.802414,
		0.643170, 0.529620, -0.553024,
		-0.497296, 0.838094, 0.224267,
		44.100723, 33.507748, 34.059807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.968552, 33.446960, 33.885391>,  <44.448830, 32.921085, 33.902821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.968552, 33.446960, 33.885391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.678902, 33.516872, 34.152256>,  <44.505112, 33.558819, 34.312374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.678902, 33.516872, 34.152256>,  <44.968552, 33.446960, 33.885391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.678902, 33.516872, 34.152256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689583, 0.167888, 0.704477,
		0.011123, 0.970188, -0.242099,
		-0.724121, 0.174783, 0.667158,
		44.461666, 33.569305, 34.352402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.927494, 34.242126, 34.137997>,  <44.968552, 33.446960, 33.885391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.927494, 34.242126, 34.137997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.849346, 33.942474, 34.391182>,  <44.802460, 33.762684, 34.543095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.849346, 33.942474, 34.391182>,  <44.927494, 34.242126, 34.137997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.849346, 33.942474, 34.391182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749512, 0.302193, 0.588991,
		-0.632506, 0.589482, 0.502441,
		-0.195365, -0.749126, 0.632963,
		44.790737, 33.717735, 34.581070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.610355, 33.928112, 34.076969>,  <44.927494, 34.242126, 34.137997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.610355, 33.928112, 34.076969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.935825, 34.069691, 33.892509>,  <46.131107, 34.154640, 33.781834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.935825, 34.069691, 33.892509>,  <45.610355, 33.928112, 34.076969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.935825, 34.069691, 33.892509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512713, -0.810812, 0.282328,
		-0.273973, -0.466159, -0.841210,
		0.813673, 0.353949, -0.461146,
		46.179928, 34.175877, 33.754166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.489559, 34.556599, 34.508049>,  <45.610355, 33.928112, 34.076969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.489559, 34.556599, 34.508049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836376, 34.699009, 34.647465>,  <46.044468, 34.784454, 34.731113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836376, 34.699009, 34.647465>,  <45.489559, 34.556599, 34.508049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.836376, 34.699009, 34.647465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433284, -0.193452, -0.880250,
		-0.245967, 0.914232, -0.321993,
		0.867044, 0.356027, 0.348540,
		46.096489, 34.805817, 34.752026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.848053, 35.260582, 34.259693>,  <45.489559, 34.556599, 34.508049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.848053, 35.260582, 34.259693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.063385, 34.930668, 34.328899>,  <46.192585, 34.732719, 34.370422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.063385, 34.930668, 34.328899>,  <45.848053, 35.260582, 34.259693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.063385, 34.930668, 34.328899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325354, 0.014020, -0.945488,
		0.777398, 0.565274, 0.275894,
		0.538328, -0.824784, 0.173015,
		46.224884, 34.683231, 34.380802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.658302, 35.133152, 34.166313>,  <45.848053, 35.260582, 34.259693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.658302, 35.133152, 34.166313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.408356, 34.833508, 34.078339>,  <46.258389, 34.653721, 34.025555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.408356, 34.833508, 34.078339>,  <46.658302, 35.133152, 34.166313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.408356, 34.833508, 34.078339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275916, 0.051635, -0.959794,
		0.730347, -0.660430, 0.174426,
		-0.624871, -0.749110, -0.219934,
		46.220894, 34.608776, 34.012360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.987652, 34.771736, 33.629433>,  <46.658302, 35.133152, 34.166313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.987652, 34.771736, 33.629433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.597527, 34.684040, 33.618793>,  <46.363453, 34.631424, 33.612411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.597527, 34.684040, 33.618793>,  <46.987652, 34.771736, 33.629433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.597527, 34.684040, 33.618793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022518, 0.021095, -0.999524,
		0.219698, -0.975443, -0.015637,
		-0.975308, -0.219241, -0.026599,
		46.304935, 34.618267, 33.610813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.385048, 34.357208, 34.046001>,  <46.987652, 34.771736, 33.629433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.385048, 34.357208, 34.046001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.215729, 34.630375, 34.284142>,  <47.114140, 34.794273, 34.427025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.215729, 34.630375, 34.284142>,  <47.385048, 34.357208, 34.046001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.215729, 34.630375, 34.284142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662076, -0.215399, 0.717815,
		0.618446, 0.698017, -0.360966,
		-0.423295, 0.682917, 0.595354,
		47.088741, 34.835251, 34.462749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.863678, 34.924744, 34.111641>,  <47.385048, 34.357208, 34.046001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.863678, 34.924744, 34.111641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.624546, 34.871571, 34.427849>,  <47.481068, 34.839664, 34.617573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.624546, 34.871571, 34.427849>,  <47.863678, 34.924744, 34.111641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.624546, 34.871571, 34.427849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757663, 0.228373, 0.611386,
		-0.261809, 0.964455, -0.035807,
		-0.597831, -0.132936, 0.790522,
		47.445198, 34.831688, 34.665005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.129993, 35.379765, 34.659687>,  <47.863678, 34.924744, 34.111641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.129993, 35.379765, 34.659687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.939110, 35.063988, 34.814117>,  <47.824581, 34.874523, 34.906776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.939110, 35.063988, 34.814117>,  <48.129993, 35.379765, 34.659687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.939110, 35.063988, 34.814117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611125, 0.017592, 0.791339,
		-0.631507, 0.613574, 0.474052,
		-0.477205, -0.789441, 0.386080,
		47.795948, 34.827156, 34.929943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.620480, 30.792761, 23.246199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.256687, 30.957066, 23.220531>,  <37.038410, 31.055649, 23.205132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.256687, 30.957066, 23.220531>,  <37.620480, 30.792761, 23.246199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256687, 30.957066, 23.220531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054049, 0.036218, 0.997881,
		0.412215, 0.911023, -0.010738,
		-0.909482, 0.410761, -0.064170,
		36.983841, 31.080294, 23.201281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626724, 31.264372, 23.765425>,  <37.620480, 30.792761, 23.246199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626724, 31.264372, 23.765425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.236889, 31.204044, 23.699173>,  <37.002987, 31.167849, 23.659422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.236889, 31.204044, 23.699173>,  <37.626724, 31.264372, 23.765425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236889, 31.204044, 23.699173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166476, -0.007087, 0.986020,
		-0.149882, 0.988536, -0.018201,
		-0.974588, -0.150816, -0.165630,
		36.944511, 31.158800, 23.649485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320286, 31.728804, 24.178396>,  <37.626724, 31.264372, 23.765425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320286, 31.728804, 24.178396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.019356, 31.477995, 24.097546>,  <36.838799, 31.327511, 24.049036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.019356, 31.477995, 24.097546>,  <37.320286, 31.728804, 24.178396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019356, 31.477995, 24.097546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223463, -0.045741, 0.973638,
		-0.619736, 0.777659, -0.105704,
		-0.752324, -0.627020, -0.202126,
		36.793659, 31.289888, 24.036907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751595, 32.049576, 24.439989>,  <37.320286, 31.728804, 24.178396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751595, 32.049576, 24.439989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.658665, 31.660631, 24.430790>,  <36.602905, 31.427263, 24.425270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.658665, 31.660631, 24.430790>,  <36.751595, 32.049576, 24.439989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658665, 31.660631, 24.430790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227065, 0.031230, 0.973379,
		-0.945762, 0.231365, -0.228046,
		-0.232328, -0.972366, -0.022998,
		36.588966, 31.368921, 24.423891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159981, 32.034721, 24.879835>,  <36.751595, 32.049576, 24.439989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159981, 32.034721, 24.879835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.285240, 31.654840, 24.878792>,  <36.360397, 31.426912, 24.878166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.285240, 31.654840, 24.878792>,  <36.159981, 32.034721, 24.879835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285240, 31.654840, 24.878792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250932, -0.085390, 0.964231,
		-0.915953, -0.301294, -0.265050,
		0.313149, -0.949700, -0.002609,
		36.379185, 31.369930, 24.878010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556545, 31.638809, 25.148172>,  <36.159981, 32.034721, 24.879835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556545, 31.638809, 25.148172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.898769, 31.438631, 25.201206>,  <36.104103, 31.318525, 25.233027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.898769, 31.438631, 25.201206>,  <35.556545, 31.638809, 25.148172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898769, 31.438631, 25.201206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204073, -0.090643, 0.974750,
		-0.475789, -0.861011, -0.179677,
		0.855557, -0.500443, 0.132583,
		36.155437, 31.288498, 25.240980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502071, 30.951200, 25.480528>,  <35.556545, 31.638809, 25.148172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502071, 30.951200, 25.480528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.878075, 31.049776, 25.574890>,  <36.103676, 31.108921, 25.631508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.878075, 31.049776, 25.574890>,  <35.502071, 30.951200, 25.480528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878075, 31.049776, 25.574890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230383, -0.051437, 0.971739,
		0.251609, -0.967792, 0.008424,
		0.940009, 0.246440, 0.235905,
		36.160076, 31.123709, 25.645662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640915, 30.541916, 26.087940>,  <35.502071, 30.951200, 25.480528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640915, 30.541916, 26.087940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.951412, 30.790806, 26.047365>,  <36.137711, 30.940140, 26.023020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.951412, 30.790806, 26.047365>,  <35.640915, 30.541916, 26.087940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951412, 30.790806, 26.047365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082288, 0.059523, 0.994829,
		0.625043, -0.780574, -0.004998,
		0.776241, 0.622222, -0.101436,
		36.184284, 30.977472, 26.016933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166832, 30.229523, 26.453453>,  <35.640915, 30.541916, 26.087940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166832, 30.229523, 26.453453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.262619, 30.617651, 26.439980>,  <36.320091, 30.850527, 26.431896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.262619, 30.617651, 26.439980>,  <36.166832, 30.229523, 26.453453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262619, 30.617651, 26.439980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026042, 0.028260, 0.999261,
		0.970554, -0.240172, -0.018501,
		0.239471, 0.970319, -0.033683,
		36.334461, 30.908747, 26.429874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749828, 30.223429, 26.983397>,  <36.166832, 30.229523, 26.453453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749828, 30.223429, 26.983397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.633106, 30.603382, 26.938557>,  <36.563072, 30.831354, 26.911654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.633106, 30.603382, 26.938557>,  <36.749828, 30.223429, 26.983397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633106, 30.603382, 26.938557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365144, 0.218957, 0.904835,
		0.884034, 0.223107, -0.410739,
		-0.291810, 0.949885, -0.112099,
		36.545563, 30.888348, 26.904926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294666, 30.669891, 27.182470>,  <36.749828, 30.223429, 26.983397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294666, 30.669891, 27.182470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.955399, 30.876736, 27.228447>,  <36.751839, 31.000843, 27.256033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.955399, 30.876736, 27.228447>,  <37.294666, 30.669891, 27.182470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955399, 30.876736, 27.228447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396443, 0.475713, 0.785194,
		0.351354, 0.711542, -0.608488,
		-0.848165, 0.517112, 0.114942,
		36.700951, 31.031870, 27.262930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483452, 31.390268, 27.436676>,  <37.294666, 30.669891, 27.182470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483452, 31.390268, 27.436676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.095627, 31.326242, 27.510798>,  <36.862934, 31.287827, 27.555269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.095627, 31.326242, 27.510798>,  <37.483452, 31.390268, 27.436676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095627, 31.326242, 27.510798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077948, 0.515635, 0.853255,
		-0.232123, 0.841725, -0.487461,
		-0.969558, -0.160064, 0.185302,
		36.804760, 31.278223, 27.566387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213982, 32.060875, 27.730091>,  <37.483452, 31.390268, 27.436676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213982, 32.060875, 27.730091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936745, 31.794746, 27.841070>,  <36.770405, 31.635069, 27.907658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936745, 31.794746, 27.841070>,  <37.213982, 32.060875, 27.730091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936745, 31.794746, 27.841070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039657, 0.349114, 0.936241,
		-0.719761, 0.659901, -0.215582,
		-0.693089, -0.665320, 0.277448,
		36.728817, 31.595150, 27.924305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851124, 32.427666, 28.183172>,  <37.213982, 32.060875, 27.730091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851124, 32.427666, 28.183172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.796043, 32.038414, 28.256998>,  <36.762997, 31.804863, 28.301294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.796043, 32.038414, 28.256998>,  <36.851124, 32.427666, 28.183172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796043, 32.038414, 28.256998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060251, 0.194226, 0.979105,
		-0.988640, 0.123704, -0.085377,
		-0.137701, -0.973126, 0.184567,
		36.754734, 31.746477, 28.312368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257496, 32.460945, 28.582411>,  <36.851124, 32.427666, 28.183172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257496, 32.460945, 28.582411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.448936, 32.115116, 28.643665>,  <36.563801, 31.907618, 28.680418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.448936, 32.115116, 28.643665>,  <36.257496, 32.460945, 28.582411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448936, 32.115116, 28.643665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044529, 0.198082, 0.979173,
		-0.876904, -0.461812, 0.133300,
		0.478599, -0.864577, 0.153135,
		36.592518, 31.855743, 28.689606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979473, 32.205463, 29.252258>,  <36.257496, 32.460945, 28.582411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979473, 32.205463, 29.252258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.318489, 32.002029, 29.191574>,  <36.521900, 31.879969, 29.155163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.318489, 32.002029, 29.191574>,  <35.979473, 32.205463, 29.252258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318489, 32.002029, 29.191574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221673, 0.079499, 0.971875,
		-0.482218, -0.857335, 0.180117,
		0.847542, -0.508583, -0.151712,
		36.572750, 31.849455, 29.146061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076900, 31.770502, 29.824205>,  <35.979473, 32.205463, 29.252258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076900, 31.770502, 29.824205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.448895, 31.786867, 29.678082>,  <36.672092, 31.796686, 29.590408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.448895, 31.786867, 29.678082>,  <36.076900, 31.770502, 29.824205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448895, 31.786867, 29.678082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359190, 0.110130, 0.926744,
		0.078141, -0.993075, 0.087726,
		0.929987, 0.040906, -0.365308,
		36.727890, 31.799141, 29.568489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456596, 31.289570, 30.273790>,  <36.076900, 31.770502, 29.824205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456596, 31.289570, 30.273790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.715939, 31.550745, 30.117174>,  <36.871544, 31.707451, 30.023205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.715939, 31.550745, 30.117174>,  <36.456596, 31.289570, 30.273790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715939, 31.550745, 30.117174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288071, 0.265654, 0.920023,
		0.704735, -0.709294, -0.015855,
		0.648355, 0.652939, -0.391543,
		36.910446, 31.746626, 29.999712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006516, 31.288990, 30.711306>,  <36.456596, 31.289570, 30.273790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006516, 31.288990, 30.711306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.082928, 31.631931, 30.520119>,  <37.128777, 31.837696, 30.405407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.082928, 31.631931, 30.520119>,  <37.006516, 31.288990, 30.711306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082928, 31.631931, 30.520119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298126, 0.413256, 0.860431,
		0.935215, -0.306867, -0.176652,
		0.191035, 0.857352, -0.477968,
		37.140240, 31.889137, 30.376728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584290, 31.527699, 31.201296>,  <37.006516, 31.288990, 30.711306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584290, 31.527699, 31.201296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.462086, 31.837065, 30.979128>,  <37.388763, 32.022686, 30.845827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.462086, 31.837065, 30.979128>,  <37.584290, 31.527699, 31.201296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462086, 31.837065, 30.979128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150631, 0.615221, 0.773830,
		0.940198, 0.152752, -0.304459,
		-0.305513, 0.773414, -0.555420,
		37.370430, 32.069088, 30.812502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133942, 32.189816, 31.046267>,  <37.584290, 31.527699, 31.201296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133942, 32.189816, 31.046267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.749607, 32.298447, 31.024220>,  <37.519005, 32.363625, 31.010990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.749607, 32.298447, 31.024220>,  <38.133942, 32.189816, 31.046267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749607, 32.298447, 31.024220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123572, 0.597920, 0.791973,
		0.248042, 0.754145, -0.608063,
		-0.960836, 0.271582, -0.055118,
		37.461357, 32.379921, 31.007685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197662, 32.915581, 31.061666>,  <38.133942, 32.189816, 31.046267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197662, 32.915581, 31.061666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.813942, 32.869694, 31.164883>,  <37.583710, 32.842159, 31.226812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.813942, 32.869694, 31.164883>,  <38.197662, 32.915581, 31.061666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813942, 32.869694, 31.164883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101139, 0.713573, 0.693242,
		-0.263658, 0.691124, -0.672928,
		-0.959299, -0.114720, 0.258039,
		37.526154, 32.835278, 31.242294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365131, 33.652405, 30.876209>,  <38.197662, 32.915581, 31.061666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365131, 33.652405, 30.876209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.732643, 33.498566, 30.840601>,  <38.953152, 33.406261, 30.819235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.732643, 33.498566, 30.840601>,  <38.365131, 33.652405, 30.876209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732643, 33.498566, 30.840601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027335, 0.162983, -0.986250,
		0.393817, 0.908583, 0.139233,
		0.918782, -0.384596, -0.089022,
		39.008278, 33.383186, 30.813894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637386, 34.044090, 30.251667>,  <38.365131, 33.652405, 30.876209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637386, 34.044090, 30.251667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.866779, 33.724792, 30.325340>,  <39.004414, 33.533215, 30.369543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.866779, 33.724792, 30.325340>,  <38.637386, 34.044090, 30.251667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866779, 33.724792, 30.325340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213243, -0.071619, -0.974371,
		0.790977, 0.598060, 0.129148,
		0.573483, -0.798245, 0.184181,
		39.038826, 33.485317, 30.380594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240398, 34.214878, 29.860874>,  <38.637386, 34.044090, 30.251667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240398, 34.214878, 29.860874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.245655, 33.819965, 29.924257>,  <39.248810, 33.583019, 29.962288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.245655, 33.819965, 29.924257>,  <39.240398, 34.214878, 29.860874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245655, 33.819965, 29.924257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191834, -0.153041, -0.969422,
		0.981340, 0.043134, 0.187383,
		0.013138, -0.987278, 0.158459,
		39.249596, 33.523781, 29.971796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741222, 33.976822, 29.549263>,  <39.240398, 34.214878, 29.860874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741222, 33.976822, 29.549263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.552036, 33.625416, 29.576117>,  <39.438522, 33.414570, 29.592228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.552036, 33.625416, 29.576117>,  <39.741222, 33.976822, 29.549263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552036, 33.625416, 29.576117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372269, -0.268315, -0.888494,
		0.798571, -0.395239, 0.453950,
		-0.472969, -0.878517, 0.067133,
		39.410145, 33.361862, 29.596256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215260, 33.377052, 29.206768>,  <39.741222, 33.976822, 29.549263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215260, 33.377052, 29.206768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.853485, 33.206795, 29.195288>,  <39.636421, 33.104641, 29.188400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.853485, 33.206795, 29.195288>,  <40.215260, 33.377052, 29.206768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853485, 33.206795, 29.195288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134347, -0.220325, -0.966130,
		0.404907, -0.877657, 0.256454,
		-0.904434, -0.425647, -0.028699,
		39.582153, 33.079102, 29.186678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351963, 32.767971, 28.866653>,  <40.215260, 33.377052, 29.206768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351963, 32.767971, 28.866653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.959446, 32.823177, 28.812969>,  <39.723934, 32.856300, 28.780758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.959446, 32.823177, 28.812969>,  <40.351963, 32.767971, 28.866653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959446, 32.823177, 28.812969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096224, -0.252187, -0.962882,
		-0.166733, -0.957787, 0.234190,
		-0.981296, 0.138010, -0.134210,
		39.665058, 32.864582, 28.772705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246506, 32.166283, 28.487013>,  <40.351963, 32.767971, 28.866653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246506, 32.166283, 28.487013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.920910, 32.393559, 28.438719>,  <39.725552, 32.529922, 28.409742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.920910, 32.393559, 28.438719>,  <40.246506, 32.166283, 28.487013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920910, 32.393559, 28.438719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128376, -0.378674, -0.916584,
		-0.566513, -0.730592, 0.381180,
		-0.813992, 0.568191, -0.120733,
		39.676712, 32.564014, 28.402498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779446, 31.706026, 28.171034>,  <40.246506, 32.166283, 28.487013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779446, 31.706026, 28.171034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.678043, 32.086788, 28.102205>,  <39.617203, 32.315247, 28.060907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.678043, 32.086788, 28.102205>,  <39.779446, 31.706026, 28.171034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678043, 32.086788, 28.102205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182590, -0.221772, -0.957851,
		-0.949946, -0.211399, 0.230029,
		-0.253503, 0.951907, -0.172072,
		39.601994, 32.372360, 28.050583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153999, 31.609831, 27.703945>,  <39.779446, 31.706026, 28.171034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153999, 31.609831, 27.703945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.273125, 31.987314, 27.646368>,  <39.344601, 32.213806, 27.611822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.273125, 31.987314, 27.646368>,  <39.153999, 31.609831, 27.703945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273125, 31.987314, 27.646368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145403, -0.104184, -0.983872,
		-0.943487, 0.313936, 0.106191,
		0.297809, 0.943711, -0.143944,
		39.362469, 32.270428, 27.603186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824940, 31.753311, 27.120703>,  <39.153999, 31.609831, 27.703945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824940, 31.753311, 27.120703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.091591, 32.051006, 27.137274>,  <39.251583, 32.229622, 27.147217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.091591, 32.051006, 27.137274>,  <38.824940, 31.753311, 27.120703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091591, 32.051006, 27.137274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052093, 0.008927, -0.998602,
		-0.743567, 0.667855, -0.032819,
		0.666629, 0.744238, 0.041428,
		39.291580, 32.274277, 27.149702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563763, 32.352993, 26.668024>,  <38.824940, 31.753311, 27.120703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563763, 32.352993, 26.668024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.957344, 32.391937, 26.727840>,  <39.193493, 32.415306, 26.763731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.957344, 32.391937, 26.727840>,  <38.563763, 32.352993, 26.668024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957344, 32.391937, 26.727840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147165, 0.031188, -0.988620,
		-0.100918, 0.994760, 0.016359,
		0.983950, 0.097362, 0.149542,
		39.252529, 32.421146, 26.772703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855980, 32.900520, 26.235552>,  <38.563763, 32.352993, 26.668024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855980, 32.900520, 26.235552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.152962, 32.641174, 26.302944>,  <39.331150, 32.485569, 26.343380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.152962, 32.641174, 26.302944>,  <38.855980, 32.900520, 26.235552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152962, 32.641174, 26.302944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143127, -0.092164, -0.985404,
		0.654425, 0.755734, 0.024370,
		0.742457, -0.648361, 0.168481,
		39.375698, 32.446667, 26.353489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269360, 33.058926, 25.708883>,  <38.855980, 32.900520, 26.235552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269360, 33.058926, 25.708883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.424629, 32.713676, 25.838095>,  <39.517792, 32.506527, 25.915621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.424629, 32.713676, 25.838095>,  <39.269360, 33.058926, 25.708883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424629, 32.713676, 25.838095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233455, -0.246988, -0.940476,
		0.891528, 0.440478, 0.105626,
		0.388171, -0.863120, 0.323028,
		39.541080, 32.454739, 25.935003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026508, 33.008587, 25.379028>,  <39.269360, 33.058926, 25.708883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026508, 33.008587, 25.379028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.863861, 32.658047, 25.482309>,  <39.766273, 32.447723, 25.544277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.863861, 32.658047, 25.482309>,  <40.026508, 33.008587, 25.379028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863861, 32.658047, 25.482309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221970, -0.368919, -0.902568,
		0.886223, -0.309686, 0.344533,
		-0.406617, -0.876352, 0.258203,
		39.741875, 32.395142, 25.559771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530827, 32.470734, 25.069654>,  <40.026508, 33.008587, 25.379028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530827, 32.470734, 25.069654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.175781, 32.296337, 25.129051>,  <39.962753, 32.191700, 25.164688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.175781, 32.296337, 25.129051>,  <40.530827, 32.470734, 25.069654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175781, 32.296337, 25.129051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066978, -0.441157, -0.894927,
		0.455685, -0.784408, 0.420780,
		-0.887618, -0.435987, 0.148491,
		39.909496, 32.165543, 25.173599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735916, 31.807497, 24.872484>,  <40.530827, 32.470734, 25.069654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735916, 31.807497, 24.872484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.336102, 31.814072, 24.862196>,  <40.096214, 31.818016, 24.856024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.336102, 31.814072, 24.862196>,  <40.735916, 31.807497, 24.872484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336102, 31.814072, 24.862196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017868, -0.368054, -0.929633,
		-0.024744, -0.929659, 0.367589,
		-0.999534, 0.016435, -0.025718,
		40.036240, 31.819002, 24.854481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533497, 31.172834, 24.701101>,  <40.735916, 31.807497, 24.872484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533497, 31.172834, 24.701101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.211605, 31.380657, 24.586231>,  <40.018471, 31.505350, 24.517309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.211605, 31.380657, 24.586231>,  <40.533497, 31.172834, 24.701101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211605, 31.380657, 24.586231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020474, -0.459176, -0.888109,
		-0.593289, -0.720567, 0.358875,
		-0.804729, 0.519558, -0.287177,
		39.970184, 31.536524, 24.500078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064362, 30.720774, 24.400021>,  <40.533497, 31.172834, 24.701101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064362, 30.720774, 24.400021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.976635, 31.085505, 24.261183>,  <39.924000, 31.304342, 24.177879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.976635, 31.085505, 24.261183>,  <40.064362, 30.720774, 24.400021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976635, 31.085505, 24.261183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059449, -0.367585, -0.928088,
		-0.973841, -0.182912, 0.134825,
		-0.219318, 0.911825, -0.347095,
		39.910839, 31.359053, 24.157055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.303341, 30.595924, 23.886845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.461033, 30.953039, 23.799654>,  <39.555649, 31.167309, 23.747339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.461033, 30.953039, 23.799654>,  <39.303341, 30.595924, 23.886845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461033, 30.953039, 23.799654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141889, -0.175211, -0.974253,
		-0.907992, 0.415009, 0.057603,
		0.394231, 0.892787, -0.217975,
		39.579304, 31.220875, 23.734261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794327, 30.985893, 23.479311>,  <39.303341, 30.595924, 23.886845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794327, 30.985893, 23.479311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.133949, 31.174175, 23.383360>,  <39.337723, 31.287144, 23.325788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.133949, 31.174175, 23.383360>,  <38.794327, 30.985893, 23.479311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133949, 31.174175, 23.383360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156547, -0.209498, -0.965196,
		-0.504577, 0.857057, -0.104188,
		0.849056, 0.470705, -0.239877,
		39.388664, 31.315388, 23.311398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689476, 31.463640, 22.896500>,  <38.794327, 30.985893, 23.479311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689476, 31.463640, 22.896500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.086075, 31.412132, 22.903954>,  <39.324036, 31.381227, 22.908426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.086075, 31.412132, 22.903954>,  <38.689476, 31.463640, 22.896500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086075, 31.412132, 22.903954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028836, 0.077821, -0.996550,
		0.126874, 0.988617, 0.080873,
		0.991500, -0.128768, 0.018634,
		39.383526, 31.373503, 22.909544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103119, 32.051029, 22.577271>,  <38.689476, 31.463640, 22.896500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103119, 32.051029, 22.577271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.319820, 31.716837, 22.540426>,  <39.449841, 31.516323, 22.518320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.319820, 31.716837, 22.540426>,  <39.103119, 32.051029, 22.577271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319820, 31.716837, 22.540426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152813, 0.009860, -0.988206,
		0.826532, 0.549435, -0.122330,
		0.541749, -0.835478, -0.092110,
		39.482346, 31.466194, 22.512793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384697, 32.226234, 22.027611>,  <39.103119, 32.051029, 22.577271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384697, 32.226234, 22.027611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.487869, 31.840374, 22.049219>,  <39.549774, 31.608858, 22.062183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.487869, 31.840374, 22.049219>,  <39.384697, 32.226234, 22.027611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487869, 31.840374, 22.049219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155414, -0.096610, -0.983114,
		0.953581, 0.245182, -0.174839,
		0.257933, -0.964651, 0.054021,
		39.565250, 31.550978, 22.065426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821743, 31.982388, 21.409620>,  <39.384697, 32.226234, 22.027611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821743, 31.982388, 21.409620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.656631, 31.645391, 21.548082>,  <39.557564, 31.443193, 21.631161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.656631, 31.645391, 21.548082>,  <39.821743, 31.982388, 21.409620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656631, 31.645391, 21.548082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160091, -0.307021, -0.938141,
		0.896654, -0.442657, -0.008145,
		-0.412774, -0.842492, 0.346157,
		39.532799, 31.392643, 21.651930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161118, 31.484818, 21.026854>,  <39.821743, 31.982388, 21.409620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161118, 31.484818, 21.026854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.824966, 31.305069, 21.148066>,  <39.623276, 31.197220, 21.220793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.824966, 31.305069, 21.148066>,  <40.161118, 31.484818, 21.026854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824966, 31.305069, 21.148066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211267, -0.243285, -0.946667,
		0.499127, -0.859581, 0.109515,
		-0.840380, -0.449370, 0.303032,
		39.572853, 31.170258, 21.238976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083790, 30.993988, 20.520296>,  <40.161118, 31.484818, 21.026854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083790, 30.993988, 20.520296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.726879, 30.967129, 20.698887>,  <39.512733, 30.951014, 20.806042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.726879, 30.967129, 20.698887>,  <40.083790, 30.993988, 20.520296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726879, 30.967129, 20.698887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405325, -0.316503, -0.857635,
		0.198901, -0.946212, 0.255189,
		-0.892273, -0.067150, 0.446476,
		39.459198, 30.946983, 20.832830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809921, 30.279306, 20.525898>,  <40.083790, 30.993988, 20.520296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809921, 30.279306, 20.525898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.508686, 30.542000, 20.510105>,  <39.327946, 30.699615, 20.500629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.508686, 30.542000, 20.510105>,  <39.809921, 30.279306, 20.525898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508686, 30.542000, 20.510105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353617, -0.454645, -0.817468,
		-0.554812, -0.601662, 0.574619,
		-0.753087, 0.656736, -0.039485,
		39.282761, 30.739019, 20.498260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219418, 29.863441, 20.520126>,  <39.809921, 30.279306, 20.525898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219418, 29.863441, 20.520126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.151299, 30.215683, 20.343246>,  <39.110428, 30.427027, 20.237120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.151299, 30.215683, 20.343246>,  <39.219418, 29.863441, 20.520126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151299, 30.215683, 20.343246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442695, -0.469288, -0.764061,
		-0.880352, 0.065641, 0.469756,
		-0.170297, 0.880602, -0.442198,
		39.100208, 30.479864, 20.210587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639137, 29.635426, 20.042389>,  <39.219418, 29.863441, 20.520126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639137, 29.635426, 20.042389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.724072, 30.011385, 19.935429>,  <38.775032, 30.236961, 19.871252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.724072, 30.011385, 19.935429>,  <38.639137, 29.635426, 20.042389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724072, 30.011385, 19.935429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296767, -0.198696, -0.934050,
		-0.931044, 0.277686, 0.236742,
		0.212333, 0.939899, -0.267403,
		38.787773, 30.293354, 19.855207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045830, 29.903620, 19.647356>,  <38.639137, 29.635426, 20.042389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045830, 29.903620, 19.647356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.364487, 30.123875, 19.547626>,  <38.555679, 30.256027, 19.487789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.364487, 30.123875, 19.547626>,  <38.045830, 29.903620, 19.647356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364487, 30.123875, 19.547626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220169, -0.119801, -0.968077,
		-0.562929, 0.826102, 0.025795,
		0.796641, 0.550638, -0.249322,
		38.603477, 30.289066, 19.472830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774837, 30.254335, 18.988396>,  <38.045830, 29.903620, 19.647356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774837, 30.254335, 18.988396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.171833, 30.302057, 18.999250>,  <38.410030, 30.330690, 19.005764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.171833, 30.302057, 18.999250>,  <37.774837, 30.254335, 18.988396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171833, 30.302057, 18.999250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025011, 0.019298, -0.999501,
		-0.119771, 0.992670, 0.016169,
		0.992487, 0.119307, 0.027138,
		38.469578, 30.337849, 19.007393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900764, 30.895061, 18.625931>,  <37.774837, 30.254335, 18.988396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900764, 30.895061, 18.625931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.245800, 30.693998, 18.603027>,  <38.452820, 30.573360, 18.589285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.245800, 30.693998, 18.603027>,  <37.900764, 30.895061, 18.625931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245800, 30.693998, 18.603027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072030, 0.234056, -0.969551,
		0.500755, 0.832198, 0.238100,
		0.862587, -0.502658, -0.057261,
		38.504578, 30.543201, 18.585850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171585, 31.226955, 18.151806>,  <37.900764, 30.895061, 18.625931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171585, 31.226955, 18.151806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.393440, 30.894129, 18.154205>,  <38.526554, 30.694433, 18.155645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.393440, 30.894129, 18.154205>,  <38.171585, 31.226955, 18.151806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393440, 30.894129, 18.154205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260950, 0.167089, -0.950782,
		0.790114, 0.528907, 0.309803,
		0.554640, -0.832069, 0.005999,
		38.559834, 30.644508, 18.156006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941437, 31.379641, 17.976944>,  <38.171585, 31.226955, 18.151806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941437, 31.379641, 17.976944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.832783, 31.013981, 17.856581>,  <38.767590, 30.794584, 17.784363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.832783, 31.013981, 17.856581>,  <38.941437, 31.379641, 17.976944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832783, 31.013981, 17.856581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207716, 0.249605, -0.945807,
		0.939718, -0.319414, 0.122083,
		-0.271632, -0.914151, -0.300906,
		38.751293, 30.739737, 17.766310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192963, 31.366396, 17.342087>,  <38.941437, 31.379641, 17.976944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192963, 31.366396, 17.342087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.017776, 31.006994, 17.330242>,  <38.912666, 30.791353, 17.323135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.017776, 31.006994, 17.330242>,  <39.192963, 31.366396, 17.342087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017776, 31.006994, 17.330242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131835, 0.096775, -0.986536,
		0.889272, -0.428166, -0.160838,
		-0.437966, -0.898504, -0.029612,
		38.886387, 30.737444, 17.321358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562489, 30.888901, 16.821585>,  <39.192963, 31.366396, 17.342087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562489, 30.888901, 16.821585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.181267, 30.772182, 16.853956>,  <38.952534, 30.702150, 16.873379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.181267, 30.772182, 16.853956>,  <39.562489, 30.888901, 16.821585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181267, 30.772182, 16.853956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064392, -0.065846, -0.995750,
		0.295885, -0.954211, 0.043966,
		-0.953051, -0.291796, 0.080927,
		38.895351, 30.684643, 16.878235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489651, 30.375605, 16.377268>,  <39.562489, 30.888901, 16.821585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489651, 30.375605, 16.377268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.113079, 30.503792, 16.419247>,  <38.887138, 30.580704, 16.444433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.113079, 30.503792, 16.419247>,  <39.489651, 30.375605, 16.377268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113079, 30.503792, 16.419247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106599, 0.012438, -0.994224,
		-0.319924, -0.947177, 0.022453,
		-0.941427, 0.320470, 0.104948,
		38.830650, 30.599932, 16.450731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092045, 30.014238, 15.859892>,  <39.489651, 30.375605, 16.377268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092045, 30.014238, 15.859892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.837677, 30.311125, 15.944482>,  <38.685055, 30.489256, 15.995235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.837677, 30.311125, 15.944482>,  <39.092045, 30.014238, 15.859892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837677, 30.311125, 15.944482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222165, 0.086362, -0.971177,
		-0.739085, -0.664575, 0.109975,
		-0.635922, 0.742214, 0.211474,
		38.646900, 30.533789, 16.007925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385540, 29.846910, 15.523395>,  <39.092045, 30.014238, 15.859892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385540, 29.846910, 15.523395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.432537, 30.241081, 15.572591>,  <38.460735, 30.477585, 15.602109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.432537, 30.241081, 15.572591>,  <38.385540, 29.846910, 15.523395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432537, 30.241081, 15.572591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164203, 0.141423, -0.976236,
		-0.979404, 0.094508, 0.178427,
		0.117495, 0.985428, 0.122991,
		38.467785, 30.536709, 15.609488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799744, 30.112610, 15.222359>,  <38.385540, 29.846910, 15.523395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799744, 30.112610, 15.222359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.051350, 30.423546, 15.226036>,  <38.202312, 30.610107, 15.228243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.051350, 30.423546, 15.226036>,  <37.799744, 30.112610, 15.222359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051350, 30.423546, 15.226036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202230, 0.175039, -0.963569,
		-0.750628, 0.604240, 0.267303,
		0.629016, 0.777338, 0.009194,
		38.240055, 30.656748, 15.228794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313919, 30.202480, 15.728536>,  <37.799744, 30.112610, 15.222359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313919, 30.202480, 15.728536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.460850, 30.110884, 16.089121>,  <37.549007, 30.055925, 16.305471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.460850, 30.110884, 16.089121>,  <37.313919, 30.202480, 15.728536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460850, 30.110884, 16.089121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532749, -0.846270, 0.002112,
		0.762397, -0.481029, -0.432852,
		0.367325, -0.228992, 0.901462,
		37.571049, 30.042187, 16.359560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980450, 30.353697, 15.095795>,  <37.313919, 30.202480, 15.728536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980450, 30.353697, 15.095795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.686802, 30.612478, 15.013309>,  <36.510612, 30.767746, 14.963819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.686802, 30.612478, 15.013309>,  <36.980450, 30.353697, 15.095795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686802, 30.612478, 15.013309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006380, 0.297105, 0.954823,
		0.678991, 0.702269, -0.213983,
		-0.734118, 0.646952, -0.206213,
		36.466568, 30.806564, 14.951446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162521, 31.005030, 15.398204>,  <36.980450, 30.353697, 15.095795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162521, 31.005030, 15.398204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.769699, 31.063993, 15.351136>,  <36.534008, 31.099373, 15.322896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.769699, 31.063993, 15.351136>,  <37.162521, 31.005030, 15.398204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769699, 31.063993, 15.351136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029109, 0.497929, 0.866729,
		0.186356, 0.854597, -0.484701,
		-0.982051, 0.147411, -0.117669,
		36.475082, 31.108217, 15.315836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985710, 31.710897, 15.620564>,  <37.162521, 31.005030, 15.398204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985710, 31.710897, 15.620564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.676807, 31.462727, 15.675248>,  <36.491467, 31.313824, 15.708059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.676807, 31.462727, 15.675248>,  <36.985710, 31.710897, 15.620564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676807, 31.462727, 15.675248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257907, 0.502815, 0.825022,
		-0.580608, 0.601868, -0.548315,
		-0.772255, -0.620428, 0.136713,
		36.445129, 31.276598, 15.716262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501469, 32.141666, 15.738274>,  <36.985710, 31.710897, 15.620564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501469, 32.141666, 15.738274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.366978, 31.800144, 15.897251>,  <36.286282, 31.595230, 15.992638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.366978, 31.800144, 15.897251>,  <36.501469, 32.141666, 15.738274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366978, 31.800144, 15.897251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186977, 0.474130, 0.860372,
		-0.923034, 0.214967, -0.319058,
		-0.336227, -0.853809, 0.397444,
		36.266109, 31.544001, 16.016485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981014, 32.346748, 16.011007>,  <36.501469, 32.141666, 15.738274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981014, 32.346748, 16.011007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.043037, 32.002171, 16.204447>,  <36.080254, 31.795424, 16.320511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.043037, 32.002171, 16.204447>,  <35.981014, 32.346748, 16.011007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043037, 32.002171, 16.204447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122321, 0.469011, 0.874681,
		-0.980303, -0.194782, -0.032648,
		0.155060, -0.861446, 0.483598,
		36.089554, 31.743736, 16.349525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549248, 32.412155, 16.661852>,  <35.981014, 32.346748, 16.011007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549248, 32.412155, 16.661852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.802696, 32.112427, 16.738840>,  <35.954765, 31.932590, 16.785032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.802696, 32.112427, 16.738840>,  <35.549248, 32.412155, 16.661852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802696, 32.112427, 16.738840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072241, 0.190390, 0.979047,
		-0.770264, -0.634248, 0.066503,
		0.633620, -0.749320, 0.192470,
		35.992783, 31.887630, 16.796581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165947, 32.014397, 17.077644>,  <35.549248, 32.412155, 16.661852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165947, 32.014397, 17.077644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.555225, 31.942999, 17.135647>,  <35.788792, 31.900160, 17.170448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.555225, 31.942999, 17.135647>,  <35.165947, 32.014397, 17.077644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555225, 31.942999, 17.135647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142156, 0.028715, 0.989428,
		-0.180772, -0.983522, 0.002571,
		0.973198, -0.178496, 0.145005,
		35.847183, 31.889450, 17.179148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132938, 31.363552, 17.524979>,  <35.165947, 32.014397, 17.077644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132938, 31.363552, 17.524979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.492722, 31.532879, 17.568373>,  <35.708591, 31.634476, 17.594408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.492722, 31.532879, 17.568373>,  <35.132938, 31.363552, 17.524979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492722, 31.532879, 17.568373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085985, -0.071955, 0.993695,
		0.428455, -0.903119, -0.028322,
		0.899463, 0.423318, 0.108484,
		35.762562, 31.659874, 17.600918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464523, 30.965023, 18.053835>,  <35.132938, 31.363552, 17.524979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464523, 30.965023, 18.053835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.656109, 31.315807, 18.038187>,  <35.771061, 31.526278, 18.028797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.656109, 31.315807, 18.038187>,  <35.464523, 30.965023, 18.053835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656109, 31.315807, 18.038187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049175, 0.017692, 0.998633,
		0.876456, -0.480234, -0.034651,
		0.478964, 0.876962, -0.039121,
		35.799797, 31.578896, 18.026451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917168, 30.894350, 18.623947>,  <35.464523, 30.965023, 18.053835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917168, 30.894350, 18.623947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.924969, 31.284168, 18.534613>,  <35.929649, 31.518059, 18.481012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.924969, 31.284168, 18.534613>,  <35.917168, 30.894350, 18.623947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924969, 31.284168, 18.534613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315213, 0.205992, 0.926395,
		0.948821, -0.088462, -0.303173,
		0.019500, 0.974547, -0.223334,
		35.930820, 31.576532, 18.467613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569256, 31.158403, 18.705471>,  <35.917168, 30.894350, 18.623947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569256, 31.158403, 18.705471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.307072, 31.456942, 18.751663>,  <36.149761, 31.636065, 18.779379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.307072, 31.456942, 18.751663>,  <36.569256, 31.158403, 18.705471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307072, 31.456942, 18.751663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297195, 0.114334, 0.947947,
		0.694294, 0.655663, -0.296752,
		-0.655462, 0.746347, 0.115479,
		36.110432, 31.680845, 18.786306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939198, 31.632732, 19.070183>,  <36.569256, 31.158403, 18.705471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939198, 31.632732, 19.070183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.551517, 31.710558, 19.130587>,  <36.318909, 31.757254, 19.166830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.551517, 31.710558, 19.130587>,  <36.939198, 31.632732, 19.070183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551517, 31.710558, 19.130587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191520, 0.209867, 0.958789,
		0.154854, 0.958176, -0.240665,
		-0.969196, 0.194564, 0.151011,
		36.260757, 31.768927, 19.175890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984619, 32.233376, 19.444286>,  <36.939198, 31.632732, 19.070183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984619, 32.233376, 19.444286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.624378, 32.074326, 19.514509>,  <36.408234, 31.978897, 19.556643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.624378, 32.074326, 19.514509>,  <36.984619, 32.233376, 19.444286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624378, 32.074326, 19.514509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184343, 0.016355, 0.982726,
		-0.393624, 0.917404, 0.058569,
		-0.900599, -0.397621, 0.175555,
		36.354198, 31.955040, 19.567175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764534, 32.506355, 20.101801>,  <36.984619, 32.233376, 19.444286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764534, 32.506355, 20.101801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.545353, 32.177155, 20.041904>,  <36.413845, 31.979635, 20.005966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.545353, 32.177155, 20.041904>,  <36.764534, 32.506355, 20.101801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545353, 32.177155, 20.041904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053001, -0.212802, 0.975657,
		-0.834829, 0.526677, 0.160225,
		-0.547952, -0.822999, -0.149739,
		36.380966, 31.930256, 19.996983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198944, 32.623055, 20.615416>,  <36.764534, 32.506355, 20.101801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198944, 32.623055, 20.615416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.265907, 32.248390, 20.492359>,  <36.306084, 32.023590, 20.418526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.265907, 32.248390, 20.492359>,  <36.198944, 32.623055, 20.615416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265907, 32.248390, 20.492359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000978, -0.312204, 0.950014,
		-0.985888, -0.158737, -0.053181,
		0.167405, -0.936660, -0.307643,
		36.316128, 31.967392, 20.400066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634903, 32.200138, 21.010435>,  <36.198944, 32.623055, 20.615416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634903, 32.200138, 21.010435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.958836, 31.993437, 20.899345>,  <36.153194, 31.869415, 20.832691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.958836, 31.993437, 20.899345>,  <35.634903, 32.200138, 21.010435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958836, 31.993437, 20.899345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113314, -0.326701, 0.938310,
		-0.575609, -0.791347, -0.206018,
		0.809836, -0.516755, -0.277723,
		36.201786, 31.838409, 20.816029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537201, 31.695229, 21.332434>,  <35.634903, 32.200138, 21.010435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537201, 31.695229, 21.332434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.919258, 31.619823, 21.241072>,  <36.148491, 31.574581, 21.186255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.919258, 31.619823, 21.241072>,  <35.537201, 31.695229, 21.332434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919258, 31.619823, 21.241072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100173, -0.520133, 0.848190,
		-0.278694, -0.833022, -0.477917,
		0.955141, -0.188511, -0.228405,
		36.205799, 31.563271, 21.172550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674313, 30.952471, 21.369761>,  <35.537201, 31.695229, 21.332434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674313, 30.952471, 21.369761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.008339, 31.164812, 21.427525>,  <36.208755, 31.292217, 21.462183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.008339, 31.164812, 21.427525>,  <35.674313, 30.952471, 21.369761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008339, 31.164812, 21.427525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170587, -0.499415, 0.849403,
		0.523028, -0.684676, -0.507602,
		0.835070, 0.530852, 0.144411,
		36.258862, 31.324068, 21.470848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955166, 30.562546, 21.895088>,  <35.674313, 30.952471, 21.369761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955166, 30.562546, 21.895088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.218025, 30.863556, 21.912369>,  <36.375740, 31.044163, 21.922737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.218025, 30.863556, 21.912369>,  <35.955166, 30.562546, 21.895088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218025, 30.863556, 21.912369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236383, -0.260168, 0.936181,
		0.715739, -0.604995, -0.348852,
		0.657145, 0.752524, 0.043202,
		36.415169, 31.089314, 21.925329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637577, 30.274691, 22.189222>,  <35.955166, 30.562546, 21.895088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637577, 30.274691, 22.189222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.638573, 30.670948, 22.243809>,  <36.639172, 30.908703, 22.276560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.638573, 30.670948, 22.243809>,  <36.637577, 30.274691, 22.189222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638573, 30.670948, 22.243809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184417, -0.134580, 0.973591,
		0.982845, 0.022742, -0.183026,
		0.002490, 0.990642, 0.136465,
		36.639320, 30.968140, 22.284748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189899, 30.349945, 22.675440>,  <36.637577, 30.274691, 22.189222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189899, 30.349945, 22.675440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981701, 30.690598, 22.700106>,  <36.856781, 30.894989, 22.714905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981701, 30.690598, 22.700106>,  <37.189899, 30.349945, 22.675440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981701, 30.690598, 22.700106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035181, -0.050765, 0.998091,
		0.853136, 0.521676, -0.003538,
		-0.520501, 0.851632, 0.061663,
		36.825550, 30.946087, 22.718605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.483189, 31.775103, 26.603931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.148643, 31.981453, 26.529779>,  <39.947914, 32.105263, 26.485289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.148643, 31.981453, 26.529779>,  <40.483189, 31.775103, 26.603931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148643, 31.981453, 26.529779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046944, 0.404342, 0.913402,
		0.546159, 0.755235, -0.362395,
		-0.836365, 0.515875, -0.185381,
		39.897736, 32.136215, 26.474165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557041, 32.453091, 26.854332>,  <40.483189, 31.775103, 26.603931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557041, 32.453091, 26.854332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.157822, 32.432022, 26.840950>,  <39.918289, 32.419380, 26.832922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.157822, 32.432022, 26.840950>,  <40.557041, 32.453091, 26.854332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157822, 32.432022, 26.840950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054109, 0.463601, 0.884391,
		-0.031073, 0.884477, -0.465547,
		-0.998052, -0.052670, -0.033453,
		39.858406, 32.416222, 26.830914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336468, 32.989445, 27.236067>,  <40.557041, 32.453091, 26.854332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336468, 32.989445, 27.236067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.995296, 32.781322, 27.219114>,  <39.790592, 32.656448, 27.208942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.995296, 32.781322, 27.219114>,  <40.336468, 32.989445, 27.236067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995296, 32.781322, 27.219114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261835, 0.356158, 0.896992,
		-0.451617, 0.776165, -0.440011,
		-0.852927, -0.520307, -0.042380,
		39.739418, 32.625229, 27.206400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837227, 33.462021, 27.377718>,  <40.336468, 32.989445, 27.236067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837227, 33.462021, 27.377718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.687485, 33.098446, 27.451136>,  <39.597641, 32.880299, 27.495186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.687485, 33.098446, 27.451136>,  <39.837227, 33.462021, 27.377718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687485, 33.098446, 27.451136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146177, 0.253308, 0.956278,
		-0.915693, 0.331153, -0.227692,
		-0.374351, -0.908940, 0.183546,
		39.575180, 32.825764, 27.506199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161030, 33.552513, 27.669981>,  <39.837227, 33.462021, 27.377718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161030, 33.552513, 27.669981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.318726, 33.208988, 27.800829>,  <39.413345, 33.002872, 27.879337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.318726, 33.208988, 27.800829>,  <39.161030, 33.552513, 27.669981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318726, 33.208988, 27.800829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197964, 0.268233, 0.942794,
		-0.897432, -0.436447, -0.064266,
		0.394241, -0.858816, 0.327122,
		39.436996, 32.951344, 27.898966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673508, 33.386517, 28.196548>,  <39.161030, 33.552513, 27.669981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673508, 33.386517, 28.196548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.981304, 33.140701, 28.266092>,  <39.165981, 32.993214, 28.307819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.981304, 33.140701, 28.266092>,  <38.673508, 33.386517, 28.196548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981304, 33.140701, 28.266092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098994, 0.154170, 0.983073,
		-0.630939, -0.773676, 0.057797,
		0.769490, -0.614538, 0.173862,
		39.212151, 32.956341, 28.318251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433342, 32.985741, 28.728777>,  <38.673508, 33.386517, 28.196548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433342, 32.985741, 28.728777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.831108, 32.943531, 28.729673>,  <39.069767, 32.918205, 28.730211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.831108, 32.943531, 28.729673>,  <38.433342, 32.985741, 28.728777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831108, 32.943531, 28.729673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001487, 0.035244, 0.999378,
		-0.105540, -0.993792, 0.035204,
		0.994414, -0.105526, 0.002242,
		39.129433, 32.911873, 28.730347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556347, 32.414913, 29.063335>,  <38.433342, 32.985741, 28.728777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556347, 32.414913, 29.063335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.868660, 32.661781, 29.102262>,  <39.056049, 32.809902, 29.125618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.868660, 32.661781, 29.102262>,  <38.556347, 32.414913, 29.063335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868660, 32.661781, 29.102262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138789, 0.019458, 0.990131,
		0.609189, -0.786586, 0.100850,
		0.780786, 0.617174, 0.097316,
		39.102894, 32.846935, 29.131456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707741, 32.258617, 29.715664>,  <38.556347, 32.414913, 29.063335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707741, 32.258617, 29.715664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.921875, 32.594807, 29.682129>,  <39.050354, 32.796520, 29.662008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.921875, 32.594807, 29.682129>,  <38.707741, 32.258617, 29.715664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921875, 32.594807, 29.682129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088140, 0.154304, 0.984084,
		0.840029, -0.519424, 0.156683,
		0.535334, 0.840470, -0.083838,
		39.082474, 32.846947, 29.656977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267052, 32.251461, 30.240715>,  <38.707741, 32.258617, 29.715664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267052, 32.251461, 30.240715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.290005, 32.637642, 30.139044>,  <39.303776, 32.869350, 30.078041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.290005, 32.637642, 30.139044>,  <39.267052, 32.251461, 30.240715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290005, 32.637642, 30.139044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098502, 0.247879, 0.963771,
		0.993481, -0.080337, -0.080876,
		0.057379, 0.965454, -0.254176,
		39.307220, 32.927277, 30.062792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860146, 32.505711, 30.564053>,  <39.267052, 32.251461, 30.240715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860146, 32.505711, 30.564053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.598011, 32.803806, 30.514820>,  <39.440731, 32.982666, 30.485281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.598011, 32.803806, 30.514820>,  <39.860146, 32.505711, 30.564053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598011, 32.803806, 30.514820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188900, 0.319469, 0.928577,
		0.731337, 0.585279, -0.350136,
		-0.655334, 0.745244, -0.123080,
		39.401409, 33.027378, 30.477896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243618, 33.160324, 30.733725>,  <39.860146, 32.505711, 30.564053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243618, 33.160324, 30.733725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.850128, 33.223267, 30.768435>,  <39.614037, 33.261032, 30.789261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.850128, 33.223267, 30.768435>,  <40.243618, 33.160324, 30.733725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850128, 33.223267, 30.768435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141902, 0.383980, 0.912372,
		0.110250, 0.909834, -0.400059,
		-0.983722, 0.157358, 0.086773,
		39.555012, 33.270473, 30.794466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212631, 33.835224, 30.949053>,  <40.243618, 33.160324, 30.733725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212631, 33.835224, 30.949053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.888489, 33.633121, 31.067738>,  <39.694004, 33.511860, 31.138948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.888489, 33.633121, 31.067738>,  <40.212631, 33.835224, 30.949053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888489, 33.633121, 31.067738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213702, 0.216650, 0.952572,
		-0.545573, 0.835333, -0.067591,
		-0.810359, -0.505253, 0.296710,
		39.645382, 33.481544, 31.156752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652870, 34.329781, 31.261366>,  <40.212631, 33.835224, 30.949053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652870, 34.329781, 31.261366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.682384, 33.958107, 31.406235>,  <39.700092, 33.735104, 31.493156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.682384, 33.958107, 31.406235>,  <39.652870, 34.329781, 31.261366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682384, 33.958107, 31.406235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135899, 0.369145, 0.919382,
		-0.987971, -0.018622, 0.153514,
		0.073790, -0.929186, 0.362174,
		39.704521, 33.679352, 31.514887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548252, 34.803040, 30.663132>,  <39.652870, 34.329781, 31.261366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548252, 34.803040, 30.663132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.489094, 35.173897, 30.800848>,  <39.453598, 35.396412, 30.883478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.489094, 35.173897, 30.800848>,  <39.548252, 34.803040, 30.663132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489094, 35.173897, 30.800848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282984, 0.293893, -0.912988,
		-0.947653, -0.232458, 0.218900,
		-0.147898, 0.927141, 0.344291,
		39.444725, 35.452038, 30.904135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947014, 34.960266, 30.407644>,  <39.548252, 34.803040, 30.663132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947014, 34.960266, 30.407644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.099274, 35.319115, 30.497345>,  <39.190628, 35.534424, 30.551165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.099274, 35.319115, 30.497345>,  <38.947014, 34.960266, 30.407644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099274, 35.319115, 30.497345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333877, 0.359481, -0.871378,
		-0.862341, 0.256817, 0.436363,
		0.380649, 0.897117, 0.224250,
		39.213467, 35.588249, 30.564619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419449, 35.342812, 30.182516>,  <38.947014, 34.960266, 30.407644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419449, 35.342812, 30.182516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.737862, 35.582951, 30.213280>,  <38.928909, 35.727036, 30.231737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.737862, 35.582951, 30.213280>,  <38.419449, 35.342812, 30.182516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737862, 35.582951, 30.213280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181404, 0.357874, -0.915980,
		-0.577432, 0.715196, 0.393785,
		0.796031, 0.600350, 0.076909,
		38.976669, 35.763054, 30.236353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199226, 35.994022, 30.011286>,  <38.419449, 35.342812, 30.182516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199226, 35.994022, 30.011286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.595322, 35.992996, 29.955530>,  <38.832977, 35.992382, 29.922077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.595322, 35.992996, 29.955530>,  <38.199226, 35.994022, 30.011286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595322, 35.992996, 29.955530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122085, 0.466772, -0.875910,
		0.067309, 0.884374, 0.461901,
		0.990235, -0.002566, -0.139387,
		38.892391, 35.992226, 29.913713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420303, 36.661968, 29.877623>,  <38.199226, 35.994022, 30.011286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420303, 36.661968, 29.877623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.689995, 36.403454, 29.734665>,  <38.851810, 36.248344, 29.648890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.689995, 36.403454, 29.734665>,  <38.420303, 36.661968, 29.877623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689995, 36.403454, 29.734665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010716, 0.475318, -0.879749,
		0.738449, 0.596978, 0.313545,
		0.674224, -0.646289, -0.357396,
		38.892262, 36.209568, 29.627447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699631, 36.991718, 29.283812>,  <38.420303, 36.661968, 29.877623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699631, 36.991718, 29.283812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.851910, 36.624210, 29.241997>,  <38.943275, 36.403706, 29.216908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.851910, 36.624210, 29.241997>,  <38.699631, 36.991718, 29.283812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851910, 36.624210, 29.241997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002342, 0.112091, -0.993695,
		0.924698, 0.378539, 0.040521,
		0.380694, -0.918773, -0.104537,
		38.966118, 36.348579, 29.210636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236736, 37.048214, 28.788900>,  <38.699631, 36.991718, 29.283812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236736, 37.048214, 28.788900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.122200, 36.665157, 28.776642>,  <39.053478, 36.435326, 28.769287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.122200, 36.665157, 28.776642>,  <39.236736, 37.048214, 28.788900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122200, 36.665157, 28.776642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006877, 0.029928, -0.999528,
		0.958105, -0.286412, -0.001984,
		-0.286336, -0.957639, -0.030644,
		39.036301, 36.377865, 28.767448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612423, 36.729553, 28.313881>,  <39.236736, 37.048214, 28.788900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612423, 36.729553, 28.313881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.309887, 36.468868, 28.336550>,  <39.128365, 36.312458, 28.350151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.309887, 36.468868, 28.336550>,  <39.612423, 36.729553, 28.313881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309887, 36.468868, 28.336550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020914, -0.062498, -0.997826,
		0.653839, -0.755885, 0.033641,
		-0.756344, -0.651714, 0.056672,
		39.082985, 36.273354, 28.353552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775467, 36.316647, 27.779987>,  <39.612423, 36.729553, 28.313881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775467, 36.316647, 27.779987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.390251, 36.237907, 27.853542>,  <39.159122, 36.190662, 27.897676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.390251, 36.237907, 27.853542>,  <39.775467, 36.316647, 27.779987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390251, 36.237907, 27.853542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169791, -0.086395, -0.981686,
		0.209130, -0.976620, 0.049778,
		-0.963034, -0.196848, 0.183889,
		39.101341, 36.178852, 27.908709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563076, 35.878857, 27.205612>,  <39.775467, 36.316647, 27.779987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563076, 35.878857, 27.205612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.215443, 36.002934, 27.359745>,  <39.006863, 36.077381, 27.452225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.215443, 36.002934, 27.359745>,  <39.563076, 35.878857, 27.205612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215443, 36.002934, 27.359745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420673, -0.053618, -0.905627,
		-0.260260, -0.949160, 0.177089,
		-0.869079, 0.310195, 0.385331,
		38.954720, 36.095989, 27.475344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090759, 35.438042, 26.984503>,  <39.563076, 35.878857, 27.205612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090759, 35.438042, 26.984503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.907215, 35.786011, 27.056818>,  <38.797089, 35.994793, 27.100206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.907215, 35.786011, 27.056818>,  <39.090759, 35.438042, 26.984503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907215, 35.786011, 27.056818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238242, 0.075557, -0.968262,
		-0.855973, -0.487365, 0.172582,
		-0.458858, 0.869923, 0.180786,
		38.769558, 36.046989, 27.111053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389488, 35.410805, 26.686277>,  <39.090759, 35.438042, 26.984503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389488, 35.410805, 26.686277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.477917, 35.796604, 26.744051>,  <38.530975, 36.028084, 26.778715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.477917, 35.796604, 26.744051>,  <38.389488, 35.410805, 26.686277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477917, 35.796604, 26.744051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246228, 0.198500, -0.948667,
		-0.943662, 0.174163, 0.281371,
		0.221075, 0.964502, 0.144433,
		38.544239, 36.085957, 26.787380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906662, 35.789627, 26.431364>,  <38.389488, 35.410805, 26.686277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906662, 35.789627, 26.431364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.176510, 36.084637, 26.443617>,  <38.338417, 36.261642, 26.450970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.176510, 36.084637, 26.443617>,  <37.906662, 35.789627, 26.431364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176510, 36.084637, 26.443617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173473, 0.198741, -0.964577,
		-0.717492, 0.645410, 0.262015,
		0.674621, 0.737529, 0.030634,
		38.378895, 36.305897, 26.452806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509129, 36.363796, 26.123142>,  <37.906662, 35.789627, 26.431364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509129, 36.363796, 26.123142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.905792, 36.410103, 26.100454>,  <38.143791, 36.437885, 26.086842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.905792, 36.410103, 26.100454>,  <37.509129, 36.363796, 26.123142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905792, 36.410103, 26.100454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073049, 0.142067, -0.987158,
		-0.106222, 0.983064, 0.149338,
		0.991655, 0.115767, -0.056721,
		38.203289, 36.444832, 26.083437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310844, 37.146049, 26.126171>,  <37.509129, 36.363796, 26.123142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310844, 37.146049, 26.126171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.921005, 37.234299, 26.110804>,  <36.687099, 37.287251, 26.101583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.921005, 37.234299, 26.110804>,  <37.310844, 37.146049, 26.126171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921005, 37.234299, 26.110804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014640, 0.233956, 0.972137,
		0.223467, 0.946884, -0.231243,
		-0.974602, 0.220626, -0.038419,
		36.628624, 37.300488, 26.099277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163620, 37.838543, 26.483719>,  <37.310844, 37.146049, 26.126171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163620, 37.838543, 26.483719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.836655, 37.608841, 26.501934>,  <36.640476, 37.471020, 26.512863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.836655, 37.608841, 26.501934>,  <37.163620, 37.838543, 26.483719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836655, 37.608841, 26.501934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064825, -0.013146, 0.997810,
		-0.572395, 0.818574, 0.047971,
		-0.817412, -0.574251, 0.045539,
		36.591431, 37.436565, 26.515596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770100, 37.983315, 27.074032>,  <37.163620, 37.838543, 26.483719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770100, 37.983315, 27.074032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.578037, 37.644478, 26.982916>,  <36.462799, 37.441177, 26.928246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.578037, 37.644478, 26.982916>,  <36.770100, 37.983315, 27.074032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578037, 37.644478, 26.982916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348465, -0.054113, 0.935758,
		-0.804999, 0.528686, -0.269199,
		-0.480155, -0.847091, -0.227789,
		36.433990, 37.390350, 26.914579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269608, 38.047726, 27.536619>,  <36.770100, 37.983315, 27.074032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269608, 38.047726, 27.536619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.277821, 37.662045, 27.430870>,  <36.282749, 37.430637, 27.367420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.277821, 37.662045, 27.430870>,  <36.269608, 38.047726, 27.536619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277821, 37.662045, 27.430870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168080, -0.263994, 0.949766,
		-0.985559, 0.024935, -0.167484,
		0.020533, -0.964202, -0.264373,
		36.283981, 37.372784, 27.351559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565994, 37.833294, 27.716932>,  <36.269608, 38.047726, 27.536619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565994, 37.833294, 27.716932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.821667, 37.525837, 27.706816>,  <35.975071, 37.341362, 27.700747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.821667, 37.525837, 27.706816>,  <35.565994, 37.833294, 27.716932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821667, 37.525837, 27.706816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363023, -0.330545, 0.871180,
		-0.677982, -0.547663, -0.490312,
		0.639183, -0.768639, -0.025289,
		36.013420, 37.295246, 27.699228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181755, 37.233753, 27.825104>,  <35.565994, 37.833294, 27.716932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181755, 37.233753, 27.825104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.558510, 37.138828, 27.920214>,  <35.784561, 37.081871, 27.977280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.558510, 37.138828, 27.920214>,  <35.181755, 37.233753, 27.825104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558510, 37.138828, 27.920214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290234, -0.218400, 0.931701,
		-0.169171, -0.946565, -0.274582,
		0.941884, -0.237310, 0.237778,
		35.841076, 37.067635, 27.991547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042870, 36.658596, 28.219271>,  <35.181755, 37.233753, 27.825104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042870, 36.658596, 28.219271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.424931, 36.727165, 28.315849>,  <35.654167, 36.768307, 28.373796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.424931, 36.727165, 28.315849>,  <35.042870, 36.658596, 28.219271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424931, 36.727165, 28.315849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176407, -0.325474, 0.928949,
		0.237830, -0.929881, -0.280637,
		0.955153, 0.171425, 0.241446,
		35.711475, 36.778591, 28.388283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336475, 36.075218, 28.381376>,  <35.042870, 36.658596, 28.219271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336475, 36.075218, 28.381376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.562466, 36.352142, 28.560934>,  <35.698059, 36.518299, 28.668669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.562466, 36.352142, 28.560934>,  <35.336475, 36.075218, 28.381376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562466, 36.352142, 28.560934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195802, -0.416007, 0.888031,
		0.801540, -0.589608, -0.099476,
		0.564973, 0.692315, 0.448893,
		35.731956, 36.559837, 28.695602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802818, 35.652866, 28.675970>,  <35.336475, 36.075218, 28.381376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802818, 35.652866, 28.675970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.823654, 36.005238, 28.864122>,  <35.836155, 36.216660, 28.977013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.823654, 36.005238, 28.864122>,  <35.802818, 35.652866, 28.675970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823654, 36.005238, 28.864122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191458, -0.471091, 0.861056,
		0.980117, 0.045206, -0.193200,
		0.052090, 0.880925, 0.470380,
		35.839283, 36.269516, 29.005236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360619, 35.577423, 29.008089>,  <35.802818, 35.652866, 28.675970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360619, 35.577423, 29.008089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.167217, 35.865292, 29.207407>,  <36.051174, 36.038013, 29.326998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.167217, 35.865292, 29.207407>,  <36.360619, 35.577423, 29.008089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167217, 35.865292, 29.207407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057190, -0.542069, 0.838386,
		0.873470, 0.433864, 0.220937,
		-0.483508, 0.719669, 0.498294,
		36.022163, 36.081192, 29.356895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623425, 35.606201, 29.646935>,  <36.360619, 35.577423, 29.008089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623425, 35.606201, 29.646935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.256069, 35.754013, 29.703522>,  <36.035656, 35.842701, 29.737474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.256069, 35.754013, 29.703522>,  <36.623425, 35.606201, 29.646935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256069, 35.754013, 29.703522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056113, -0.475544, 0.877900,
		0.391684, 0.798314, 0.457470,
		-0.918387, 0.369530, 0.141467,
		35.980553, 35.864872, 29.745962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554478, 35.634216, 30.367973>,  <36.623425, 35.606201, 29.646935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554478, 35.634216, 30.367973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.178699, 35.673359, 30.236605>,  <35.953232, 35.696846, 30.157784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.178699, 35.673359, 30.236605>,  <36.554478, 35.634216, 30.367973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178699, 35.673359, 30.236605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339824, -0.389784, 0.855914,
		-0.044256, 0.915692, 0.399436,
		-0.939447, 0.097859, -0.328424,
		35.896866, 35.702717, 30.138077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.475922, 37.986786, 22.616966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130173, 37.786690, 22.596478>,  <36.922726, 37.666630, 22.584185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130173, 37.786690, 22.596478>,  <37.475922, 37.986786, 22.616966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130173, 37.786690, 22.596478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205414, 0.258278, 0.943979,
		-0.458992, 0.826467, -0.326005,
		-0.864368, -0.500245, -0.051220,
		36.870861, 37.636616, 22.581112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021347, 38.370785, 22.997013>,  <37.475922, 37.986786, 22.616966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021347, 38.370785, 22.997013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838577, 38.015240, 22.983473>,  <36.728916, 37.801914, 22.975348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838577, 38.015240, 22.983473>,  <37.021347, 38.370785, 22.997013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838577, 38.015240, 22.983473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477832, 0.213179, 0.852192,
		-0.750262, 0.405565, -0.522133,
		-0.456928, -0.888860, -0.033852,
		36.701500, 37.748581, 22.973318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262951, 38.486095, 23.215448>,  <37.021347, 38.370785, 22.997013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262951, 38.486095, 23.215448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354809, 38.099453, 23.260935>,  <36.409924, 37.867466, 23.288227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354809, 38.099453, 23.260935>,  <36.262951, 38.486095, 23.215448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354809, 38.099453, 23.260935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268597, 0.049361, 0.961987,
		-0.935478, -0.251459, -0.248292,
		0.229644, -0.966608, 0.113718,
		36.423702, 37.809471, 23.295050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740696, 38.279736, 23.665701>,  <36.262951, 38.486095, 23.215448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740696, 38.279736, 23.665701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021027, 37.994411, 23.667994>,  <36.189224, 37.823215, 23.669369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021027, 37.994411, 23.667994>,  <35.740696, 38.279736, 23.665701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021027, 37.994411, 23.667994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075185, -0.065873, 0.994992,
		-0.709363, -0.697743, -0.099796,
		0.700822, -0.713313, 0.005732,
		36.231274, 37.780418, 23.669714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392483, 37.727974, 23.964012>,  <35.740696, 38.279736, 23.665701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392483, 37.727974, 23.964012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785416, 37.690605, 24.028881>,  <36.021175, 37.668186, 24.067802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785416, 37.690605, 24.028881>,  <35.392483, 37.727974, 23.964012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785416, 37.690605, 24.028881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173658, -0.131884, 0.975935,
		-0.069784, -0.986853, -0.145776,
		0.982330, -0.093420, 0.162171,
		36.080116, 37.662579, 24.077532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530788, 37.088997, 24.386683>,  <35.392483, 37.727974, 23.964012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530788, 37.088997, 24.386683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870892, 37.292419, 24.440983>,  <36.074955, 37.414474, 24.473562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870892, 37.292419, 24.440983>,  <35.530788, 37.088997, 24.386683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870892, 37.292419, 24.440983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037253, -0.199113, 0.979268,
		0.525046, -0.837688, -0.150352,
		0.850258, 0.508560, 0.135749,
		36.125969, 37.444988, 24.481709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916927, 36.636822, 24.751492>,  <35.530788, 37.088997, 24.386683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916927, 36.636822, 24.751492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105946, 36.983555, 24.815113>,  <36.219357, 37.191597, 24.853287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105946, 36.983555, 24.815113>,  <35.916927, 36.636822, 24.751492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105946, 36.983555, 24.815113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118746, -0.241456, 0.963119,
		0.873271, -0.436229, -0.217032,
		0.472544, 0.866835, 0.159056,
		36.247707, 37.243607, 24.862829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536201, 36.490562, 25.084234>,  <35.916927, 36.636822, 24.751492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536201, 36.490562, 25.084234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454708, 36.867165, 25.191612>,  <36.405811, 37.093124, 25.256039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454708, 36.867165, 25.191612>,  <36.536201, 36.490562, 25.084234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454708, 36.867165, 25.191612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000340, -0.274130, 0.961692,
		0.979026, 0.196022, 0.055530,
		-0.203736, 0.941503, 0.268447,
		36.393589, 37.149616, 25.272146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068310, 36.670708, 25.617594>,  <36.536201, 36.490562, 25.084234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068310, 36.670708, 25.617594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780685, 36.942383, 25.676456>,  <36.608112, 37.105389, 25.711773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780685, 36.942383, 25.676456>,  <37.068310, 36.670708, 25.617594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780685, 36.942383, 25.676456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016231, -0.195278, 0.980614,
		0.694760, 0.707507, 0.129393,
		-0.719059, 0.679191, 0.147155,
		36.564968, 37.146141, 25.720602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691391, 37.114677, 25.489792>,  <37.068310, 36.670708, 25.617594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691391, 37.114677, 25.489792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991581, 36.862915, 25.570421>,  <38.171696, 36.711857, 25.618799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991581, 36.862915, 25.570421>,  <37.691391, 37.114677, 25.489792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991581, 36.862915, 25.570421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192700, -0.083351, -0.977711,
		0.632181, 0.772592, 0.058734,
		0.750476, -0.629408, 0.201571,
		38.216724, 36.674091, 25.630892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192970, 37.351555, 24.990545>,  <37.691391, 37.114677, 25.489792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192970, 37.351555, 24.990545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338856, 36.991684, 25.086514>,  <38.426388, 36.775761, 25.144094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338856, 36.991684, 25.086514>,  <38.192970, 37.351555, 24.990545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338856, 36.991684, 25.086514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421259, -0.070359, -0.904207,
		0.830377, 0.430845, 0.353337,
		0.364713, -0.899679, 0.239922,
		38.448269, 36.721779, 25.158489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870838, 37.318501, 24.658354>,  <38.192970, 37.351555, 24.990545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870838, 37.318501, 24.658354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772900, 36.943016, 24.755405>,  <38.714138, 36.717724, 24.813637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772900, 36.943016, 24.755405>,  <38.870838, 37.318501, 24.658354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772900, 36.943016, 24.755405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383257, -0.323570, -0.865111,
		0.890599, -0.118826, 0.438992,
		-0.244842, -0.938713, 0.242630,
		38.699448, 36.661404, 24.828194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510303, 36.901749, 24.705608>,  <38.870838, 37.318501, 24.658354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510303, 36.901749, 24.705608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186230, 36.678669, 24.633413>,  <38.991787, 36.544823, 24.590096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186230, 36.678669, 24.633413>,  <39.510303, 36.901749, 24.705608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186230, 36.678669, 24.633413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404824, -0.309656, -0.860367,
		0.423937, -0.770119, 0.476648,
		-0.810182, -0.557700, -0.180488,
		38.943176, 36.511360, 24.579268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823238, 36.269310, 24.449514>,  <39.510303, 36.901749, 24.705608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823238, 36.269310, 24.449514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436504, 36.254482, 24.348434>,  <39.204464, 36.245586, 24.287786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436504, 36.254482, 24.348434>,  <39.823238, 36.269310, 24.449514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436504, 36.254482, 24.348434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224482, -0.595266, -0.771535,
		-0.121821, -0.802673, 0.583846,
		-0.966834, -0.037073, -0.252702,
		39.146454, 36.243359, 24.272623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714088, 35.633995, 24.228628>,  <39.823238, 36.269310, 24.449514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714088, 35.633995, 24.228628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417068, 35.844967, 24.063492>,  <39.238857, 35.971550, 23.964411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417068, 35.844967, 24.063492>,  <39.714088, 35.633995, 24.228628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417068, 35.844967, 24.063492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237124, -0.369442, -0.898490,
		-0.626414, -0.765066, 0.149262,
		-0.742548, 0.527434, -0.412839,
		39.194305, 36.003197, 23.939640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449093, 35.187943, 23.767689>,  <39.714088, 35.633995, 24.228628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449093, 35.187943, 23.767689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306770, 35.545795, 23.659592>,  <39.221378, 35.760509, 23.594732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306770, 35.545795, 23.659592>,  <39.449093, 35.187943, 23.767689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306770, 35.545795, 23.659592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154176, -0.229015, -0.961136,
		-0.921755, -0.383642, -0.056446,
		-0.355805, 0.894635, -0.270244,
		39.200027, 35.814186, 23.578518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881989, 34.965260, 23.306293>,  <39.449093, 35.187943, 23.767689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881989, 34.965260, 23.306293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000469, 35.344120, 23.257027>,  <39.071556, 35.571438, 23.227467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000469, 35.344120, 23.257027>,  <38.881989, 34.965260, 23.306293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000469, 35.344120, 23.257027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044393, -0.115162, -0.992354,
		-0.954093, 0.299406, 0.007935,
		0.296203, 0.947150, -0.123167,
		39.089329, 35.628265, 23.220076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338120, 35.234318, 22.858528>,  <38.881989, 34.965260, 23.306293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338120, 35.234318, 22.858528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676079, 35.446007, 22.827358>,  <38.878853, 35.573021, 22.808657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676079, 35.446007, 22.827358>,  <38.338120, 35.234318, 22.858528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676079, 35.446007, 22.827358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088392, -0.281789, -0.955396,
		-0.527575, 0.800324, -0.284862,
		0.844897, 0.529223, -0.077922,
		38.929546, 35.604774, 22.803982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307838, 35.544697, 22.190651>,  <38.338120, 35.234318, 22.858528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307838, 35.544697, 22.190651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696400, 35.527328, 22.284021>,  <38.929539, 35.516907, 22.340044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696400, 35.527328, 22.284021>,  <38.307838, 35.544697, 22.190651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696400, 35.527328, 22.284021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198119, -0.393572, -0.897691,
		0.130847, 0.918268, -0.373716,
		0.971405, -0.043419, 0.233424,
		38.987820, 35.514301, 22.354048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690937, 35.794487, 21.622124>,  <38.307838, 35.544697, 22.190651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690937, 35.794487, 21.622124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972240, 35.591888, 21.821680>,  <39.141022, 35.470329, 21.941414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972240, 35.591888, 21.821680>,  <38.690937, 35.794487, 21.622124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972240, 35.591888, 21.821680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371750, -0.336172, -0.865327,
		0.605996, 0.794011, -0.048127,
		0.703258, -0.506493, 0.498892,
		39.183216, 35.439941, 21.971348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272507, 35.908768, 21.226030>,  <38.690937, 35.794487, 21.622124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272507, 35.908768, 21.226030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343540, 35.571079, 21.428318>,  <39.386162, 35.368465, 21.549690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343540, 35.571079, 21.428318>,  <39.272507, 35.908768, 21.226030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343540, 35.571079, 21.428318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180656, -0.477190, -0.860031,
		0.967381, 0.244090, 0.067772,
		0.177585, -0.844221, 0.505722,
		39.396816, 35.317814, 21.580034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787491, 35.520061, 20.768251>,  <39.272507, 35.908768, 21.226030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787491, 35.520061, 20.768251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657322, 35.234463, 21.016222>,  <39.579220, 35.063103, 21.165005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657322, 35.234463, 21.016222>,  <39.787491, 35.520061, 20.768251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657322, 35.234463, 21.016222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148150, -0.686016, -0.712344,
		0.933890, -0.139972, 0.329025,
		-0.325425, -0.713996, 0.619927,
		39.559696, 35.020264, 21.202200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206287, 35.006779, 20.687250>,  <39.787491, 35.520061, 20.768251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206287, 35.006779, 20.687250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867180, 34.838604, 20.816565>,  <39.663715, 34.737698, 20.894154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867180, 34.838604, 20.816565>,  <40.206287, 35.006779, 20.687250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867180, 34.838604, 20.816565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097786, -0.723021, -0.683870,
		0.521266, -0.548154, 0.654070,
		-0.847773, -0.420437, 0.323285,
		39.612846, 34.712471, 20.913549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.172421, 32.889977, 21.810949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.444862, 33.179153, 21.764551>,  <34.608326, 33.352661, 21.736712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.444862, 33.179153, 21.764551>,  <34.172421, 32.889977, 21.810949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444862, 33.179153, 21.764551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269946, -0.100678, 0.957598,
		0.680609, -0.683534, -0.263727,
		0.681102, 0.722942, -0.115995,
		34.649193, 33.396034, 21.729753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777401, 32.635288, 22.077997>,  <34.172421, 32.889977, 21.810949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777401, 32.635288, 22.077997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.793858, 33.034206, 22.102371>,  <34.803730, 33.273556, 22.116995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.793858, 33.034206, 22.102371>,  <34.777401, 32.635288, 22.077997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793858, 33.034206, 22.102371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280692, -0.070066, 0.957237,
		0.958916, -0.022274, -0.282815,
		0.041137, 0.997294, 0.060935,
		34.806198, 33.333393, 22.120651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391830, 32.795563, 22.392664>,  <34.777401, 32.635288, 22.077997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391830, 32.795563, 22.392664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.162865, 33.119328, 22.445107>,  <35.025486, 33.313587, 22.476572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.162865, 33.119328, 22.445107>,  <35.391830, 32.795563, 22.392664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162865, 33.119328, 22.445107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184827, -0.028413, 0.982360,
		0.798860, 0.586553, -0.133337,
		-0.572417, 0.809413, 0.131109,
		34.991138, 33.362152, 22.484440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753075, 33.272144, 22.939163>,  <35.391830, 32.795563, 22.392664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753075, 33.272144, 22.939163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.382458, 33.422482, 22.945604>,  <35.160088, 33.512684, 22.949469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.382458, 33.422482, 22.945604>,  <35.753075, 33.272144, 22.939163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382458, 33.422482, 22.945604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001350, -0.039483, 0.999219,
		0.376190, 0.925840, 0.036076,
		-0.926542, 0.375848, 0.016103,
		35.104496, 33.535236, 22.950436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772804, 33.933491, 23.350033>,  <35.753075, 33.272144, 22.939163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772804, 33.933491, 23.350033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.399117, 33.791164, 23.340076>,  <35.174904, 33.705769, 23.334103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.399117, 33.791164, 23.340076>,  <35.772804, 33.933491, 23.350033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399117, 33.791164, 23.340076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093181, 0.176096, 0.979953,
		-0.344302, 0.917814, -0.197668,
		-0.934223, -0.355818, -0.024893,
		35.118851, 33.684418, 23.332609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371754, 34.473007, 23.719334>,  <35.772804, 33.933491, 23.350033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371754, 34.473007, 23.719334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.163109, 34.131763, 23.723755>,  <35.037922, 33.927017, 23.726408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.163109, 34.131763, 23.723755>,  <35.371754, 34.473007, 23.719334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163109, 34.131763, 23.723755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103649, 0.076222, 0.991689,
		-0.846863, 0.516131, -0.128183,
		-0.521612, -0.853111, 0.011053,
		35.006626, 33.875832, 23.727070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887680, 34.654526, 24.089573>,  <35.371754, 34.473007, 23.719334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887680, 34.654526, 24.089573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.898365, 34.255157, 24.109339>,  <34.904778, 34.015537, 24.121199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.898365, 34.255157, 24.109339>,  <34.887680, 34.654526, 24.089573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898365, 34.255157, 24.109339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130382, 0.045531, 0.990418,
		-0.991104, -0.032899, -0.128960,
		0.026713, -0.998421, 0.049415,
		34.906380, 33.955631, 24.124163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235245, 34.501827, 24.409845>,  <34.887680, 34.654526, 24.089573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235245, 34.501827, 24.409845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.471870, 34.183270, 24.460136>,  <34.613846, 33.992134, 24.490311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.471870, 34.183270, 24.460136>,  <34.235245, 34.501827, 24.409845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471870, 34.183270, 24.460136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105168, 0.078388, 0.991360,
		-0.799369, -0.599677, -0.037384,
		0.591565, -0.796394, 0.125728,
		34.649342, 33.944351, 24.497854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910275, 34.235397, 24.875147>,  <34.235245, 34.501827, 24.409845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910275, 34.235397, 24.875147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.250111, 34.024639, 24.884674>,  <34.454014, 33.898182, 24.890390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.250111, 34.024639, 24.884674>,  <33.910275, 34.235397, 24.875147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250111, 34.024639, 24.884674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042418, -0.023246, 0.998829,
		-0.525729, -0.849609, -0.042100,
		0.849594, -0.526900, 0.023818,
		34.504990, 33.866570, 24.891819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795784, 33.532574, 25.181870>,  <33.910275, 34.235397, 24.875147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795784, 33.532574, 25.181870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.186428, 33.608803, 25.221703>,  <34.420815, 33.654541, 25.245602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.186428, 33.608803, 25.221703>,  <33.795784, 33.532574, 25.181870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186428, 33.608803, 25.221703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021854, -0.372756, 0.927672,
		0.213908, -0.908150, -0.359872,
		0.976610, 0.190572, 0.099582,
		34.479412, 33.665974, 25.251577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949646, 32.843361, 25.420473>,  <33.795784, 33.532574, 25.181870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949646, 32.843361, 25.420473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.261829, 33.077213, 25.509094>,  <34.449139, 33.217525, 25.562267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.261829, 33.077213, 25.509094>,  <33.949646, 32.843361, 25.420473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261829, 33.077213, 25.509094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176624, -0.546108, 0.818884,
		0.599737, -0.599976, -0.529476,
		0.780461, 0.584633, 0.221551,
		34.495968, 33.252602, 25.575560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427059, 32.448372, 25.715145>,  <33.949646, 32.843361, 25.420473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427059, 32.448372, 25.715145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.536022, 32.815205, 25.831602>,  <34.601398, 33.035305, 25.901476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.536022, 32.815205, 25.831602>,  <34.427059, 32.448372, 25.715145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536022, 32.815205, 25.831602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127775, -0.334385, 0.933735,
		0.953661, -0.217151, -0.208267,
		0.272403, 0.917078, 0.291144,
		34.617744, 33.090328, 25.918945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008720, 32.363068, 26.013052>,  <34.427059, 32.448372, 25.715145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008720, 32.363068, 26.013052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.908596, 32.711464, 26.182154>,  <34.848522, 32.920502, 26.283615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.908596, 32.711464, 26.182154>,  <35.008720, 32.363068, 26.013052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908596, 32.711464, 26.182154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295516, -0.347082, 0.890059,
		0.921962, 0.347721, -0.170514,
		-0.250310, 0.870990, 0.422754,
		34.833504, 32.972759, 26.308979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567066, 32.512444, 26.392670>,  <35.008720, 32.363068, 26.013052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567066, 32.512444, 26.392670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.229855, 32.668800, 26.540453>,  <35.027527, 32.762615, 26.629124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.229855, 32.668800, 26.540453>,  <35.567066, 32.512444, 26.392670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229855, 32.668800, 26.540453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249182, -0.324903, 0.912330,
		0.476660, 0.861187, 0.176500,
		-0.843032, 0.390891, 0.369460,
		34.976944, 32.786068, 26.651291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037384, 32.068825, 26.716158>,  <35.567066, 32.512444, 26.392670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037384, 32.068825, 26.716158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.186138, 31.702841, 26.778826>,  <36.275391, 31.483250, 26.816425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.186138, 31.702841, 26.778826>,  <36.037384, 32.068825, 26.716158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186138, 31.702841, 26.778826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006452, -0.166220, -0.986068,
		0.928255, 0.367719, -0.055912,
		0.371889, -0.914961, 0.156667,
		36.297707, 31.428352, 26.825827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759270, 32.118668, 26.380415>,  <36.037384, 32.068825, 26.716158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759270, 32.118668, 26.380415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.615894, 31.746302, 26.408440>,  <36.529869, 31.522881, 26.425255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.615894, 31.746302, 26.408440>,  <36.759270, 32.118668, 26.380415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615894, 31.746302, 26.408440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201007, -0.150246, -0.967999,
		0.911655, -0.332889, 0.240976,
		-0.358442, -0.930919, 0.070060,
		36.508362, 31.467026, 26.429457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250362, 31.729364, 25.986582>,  <36.759270, 32.118668, 26.380415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250362, 31.729364, 25.986582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.924339, 31.499531, 26.016352>,  <36.728725, 31.361629, 26.034214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.924339, 31.499531, 26.016352>,  <37.250362, 31.729364, 25.986582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924339, 31.499531, 26.016352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140506, -0.320640, -0.936722,
		0.562090, -0.753022, 0.342072,
		-0.815054, -0.574585, 0.074425,
		36.679825, 31.327156, 26.038679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449219, 31.134909, 25.597826>,  <37.250362, 31.729364, 25.986582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449219, 31.134909, 25.597826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.051079, 31.164789, 25.622141>,  <36.812195, 31.182718, 25.636730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.051079, 31.164789, 25.622141>,  <37.449219, 31.134909, 25.597826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051079, 31.164789, 25.622141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077144, -0.240529, -0.967571,
		-0.057655, -0.967763, 0.245173,
		-0.995352, 0.074699, 0.060789,
		36.752472, 31.187199, 25.640377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265537, 30.529943, 25.330433>,  <37.449219, 31.134909, 25.597826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265537, 30.529943, 25.330433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.945538, 30.768515, 25.304287>,  <36.753536, 30.911657, 25.288599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.945538, 30.768515, 25.304287>,  <37.265537, 30.529943, 25.330433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945538, 30.768515, 25.304287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067333, -0.197496, -0.977988,
		-0.596208, -0.777991, 0.198156,
		-0.800001, 0.596427, -0.065364,
		36.705536, 30.947443, 25.284678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738300, 30.133905, 24.946875>,  <37.265537, 30.529943, 25.330433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738300, 30.133905, 24.946875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.623234, 30.515493, 24.912945>,  <36.554195, 30.744446, 24.892588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.623234, 30.515493, 24.912945>,  <36.738300, 30.133905, 24.946875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623234, 30.515493, 24.912945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066406, -0.108222, -0.991906,
		-0.955427, -0.279702, 0.094480,
		-0.287663, 0.953968, -0.084824,
		36.536934, 30.801683, 24.887497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190899, 30.153456, 24.454762>,  <36.738300, 30.133905, 24.946875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190899, 30.153456, 24.454762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.307007, 30.536081, 24.443930>,  <36.376671, 30.765656, 24.437431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.307007, 30.536081, 24.443930>,  <36.190899, 30.153456, 24.454762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307007, 30.536081, 24.443930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181296, 0.027185, -0.983053,
		-0.939614, 0.290260, 0.181312,
		0.290270, 0.956562, -0.027079,
		36.394089, 30.823050, 24.435806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814480, 30.444220, 24.016611>,  <36.190899, 30.153456, 24.454762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814480, 30.444220, 24.016611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.117100, 30.705683, 24.009058>,  <36.298672, 30.862560, 24.004526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.117100, 30.705683, 24.009058>,  <35.814480, 30.444220, 24.016611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117100, 30.705683, 24.009058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063677, 0.044899, -0.996960,
		-0.650824, 0.755456, 0.075592,
		0.756553, 0.653659, -0.018883,
		36.344067, 30.901781, 24.003393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689503, 30.968546, 23.436514>,  <35.814480, 30.444220, 24.016611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689503, 30.968546, 23.436514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.084003, 31.003437, 23.492657>,  <36.320705, 31.024372, 23.526342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.084003, 31.003437, 23.492657>,  <35.689503, 30.968546, 23.436514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084003, 31.003437, 23.492657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105925, 0.318233, -0.942076,
		-0.126840, 0.943991, 0.304618,
		0.986251, 0.087227, 0.140357,
		36.379879, 31.029606, 23.534763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800606, 31.565630, 23.002312>,  <35.689503, 30.968546, 23.436514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800606, 31.565630, 23.002312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.166203, 31.412739, 23.056759>,  <36.385559, 31.321005, 23.089426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.166203, 31.412739, 23.056759>,  <35.800606, 31.565630, 23.002312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166203, 31.412739, 23.056759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257097, 0.286051, -0.923080,
		0.313891, 0.878679, 0.359716,
		0.913988, -0.382228, 0.136117,
		36.440399, 31.298071, 23.097593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219013, 32.044731, 22.804390>,  <35.800606, 31.565630, 23.002312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219013, 32.044731, 22.804390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.435368, 31.710020, 22.770329>,  <36.565182, 31.509193, 22.749891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.435368, 31.710020, 22.770329>,  <36.219013, 32.044731, 22.804390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435368, 31.710020, 22.770329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103061, 0.166415, -0.980655,
		0.834758, 0.521646, 0.176251,
		0.540886, -0.836774, -0.085155,
		36.597633, 31.458988, 22.744781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804943, 32.256039, 22.431150>,  <36.219013, 32.044731, 22.804390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804943, 32.256039, 22.431150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.763290, 31.859766, 22.396032>,  <36.738300, 31.622002, 22.374962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.763290, 31.859766, 22.396032>,  <36.804943, 32.256039, 22.431150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763290, 31.859766, 22.396032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140716, 0.072710, -0.987377,
		0.984558, -0.115172, 0.131833,
		-0.104132, -0.990681, -0.087793,
		36.732052, 31.562561, 22.369694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231941, 32.102219, 21.863651>,  <36.804943, 32.256039, 22.431150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231941, 32.102219, 21.863651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.974720, 31.796755, 21.886665>,  <36.820389, 31.613476, 21.900473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.974720, 31.796755, 21.886665>,  <37.231941, 32.102219, 21.863651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974720, 31.796755, 21.886665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010821, -0.066059, -0.997757,
		0.765747, -0.642231, 0.034216,
		-0.643050, -0.763659, 0.057533,
		36.781803, 31.567657, 21.903925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532436, 31.522629, 21.512564>,  <37.231941, 32.102219, 21.863651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532436, 31.522629, 21.512564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.137138, 31.462681, 21.524591>,  <36.899960, 31.426712, 21.531809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.137138, 31.462681, 21.524591>,  <37.532436, 31.522629, 21.512564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137138, 31.462681, 21.524591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006295, -0.156648, -0.987634,
		0.152728, -0.976217, 0.153864,
		-0.988248, -0.149871, 0.030070,
		36.840664, 31.417719, 21.533613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263798, 31.154728, 21.329960>,  <37.532436, 31.522629, 21.512564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263798, 31.154728, 21.329960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.628300, 31.105793, 21.172661>,  <38.847000, 31.076431, 21.078281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.628300, 31.105793, 21.172661>,  <38.263798, 31.154728, 21.329960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628300, 31.105793, 21.172661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404942, 0.092173, 0.909685,
		-0.075044, -0.988199, 0.133534,
		0.911258, -0.122339, -0.393246,
		38.901676, 31.069092, 21.054688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569016, 30.567551, 21.696156>,  <38.263798, 31.154728, 21.329960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569016, 30.567551, 21.696156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.879997, 30.765776, 21.541245>,  <39.066586, 30.884710, 21.448298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.879997, 30.765776, 21.541245>,  <38.569016, 30.567551, 21.696156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879997, 30.765776, 21.541245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334829, 0.195133, 0.921853,
		0.532409, -0.846368, -0.014223,
		0.777451, 0.495565, -0.387279,
		39.113232, 30.914446, 21.425060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103298, 30.296358, 22.130791>,  <38.569016, 30.567551, 21.696156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103298, 30.296358, 22.130791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.246395, 30.633274, 21.969513>,  <39.332253, 30.835424, 21.872747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.246395, 30.633274, 21.969513>,  <39.103298, 30.296358, 22.130791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246395, 30.633274, 21.969513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548541, 0.159876, 0.820696,
		0.755727, -0.514765, -0.404838,
		0.357742, 0.842292, -0.403193,
		39.353718, 30.885962, 21.848555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811016, 30.274996, 22.268526>,  <39.103298, 30.296358, 22.130791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811016, 30.274996, 22.268526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.742931, 30.661394, 22.190676>,  <39.702080, 30.893232, 22.143965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.742931, 30.661394, 22.190676>,  <39.811016, 30.274996, 22.268526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742931, 30.661394, 22.190676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409362, 0.248977, 0.877743,
		0.896353, 0.069734, -0.437822,
		-0.170216, 0.965996, -0.194625,
		39.691868, 30.951193, 22.132288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434719, 30.539268, 22.498602>,  <39.811016, 30.274996, 22.268526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434719, 30.539268, 22.498602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.148842, 30.819040, 22.500225>,  <39.977318, 30.986904, 22.501198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.148842, 30.819040, 22.500225>,  <40.434719, 30.539268, 22.498602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148842, 30.819040, 22.500225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178620, 0.176905, 0.967884,
		0.676250, 0.692461, -0.251364,
		-0.714689, 0.699430, 0.004056,
		39.934437, 31.028870, 22.501442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685303, 31.150064, 22.911697>,  <40.434719, 30.539268, 22.498602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685303, 31.150064, 22.911697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.292881, 31.225534, 22.894072>,  <40.057430, 31.270817, 22.883495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.292881, 31.225534, 22.894072>,  <40.685303, 31.150064, 22.911697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292881, 31.225534, 22.894072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032231, 0.383192, 0.923106,
		0.191053, 0.904193, -0.382012,
		-0.981050, 0.188675, -0.044067,
		39.998566, 31.282137, 22.880852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563015, 31.799870, 23.035563>,  <40.685303, 31.150064, 22.911697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563015, 31.799870, 23.035563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.199295, 31.655895, 23.119108>,  <39.981064, 31.569510, 23.169235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.199295, 31.655895, 23.119108>,  <40.563015, 31.799870, 23.035563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199295, 31.655895, 23.119108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020691, 0.462175, 0.886548,
		-0.415634, 0.810456, -0.412806,
		-0.909297, -0.359938, 0.208865,
		39.926506, 31.547915, 23.181768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096409, 32.380726, 23.409105>,  <40.563015, 31.799870, 23.035563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096409, 32.380726, 23.409105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.944656, 32.026726, 23.517069>,  <39.853607, 31.814325, 23.581846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.944656, 32.026726, 23.517069>,  <40.096409, 32.380726, 23.409105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944656, 32.026726, 23.517069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162625, 0.350954, 0.922163,
		-0.910838, 0.305954, -0.277067,
		-0.379377, -0.884999, 0.269907,
		39.830845, 31.761227, 23.598042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387508, 32.483002, 23.707153>,  <40.096409, 32.380726, 23.409105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387508, 32.483002, 23.707153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.530239, 32.133900, 23.840410>,  <39.615875, 31.924438, 23.920364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.530239, 32.133900, 23.840410>,  <39.387508, 32.483002, 23.707153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530239, 32.133900, 23.840410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311358, 0.225117, 0.923244,
		-0.880758, -0.433160, -0.191412,
		0.356822, -0.872751, 0.333141,
		39.637287, 31.872074, 23.940353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908154, 32.248627, 24.218365>,  <39.387508, 32.483002, 23.707153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908154, 32.248627, 24.218365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.242516, 32.040882, 24.289385>,  <39.443134, 31.916235, 24.331997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.242516, 32.040882, 24.289385>,  <38.908154, 32.248627, 24.218365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242516, 32.040882, 24.289385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186318, 0.035774, 0.981838,
		-0.516280, -0.853806, -0.066862,
		0.835907, -0.519361, 0.177549,
		39.493286, 31.885075, 24.342649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758030, 31.849756, 24.801800>,  <38.908154, 32.248627, 24.218365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758030, 31.849756, 24.801800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.157799, 31.842876, 24.813522>,  <39.397659, 31.838749, 24.820557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.157799, 31.842876, 24.813522>,  <38.758030, 31.849756, 24.801800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157799, 31.842876, 24.813522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028132, 0.064988, 0.997489,
		-0.019064, -0.997738, 0.064466,
		0.999423, -0.017203, 0.029308,
		39.457626, 31.837717, 24.822315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934731, 31.350685, 25.394493>,  <38.758030, 31.849756, 24.801800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934731, 31.350685, 25.394493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.246391, 31.593271, 25.331102>,  <39.433388, 31.738823, 25.293068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.246391, 31.593271, 25.331102>,  <38.934731, 31.350685, 25.394493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246391, 31.593271, 25.331102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047425, 0.195064, 0.979643,
		0.625034, -0.770810, 0.123224,
		0.779156, 0.606466, -0.158477,
		39.480137, 31.775211, 25.283560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307556, 31.202868, 25.927364>,  <38.934731, 31.350685, 25.394493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307556, 31.202868, 25.927364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.448269, 31.561293, 25.819052>,  <39.532696, 31.776348, 25.754065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.448269, 31.561293, 25.819052>,  <39.307556, 31.202868, 25.927364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448269, 31.561293, 25.819052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226770, 0.199077, 0.953385,
		0.908198, -0.396790, -0.133168,
		0.351784, 0.896061, -0.270782,
		39.553802, 31.830111, 25.737818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172207, 31.335230, 26.152008>,  <39.307556, 31.202868, 25.927364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172207, 31.335230, 26.152008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.987785, 31.687431, 26.107924>,  <39.877132, 31.898752, 26.081472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.987785, 31.687431, 26.107924>,  <40.172207, 31.335230, 26.152008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987785, 31.687431, 26.107924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304572, 0.273676, 0.912325,
		0.833467, 0.387062, -0.394355,
		-0.461052, 0.880502, -0.110211,
		39.849468, 31.951582, 26.074860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.372974, 34.154343, 20.778479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.978775, 34.218937, 20.757662>,  <39.742256, 34.257694, 20.745171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.978775, 34.218937, 20.757662>,  <40.372974, 34.154343, 20.778479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978775, 34.218937, 20.757662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054475, -0.591674, -0.804335,
		-0.160679, -0.789839, 0.591893,
		-0.985502, 0.161483, -0.052043,
		39.683125, 34.267384, 20.742048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217285, 33.558224, 20.478474>,  <40.372974, 34.154343, 20.778479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217285, 33.558224, 20.478474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.914200, 33.815983, 20.437252>,  <39.732349, 33.970638, 20.412519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.914200, 33.815983, 20.437252>,  <40.217285, 33.558224, 20.478474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914200, 33.815983, 20.437252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238143, -0.420064, -0.875691,
		-0.607586, -0.638979, 0.471747,
		-0.757712, 0.644400, -0.103057,
		39.686886, 34.009304, 20.406336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705612, 33.143200, 20.177977>,  <40.217285, 33.558224, 20.478474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705612, 33.143200, 20.177977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.565052, 33.513916, 20.124949>,  <39.480717, 33.736347, 20.093132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.565052, 33.513916, 20.124949>,  <39.705612, 33.143200, 20.177977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565052, 33.513916, 20.124949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368081, -0.266960, -0.890645,
		-0.860835, -0.264172, 0.434943,
		-0.351396, 0.926793, -0.132572,
		39.459633, 33.791954, 20.085176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171055, 33.033249, 19.829685>,  <39.705612, 33.143200, 20.177977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171055, 33.033249, 19.829685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.208164, 33.424122, 19.753258>,  <39.230431, 33.658646, 19.707401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.208164, 33.424122, 19.753258>,  <39.171055, 33.033249, 19.829685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208164, 33.424122, 19.753258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230068, -0.165665, -0.958970,
		-0.968743, 0.132922, 0.209450,
		0.092770, 0.977183, -0.191068,
		39.235996, 33.717278, 19.695938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817364, 33.106529, 19.215221>,  <39.171055, 33.033249, 19.829685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817364, 33.106529, 19.215221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.996658, 33.463718, 19.198843>,  <39.104237, 33.678032, 19.189016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.996658, 33.463718, 19.198843>,  <38.817364, 33.106529, 19.215221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996658, 33.463718, 19.198843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254175, 0.083402, -0.963556,
		-0.857016, 0.442313, 0.264355,
		0.448241, 0.892975, -0.040948,
		39.131130, 33.731609, 19.186558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347294, 33.400387, 18.870249>,  <38.817364, 33.106529, 19.215221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347294, 33.400387, 18.870249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.671547, 33.633354, 18.846041>,  <38.866100, 33.773136, 18.831516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.671547, 33.633354, 18.846041>,  <38.347294, 33.400387, 18.870249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671547, 33.633354, 18.846041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210442, 0.193322, -0.958301,
		-0.546433, 0.789566, 0.279278,
		0.810633, 0.582419, -0.060521,
		38.914738, 33.808079, 18.827885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284725, 34.089966, 18.577999>,  <38.347294, 33.400387, 18.870249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284725, 34.089966, 18.577999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.660053, 33.991978, 18.480391>,  <38.885250, 33.933186, 18.421825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.660053, 33.991978, 18.480391>,  <38.284725, 34.089966, 18.577999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660053, 33.991978, 18.480391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228963, 0.088626, -0.969392,
		0.259099, 0.965471, 0.027070,
		0.938320, -0.244970, -0.244020,
		38.941547, 33.918488, 18.407185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399059, 34.455051, 18.019211>,  <38.284725, 34.089966, 18.577999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399059, 34.455051, 18.019211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.685669, 34.176331, 18.006205>,  <38.857635, 34.009098, 17.998400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.685669, 34.176331, 18.006205>,  <38.399059, 34.455051, 18.019211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685669, 34.176331, 18.006205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086289, 0.134797, -0.987109,
		0.692202, 0.704484, 0.156712,
		0.716527, -0.696801, -0.032518,
		38.900627, 33.967289, 17.996449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891087, 34.694378, 17.533762>,  <38.399059, 34.455051, 18.019211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891087, 34.694378, 17.533762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.943127, 34.299446, 17.570099>,  <38.974350, 34.062489, 17.591902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.943127, 34.299446, 17.570099>,  <38.891087, 34.694378, 17.533762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943127, 34.299446, 17.570099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085665, -0.080086, -0.993100,
		0.987793, 0.136986, 0.074160,
		0.130102, -0.987330, 0.090844,
		38.982159, 34.003246, 17.597351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247887, 34.504841, 16.937544>,  <38.891087, 34.694378, 17.533762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247887, 34.504841, 16.937544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.094746, 34.169010, 17.091705>,  <39.002861, 33.967510, 17.184202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.094746, 34.169010, 17.091705>,  <39.247887, 34.504841, 16.937544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094746, 34.169010, 17.091705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008331, -0.414033, -0.910224,
		0.923774, -0.351688, 0.151517,
		-0.382848, -0.839578, 0.385403,
		38.979893, 33.917137, 17.207327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697903, 33.934509, 16.617617>,  <39.247887, 34.504841, 16.937544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697903, 33.934509, 16.617617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.354168, 33.772026, 16.741903>,  <39.147926, 33.674538, 16.816475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.354168, 33.772026, 16.741903>,  <39.697903, 33.934509, 16.617617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354168, 33.772026, 16.741903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070173, -0.508157, -0.858401,
		0.506580, -0.759455, 0.408172,
		-0.859332, -0.406206, 0.310715,
		39.096367, 33.650166, 16.835117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808811, 33.288795, 16.391911>,  <39.697903, 33.934509, 16.617617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808811, 33.288795, 16.391911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.415325, 33.330200, 16.450672>,  <39.179234, 33.355045, 16.485929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.415325, 33.330200, 16.450672>,  <39.808811, 33.288795, 16.391911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415325, 33.330200, 16.450672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176744, -0.409348, -0.895096,
		-0.032520, -0.906487, 0.420979,
		-0.983719, 0.103513, 0.146904,
		39.120209, 33.361256, 16.494743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298649, 33.237076, 15.716549>,  <39.808811, 33.288795, 16.391911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298649, 33.237076, 15.716549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.009846, 33.152744, 15.980140>,  <38.836563, 33.102146, 16.138294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.009846, 33.152744, 15.980140>,  <39.298649, 33.237076, 15.716549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009846, 33.152744, 15.980140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568800, -0.361387, -0.738828,
		0.393912, -0.908268, 0.141006,
		-0.722011, -0.210829, 0.658977,
		38.793243, 33.089497, 16.177834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029709, 32.484169, 15.791706>,  <39.298649, 33.237076, 15.716549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029709, 32.484169, 15.791706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.744667, 32.755741, 15.862409>,  <38.573643, 32.918686, 15.904830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.744667, 32.755741, 15.862409>,  <39.029709, 32.484169, 15.791706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744667, 32.755741, 15.862409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427199, -0.220074, -0.876965,
		-0.556500, -0.700441, 0.446866,
		-0.712606, 0.678932, 0.176757,
		38.530884, 32.959419, 15.915436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977188, 31.758482, 15.478094>,  <39.029709, 32.484169, 15.791706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977188, 31.758482, 15.478094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.734615, 31.449669, 15.401991>,  <38.589069, 31.264381, 15.356329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.734615, 31.449669, 15.401991>,  <38.977188, 31.758482, 15.478094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734615, 31.449669, 15.401991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001424, -0.238224, 0.971209,
		-0.795130, 0.589248, 0.143369,
		-0.606437, -0.772034, -0.190258,
		38.552685, 31.218060, 15.344913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441788, 31.829620, 15.893606>,  <38.977188, 31.758482, 15.478094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441788, 31.829620, 15.893606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.460125, 31.439949, 15.805179>,  <38.471127, 31.206146, 15.752122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.460125, 31.439949, 15.805179>,  <38.441788, 31.829620, 15.893606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460125, 31.439949, 15.805179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029599, -0.219879, 0.975078,
		-0.998510, -0.051247, 0.018754,
		0.045846, -0.974180, -0.221068,
		38.473877, 31.147696, 15.738858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977772, 31.513039, 16.391056>,  <38.441788, 31.829620, 15.893606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977772, 31.513039, 16.391056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.175407, 31.194775, 16.250885>,  <38.293987, 31.003817, 16.166782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.175407, 31.194775, 16.250885>,  <37.977772, 31.513039, 16.391056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175407, 31.194775, 16.250885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013915, -0.395776, 0.918241,
		-0.869300, -0.458569, -0.184477,
		0.494088, -0.795660, -0.350429,
		38.323635, 30.956076, 16.145756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609592, 30.971745, 16.745977>,  <37.977772, 31.513039, 16.391056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609592, 30.971745, 16.745977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.977283, 30.862499, 16.632534>,  <38.197899, 30.796953, 16.564468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.977283, 30.862499, 16.632534>,  <37.609592, 30.971745, 16.745977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977283, 30.862499, 16.632534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203411, -0.287323, 0.935986,
		-0.337118, -0.918071, -0.208560,
		0.919225, -0.273114, -0.283608,
		38.253052, 30.780565, 16.547451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696598, 30.315037, 16.973429>,  <37.609592, 30.971745, 16.745977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696598, 30.315037, 16.973429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.078587, 30.428194, 16.937637>,  <38.307777, 30.496088, 16.916162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.078587, 30.428194, 16.937637>,  <37.696598, 30.315037, 16.973429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078587, 30.428194, 16.937637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218342, -0.465826, 0.857515,
		0.200902, -0.838438, -0.506617,
		0.954969, 0.282892, -0.089480,
		38.365078, 30.513062, 16.910793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060699, 29.742458, 17.203926>,  <37.696598, 30.315037, 16.973429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060699, 29.742458, 17.203926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.319416, 30.046295, 17.231277>,  <38.474648, 30.228598, 17.247688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.319416, 30.046295, 17.231277>,  <38.060699, 29.742458, 17.203926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319416, 30.046295, 17.231277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300210, -0.335995, 0.892738,
		0.701092, -0.556891, -0.445357,
		0.646795, 0.759592, 0.068379,
		38.513454, 30.274174, 17.251791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728733, 29.482830, 17.513895>,  <38.060699, 29.742458, 17.203926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728733, 29.482830, 17.513895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.690521, 29.868685, 17.612164>,  <38.667595, 30.100197, 17.671124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.690521, 29.868685, 17.612164>,  <38.728733, 29.482830, 17.513895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690521, 29.868685, 17.612164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248690, -0.215844, 0.944227,
		0.963861, 0.151296, -0.219276,
		-0.095529, 0.964635, 0.245669,
		38.661861, 30.158075, 17.685863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048763, 29.482784, 18.057457>,  <38.728733, 29.482830, 17.513895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048763, 29.482784, 18.057457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.939762, 29.865770, 18.095404>,  <38.874363, 30.095562, 18.118172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.939762, 29.865770, 18.095404>,  <39.048763, 29.482784, 18.057457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939762, 29.865770, 18.095404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157367, -0.052917, 0.986121,
		0.949199, 0.283649, -0.136254,
		-0.272502, 0.957467, 0.094866,
		38.858013, 30.153011, 18.123863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598652, 29.832304, 18.406891>,  <39.048763, 29.482784, 18.057457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598652, 29.832304, 18.406891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.255505, 30.027395, 18.471626>,  <39.049618, 30.144449, 18.510468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.255505, 30.027395, 18.471626>,  <39.598652, 29.832304, 18.406891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255505, 30.027395, 18.471626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238009, 0.097996, 0.966307,
		0.455434, 0.867479, -0.200151,
		-0.857865, 0.487726, 0.161837,
		38.998146, 30.173714, 18.520178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748123, 30.445185, 18.903307>,  <39.598652, 29.832304, 18.406891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748123, 30.445185, 18.903307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.348591, 30.449043, 18.922281>,  <39.108871, 30.451359, 18.933666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.348591, 30.449043, 18.922281>,  <39.748123, 30.445185, 18.903307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348591, 30.449043, 18.922281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047779, 0.353622, 0.934168,
		-0.007763, 0.935339, -0.353668,
		-0.998828, 0.009646, 0.047435,
		39.048943, 30.451937, 18.936512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551422, 31.142401, 19.067015>,  <39.748123, 30.445185, 18.903307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551422, 31.142401, 19.067015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.255634, 30.905096, 19.194281>,  <39.078163, 30.762712, 19.270641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.255634, 30.905096, 19.194281>,  <39.551422, 31.142401, 19.067015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255634, 30.905096, 19.194281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170059, 0.292673, 0.940969,
		-0.651360, 0.749922, -0.115533,
		-0.739466, -0.593261, 0.318167,
		39.033794, 30.727118, 19.289730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058697, 31.528318, 19.435129>,  <39.551422, 31.142401, 19.067015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058697, 31.528318, 19.435129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.004601, 31.152946, 19.562286>,  <38.972141, 30.927723, 19.638580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.004601, 31.152946, 19.562286>,  <39.058697, 31.528318, 19.435129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004601, 31.152946, 19.562286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026353, 0.317323, 0.947952,
		-0.990462, 0.136583, -0.018186,
		-0.135244, -0.938431, 0.317895,
		38.964027, 30.871418, 19.657656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500633, 31.557364, 19.890625>,  <39.058697, 31.528318, 19.435129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500633, 31.557364, 19.890625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.712162, 31.230352, 19.981840>,  <38.839077, 31.034145, 20.036570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.712162, 31.230352, 19.981840>,  <38.500633, 31.557364, 19.890625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712162, 31.230352, 19.981840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062573, 0.305500, 0.950134,
		-0.846425, -0.488179, 0.212709,
		0.528818, -0.817527, 0.228036,
		38.870808, 30.985094, 20.050251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159790, 31.424210, 20.553186>,  <38.500633, 31.557364, 19.890625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159790, 31.424210, 20.553186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.491043, 31.200022, 20.556698>,  <38.689793, 31.065510, 20.558805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.491043, 31.200022, 20.556698>,  <38.159790, 31.424210, 20.553186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491043, 31.200022, 20.556698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200656, 0.311032, 0.928976,
		-0.523395, -0.767549, 0.370036,
		0.828128, -0.560471, 0.008779,
		38.739483, 31.031881, 20.559332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413094, 31.292675, 20.695826>,  <38.159790, 31.424210, 20.553186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413094, 31.292675, 20.695826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.047977, 31.343494, 20.851088>,  <36.828907, 31.373985, 20.944244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.047977, 31.343494, 20.851088>,  <37.413094, 31.292675, 20.695826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047977, 31.343494, 20.851088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348062, 0.255241, -0.902056,
		-0.213679, -0.958494, -0.188762,
		-0.912794, 0.127050, 0.388155,
		36.774139, 31.381609, 20.967533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951523, 30.810875, 20.377512>,  <37.413094, 31.292675, 20.695826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951523, 30.810875, 20.377512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.725182, 31.110092, 20.516218>,  <36.589378, 31.289623, 20.599442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.725182, 31.110092, 20.516218>,  <36.951523, 30.810875, 20.377512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725182, 31.110092, 20.516218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387837, 0.129653, -0.912564,
		-0.727596, -0.650862, 0.216754,
		-0.565851, 0.748043, 0.346763,
		36.555428, 31.334505, 20.620247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285198, 30.649837, 20.141233>,  <36.951523, 30.810875, 20.377512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285198, 30.649837, 20.141233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.289669, 31.043131, 20.214035>,  <36.292351, 31.279108, 20.257715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.289669, 31.043131, 20.214035>,  <36.285198, 30.649837, 20.141233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289669, 31.043131, 20.214035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380453, 0.172507, -0.908569,
		-0.924733, -0.059091, 0.376002,
		0.011175, 0.983234, 0.182004,
		36.293022, 31.338100, 20.268637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725208, 30.927645, 19.609949>,  <36.285198, 30.649837, 20.141233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725208, 30.927645, 19.609949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913811, 31.245932, 19.762011>,  <36.026974, 31.436903, 19.853247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913811, 31.245932, 19.762011>,  <35.725208, 30.927645, 19.609949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913811, 31.245932, 19.762011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373743, 0.570760, -0.731129,
		-0.798748, 0.202652, 0.566510,
		0.471506, 0.795717, 0.380154,
		36.055264, 31.484646, 19.876057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154774, 31.410297, 19.719660>,  <35.725208, 30.927645, 19.609949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154774, 31.410297, 19.719660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.516964, 31.575443, 19.680338>,  <35.734276, 31.674530, 19.656744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.516964, 31.575443, 19.680338>,  <35.154774, 31.410297, 19.719660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516964, 31.575443, 19.680338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334522, 0.551748, -0.763982,
		-0.261180, 0.724650, 0.637704,
		0.905472, 0.412863, -0.098306,
		35.788605, 31.699303, 19.650846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066719, 32.010452, 19.451960>,  <35.154774, 31.410297, 19.719660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066719, 32.010452, 19.451960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.448460, 31.947353, 19.350510>,  <35.677505, 31.909492, 19.289640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.448460, 31.947353, 19.350510>,  <35.066719, 32.010452, 19.451960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448460, 31.947353, 19.350510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168552, 0.416571, -0.893341,
		0.246578, 0.895311, 0.370966,
		0.954353, -0.157752, -0.253624,
		35.734764, 31.900028, 19.274422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208618, 32.585571, 18.918503>,  <35.066719, 32.010452, 19.451960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208618, 32.585571, 18.918503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.495525, 32.311077, 18.870176>,  <35.667671, 32.146381, 18.841181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.495525, 32.311077, 18.870176>,  <35.208618, 32.585571, 18.918503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495525, 32.311077, 18.870176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069793, 0.101760, -0.992358,
		0.693290, 0.720222, 0.025095,
		0.717271, -0.686240, -0.120815,
		35.710709, 32.105206, 18.833931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221649, 33.333862, 18.845322>,  <35.208618, 32.585571, 18.918503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221649, 33.333862, 18.845322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.851700, 33.485851, 18.851379>,  <34.629730, 33.577045, 18.855015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.851700, 33.485851, 18.851379>,  <35.221649, 33.333862, 18.845322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851700, 33.485851, 18.851379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049150, 0.079952, 0.995586,
		0.377083, 0.921537, -0.092621,
		-0.924875, 0.379971, 0.015145,
		34.574238, 33.599842, 18.855923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275009, 34.029419, 19.064081>,  <35.221649, 33.333862, 18.845322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275009, 34.029419, 19.064081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.919254, 33.867504, 19.149063>,  <34.705803, 33.770355, 19.200052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.919254, 33.867504, 19.149063>,  <35.275009, 34.029419, 19.064081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919254, 33.867504, 19.149063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133532, 0.214437, 0.967567,
		-0.437221, 0.888910, -0.136664,
		-0.889386, -0.404792, 0.212454,
		34.652439, 33.746067, 19.212799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907040, 34.446701, 19.526602>,  <35.275009, 34.029419, 19.064081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907040, 34.446701, 19.526602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.726528, 34.094151, 19.582483>,  <34.618221, 33.882618, 19.616013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.726528, 34.094151, 19.582483>,  <34.907040, 34.446701, 19.526602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726528, 34.094151, 19.582483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013100, 0.149989, 0.988601,
		-0.892286, 0.447967, -0.056141,
		-0.451281, -0.881379, 0.139702,
		34.591145, 33.829739, 19.624393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454597, 34.557156, 19.989361>,  <34.907040, 34.446701, 19.526602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454597, 34.557156, 19.989361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.489330, 34.164047, 20.054625>,  <34.510170, 33.928181, 20.093782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.489330, 34.164047, 20.054625>,  <34.454597, 34.557156, 19.989361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489330, 34.164047, 20.054625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150857, 0.174861, 0.972967,
		-0.984735, -0.059871, 0.163442,
		0.086832, -0.982771, 0.163159,
		34.515381, 33.869217, 20.103573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161041, 34.469288, 20.670050>,  <34.454597, 34.557156, 19.989361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161041, 34.469288, 20.670050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.321415, 34.107864, 20.609608>,  <34.417641, 33.891010, 20.573341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.321415, 34.107864, 20.609608>,  <34.161041, 34.469288, 20.670050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321415, 34.107864, 20.609608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092013, -0.124391, 0.987958,
		-0.911474, -0.410011, 0.033266,
		0.400936, -0.903558, -0.151106,
		34.441696, 33.836796, 20.564276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827190, 34.054432, 21.193823>,  <34.161041, 34.469288, 20.670050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827190, 34.054432, 21.193823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.168163, 33.872459, 21.090750>,  <34.372746, 33.763275, 21.028906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.168163, 33.872459, 21.090750>,  <33.827190, 34.054432, 21.193823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168163, 33.872459, 21.090750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221228, -0.132717, 0.966149,
		-0.473730, -0.880582, -0.012489,
		0.852431, -0.454931, -0.257681,
		34.423893, 33.735981, 21.013445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830650, 33.457798, 21.546032>,  <33.827190, 34.054432, 21.193823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830650, 33.457798, 21.546032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.208744, 33.559723, 21.464436>,  <34.435600, 33.620876, 21.415478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.208744, 33.559723, 21.464436>,  <33.830650, 33.457798, 21.546032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208744, 33.559723, 21.464436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245378, -0.142597, 0.958883,
		0.215245, -0.956419, -0.197311,
		0.945230, 0.254811, -0.203992,
		34.492313, 33.636166, 21.403238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.676132, 34.837219, 16.188688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.037815, 34.694965, 16.283289>,  <36.254826, 34.609612, 16.340050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.037815, 34.694965, 16.283289>,  <35.676132, 34.837219, 16.188688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037815, 34.694965, 16.283289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103254, 0.355294, 0.929034,
		-0.414430, -0.864457, 0.284537,
		0.904205, -0.355640, 0.236503,
		36.309078, 34.588272, 16.354240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597286, 34.634853, 16.821354>,  <35.676132, 34.837219, 16.188688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597286, 34.634853, 16.821354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.990475, 34.700134, 16.787554>,  <36.226387, 34.739304, 16.767275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.990475, 34.700134, 16.787554>,  <35.597286, 34.634853, 16.821354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990475, 34.700134, 16.787554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004444, 0.480757, 0.876843,
		0.183724, -0.861532, 0.473294,
		0.982968, 0.163200, -0.084498,
		36.285366, 34.749096, 16.762205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987255, 34.503189, 17.521399>,  <35.597286, 34.634853, 16.821354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987255, 34.503189, 17.521399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.229080, 34.742157, 17.310650>,  <36.374176, 34.885536, 17.184200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.229080, 34.742157, 17.310650>,  <35.987255, 34.503189, 17.521399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229080, 34.742157, 17.310650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262060, 0.475447, 0.839807,
		0.752215, -0.645789, 0.130878,
		0.604564, 0.597417, -0.526874,
		36.410450, 34.921383, 17.152588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585041, 34.427551, 17.850435>,  <35.987255, 34.503189, 17.521399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585041, 34.427551, 17.850435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.604618, 34.780186, 17.662647>,  <36.616364, 34.991768, 17.549974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.604618, 34.780186, 17.662647>,  <36.585041, 34.427551, 17.850435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604618, 34.780186, 17.662647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346131, 0.425936, 0.835926,
		0.936908, -0.203413, -0.284299,
		0.048945, 0.881590, -0.469471,
		36.619301, 35.044662, 17.521807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089619, 34.759022, 18.156406>,  <36.585041, 34.427551, 17.850435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089619, 34.759022, 18.156406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.928970, 35.069988, 17.962778>,  <36.832581, 35.256569, 17.846601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.928970, 35.069988, 17.962778>,  <37.089619, 34.759022, 18.156406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928970, 35.069988, 17.962778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173955, 0.583710, 0.793110,
		0.899131, 0.234326, -0.369668,
		-0.401625, 0.777415, -0.484070,
		36.808483, 35.303211, 17.817556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534828, 35.423283, 18.257513>,  <37.089619, 34.759022, 18.156406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534828, 35.423283, 18.257513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.164330, 35.536053, 18.157444>,  <36.942032, 35.603714, 18.097403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.164330, 35.536053, 18.157444>,  <37.534828, 35.423283, 18.257513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164330, 35.536053, 18.157444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013957, 0.637617, 0.770227,
		0.376661, 0.716911, -0.586656,
		-0.926246, 0.281927, -0.250171,
		36.886456, 35.620632, 18.082392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597820, 36.191532, 18.392508>,  <37.534828, 35.423283, 18.257513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597820, 36.191532, 18.392508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.202751, 36.129929, 18.403667>,  <36.965710, 36.092964, 18.410364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.202751, 36.129929, 18.403667>,  <37.597820, 36.191532, 18.392508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202751, 36.129929, 18.403667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050570, 0.482704, 0.874322,
		-0.148124, 0.862135, -0.484543,
		-0.987675, -0.154011, 0.027902,
		36.906448, 36.083725, 18.412039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305111, 36.856670, 18.680355>,  <37.597820, 36.191532, 18.392508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305111, 36.856670, 18.680355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.027859, 36.572479, 18.729008>,  <36.861507, 36.401966, 18.758200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.027859, 36.572479, 18.729008>,  <37.305111, 36.856670, 18.680355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027859, 36.572479, 18.729008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222269, 0.371189, 0.901563,
		-0.685686, 0.597866, -0.415199,
		-0.693131, -0.710475, 0.121632,
		36.819920, 36.359337, 18.765497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763920, 37.226410, 18.821592>,  <37.305111, 36.856670, 18.680355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763920, 37.226410, 18.821592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.668621, 36.856480, 18.940205>,  <36.611443, 36.634521, 19.011372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.668621, 36.856480, 18.940205>,  <36.763920, 37.226410, 18.821592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668621, 36.856480, 18.940205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275090, 0.357078, 0.892649,
		-0.931432, 0.131095, -0.339482,
		-0.238243, -0.924830, 0.296531,
		36.597149, 36.579029, 19.029163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137032, 37.344032, 19.122749>,  <36.763920, 37.226410, 18.821592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137032, 37.344032, 19.122749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.286228, 36.999985, 19.261927>,  <36.375748, 36.793556, 19.345432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.286228, 36.999985, 19.261927>,  <36.137032, 37.344032, 19.122749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286228, 36.999985, 19.261927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072408, 0.346879, 0.935111,
		-0.925003, -0.373986, 0.067105,
		0.372996, -0.860122, 0.347944,
		36.398129, 36.741947, 19.366310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647770, 37.161804, 19.653557>,  <36.137032, 37.344032, 19.122749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647770, 37.161804, 19.653557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.977448, 36.960499, 19.757420>,  <36.175255, 36.839714, 19.819736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.977448, 36.960499, 19.757420>,  <35.647770, 37.161804, 19.653557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977448, 36.960499, 19.757420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131024, 0.276606, 0.952009,
		-0.550937, -0.818665, 0.162038,
		0.824198, -0.503266, 0.259657,
		36.224709, 36.809521, 19.835318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426239, 36.829910, 20.318935>,  <35.647770, 37.161804, 19.653557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426239, 36.829910, 20.318935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.824863, 36.801674, 20.301600>,  <36.064037, 36.784733, 20.291199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.824863, 36.801674, 20.301600>,  <35.426239, 36.829910, 20.318935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824863, 36.801674, 20.301600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073372, 0.509481, 0.857348,
		-0.038438, -0.857582, 0.512909,
		0.996563, -0.070588, -0.043339,
		36.123833, 36.780499, 20.288597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856541, 36.349159, 20.301125>,  <35.426239, 36.829910, 20.318935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856541, 36.349159, 20.301125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.526093, 36.574520, 20.304977>,  <34.327824, 36.709736, 20.307289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.526093, 36.574520, 20.304977>,  <34.856541, 36.349159, 20.301125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526093, 36.574520, 20.304977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175213, -0.240592, -0.954681,
		-0.535556, -0.790372, 0.297475,
		-0.826123, 0.563407, 0.009633,
		34.278255, 36.743542, 20.307867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355923, 36.005867, 19.776379>,  <34.856541, 36.349159, 20.301125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355923, 36.005867, 19.776379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.214489, 36.376610, 19.826836>,  <34.129627, 36.599056, 19.857109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.214489, 36.376610, 19.826836>,  <34.355923, 36.005867, 19.776379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214489, 36.376610, 19.826836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132380, 0.083914, -0.987641,
		-0.925988, -0.365913, 0.093027,
		-0.353584, 0.926858, 0.126143,
		34.108414, 36.654667, 19.864679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631924, 36.053425, 19.510937>,  <34.355923, 36.005867, 19.776379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631924, 36.053425, 19.510937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.835686, 36.397202, 19.493607>,  <33.957943, 36.603466, 19.483208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.835686, 36.397202, 19.493607>,  <33.631924, 36.053425, 19.510937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835686, 36.397202, 19.493607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178028, 0.055992, -0.982431,
		-0.841912, 0.508166, 0.181526,
		0.509402, 0.859437, -0.043328,
		33.988506, 36.655033, 19.480608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279564, 36.364624, 19.042166>,  <33.631924, 36.053425, 19.510937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279564, 36.364624, 19.042166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.601685, 36.601688, 19.048403>,  <33.794956, 36.743927, 19.052145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.601685, 36.601688, 19.048403>,  <33.279564, 36.364624, 19.042166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601685, 36.601688, 19.048403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064266, 0.113406, -0.991468,
		-0.589376, 0.797426, 0.129414,
		0.805299, 0.592664, 0.015592,
		33.843273, 36.779488, 19.053080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157413, 36.921345, 18.588289>,  <33.279564, 36.364624, 19.042166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157413, 36.921345, 18.588289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.556572, 36.930344, 18.612593>,  <33.796066, 36.935741, 18.627174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.556572, 36.930344, 18.612593>,  <33.157413, 36.921345, 18.588289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556572, 36.930344, 18.612593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055645, 0.182741, -0.981585,
		-0.033183, 0.982904, 0.181105,
		0.997899, 0.022494, 0.060758,
		33.855942, 36.937092, 18.630819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347603, 37.431007, 18.098269>,  <33.157413, 36.921345, 18.588289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347603, 37.431007, 18.098269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.665833, 37.198006, 18.164909>,  <33.856770, 37.058205, 18.204893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.665833, 37.198006, 18.164909>,  <33.347603, 37.431007, 18.098269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665833, 37.198006, 18.164909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309349, 0.154118, -0.938377,
		0.520928, 0.798086, 0.302808,
		0.795573, -0.582500, 0.166603,
		33.904503, 37.023254, 18.214890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846550, 37.854351, 17.855133>,  <33.347603, 37.431007, 18.098269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846550, 37.854351, 17.855133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.016304, 37.492477, 17.870333>,  <34.118156, 37.275352, 17.879454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.016304, 37.492477, 17.870333>,  <33.846550, 37.854351, 17.855133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016304, 37.492477, 17.870333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483270, 0.190809, -0.854425,
		0.765734, 0.380969, 0.518183,
		0.424384, -0.904685, 0.038001,
		34.143620, 37.221073, 17.881733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673439, 37.859501, 17.861713>,  <33.846550, 37.854351, 17.855133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673439, 37.859501, 17.861713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.565266, 37.499249, 17.725634>,  <34.500362, 37.283096, 17.643986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.565266, 37.499249, 17.725634>,  <34.673439, 37.859501, 17.861713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565266, 37.499249, 17.725634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541017, 0.150127, -0.827504,
		0.796346, -0.407837, 0.446656,
		-0.270432, -0.900628, -0.340200,
		34.484135, 37.229061, 17.623573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263283, 37.553345, 17.527945>,  <34.673439, 37.859501, 17.861713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263283, 37.553345, 17.527945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.950401, 37.351135, 17.382286>,  <34.762672, 37.229809, 17.294891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.950401, 37.351135, 17.382286>,  <35.263283, 37.553345, 17.527945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950401, 37.351135, 17.382286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408028, 0.026028, -0.912598,
		0.470815, -0.862422, 0.185908,
		-0.782206, -0.505521, -0.364146,
		34.715740, 37.199478, 17.273043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468311, 36.966930, 17.143114>,  <35.263283, 37.553345, 17.527945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468311, 36.966930, 17.143114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.094486, 37.007282, 17.006634>,  <34.870190, 37.031494, 16.924746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.094486, 37.007282, 17.006634>,  <35.468311, 36.966930, 17.143114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094486, 37.007282, 17.006634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328728, -0.122109, -0.936498,
		-0.136150, -0.987375, 0.080951,
		-0.934559, 0.100893, -0.341202,
		34.814117, 37.037544, 16.904274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352531, 36.302551, 16.681597>,  <35.468311, 36.966930, 17.143114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352531, 36.302551, 16.681597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.094437, 36.585789, 16.566870>,  <34.939579, 36.755733, 16.498034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.094437, 36.585789, 16.566870>,  <35.352531, 36.302551, 16.681597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094437, 36.585789, 16.566870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263728, -0.145904, -0.953499,
		-0.717016, -0.690878, -0.092602,
		-0.645241, 0.708095, -0.286819,
		34.900864, 36.798218, 16.480824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198433, 36.104408, 16.037392>,  <35.352531, 36.302551, 16.681597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198433, 36.104408, 16.037392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.003887, 36.453266, 16.016134>,  <34.887161, 36.662579, 16.003380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.003887, 36.453266, 16.016134>,  <35.198433, 36.104408, 16.037392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003887, 36.453266, 16.016134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031014, -0.078017, -0.996469,
		-0.873207, -0.482996, 0.064993,
		-0.486361, 0.872140, -0.053146,
		34.857979, 36.714909, 16.000191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568115, 36.002197, 15.722040>,  <35.198433, 36.104408, 16.037392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568115, 36.002197, 15.722040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.666512, 36.384850, 15.659630>,  <34.725548, 36.614441, 15.622184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.666512, 36.384850, 15.659630>,  <34.568115, 36.002197, 15.722040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666512, 36.384850, 15.659630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055577, -0.146787, -0.987606,
		-0.967678, 0.251613, 0.017059,
		0.245991, 0.956632, -0.156026,
		34.740307, 36.671841, 15.612822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806740, 35.284222, 16.046518>,  <34.568115, 36.002197, 15.722040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806740, 35.284222, 16.046518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.648228, 34.920998, 15.992284>,  <34.553120, 34.703064, 15.959743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.648228, 34.920998, 15.992284>,  <34.806740, 35.284222, 16.046518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648228, 34.920998, 15.992284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178550, -0.068639, 0.981534,
		-0.900600, 0.413173, -0.134934,
		-0.396282, -0.908062, -0.135588,
		34.529343, 34.648579, 15.951608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187569, 35.330101, 16.503653>,  <34.806740, 35.284222, 16.046518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187569, 35.330101, 16.503653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.265457, 34.950199, 16.405636>,  <34.312191, 34.722260, 16.346825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.265457, 34.950199, 16.405636>,  <34.187569, 35.330101, 16.503653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265457, 34.950199, 16.405636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207503, -0.284059, 0.936084,
		-0.958659, -0.131429, -0.252389,
		0.194722, -0.949757, -0.245044,
		34.323875, 34.665272, 16.332123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593941, 34.883717, 16.596970>,  <34.187569, 35.330101, 16.503653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593941, 34.883717, 16.596970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.901443, 34.630756, 16.635071>,  <34.085945, 34.478981, 16.657930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.901443, 34.630756, 16.635071>,  <33.593941, 34.883717, 16.596970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901443, 34.630756, 16.635071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294275, -0.217556, 0.930630,
		-0.567813, -0.743460, -0.353349,
		0.768759, -0.632405, 0.095251,
		34.132072, 34.441036, 16.663647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371170, 34.291946, 16.989416>,  <33.593941, 34.883717, 16.596970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371170, 34.291946, 16.989416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.769543, 34.269241, 17.017385>,  <34.008568, 34.255619, 17.034166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.769543, 34.269241, 17.017385>,  <33.371170, 34.291946, 16.989416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769543, 34.269241, 17.017385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088211, -0.458145, 0.884490,
		-0.018171, -0.887063, -0.461291,
		0.995936, -0.056763, 0.069924,
		34.068325, 34.252213, 17.038363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414989, 33.769821, 17.411451>,  <33.371170, 34.291946, 16.989416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414989, 33.769821, 17.411451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.795551, 33.892544, 17.400803>,  <34.023888, 33.966175, 17.394413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.795551, 33.892544, 17.400803>,  <33.414989, 33.769821, 17.411451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795551, 33.892544, 17.400803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124227, -0.303244, 0.944781,
		0.281790, -0.902172, -0.326620,
		0.951400, 0.306805, -0.026623,
		34.080971, 33.984585, 17.392817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695610, 33.204182, 17.592964>,  <33.414989, 33.769821, 17.411451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695610, 33.204182, 17.592964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.947605, 33.505840, 17.667133>,  <34.098804, 33.686836, 17.711636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.947605, 33.505840, 17.667133>,  <33.695610, 33.204182, 17.592964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947605, 33.505840, 17.667133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270744, -0.437061, 0.857715,
		0.727880, -0.490151, -0.479523,
		0.629991, 0.754142, 0.185422,
		34.136604, 33.732082, 17.722759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398979, 32.913372, 17.712696>,  <33.695610, 33.204182, 17.592964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398979, 32.913372, 17.712696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.381519, 33.265636, 17.901388>,  <34.371044, 33.476997, 18.014603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.381519, 33.265636, 17.901388>,  <34.398979, 32.913372, 17.712696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381519, 33.265636, 17.901388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054608, -0.469370, 0.881312,
		0.997553, 0.064232, -0.027602,
		-0.043652, 0.880663, 0.471729,
		34.368423, 33.529835, 18.042908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955662, 33.030083, 18.164846>,  <34.398979, 32.913372, 17.712696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955662, 33.030083, 18.164846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.682903, 33.293880, 18.291389>,  <34.519249, 33.452160, 18.367315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.682903, 33.293880, 18.291389>,  <34.955662, 33.030083, 18.164846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682903, 33.293880, 18.291389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035727, -0.401966, 0.914957,
		0.730572, 0.635212, 0.250539,
		-0.681900, 0.659491, 0.316359,
		34.478333, 33.491730, 18.386297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743420, 32.784866, 18.121168>,  <34.955662, 33.030083, 18.164846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743420, 32.784866, 18.121168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.844017, 32.415634, 18.237560>,  <35.904373, 32.194096, 18.307396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.844017, 32.415634, 18.237560>,  <35.743420, 32.784866, 18.121168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844017, 32.415634, 18.237560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321641, -0.203849, -0.924658,
		0.912852, 0.326135, 0.245635,
		0.251491, -0.923083, 0.290982,
		35.919464, 32.138710, 18.324856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534931, 32.651726, 17.963917>,  <35.743420, 32.784866, 18.121168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534931, 32.651726, 17.963917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.311237, 32.321182, 17.990395>,  <36.177021, 32.122856, 18.006281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.311237, 32.321182, 17.990395>,  <36.534931, 32.651726, 17.963917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311237, 32.321182, 17.990395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368821, -0.319520, -0.872856,
		0.742445, -0.463719, 0.483467,
		-0.559237, -0.826361, 0.066197,
		36.143467, 32.073273, 18.010254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956470, 32.111103, 17.789799>,  <36.534931, 32.651726, 17.963917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956470, 32.111103, 17.789799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.583195, 31.985771, 17.719397>,  <36.359230, 31.910572, 17.677155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.583195, 31.985771, 17.719397>,  <36.956470, 32.111103, 17.789799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583195, 31.985771, 17.719397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279750, -0.325912, -0.903062,
		0.225594, -0.891968, 0.391792,
		-0.933192, -0.313329, -0.176004,
		36.303238, 31.891773, 17.666595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125896, 31.552708, 17.486084>,  <36.956470, 32.111103, 17.789799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125896, 31.552708, 17.486084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.752663, 31.657032, 17.387028>,  <36.528721, 31.719627, 17.327593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.752663, 31.657032, 17.387028>,  <37.125896, 31.552708, 17.486084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752663, 31.657032, 17.387028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127138, -0.404905, -0.905477,
		-0.336429, -0.876373, 0.344653,
		-0.933087, 0.260810, -0.247642,
		36.472736, 31.735275, 17.312735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888275, 30.961437, 17.157393>,  <37.125896, 31.552708, 17.486084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888275, 30.961437, 17.157393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.600750, 31.218874, 17.052242>,  <36.428234, 31.373335, 16.989153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.600750, 31.218874, 17.052242>,  <36.888275, 30.961437, 17.157393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600750, 31.218874, 17.052242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062499, -0.436417, -0.897571,
		-0.692392, -0.628754, 0.353924,
		-0.718810, 0.643591, -0.262875,
		36.385105, 31.411951, 16.973379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379642, 30.622507, 16.875116>,  <36.888275, 30.961437, 17.157393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379642, 30.622507, 16.875116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.266453, 30.975828, 16.725609>,  <36.198540, 31.187820, 16.635904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.266453, 30.975828, 16.725609>,  <36.379642, 30.622507, 16.875116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266453, 30.975828, 16.725609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250107, -0.444168, -0.860326,
		-0.925945, -0.149965, 0.346606,
		-0.282970, 0.883304, -0.373768,
		36.181561, 31.240820, 16.613478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754143, 30.464140, 16.587854>,  <36.379642, 30.622507, 16.875116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754143, 30.464140, 16.587854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.918530, 30.784204, 16.413113>,  <36.017162, 30.976244, 16.308268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.918530, 30.784204, 16.413113>,  <35.754143, 30.464140, 16.587854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918530, 30.784204, 16.413113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185402, -0.395822, -0.899417,
		-0.892598, 0.450627, -0.014319,
		0.410969, 0.800163, -0.436857,
		36.041821, 31.024254, 16.282055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392021, 30.641333, 15.926716>,  <35.754143, 30.464140, 16.587854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392021, 30.641333, 15.926716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.754108, 30.796381, 15.857046>,  <35.971359, 30.889410, 15.815245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.754108, 30.796381, 15.857046>,  <35.392021, 30.641333, 15.926716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754108, 30.796381, 15.857046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037310, -0.335787, -0.941199,
		-0.423315, 0.858485, -0.289497,
		0.905214, 0.387623, -0.174173,
		36.025673, 30.912668, 15.804794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310463, 31.060623, 15.369186>,  <35.392021, 30.641333, 15.926716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310463, 31.060623, 15.369186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.683563, 30.918505, 15.393638>,  <35.907425, 30.833233, 15.408309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.683563, 30.918505, 15.393638>,  <35.310463, 31.060623, 15.369186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683563, 30.918505, 15.393638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046559, -0.286853, -0.956842,
		0.357499, 0.889651, -0.284105,
		0.932752, -0.355298, 0.061129,
		35.963390, 30.811914, 15.411977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.267410, 32.567802, 31.318663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.651649, 32.676670, 31.296112>,  <36.882191, 32.741993, 31.282581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.651649, 32.676670, 31.296112>,  <36.267410, 32.567802, 31.318663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651649, 32.676670, 31.296112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091798, -0.502108, -0.859919,
		-0.262354, 0.820859, -0.507308,
		0.960595, 0.272173, -0.056377,
		36.939827, 32.758324, 31.279200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395325, 32.991852, 30.735203>,  <36.267410, 32.567802, 31.318663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395325, 32.991852, 30.735203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.747559, 32.814331, 30.801678>,  <36.958897, 32.707821, 30.841562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.747559, 32.814331, 30.801678>,  <36.395325, 32.991852, 30.735203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747559, 32.814331, 30.801678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008610, -0.335646, -0.941949,
		0.473815, 0.830894, -0.291742,
		0.880582, -0.443798, 0.166188,
		37.011734, 32.681190, 30.851534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814362, 33.097786, 30.129049>,  <36.395325, 32.991852, 30.735203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814362, 33.097786, 30.129049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.987965, 32.794643, 30.323898>,  <37.092125, 32.612759, 30.440807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.987965, 32.794643, 30.323898>,  <36.814362, 33.097786, 30.129049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987965, 32.794643, 30.323898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069472, -0.510937, -0.856806,
		0.898226, 0.405702, -0.169101,
		0.434008, -0.757859, 0.487122,
		37.118168, 32.567287, 30.470036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356838, 33.002888, 29.760929>,  <36.814362, 33.097786, 30.129049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356838, 33.002888, 29.760929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.285698, 32.664982, 29.962818>,  <37.243015, 32.462238, 30.083952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.285698, 32.664982, 29.962818>,  <37.356838, 33.002888, 29.760929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285698, 32.664982, 29.962818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000996, -0.512746, -0.858540,
		0.984058, -0.153193, 0.090349,
		-0.177848, -0.844762, 0.504724,
		37.232342, 32.411552, 30.114235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801029, 32.507935, 29.504675>,  <37.356838, 33.002888, 29.760929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801029, 32.507935, 29.504675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.502857, 32.284931, 29.650835>,  <37.323952, 32.151131, 29.738531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.502857, 32.284931, 29.650835>,  <37.801029, 32.507935, 29.504675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502857, 32.284931, 29.650835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186901, -0.351374, -0.917390,
		0.639843, -0.752146, 0.157727,
		-0.745432, -0.557506, 0.365401,
		37.279228, 32.117680, 29.760456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930664, 31.925875, 29.082787>,  <37.801029, 32.507935, 29.504675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930664, 31.925875, 29.082787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.565010, 31.874456, 29.236582>,  <37.345615, 31.843605, 29.328859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.565010, 31.874456, 29.236582>,  <37.930664, 31.925875, 29.082787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565010, 31.874456, 29.236582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301793, -0.417482, -0.857106,
		0.270694, -0.899547, 0.342841,
		-0.914137, -0.128546, 0.384486,
		37.290768, 31.835894, 29.351927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712944, 31.212736, 28.970457>,  <37.930664, 31.925875, 29.082787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712944, 31.212736, 28.970457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.364895, 31.401119, 29.028549>,  <37.156067, 31.514149, 29.063404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.364895, 31.401119, 29.028549>,  <37.712944, 31.212736, 28.970457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364895, 31.401119, 29.028549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349844, -0.382666, -0.855088,
		-0.347133, -0.794838, 0.497726,
		-0.870119, 0.470956, 0.145234,
		37.103859, 31.542406, 29.072119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215355, 30.681528, 28.773012>,  <37.712944, 31.212736, 28.970457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215355, 30.681528, 28.773012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.015114, 31.027798, 28.772066>,  <36.894970, 31.235559, 28.771500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.015114, 31.027798, 28.772066>,  <37.215355, 30.681528, 28.773012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015114, 31.027798, 28.772066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418033, -0.244129, -0.875014,
		-0.758055, -0.437045, 0.484092,
		-0.500601, 0.865675, -0.002364,
		36.864933, 31.287500, 28.771357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484058, 30.488049, 28.618904>,  <37.215355, 30.681528, 28.773012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484058, 30.488049, 28.618904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.586800, 30.865023, 28.533257>,  <36.648445, 31.091208, 28.481869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.586800, 30.865023, 28.533257>,  <36.484058, 30.488049, 28.618904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586800, 30.865023, 28.533257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248790, -0.149608, -0.956933,
		-0.933880, 0.299059, 0.196041,
		0.256850, 0.942434, -0.214119,
		36.663857, 31.147753, 28.469021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770382, 30.801403, 28.287498>,  <36.484058, 30.488049, 28.618904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770382, 30.801403, 28.287498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.069546, 31.043346, 28.178118>,  <36.249046, 31.188513, 28.112490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.069546, 31.043346, 28.178118>,  <35.770382, 30.801403, 28.287498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069546, 31.043346, 28.178118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230229, -0.150011, -0.961505,
		-0.622593, 0.782078, 0.027060,
		0.747912, 0.604856, -0.273452,
		36.293919, 31.224804, 28.096083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515755, 31.176991, 27.791512>,  <35.770382, 30.801403, 28.287498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515755, 31.176991, 27.791512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.903595, 31.248211, 27.724382>,  <36.136299, 31.290943, 27.684105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.903595, 31.248211, 27.724382>,  <35.515755, 31.176991, 27.791512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903595, 31.248211, 27.724382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154169, -0.088039, -0.984114,
		-0.189998, 0.980075, -0.057913,
		0.969604, 0.178051, -0.167824,
		36.194477, 31.301626, 27.674036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613750, 31.698498, 27.257580>,  <35.515755, 31.176991, 27.791512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613750, 31.698498, 27.257580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.950268, 31.482601, 27.269638>,  <36.152176, 31.353064, 27.276873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.950268, 31.482601, 27.269638>,  <35.613750, 31.698498, 27.257580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950268, 31.482601, 27.269638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090396, -0.195444, -0.976540,
		0.532970, 0.818830, -0.213216,
		0.841292, -0.539740, 0.030147,
		36.202656, 31.320679, 27.278683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610374, 32.552567, 27.140678>,  <35.613750, 31.698498, 27.257580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610374, 32.552567, 27.140678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.218719, 32.633480, 27.133015>,  <34.983727, 32.682026, 27.128416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.218719, 32.633480, 27.133015>,  <35.610374, 32.552567, 27.140678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218719, 32.633480, 27.133015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089447, -0.344451, 0.934533,
		0.182438, 0.916753, 0.355359,
		-0.979140, 0.202280, -0.019160,
		34.924976, 32.694164, 27.127266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438259, 32.843849, 27.799059>,  <35.610374, 32.552567, 27.140678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438259, 32.843849, 27.799059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.076851, 32.732857, 27.668432>,  <34.860004, 32.666260, 27.590055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.076851, 32.732857, 27.668432>,  <35.438259, 32.843849, 27.799059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076851, 32.732857, 27.668432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272985, -0.214748, 0.937743,
		-0.330338, 0.936422, 0.118282,
		-0.903524, -0.277483, -0.326569,
		34.805794, 32.649612, 27.570461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878925, 33.297691, 28.211168>,  <35.438259, 32.843849, 27.799059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878925, 33.297691, 28.211168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.704643, 32.966934, 28.068953>,  <34.600075, 32.768478, 27.983624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.704643, 32.966934, 28.068953>,  <34.878925, 33.297691, 28.211168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704643, 32.966934, 28.068953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401535, -0.174960, 0.898977,
		-0.805563, 0.534450, -0.255795,
		-0.435704, -0.826893, -0.355542,
		34.573933, 32.718864, 27.962290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150856, 33.359318, 28.047319>,  <34.878925, 33.297691, 28.211168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150856, 33.359318, 28.047319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.190060, 32.963696, 28.091433>,  <34.213581, 32.726322, 28.117901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.190060, 32.963696, 28.091433>,  <34.150856, 33.359318, 28.047319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190060, 32.963696, 28.091433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525121, 0.042738, 0.849954,
		-0.845366, -0.141212, -0.515186,
		0.098005, -0.989057, 0.110283,
		34.219460, 32.666977, 28.124517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443630, 33.171700, 28.183441>,  <34.150856, 33.359318, 28.047319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443630, 33.171700, 28.183441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.679993, 32.867104, 28.289999>,  <33.821812, 32.684345, 28.353933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.679993, 32.867104, 28.289999>,  <33.443630, 33.171700, 28.183441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679993, 32.867104, 28.289999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543829, -0.132086, 0.828736,
		-0.595884, -0.634581, -0.492168,
		0.590909, -0.761486, 0.266396,
		33.857265, 32.638657, 28.369917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929722, 32.631233, 28.350008>,  <33.443630, 33.171700, 28.183441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929722, 32.631233, 28.350008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.276794, 32.529354, 28.520777>,  <33.485039, 32.468227, 28.623238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.276794, 32.529354, 28.520777>,  <32.929722, 32.631233, 28.350008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276794, 32.529354, 28.520777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450657, -0.040467, 0.891780,
		-0.209859, -0.966174, -0.149894,
		0.867680, -0.254698, 0.426920,
		33.537098, 32.452946, 28.648853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779770, 31.988308, 28.750603>,  <32.929722, 32.631233, 28.350008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779770, 31.988308, 28.750603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.120014, 32.114758, 28.918663>,  <33.324162, 32.190628, 29.019499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.120014, 32.114758, 28.918663>,  <32.779770, 31.988308, 28.750603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120014, 32.114758, 28.918663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473515, 0.113198, 0.873481,
		0.228570, -0.941940, 0.245978,
		0.850611, 0.316125, 0.420149,
		33.375198, 32.209595, 29.044708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879292, 31.471466, 29.232708>,  <32.779770, 31.988308, 28.750603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879292, 31.471466, 29.232708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.083614, 31.800564, 29.332438>,  <33.206207, 31.998022, 29.392275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.083614, 31.800564, 29.332438>,  <32.879292, 31.471466, 29.232708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083614, 31.800564, 29.332438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388711, -0.037639, 0.920590,
		0.766796, -0.567163, 0.300584,
		0.510811, 0.822745, 0.249324,
		33.236858, 32.047386, 29.407234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168472, 31.359844, 29.935913>,  <32.879292, 31.471466, 29.232708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168472, 31.359844, 29.935913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.201466, 31.758385, 29.927113>,  <33.221260, 31.997509, 29.921833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.201466, 31.758385, 29.927113>,  <33.168472, 31.359844, 29.935913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201466, 31.758385, 29.927113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374161, 0.051420, 0.925937,
		0.923688, -0.068143, 0.377036,
		0.082483, 0.996349, -0.021999,
		33.226212, 32.057289, 29.920513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581314, 31.623995, 30.514711>,  <33.168472, 31.359844, 29.935913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581314, 31.623995, 30.514711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.347439, 31.928011, 30.401236>,  <33.207115, 32.110420, 30.333149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.347439, 31.928011, 30.401236>,  <33.581314, 31.623995, 30.514711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347439, 31.928011, 30.401236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301733, 0.120871, 0.945699,
		0.753059, 0.638537, 0.158657,
		-0.584687, 0.760039, -0.283692,
		33.172031, 32.156021, 30.316128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522903, 31.960842, 31.110117>,  <33.581314, 31.623995, 30.514711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522903, 31.960842, 31.110117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.243244, 32.172806, 30.918121>,  <33.075451, 32.299984, 30.802923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.243244, 32.172806, 30.918121>,  <33.522903, 31.960842, 31.110117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243244, 32.172806, 30.918121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295801, 0.396805, 0.868935,
		0.650919, 0.749494, -0.120676,
		-0.699146, 0.529910, -0.479989,
		33.033501, 32.331779, 30.774124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530746, 32.670525, 31.419502>,  <33.522903, 31.960842, 31.110117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530746, 32.670525, 31.419502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.173592, 32.664753, 31.239481>,  <32.959297, 32.661289, 31.131468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.173592, 32.664753, 31.239481>,  <33.530746, 32.670525, 31.419502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173592, 32.664753, 31.239481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409466, 0.441830, 0.798201,
		0.187330, 0.896983, -0.400411,
		-0.892886, -0.014428, -0.450052,
		32.905727, 32.660423, 31.104465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252213, 33.347462, 31.523674>,  <33.530746, 32.670525, 31.419502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252213, 33.347462, 31.523674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.959373, 33.087509, 31.442001>,  <32.783669, 32.931538, 31.392998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.959373, 33.087509, 31.442001>,  <33.252213, 33.347462, 31.523674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959373, 33.087509, 31.442001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573692, 0.426594, 0.699210,
		-0.367300, 0.629028, -0.685139,
		-0.732099, -0.649878, -0.204180,
		32.739742, 32.892544, 31.380747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633533, 33.702438, 31.474115>,  <33.252213, 33.347462, 31.523674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633533, 33.702438, 31.474115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.538300, 33.327423, 31.575571>,  <32.481159, 33.102413, 31.636444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.538300, 33.327423, 31.575571>,  <32.633533, 33.702438, 31.474115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538300, 33.327423, 31.575571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496773, 0.341951, 0.797675,
		-0.834587, 0.063909, -0.547157,
		-0.238080, -0.937542, 0.253640,
		32.466877, 33.046162, 31.651663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983597, 34.277058, 31.476988>,  <32.633533, 33.702438, 31.474115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983597, 34.277058, 31.476988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.030739, 34.055004, 31.806337>,  <33.059025, 33.921772, 32.003948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.030739, 34.055004, 31.806337>,  <32.983597, 34.277058, 31.476988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030739, 34.055004, 31.806337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315568, -0.807107, -0.498995,
		0.941556, -0.201022, -0.270300,
		0.117852, -0.555129, 0.823372,
		33.066093, 33.888466, 32.053349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607250, 34.701298, 31.068016>,  <32.983597, 34.277058, 31.476988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607250, 34.701298, 31.068016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.927471, 34.864964, 30.892883>,  <33.119606, 34.963165, 30.787804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.927471, 34.864964, 30.892883>,  <32.607250, 34.701298, 31.068016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927471, 34.864964, 30.892883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544905, 0.192984, -0.815988,
		-0.249381, 0.891819, 0.377451,
		0.800555, 0.409166, -0.437830,
		33.167637, 34.987713, 30.761534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304951, 34.852535, 30.463619>,  <32.607250, 34.701298, 31.068016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304951, 34.852535, 30.463619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.681576, 34.968903, 30.395699>,  <32.907551, 35.038723, 30.354946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.681576, 34.968903, 30.395699>,  <32.304951, 34.852535, 30.463619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681576, 34.968903, 30.395699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262571, 0.318099, -0.910972,
		-0.211005, 0.902319, 0.375896,
		0.941559, 0.290919, -0.169803,
		32.964043, 35.056179, 30.344757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298050, 35.522957, 30.164410>,  <32.304951, 34.852535, 30.463619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298050, 35.522957, 30.164410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.647949, 35.373520, 30.040966>,  <32.857891, 35.283859, 29.966900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.647949, 35.373520, 30.040966>,  <32.298050, 35.522957, 30.164410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647949, 35.373520, 30.040966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086628, 0.506044, -0.858146,
		0.476766, 0.777399, 0.410299,
		0.874751, -0.373592, -0.308609,
		32.910374, 35.261444, 29.948383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635300, 36.025948, 29.872681>,  <32.298050, 35.522957, 30.164410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635300, 36.025948, 29.872681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.841202, 35.719315, 29.719120>,  <32.964745, 35.535336, 29.626984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.841202, 35.719315, 29.719120>,  <32.635300, 36.025948, 29.872681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841202, 35.719315, 29.719120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026848, 0.461979, -0.886484,
		0.856915, 0.446018, 0.258389,
		0.514758, -0.766579, -0.383902,
		32.995628, 35.489342, 29.603949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149250, 36.352322, 29.509182>,  <32.635300, 36.025948, 29.872681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149250, 36.352322, 29.509182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.085350, 35.993336, 29.344725>,  <33.047012, 35.777946, 29.246050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.085350, 35.993336, 29.344725>,  <33.149250, 36.352322, 29.509182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085350, 35.993336, 29.344725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032434, 0.421041, -0.906461,
		0.986625, -0.131471, -0.096369,
		-0.159748, -0.897463, -0.411146,
		33.037426, 35.724098, 29.221380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562061, 36.369492, 28.894569>,  <33.149250, 36.352322, 29.509182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562061, 36.369492, 28.894569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.324356, 36.058884, 28.810787>,  <33.181732, 35.872520, 28.760519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.324356, 36.058884, 28.810787>,  <33.562061, 36.369492, 28.894569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324356, 36.058884, 28.810787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025182, 0.242333, -0.969866,
		0.803879, -0.581627, -0.124454,
		-0.594260, -0.776520, -0.209453,
		33.146076, 35.825928, 28.747952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873001, 35.935741, 28.444313>,  <33.562061, 36.369492, 28.894569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873001, 35.935741, 28.444313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.484459, 35.851955, 28.399408>,  <33.251335, 35.801685, 28.372465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.484459, 35.851955, 28.399408>,  <33.873001, 35.935741, 28.444313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484459, 35.851955, 28.399408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089827, 0.113729, -0.989443,
		0.220021, -0.971180, -0.091655,
		-0.971350, -0.209465, -0.112261,
		33.193054, 35.789116, 28.365730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801537, 35.419392, 27.804640>,  <33.873001, 35.935741, 28.444313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801537, 35.419392, 27.804640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.431499, 35.551628, 27.879385>,  <33.209476, 35.630970, 27.924232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.431499, 35.551628, 27.879385>,  <33.801537, 35.419392, 27.804640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431499, 35.551628, 27.879385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149587, 0.135057, -0.979481,
		-0.349048, -0.934060, -0.075487,
		-0.925089, 0.330594, 0.186865,
		33.153973, 35.650806, 27.935444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389351, 35.025074, 27.371429>,  <33.801537, 35.419392, 27.804640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389351, 35.025074, 27.371429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.214512, 35.374390, 27.457514>,  <33.109608, 35.583977, 27.509165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.214512, 35.374390, 27.457514>,  <33.389351, 35.025074, 27.371429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214512, 35.374390, 27.457514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195155, 0.141491, -0.970513,
		-0.877986, -0.466208, 0.108581,
		-0.437098, 0.873287, 0.215210,
		33.083382, 35.636375, 27.522078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722939, 35.070850, 26.954453>,  <33.389351, 35.025074, 27.371429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722939, 35.070850, 26.954453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.813869, 35.453739, 27.026066>,  <32.868427, 35.683472, 27.069033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.813869, 35.453739, 27.026066>,  <32.722939, 35.070850, 26.954453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813869, 35.453739, 27.026066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230867, 0.231579, -0.945025,
		-0.946056, 0.173501, 0.273635,
		0.227331, 0.957219, 0.179031,
		32.882069, 35.740906, 27.079775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161312, 35.491409, 26.700504>,  <32.722939, 35.070850, 26.954453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161312, 35.491409, 26.700504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.474979, 35.739395, 26.711277>,  <32.663177, 35.888187, 26.717741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.474979, 35.739395, 26.711277>,  <32.161312, 35.491409, 26.700504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474979, 35.739395, 26.711277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135629, 0.213576, -0.967466,
		-0.605548, 0.755001, 0.251564,
		0.784166, 0.619967, 0.026930,
		32.710228, 35.925385, 26.719357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924002, 36.210773, 26.371134>,  <32.161312, 35.491409, 26.700504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924002, 36.210773, 26.371134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.323082, 36.187706, 26.356869>,  <32.562531, 36.173866, 26.348310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.323082, 36.187706, 26.356869>,  <31.924002, 36.210773, 26.371134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323082, 36.187706, 26.356869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017408, 0.290468, -0.956726,
		0.065534, 0.955145, 0.288795,
		0.997698, -0.057671, -0.035663,
		32.622391, 36.170406, 26.346170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073895, 36.774578, 25.927130>,  <31.924002, 36.210773, 26.371134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073895, 36.774578, 25.927130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.418915, 36.573681, 25.951664>,  <32.625927, 36.453144, 25.966385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.418915, 36.573681, 25.951664>,  <32.073895, 36.774578, 25.927130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418915, 36.573681, 25.951664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253643, 0.324311, -0.911311,
		0.437806, 0.801608, 0.407124,
		0.862549, -0.502241, 0.061338,
		32.677681, 36.423008, 25.970066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619041, 37.190975, 25.802147>,  <32.073895, 36.774578, 25.927130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619041, 37.190975, 25.802147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.804401, 36.844589, 25.726929>,  <32.915619, 36.636757, 25.681799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.804401, 36.844589, 25.726929>,  <32.619041, 37.190975, 25.802147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804401, 36.844589, 25.726929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219519, 0.317770, -0.922407,
		0.858530, 0.386163, 0.337350,
		0.463399, -0.865968, -0.188045,
		32.943420, 36.584797, 25.670515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258583, 37.380764, 25.472092>,  <32.619041, 37.190975, 25.802147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258583, 37.380764, 25.472092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.200451, 36.993767, 25.389315>,  <33.165569, 36.761566, 25.339647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.200451, 36.993767, 25.389315>,  <33.258583, 37.380764, 25.472092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200451, 36.993767, 25.389315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177927, 0.180197, -0.967404,
		0.973252, -0.177418, 0.145955,
		-0.145334, -0.967498, -0.206945,
		33.156849, 36.703518, 25.327230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826283, 37.164288, 25.068521>,  <33.258583, 37.380764, 25.472092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826283, 37.164288, 25.068521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540924, 36.894402, 24.992809>,  <33.369709, 36.732471, 24.947382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540924, 36.894402, 24.992809>,  <33.826283, 37.164288, 25.068521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540924, 36.894402, 24.992809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133668, 0.134125, -0.981908,
		0.687892, -0.725792, -0.005497,
		-0.713398, -0.674712, -0.189278,
		33.326904, 36.691986, 24.936026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136288, 36.724915, 24.676914>,  <33.826283, 37.164288, 25.068521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136288, 36.724915, 24.676914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.751381, 36.658730, 24.590498>,  <33.520439, 36.619019, 24.538649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.751381, 36.658730, 24.590498>,  <34.136288, 36.724915, 24.676914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751381, 36.658730, 24.590498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221684, -0.016212, -0.974984,
		0.157821, -0.986083, 0.052281,
		-0.962262, -0.165463, -0.216040,
		33.462704, 36.609093, 24.525686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163872, 36.223427, 24.249426>,  <34.136288, 36.724915, 24.676914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163872, 36.223427, 24.249426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799164, 36.378845, 24.196209>,  <33.580338, 36.472095, 24.164278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799164, 36.378845, 24.196209>,  <34.163872, 36.223427, 24.249426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799164, 36.378845, 24.196209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125670, -0.044460, -0.991075,
		-0.390997, -0.920355, -0.008292,
		-0.911772, 0.388549, -0.133044,
		33.525631, 36.495411, 24.156296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885929, 35.873070, 23.604286>,  <34.163872, 36.223427, 24.249426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885929, 35.873070, 23.604286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.649662, 36.187168, 23.678576>,  <33.507900, 36.375629, 23.723148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.649662, 36.187168, 23.678576>,  <33.885929, 35.873070, 23.604286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649662, 36.187168, 23.678576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228850, 0.057691, -0.971751,
		-0.773780, -0.616487, 0.145627,
		-0.590671, 0.785248, 0.185723,
		33.472462, 36.422741, 23.734293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269760, 35.754765, 23.185003>,  <33.885929, 35.873070, 23.604286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269760, 35.754765, 23.185003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.321762, 36.144691, 23.257479>,  <33.352962, 36.378647, 23.300964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.321762, 36.144691, 23.257479>,  <33.269760, 35.754765, 23.185003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321762, 36.144691, 23.257479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034023, 0.187017, -0.981767,
		-0.990930, 0.121466, 0.057478,
		0.130000, 0.974818, 0.181188,
		33.360764, 36.437138, 23.311834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885479, 36.062641, 22.728203>,  <33.269760, 35.754765, 23.185003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885479, 36.062641, 22.728203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.148010, 36.340565, 22.845835>,  <33.305527, 36.507317, 22.916414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.148010, 36.340565, 22.845835>,  <32.885479, 36.062641, 22.728203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148010, 36.340565, 22.845835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073677, 0.328891, -0.941489,
		-0.750873, 0.639589, 0.164668,
		0.656324, 0.694807, 0.294079,
		33.344906, 36.549007, 22.934059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589840, 36.710442, 22.415014>,  <32.885479, 36.062641, 22.728203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589840, 36.710442, 22.415014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.973446, 36.779144, 22.505163>,  <33.203609, 36.820366, 22.559254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.973446, 36.779144, 22.505163>,  <32.589840, 36.710442, 22.415014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973446, 36.779144, 22.505163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134517, 0.424074, -0.895582,
		-0.249399, 0.889191, 0.383588,
		0.959013, 0.171758, 0.225374,
		33.261150, 36.830673, 22.572775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752354, 37.367645, 22.177055>,  <32.589840, 36.710442, 22.415014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752354, 37.367645, 22.177055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.095825, 37.166481, 22.216545>,  <33.301910, 37.045784, 22.240240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.095825, 37.166481, 22.216545>,  <32.752354, 37.367645, 22.177055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095825, 37.166481, 22.216545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241234, 0.226646, -0.943630,
		0.452186, 0.834094, 0.315935,
		0.858681, -0.502911, 0.098726,
		33.353428, 37.015606, 22.246162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174923, 37.788200, 21.801947>,  <32.752354, 37.367645, 22.177055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174923, 37.788200, 21.801947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.337063, 37.422874, 21.817659>,  <33.434345, 37.203678, 21.827087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.337063, 37.422874, 21.817659>,  <33.174923, 37.788200, 21.801947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337063, 37.422874, 21.817659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337875, 0.109751, -0.934770,
		0.849430, 0.392183, 0.353075,
		0.405351, -0.913317, 0.039283,
		33.458668, 37.148880, 21.829445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853458, 37.892677, 21.433680>,  <33.174923, 37.788200, 21.801947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853458, 37.892677, 21.433680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.810516, 37.495106, 21.443390>,  <33.784752, 37.256565, 21.449217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.810516, 37.495106, 21.443390>,  <33.853458, 37.892677, 21.433680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810516, 37.495106, 21.443390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329882, -0.058643, -0.942199,
		0.937898, -0.093139, 0.334174,
		-0.107352, -0.993925, 0.024276,
		33.778309, 37.196930, 21.450672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455814, 37.621578, 21.175875>,  <33.853458, 37.892677, 21.433680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455814, 37.621578, 21.175875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.202694, 37.313068, 21.148462>,  <34.050819, 37.127964, 21.132015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.202694, 37.313068, 21.148462>,  <34.455814, 37.621578, 21.175875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202694, 37.313068, 21.148462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308919, -0.170313, -0.935715,
		0.710020, -0.613295, 0.346035,
		-0.632804, -0.771273, -0.068533,
		34.012852, 37.081688, 21.127903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898247, 37.040791, 20.837637>,  <34.455814, 37.621578, 21.175875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898247, 37.040791, 20.837637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.510563, 36.962101, 20.778399>,  <34.277954, 36.914886, 20.742855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.510563, 36.962101, 20.778399>,  <34.898247, 37.040791, 20.837637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510563, 36.962101, 20.778399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190963, -0.220818, -0.956437,
		0.155452, -0.955269, 0.251586,
		-0.969210, -0.196724, -0.148094,
		34.219799, 36.903084, 20.733971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573471, 36.686390, 21.106297>,  <34.898247, 37.040791, 20.837637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573471, 36.686390, 21.106297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.911823, 36.786499, 20.917892>,  <36.114834, 36.846565, 20.804850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.911823, 36.786499, 20.917892>,  <35.573471, 36.686390, 21.106297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911823, 36.786499, 20.917892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395043, 0.299364, 0.868517,
		0.358370, -0.920731, 0.154358,
		0.845880, 0.250272, -0.471011,
		36.165588, 36.861580, 20.776588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180996, 36.378803, 21.464022>,  <35.573471, 36.686390, 21.106297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180996, 36.378803, 21.464022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.298653, 36.697845, 21.253380>,  <36.369247, 36.889271, 21.126995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.298653, 36.697845, 21.253380>,  <36.180996, 36.378803, 21.464022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298653, 36.697845, 21.253380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406670, 0.394170, 0.824166,
		0.864928, -0.456575, -0.208419,
		0.294141, 0.797602, -0.526604,
		36.386894, 36.937126, 21.095398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882004, 36.429359, 21.603994>,  <36.180996, 36.378803, 21.464022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882004, 36.429359, 21.603994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.754314, 36.793606, 21.499018>,  <36.677700, 37.012154, 21.436031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.754314, 36.793606, 21.499018>,  <36.882004, 36.429359, 21.603994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754314, 36.793606, 21.499018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492080, 0.395942, 0.775298,
		0.809910, 0.118351, -0.574490,
		-0.319222, 0.910616, -0.262439,
		36.658546, 37.066792, 21.420286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367355, 36.746372, 21.872807>,  <36.882004, 36.429359, 21.603994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367355, 36.746372, 21.872807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.087086, 37.020370, 21.792973>,  <36.918922, 37.184769, 21.745071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.087086, 37.020370, 21.792973>,  <37.367355, 36.746372, 21.872807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087086, 37.020370, 21.792973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147670, 0.412907, 0.898722,
		0.698032, 0.600239, -0.390467,
		-0.700674, 0.684998, -0.199585,
		36.876884, 37.225868, 21.733097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619621, 37.357674, 22.265223>,  <37.367355, 36.746372, 21.872807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619621, 37.357674, 22.265223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.229088, 37.402309, 22.191113>,  <36.994770, 37.429089, 22.146646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.229088, 37.402309, 22.191113>,  <37.619621, 37.357674, 22.265223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229088, 37.402309, 22.191113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137564, 0.340651, 0.930071,
		0.166899, 0.933544, -0.317238,
		-0.976330, 0.111588, -0.185276,
		36.936188, 37.435787, 22.135530>
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
