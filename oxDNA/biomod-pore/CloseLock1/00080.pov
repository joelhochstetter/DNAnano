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
	<24.258291, 34.866673, 35.080097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.348764, 35.170349, 34.835976>,  <24.403048, 35.352554, 34.689503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.348764, 35.170349, 34.835976>,  <24.258291, 34.866673, 35.080097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.348764, 35.170349, 34.835976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917604, 0.044184, 0.395034,
		0.326872, -0.649366, -0.686643,
		0.226183, 0.759191, -0.610303,
		24.416618, 35.398106, 34.652885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.017044, 34.869156, 34.956898>,  <24.258291, 34.866673, 35.080097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.017044, 34.869156, 34.956898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.890102, 35.239788, 34.876163>,  <24.813938, 35.462166, 34.827724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.890102, 35.239788, 34.876163>,  <25.017044, 34.869156, 34.956898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.890102, 35.239788, 34.876163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838472, 0.373596, 0.396725,
		0.443002, -0.043331, -0.895473,
		-0.317355, 0.926579, -0.201836,
		24.794895, 35.517761, 34.815613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.450844, 35.411522, 34.560154>,  <25.017044, 34.869156, 34.956898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.450844, 35.411522, 34.560154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.209616, 35.565201, 34.839783>,  <25.064878, 35.657406, 35.007561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.209616, 35.565201, 34.839783>,  <25.450844, 35.411522, 34.560154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.209616, 35.565201, 34.839783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742161, 0.591496, 0.315167,
		-0.292415, 0.708892, -0.641845,
		-0.603068, 0.384193, 0.699074,
		25.028696, 35.680458, 35.049503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.305866, 36.162132, 34.693226>,  <25.450844, 35.411522, 34.560154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.305866, 36.162132, 34.693226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.306330, 35.970085, 35.044106>,  <25.306608, 35.854855, 35.254635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.306330, 35.970085, 35.044106>,  <25.305866, 36.162132, 34.693226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.306330, 35.970085, 35.044106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707920, 0.619955, 0.338387,
		-0.706292, 0.620597, 0.340605,
		0.001158, -0.480121, 0.877202,
		25.306677, 35.826050, 35.307266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.042572, 36.658848, 35.201580>,  <25.305866, 36.162132, 34.693226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.042572, 36.658848, 35.201580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.314405, 36.385384, 35.307995>,  <25.477505, 36.221306, 35.371845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.314405, 36.385384, 35.307995>,  <25.042572, 36.658848, 35.201580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.314405, 36.385384, 35.307995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635461, 0.729797, 0.252162,
		-0.366546, -0.002309, 0.930397,
		0.679584, -0.683660, 0.266037,
		25.518280, 36.180286, 35.387806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.330633, 36.735107, 35.873592>,  <25.042572, 36.658848, 35.201580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.330633, 36.735107, 35.873592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609261, 36.535618, 35.667267>,  <25.776436, 36.415924, 35.543472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609261, 36.535618, 35.667267>,  <25.330633, 36.735107, 35.873592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.609261, 36.535618, 35.667267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652988, 0.738566, 0.167709,
		0.297322, -0.453642, 0.840124,
		0.696567, -0.498728, -0.515815,
		25.818232, 36.385998, 35.512524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985403, 36.907803, 36.108795>,  <25.330633, 36.735107, 35.873592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985403, 36.907803, 36.108795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065945, 36.784908, 35.736759>,  <26.114269, 36.711170, 35.513538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065945, 36.784908, 35.736759>,  <25.985403, 36.907803, 36.108795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.065945, 36.784908, 35.736759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623488, 0.772535, -0.120215,
		0.755460, -0.555693, 0.347112,
		0.201353, -0.307238, -0.930087,
		26.126350, 36.692738, 35.457733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.621876, 36.972790, 36.102203>,  <25.985403, 36.907803, 36.108795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.621876, 36.972790, 36.102203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513458, 36.963306, 35.717293>,  <26.448408, 36.957615, 35.486347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513458, 36.963306, 35.717293>,  <26.621876, 36.972790, 36.102203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513458, 36.963306, 35.717293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541354, 0.822855, -0.172761,
		0.795908, -0.567757, -0.210195,
		-0.271046, -0.023712, -0.962274,
		26.432144, 36.956192, 35.428612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134848, 37.159706, 35.760414>,  <26.621876, 36.972790, 36.102203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.134848, 37.159706, 35.760414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905012, 37.178326, 35.433567>,  <26.767111, 37.189499, 35.237461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905012, 37.178326, 35.433567>,  <27.134848, 37.159706, 35.760414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.905012, 37.178326, 35.433567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590416, 0.714983, -0.374444,
		0.566793, -0.697590, -0.438307,
		-0.574591, 0.046551, -0.817116,
		26.732635, 37.192291, 35.188431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644142, 37.164265, 35.194786>,  <27.134848, 37.159706, 35.760414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644142, 37.164265, 35.194786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.294607, 37.295490, 35.051243>,  <27.084887, 37.374226, 34.965115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.294607, 37.295490, 35.051243>,  <27.644142, 37.164265, 35.194786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.294607, 37.295490, 35.051243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480401, 0.696394, -0.533152,
		0.074998, -0.638284, -0.766139,
		-0.873837, 0.328068, -0.358860,
		27.032455, 37.393909, 34.943584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679161, 37.216133, 34.508312>,  <27.644142, 37.164265, 35.194786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679161, 37.216133, 34.508312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.371849, 37.462372, 34.578499>,  <27.187462, 37.610115, 34.620609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.371849, 37.462372, 34.578499>,  <27.679161, 37.216133, 34.508312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.371849, 37.462372, 34.578499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427739, 0.697649, -0.574739,
		-0.476221, -0.366506, -0.799304,
		-0.768279, 0.615596, 0.175466,
		27.141365, 37.647049, 34.631138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501944, 37.390842, 33.841377>,  <27.679161, 37.216133, 34.508312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.501944, 37.390842, 33.841377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395992, 37.689156, 34.085884>,  <27.332422, 37.868145, 34.232590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395992, 37.689156, 34.085884>,  <27.501944, 37.390842, 33.841377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395992, 37.689156, 34.085884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324961, 0.665866, -0.671582,
		-0.907877, 0.020751, -0.418723,
		-0.264878, 0.745782, 0.611268,
		27.316528, 37.912891, 34.269264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348461, 37.824192, 33.422115>,  <27.501944, 37.390842, 33.841377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.348461, 37.824192, 33.422115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395178, 38.053951, 33.746197>,  <27.423208, 38.191807, 33.940643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395178, 38.053951, 33.746197>,  <27.348461, 37.824192, 33.422115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395178, 38.053951, 33.746197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322611, 0.749602, -0.577943,
		-0.939299, 0.328878, -0.097763,
		0.116789, 0.574401, 0.810200,
		27.430214, 38.226273, 33.989258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135828, 38.501495, 33.270382>,  <27.348461, 37.824192, 33.422115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135828, 38.501495, 33.270382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388699, 38.567322, 33.573242>,  <27.540421, 38.606819, 33.754959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388699, 38.567322, 33.573242>,  <27.135828, 38.501495, 33.270382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388699, 38.567322, 33.573242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405155, 0.762736, -0.504066,
		-0.660456, 0.625420, 0.415508,
		0.632176, 0.164568, 0.757146,
		27.578352, 38.616692, 33.800385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227798, 39.161758, 33.311676>,  <27.135828, 38.501495, 33.270382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.227798, 39.161758, 33.311676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540367, 39.058388, 33.538864>,  <27.727909, 38.996365, 33.675179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540367, 39.058388, 33.538864>,  <27.227798, 39.161758, 33.311676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540367, 39.058388, 33.538864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535591, 0.744814, -0.397987,
		-0.320186, 0.615198, 0.720425,
		0.781424, -0.258424, 0.567974,
		27.774794, 38.980862, 33.709255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480062, 39.733852, 33.453552>,  <27.227798, 39.161758, 33.311676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.480062, 39.733852, 33.453552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786978, 39.500946, 33.561058>,  <27.971127, 39.361202, 33.625561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786978, 39.500946, 33.561058>,  <27.480062, 39.733852, 33.453552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786978, 39.500946, 33.561058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635338, 0.633144, -0.442125,
		0.087270, 0.509992, 0.855741,
		0.767287, -0.582269, 0.268762,
		28.017164, 39.326263, 33.641685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012142, 40.241970, 33.627735>,  <27.480062, 39.733852, 33.453552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012142, 40.241970, 33.627735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.207165, 39.900452, 33.554722>,  <28.324179, 39.695541, 33.510914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.207165, 39.900452, 33.554722>,  <28.012142, 40.241970, 33.627735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.207165, 39.900452, 33.554722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687085, 0.504203, -0.523157,
		0.538703, 0.129655, 0.832459,
		0.487559, -0.853797, -0.182532,
		28.353432, 39.644314, 33.499962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674816, 40.449184, 33.722404>,  <28.012142, 40.241970, 33.627735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674816, 40.449184, 33.722404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690319, 40.124718, 33.488991>,  <28.699621, 39.930038, 33.348942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690319, 40.124718, 33.488991>,  <28.674816, 40.449184, 33.722404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690319, 40.124718, 33.488991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706256, 0.435353, -0.558275,
		0.706895, -0.390487, 0.589762,
		0.038756, -0.811165, -0.583532,
		28.701946, 39.881367, 33.313931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334862, 40.414227, 33.532707>,  <28.674816, 40.449184, 33.722404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334862, 40.414227, 33.532707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189140, 40.166260, 33.254719>,  <29.101707, 40.017479, 33.087925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189140, 40.166260, 33.254719>,  <29.334862, 40.414227, 33.532707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189140, 40.166260, 33.254719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683954, 0.328378, -0.651441,
		0.632053, -0.712651, 0.304365,
		-0.364303, -0.619917, -0.694972,
		29.079849, 39.980286, 33.046227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936092, 40.096783, 33.193501>,  <29.334862, 40.414227, 33.532707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936092, 40.096783, 33.193501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617241, 40.067574, 32.953751>,  <29.425930, 40.050049, 32.809898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617241, 40.067574, 32.953751>,  <29.936092, 40.096783, 33.193501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617241, 40.067574, 32.953751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499811, 0.477168, -0.722841,
		0.338784, -0.875773, -0.343870,
		-0.797129, -0.073016, -0.599378,
		29.378103, 40.045670, 32.773937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248035, 39.870533, 32.521164>,  <29.936092, 40.096783, 33.193501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248035, 39.870533, 32.521164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.886761, 40.031963, 32.462669>,  <29.669996, 40.128822, 32.427570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.886761, 40.031963, 32.462669>,  <30.248035, 39.870533, 32.521164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.886761, 40.031963, 32.462669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361749, 0.532230, -0.765421,
		-0.231070, -0.744218, -0.626694,
		-0.903186, 0.403572, -0.146238,
		29.615805, 40.153034, 32.418797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196854, 39.851643, 31.832905>,  <30.248035, 39.870533, 32.521164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196854, 39.851643, 31.832905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941753, 40.132816, 31.958858>,  <29.788692, 40.301521, 32.034431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941753, 40.132816, 31.958858>,  <30.196854, 39.851643, 31.832905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941753, 40.132816, 31.958858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165054, 0.524035, -0.835550,
		-0.752349, -0.480902, -0.450228,
		-0.637753, 0.702937, 0.314883,
		29.750427, 40.343697, 32.053322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885330, 39.991573, 31.249838>,  <30.196854, 39.851643, 31.832905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885330, 39.991573, 31.249838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829918, 40.304615, 31.492603>,  <29.796671, 40.492439, 31.638262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829918, 40.304615, 31.492603>,  <29.885330, 39.991573, 31.249838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829918, 40.304615, 31.492603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304907, 0.616757, -0.725701,
		-0.942253, 0.084519, -0.324061,
		-0.138532, 0.782603, 0.606912,
		29.788359, 40.539394, 31.674677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506868, 40.497810, 30.833471>,  <29.885330, 39.991573, 31.249838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506868, 40.497810, 30.833471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717203, 40.658516, 31.133358>,  <29.843405, 40.754940, 31.313290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717203, 40.658516, 31.133358>,  <29.506868, 40.497810, 30.833471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717203, 40.658516, 31.133358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323658, 0.720602, -0.613171,
		-0.786600, 0.565081, 0.248885,
		0.525838, 0.401767, 0.749718,
		29.874954, 40.779045, 31.358274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285183, 41.247005, 30.908556>,  <29.506868, 40.497810, 30.833471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285183, 41.247005, 30.908556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651615, 41.117657, 31.003403>,  <29.871475, 41.040047, 31.060310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651615, 41.117657, 31.003403>,  <29.285183, 41.247005, 30.908556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651615, 41.117657, 31.003403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387549, 0.562168, -0.730598,
		0.102956, 0.761182, 0.640314,
		0.916082, -0.323373, 0.237117,
		29.926439, 41.020645, 31.074537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696987, 41.816639, 30.871801>,  <29.285183, 41.247005, 30.908556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696987, 41.816639, 30.871801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969610, 41.526733, 30.831402>,  <30.133184, 41.352791, 30.807161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969610, 41.526733, 30.831402>,  <29.696987, 41.816639, 30.871801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969610, 41.526733, 30.831402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487685, 0.552779, -0.675721,
		0.545566, 0.411287, 0.730206,
		0.681557, -0.724761, -0.100999,
		30.174078, 41.309303, 30.801102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421202, 42.192814, 30.753561>,  <29.696987, 41.816639, 30.871801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421202, 42.192814, 30.753561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416992, 41.805504, 30.653688>,  <30.414467, 41.573120, 30.593765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416992, 41.805504, 30.653688>,  <30.421202, 42.192814, 30.753561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416992, 41.805504, 30.653688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556087, 0.201854, -0.806240,
		0.831058, -0.147330, 0.536318,
		-0.010526, -0.968271, -0.249680,
		30.413834, 41.515022, 30.578785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123547, 41.838024, 30.796127>,  <30.421202, 42.192814, 30.753561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123547, 41.838024, 30.796127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856934, 41.724205, 30.520514>,  <30.696966, 41.655914, 30.355146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856934, 41.724205, 30.520514>,  <31.123547, 41.838024, 30.796127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856934, 41.724205, 30.520514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730650, -0.065939, -0.679561,
		0.147935, -0.956391, 0.251857,
		-0.666533, -0.284550, -0.689032,
		30.656973, 41.638840, 30.313805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456053, 41.406445, 30.435349>,  <31.123547, 41.838024, 30.796127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456053, 41.406445, 30.435349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147600, 41.525604, 30.210276>,  <30.962528, 41.597099, 30.075232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147600, 41.525604, 30.210276>,  <31.456053, 41.406445, 30.435349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147600, 41.525604, 30.210276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588818, -0.002481, -0.808262,
		-0.242180, -0.954592, -0.173498,
		-0.771130, 0.297904, -0.562682,
		30.916262, 41.614975, 30.041471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249418, 41.007111, 29.869635>,  <31.456053, 41.406445, 30.435349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249418, 41.007111, 29.869635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151844, 41.378502, 29.757616>,  <31.093300, 41.601337, 29.690405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151844, 41.378502, 29.757616>,  <31.249418, 41.007111, 29.869635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151844, 41.378502, 29.757616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571808, -0.095530, -0.814806,
		-0.783281, -0.358895, -0.507607,
		-0.243938, 0.928476, -0.280046,
		31.078663, 41.657043, 29.673603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932362, 41.062805, 29.101768>,  <31.249418, 41.007111, 29.869635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932362, 41.062805, 29.101768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143364, 41.364655, 29.257856>,  <31.269966, 41.545765, 29.351509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143364, 41.364655, 29.257856>,  <30.932362, 41.062805, 29.101768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143364, 41.364655, 29.257856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639709, -0.050582, -0.766951,
		-0.559024, 0.654201, -0.509424,
		0.527508, 0.754627, 0.390222,
		31.301617, 41.591042, 29.374924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194212, 41.438496, 28.479662>,  <30.932362, 41.062805, 29.101768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194212, 41.438496, 28.479662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396473, 41.530392, 28.812296>,  <31.517830, 41.585529, 29.011877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396473, 41.530392, 28.812296>,  <31.194212, 41.438496, 28.479662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396473, 41.530392, 28.812296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859057, -0.223007, -0.460748,
		0.079595, 0.947357, -0.310127,
		0.505653, 0.229744, 0.831585,
		31.548168, 41.599316, 29.061771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732601, 41.896011, 28.336254>,  <31.194212, 41.438496, 28.479662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732601, 41.896011, 28.336254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848589, 41.682297, 28.653860>,  <31.918182, 41.554070, 28.844423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848589, 41.682297, 28.653860>,  <31.732601, 41.896011, 28.336254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848589, 41.682297, 28.653860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851387, -0.234915, -0.468993,
		0.437100, 0.812009, 0.386762,
		0.289970, -0.534282, 0.794015,
		31.935579, 41.522011, 28.892065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403872, 41.590694, 27.692226>,  <31.732601, 41.896011, 28.336254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403872, 41.590694, 27.692226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518284, 41.326000, 27.415014>,  <31.586931, 41.167183, 27.248686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518284, 41.326000, 27.415014>,  <31.403872, 41.590694, 27.692226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518284, 41.326000, 27.415014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435191, -0.734065, 0.521303,
		-0.853695, 0.152493, -0.497946,
		0.286029, -0.661736, -0.693032,
		31.604094, 41.127480, 27.207104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933596, 40.989716, 27.811136>,  <31.403872, 41.590694, 27.692226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933596, 40.989716, 27.811136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239429, 40.867912, 27.583914>,  <31.422930, 40.794830, 27.447580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239429, 40.867912, 27.583914>,  <30.933596, 40.989716, 27.811136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239429, 40.867912, 27.583914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067752, -0.914444, 0.399000,
		-0.640953, -0.266582, -0.719801,
		0.764584, -0.304508, -0.568054,
		31.468805, 40.776558, 27.413498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683714, 40.311417, 27.486725>,  <30.933596, 40.989716, 27.811136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683714, 40.311417, 27.486725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082067, 40.347660, 27.486738>,  <31.321079, 40.369408, 27.486746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082067, 40.347660, 27.486738>,  <30.683714, 40.311417, 27.486725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082067, 40.347660, 27.486738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086758, -0.953636, 0.288186,
		0.026145, -0.286998, -0.957574,
		0.995886, 0.090612, 0.000033,
		31.380833, 40.374844, 27.486748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462378, 39.665043, 27.761358>,  <30.683714, 40.311417, 27.486725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462378, 39.665043, 27.761358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207500, 39.964394, 27.835016>,  <30.054573, 40.144005, 27.879211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207500, 39.964394, 27.835016>,  <30.462378, 39.665043, 27.761358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207500, 39.964394, 27.835016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405367, -0.528650, 0.745793,
		0.655486, 0.400569, 0.640221,
		-0.637194, 0.748381, 0.184145,
		30.016342, 40.188908, 27.890261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459398, 39.721664, 28.430527>,  <30.462378, 39.665043, 27.761358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459398, 39.721664, 28.430527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124413, 39.923607, 28.346834>,  <29.923422, 40.044773, 28.296619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124413, 39.923607, 28.346834>,  <30.459398, 39.721664, 28.430527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124413, 39.923607, 28.346834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515138, -0.601450, 0.610648,
		0.182446, 0.619179, 0.763761,
		-0.837464, 0.504853, -0.209231,
		29.873173, 40.075062, 28.284065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189568, 39.806068, 29.028540>,  <30.459398, 39.721664, 28.430527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189568, 39.806068, 29.028540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868204, 39.874947, 28.800545>,  <29.675386, 39.916275, 28.663748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868204, 39.874947, 28.800545>,  <30.189568, 39.806068, 29.028540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868204, 39.874947, 28.800545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575431, -0.470546, 0.668929,
		-0.153017, 0.865410, 0.477128,
		-0.803408, 0.172197, -0.569985,
		29.627182, 39.926605, 28.629549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700676, 40.060852, 29.416304>,  <30.189568, 39.806068, 29.028540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700676, 40.060852, 29.416304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489897, 39.879860, 29.128531>,  <29.363428, 39.771263, 28.955866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489897, 39.879860, 29.128531>,  <29.700676, 40.060852, 29.416304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489897, 39.879860, 29.128531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344886, -0.659822, 0.667599,
		-0.776774, 0.599914, 0.191640,
		-0.526950, -0.452480, -0.719434,
		29.331812, 39.744118, 28.912701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052637, 40.013260, 29.628708>,  <29.700676, 40.060852, 29.416304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052637, 40.013260, 29.628708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059143, 39.731083, 29.345276>,  <29.063047, 39.561775, 29.175217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059143, 39.731083, 29.345276>,  <29.052637, 40.013260, 29.628708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059143, 39.731083, 29.345276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373285, -0.661719, 0.650220,
		-0.927574, 0.253925, -0.274095,
		0.016267, -0.705443, -0.708580,
		29.064024, 39.519451, 29.132702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.325859, 39.751114, 29.563192>,  <29.052637, 40.013260, 29.628708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.325859, 39.751114, 29.563192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574614, 39.461803, 29.443110>,  <28.723866, 39.288216, 29.371059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574614, 39.461803, 29.443110>,  <28.325859, 39.751114, 29.563192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574614, 39.461803, 29.443110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513584, -0.666089, 0.540886,
		-0.591176, -0.182189, -0.785696,
		0.621887, -0.723279, -0.300206,
		28.761179, 39.244820, 29.353046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944244, 39.333973, 29.368534>,  <28.325859, 39.751114, 29.563192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944244, 39.333973, 29.368534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254492, 39.081844, 29.381851>,  <28.440641, 38.930569, 29.389841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254492, 39.081844, 29.381851>,  <27.944244, 39.333973, 29.368534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254492, 39.081844, 29.381851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547997, -0.646268, 0.531072,
		-0.313231, -0.430153, -0.846673,
		0.775620, -0.630322, 0.033291,
		28.487177, 38.892746, 29.391838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631212, 38.596939, 29.201347>,  <27.944244, 39.333973, 29.368534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631212, 38.596939, 29.201347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979446, 38.581944, 29.397583>,  <28.188387, 38.572948, 29.515326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979446, 38.581944, 29.397583>,  <27.631212, 38.596939, 29.201347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979446, 38.581944, 29.397583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417748, -0.583099, 0.696765,
		0.259945, -0.811536, -0.523296,
		0.870583, -0.037485, 0.490591,
		28.240622, 38.570698, 29.544760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.619091, 37.895981, 29.467192>,  <27.631212, 38.596939, 29.201347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.619091, 37.895981, 29.467192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.900480, 38.080406, 29.683540>,  <28.069315, 38.191063, 29.813349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.900480, 38.080406, 29.683540>,  <27.619091, 37.895981, 29.467192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900480, 38.080406, 29.683540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240065, -0.562141, 0.791433,
		0.668948, -0.686598, -0.284766,
		0.703475, 0.461065, 0.540872,
		28.111523, 38.218727, 29.845802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977581, 37.327950, 29.784479>,  <27.619091, 37.895981, 29.467192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977581, 37.327950, 29.784479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075083, 37.647442, 30.004517>,  <28.133583, 37.839138, 30.136539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075083, 37.647442, 30.004517>,  <27.977581, 37.327950, 29.784479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.075083, 37.647442, 30.004517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075969, -0.549736, 0.831877,
		0.966857, -0.244565, -0.073322,
		0.243755, 0.798735, 0.550096,
		28.148209, 37.887062, 30.169546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567751, 37.105160, 30.161818>,  <27.977581, 37.327950, 29.784479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567751, 37.105160, 30.161818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.370718, 37.406872, 30.335449>,  <28.252499, 37.587898, 30.439629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.370718, 37.406872, 30.335449>,  <28.567751, 37.105160, 30.161818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.370718, 37.406872, 30.335449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150658, -0.565171, 0.811100,
		0.857125, 0.334138, 0.392033,
		-0.492585, 0.754277, 0.434081,
		28.222942, 37.633156, 30.465673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.710770, 36.952572, 30.801571>,  <28.567751, 37.105160, 30.161818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.710770, 36.952572, 30.801571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415951, 37.221088, 30.832893>,  <28.239059, 37.382198, 30.851686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415951, 37.221088, 30.832893>,  <28.710770, 36.952572, 30.801571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.415951, 37.221088, 30.832893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314229, -0.442958, 0.839671,
		0.598351, 0.594269, 0.537420,
		-0.737045, 0.671291, 0.078308,
		28.194838, 37.422478, 30.856386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791708, 37.219311, 31.521713>,  <28.710770, 36.952572, 30.801571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791708, 37.219311, 31.521713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417265, 37.266232, 31.389080>,  <28.192600, 37.294384, 31.309500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417265, 37.266232, 31.389080>,  <28.791708, 37.219311, 31.521713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417265, 37.266232, 31.389080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351433, -0.349957, 0.868346,
		-0.014183, 0.929393, 0.368819,
		-0.936105, 0.117299, -0.331583,
		28.136433, 37.301422, 31.289604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451780, 37.359367, 32.056862>,  <28.791708, 37.219311, 31.521713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.451780, 37.359367, 32.056862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156046, 37.263107, 31.805315>,  <27.978605, 37.205353, 31.654387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156046, 37.263107, 31.805315>,  <28.451780, 37.359367, 32.056862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156046, 37.263107, 31.805315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506787, -0.416055, 0.755026,
		-0.443340, 0.876918, 0.185645,
		-0.739335, -0.240651, -0.628865,
		27.934246, 37.190910, 31.616655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824108, 37.491894, 32.426952>,  <28.451780, 37.359367, 32.056862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824108, 37.491894, 32.426952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.752214, 37.221115, 32.141449>,  <27.709078, 37.058647, 31.970148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.752214, 37.221115, 32.141449>,  <27.824108, 37.491894, 32.426952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.752214, 37.221115, 32.141449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343609, -0.636665, 0.690355,
		-0.921753, 0.369332, -0.118174,
		-0.179733, -0.676943, -0.713754,
		27.698294, 37.018032, 31.927322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058088, 37.367008, 32.373421>,  <27.824108, 37.491894, 32.426952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058088, 37.367008, 32.373421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.263029, 37.051243, 32.238171>,  <27.385994, 36.861786, 32.157021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.263029, 37.051243, 32.238171>,  <27.058088, 37.367008, 32.373421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.263029, 37.051243, 32.238171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385497, -0.563245, 0.730853,
		-0.767391, -0.244106, -0.592894,
		0.512351, -0.789409, -0.338127,
		27.416735, 36.814419, 32.136734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.671267, 36.780556, 32.636654>,  <27.058088, 37.367008, 32.373421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.671267, 36.780556, 32.636654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016171, 36.614193, 32.521046>,  <27.223112, 36.514378, 32.451679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016171, 36.614193, 32.521046>,  <26.671267, 36.780556, 32.636654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016171, 36.614193, 32.521046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052336, -0.640776, 0.765942,
		-0.503757, -0.645314, -0.574281,
		0.862258, -0.415904, -0.289022,
		27.274849, 36.489422, 32.434338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547262, 36.070801, 32.648170>,  <26.671267, 36.780556, 32.636654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547262, 36.070801, 32.648170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946777, 36.084217, 32.633755>,  <27.186487, 36.092266, 32.625107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946777, 36.084217, 32.633755>,  <26.547262, 36.070801, 32.648170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946777, 36.084217, 32.633755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048664, -0.783159, 0.619914,
		-0.007434, -0.620916, -0.783842,
		0.998788, 0.033536, -0.036039,
		27.246414, 36.094276, 32.622944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767660, 35.451138, 32.499809>,  <26.547262, 36.070801, 32.648170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767660, 35.451138, 32.499809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081060, 35.612583, 32.688797>,  <27.269100, 35.709450, 32.802189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081060, 35.612583, 32.688797>,  <26.767660, 35.451138, 32.499809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081060, 35.612583, 32.688797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256287, -0.902548, 0.346011,
		0.566080, -0.150011, -0.810586,
		0.783499, 0.403612, 0.472469,
		27.316111, 35.733665, 32.830536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369003, 35.087490, 32.348358>,  <26.767660, 35.451138, 32.499809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369003, 35.087490, 32.348358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463821, 35.243671, 32.704193>,  <27.520712, 35.337379, 32.917694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463821, 35.243671, 32.704193>,  <27.369003, 35.087490, 32.348358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463821, 35.243671, 32.704193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401789, -0.873101, 0.276151,
		0.884519, 0.291965, -0.363844,
		0.237047, 0.390449, 0.889583,
		27.534935, 35.360806, 32.971069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108536, 35.207062, 32.529896>,  <27.369003, 35.087490, 32.348358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108536, 35.207062, 32.529896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874567, 35.090240, 32.832569>,  <27.734186, 35.020149, 33.014175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874567, 35.090240, 32.832569>,  <28.108536, 35.207062, 32.529896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874567, 35.090240, 32.832569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596307, -0.787234, 0.157104,
		0.549807, 0.543110, 0.634621,
		-0.584920, -0.292052, 0.756687,
		27.699091, 35.002625, 33.059574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482155, 35.077480, 33.125103>,  <28.108536, 35.207062, 32.529896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482155, 35.077480, 33.125103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154301, 34.848469, 33.117077>,  <27.957588, 34.711060, 33.112263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154301, 34.848469, 33.117077>,  <28.482155, 35.077480, 33.125103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154301, 34.848469, 33.117077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569834, -0.818385, 0.074402,
		-0.059019, 0.049549, 0.997026,
		-0.819638, -0.572531, -0.020066,
		27.908409, 34.676708, 33.111057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209156, 34.616207, 33.615871>,  <28.482155, 35.077480, 33.125103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209156, 34.616207, 33.615871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160990, 34.470818, 33.246357>,  <28.132090, 34.383583, 33.024647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160990, 34.470818, 33.246357>,  <28.209156, 34.616207, 33.615871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160990, 34.470818, 33.246357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661633, -0.723136, 0.198280,
		-0.740096, -0.587335, 0.327561,
		-0.120414, -0.363471, -0.923791,
		28.124865, 34.361774, 32.969219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244560, 33.957039, 33.797058>,  <28.209156, 34.616207, 33.615871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244560, 33.957039, 33.797058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303406, 33.972721, 33.401722>,  <28.338713, 33.982128, 33.164520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303406, 33.972721, 33.401722>,  <28.244560, 33.957039, 33.797058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303406, 33.972721, 33.401722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602052, -0.796346, 0.058028,
		-0.784787, -0.603570, -0.140755,
		0.147114, 0.039203, -0.988342,
		28.347540, 33.984482, 33.105221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058947, 33.309361, 33.388775>,  <28.244560, 33.957039, 33.797058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058947, 33.309361, 33.388775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385109, 33.484314, 33.237087>,  <28.580807, 33.589287, 33.146072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385109, 33.484314, 33.237087>,  <28.058947, 33.309361, 33.388775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385109, 33.484314, 33.237087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485465, -0.873499, 0.036380,
		-0.315337, -0.213763, -0.924591,
		0.815406, 0.437385, -0.379221,
		28.629730, 33.615528, 33.123322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227327, 32.999851, 32.784492>,  <28.058947, 33.309361, 33.388775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227327, 32.999851, 32.784492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563164, 33.129303, 32.959007>,  <28.764666, 33.206974, 33.063717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563164, 33.129303, 32.959007>,  <28.227327, 32.999851, 32.784492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563164, 33.129303, 32.959007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387559, -0.919646, -0.063637,
		0.380636, 0.222517, -0.897554,
		0.839592, 0.323632, 0.436289,
		28.815041, 33.226391, 33.089893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732323, 32.665588, 32.343475>,  <28.227327, 32.999851, 32.784492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732323, 32.665588, 32.343475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864742, 32.790657, 32.699596>,  <28.944195, 32.865700, 32.913269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864742, 32.790657, 32.699596>,  <28.732323, 32.665588, 32.343475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864742, 32.790657, 32.699596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296598, -0.930164, 0.216388,
		0.895788, 0.192427, -0.400669,
		0.331049, 0.312676, 0.890304,
		28.964058, 32.884460, 32.966686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534557, 32.478432, 32.559437>,  <28.732323, 32.665588, 32.343475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534557, 32.478432, 32.559437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278034, 32.511028, 32.864613>,  <29.124121, 32.530586, 33.047718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278034, 32.511028, 32.864613>,  <29.534557, 32.478432, 32.559437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278034, 32.511028, 32.864613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362559, -0.844150, 0.394920,
		0.676219, 0.529878, 0.511818,
		-0.641310, 0.081488, 0.762942,
		29.085642, 32.535473, 33.093494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210796, 31.895493, 32.552319>,  <29.534557, 32.478432, 32.559437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210796, 31.895493, 32.552319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328278, 31.516256, 32.503559>,  <29.398767, 31.288713, 32.474304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328278, 31.516256, 32.503559>,  <29.210796, 31.895493, 32.552319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328278, 31.516256, 32.503559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136068, -0.084757, 0.987067,
		-0.946162, -0.306493, 0.104111,
		0.293705, -0.948092, -0.121898,
		29.416389, 31.231829, 32.466991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829588, 31.410572, 32.998772>,  <29.210796, 31.895493, 32.552319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.829588, 31.410572, 32.998772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198429, 31.268318, 32.937786>,  <29.419735, 31.182966, 32.901196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198429, 31.268318, 32.937786>,  <28.829588, 31.410572, 32.998772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198429, 31.268318, 32.937786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119385, -0.113315, 0.986360,
		-0.368062, -0.927730, -0.062031,
		0.922105, -0.355637, -0.152464,
		29.475061, 31.161627, 32.892048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832952, 30.692677, 33.297371>,  <28.829588, 31.410572, 32.998772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832952, 30.692677, 33.297371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207438, 30.831213, 33.273529>,  <29.432129, 30.914335, 33.259224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207438, 30.831213, 33.273529>,  <28.832952, 30.692677, 33.297371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207438, 30.831213, 33.273529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123755, -0.166177, 0.978299,
		0.328920, -0.923273, -0.198439,
		0.936214, 0.346341, -0.059601,
		29.488302, 30.935116, 33.255650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.225924, 30.204855, 33.555588>,  <28.832952, 30.692677, 33.297371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.225924, 30.204855, 33.555588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448425, 30.532375, 33.612366>,  <29.581926, 30.728888, 33.646431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448425, 30.532375, 33.612366>,  <29.225924, 30.204855, 33.555588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448425, 30.532375, 33.612366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232387, -0.317258, 0.919426,
		0.797860, -0.478447, -0.366754,
		0.556252, 0.818801, 0.141943,
		29.615301, 30.778015, 33.654949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494034, 30.088266, 34.143803>,  <29.225924, 30.204855, 33.555588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494034, 30.088266, 34.143803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621851, 30.465656, 34.108589>,  <29.698542, 30.692089, 34.087460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621851, 30.465656, 34.108589>,  <29.494034, 30.088266, 34.143803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621851, 30.465656, 34.108589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237257, 0.010288, 0.971392,
		0.917389, -0.331287, -0.220559,
		0.319541, 0.943474, -0.088038,
		29.717712, 30.748699, 34.082176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224701, 30.077971, 34.381817>,  <29.494034, 30.088266, 34.143803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224701, 30.077971, 34.381817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.060398, 30.439346, 34.430935>,  <29.961817, 30.656172, 34.460403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.060398, 30.439346, 34.430935>,  <30.224701, 30.077971, 34.381817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.060398, 30.439346, 34.430935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209605, -0.037499, 0.977067,
		0.887324, 0.427076, -0.173962,
		-0.410758, 0.903438, 0.122791,
		29.937170, 30.710379, 34.467773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668722, 30.433163, 34.829445>,  <30.224701, 30.077971, 34.381817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668722, 30.433163, 34.829445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326788, 30.640409, 34.840851>,  <30.121628, 30.764757, 34.847694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326788, 30.640409, 34.840851>,  <30.668722, 30.433163, 34.829445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326788, 30.640409, 34.840851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153517, 0.200020, 0.967690,
		0.495671, 0.831594, -0.250524,
		-0.854835, 0.518115, 0.028520,
		30.070337, 30.795843, 34.849407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835205, 31.128584, 34.936188>,  <30.668722, 30.433163, 34.829445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835205, 31.128584, 34.936188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454590, 31.095385, 35.054638>,  <30.226221, 31.075464, 35.125710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454590, 31.095385, 35.054638>,  <30.835205, 31.128584, 34.936188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454590, 31.095385, 35.054638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257926, 0.309027, 0.915411,
		-0.167490, 0.947424, -0.272643,
		-0.951536, -0.083001, 0.296124,
		30.169128, 31.070484, 35.143475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731499, 31.581266, 35.481285>,  <30.835205, 31.128584, 34.936188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731499, 31.581266, 35.481285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.401428, 31.368408, 35.557087>,  <30.203386, 31.240694, 35.602570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.401428, 31.368408, 35.557087>,  <30.731499, 31.581266, 35.481285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401428, 31.368408, 35.557087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001757, 0.333057, 0.942905,
		-0.564876, 0.778394, -0.273895,
		-0.825174, -0.532143, 0.189503,
		30.153875, 31.208765, 35.613937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277620, 32.011623, 35.821533>,  <30.731499, 31.581266, 35.481285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277620, 32.011623, 35.821533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136950, 31.649492, 35.916779>,  <30.052547, 31.432213, 35.973927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136950, 31.649492, 35.916779>,  <30.277620, 32.011623, 35.821533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136950, 31.649492, 35.916779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015701, 0.260026, 0.965474,
		-0.935990, 0.335797, -0.105660,
		-0.351678, -0.905333, 0.238109,
		30.031446, 31.377893, 35.988213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935349, 32.109623, 36.354458>,  <30.277620, 32.011623, 35.821533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935349, 32.109623, 36.354458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975075, 31.711784, 36.366611>,  <29.998911, 31.473082, 36.373901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975075, 31.711784, 36.366611>,  <29.935349, 32.109623, 36.354458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975075, 31.711784, 36.366611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018403, 0.032362, 0.999307,
		-0.994886, -0.098689, 0.021517,
		0.099317, -0.994592, 0.030380,
		30.004869, 31.413406, 36.375725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354504, 31.871473, 36.754089>,  <29.935349, 32.109623, 36.354458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354504, 31.871473, 36.754089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637165, 31.590141, 36.784981>,  <29.806763, 31.421341, 36.803516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637165, 31.590141, 36.784981>,  <29.354504, 31.871473, 36.754089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637165, 31.590141, 36.784981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064194, 0.044963, 0.996924,
		-0.704640, -0.709439, -0.013377,
		0.706655, -0.703331, 0.077224,
		29.849161, 31.379143, 36.808147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162292, 31.446676, 37.345810>,  <29.354504, 31.871473, 36.754089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162292, 31.446676, 37.345810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543222, 31.341780, 37.283440>,  <29.771780, 31.278843, 37.246017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543222, 31.341780, 37.283440>,  <29.162292, 31.446676, 37.345810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543222, 31.341780, 37.283440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151420, -0.037428, 0.987761,
		-0.264866, -0.964276, 0.004065,
		0.952322, -0.262240, -0.155924,
		29.828918, 31.263107, 37.236664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205769, 30.754026, 37.578568>,  <29.162292, 31.446676, 37.345810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205769, 30.754026, 37.578568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569981, 30.917086, 37.606155>,  <29.788507, 31.014921, 37.622707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569981, 30.917086, 37.606155>,  <29.205769, 30.754026, 37.578568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569981, 30.917086, 37.606155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021619, -0.213533, 0.976697,
		0.412876, -0.887821, -0.203241,
		0.910531, 0.407649, 0.068969,
		29.843140, 31.039381, 37.626846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679962, 30.312038, 37.948521>,  <29.205769, 30.754026, 37.578568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679962, 30.312038, 37.948521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820599, 30.684748, 37.984711>,  <29.904980, 30.908373, 38.006424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820599, 30.684748, 37.984711>,  <29.679962, 30.312038, 37.948521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820599, 30.684748, 37.984711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026500, -0.106510, 0.993959,
		0.935779, -0.347067, -0.062140,
		0.351589, 0.931773, 0.090472,
		29.926075, 30.964279, 38.011852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084896, 30.271362, 38.584530>,  <29.679962, 30.312038, 37.948521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084896, 30.271362, 38.584530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082964, 30.667301, 38.527702>,  <30.081804, 30.904863, 38.493607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082964, 30.667301, 38.527702>,  <30.084896, 30.271362, 38.584530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082964, 30.667301, 38.527702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143240, 0.141290, 0.979551,
		0.989676, -0.015619, -0.142467,
		-0.004830, 0.989845, -0.142068,
		30.081514, 30.964254, 38.485081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549738, 30.529095, 39.064789>,  <30.084896, 30.271362, 38.584530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549738, 30.529095, 39.064789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329453, 30.852161, 38.980515>,  <30.197281, 31.046001, 38.929951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329453, 30.852161, 38.980515>,  <30.549738, 30.529095, 39.064789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329453, 30.852161, 38.980515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033554, 0.273626, 0.961251,
		0.834019, 0.522306, -0.177790,
		-0.550715, 0.807667, -0.210684,
		30.164238, 31.094461, 38.917309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836691, 31.092514, 39.440094>,  <30.549738, 30.529095, 39.064789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836691, 31.092514, 39.440094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468561, 31.219492, 39.348675>,  <30.247683, 31.295679, 39.293823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468561, 31.219492, 39.348675>,  <30.836691, 31.092514, 39.440094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468561, 31.219492, 39.348675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113642, 0.342086, 0.932772,
		0.374284, 0.884425, -0.278756,
		-0.920324, 0.317443, -0.228545,
		30.192463, 31.314726, 39.280113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831179, 31.715767, 39.720577>,  <30.836691, 31.092514, 39.440094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831179, 31.715767, 39.720577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448318, 31.618368, 39.657879>,  <30.218601, 31.559929, 39.620262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448318, 31.618368, 39.657879>,  <30.831179, 31.715767, 39.720577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448318, 31.618368, 39.657879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236139, 0.342978, 0.909178,
		-0.167625, 0.907235, -0.385781,
		-0.957152, -0.243499, -0.156742,
		30.161173, 31.545319, 39.610855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526548, 32.306652, 39.782303>,  <30.831179, 31.715767, 39.720577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526548, 32.306652, 39.782303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275667, 32.002392, 39.849270>,  <30.125137, 31.819836, 39.889450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275667, 32.002392, 39.849270>,  <30.526548, 32.306652, 39.782303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275667, 32.002392, 39.849270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166684, 0.341067, 0.925143,
		-0.760810, 0.552347, -0.340706,
		-0.627204, -0.760648, 0.167419,
		30.087505, 31.774197, 39.899494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996214, 32.611183, 40.229984>,  <30.526548, 32.306652, 39.782303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996214, 32.611183, 40.229984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987120, 32.213615, 40.273071>,  <29.981663, 31.975075, 40.298923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987120, 32.213615, 40.273071>,  <29.996214, 32.611183, 40.229984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987120, 32.213615, 40.273071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059456, 0.108900, 0.992273,
		-0.997972, 0.016157, -0.061571,
		-0.022737, -0.993921, 0.107718,
		29.980299, 31.915440, 40.305386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579762, 32.478931, 40.823746>,  <29.996214, 32.611183, 40.229984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579762, 32.478931, 40.823746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769903, 32.128109, 40.796017>,  <29.883987, 31.917614, 40.779381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769903, 32.128109, 40.796017>,  <29.579762, 32.478931, 40.823746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769903, 32.128109, 40.796017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156629, 0.006828, 0.987634,
		-0.865740, -0.480334, 0.140619,
		0.475354, -0.877059, -0.069323,
		29.912510, 31.864990, 40.775219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304285, 32.094143, 41.342426>,  <29.579762, 32.478931, 40.823746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304285, 32.094143, 41.342426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666224, 31.942989, 41.263985>,  <29.883387, 31.852297, 41.216919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666224, 31.942989, 41.263985>,  <29.304285, 32.094143, 41.342426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666224, 31.942989, 41.263985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187245, -0.060452, 0.980451,
		-0.382355, -0.923876, 0.016058,
		0.904845, -0.377887, -0.196105,
		29.937677, 31.829624, 41.205154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270376, 31.382090, 41.485912>,  <29.304285, 32.094143, 41.342426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270376, 31.382090, 41.485912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623035, 31.564699, 41.533714>,  <29.834631, 31.674265, 41.562397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623035, 31.564699, 41.533714>,  <29.270376, 31.382090, 41.485912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623035, 31.564699, 41.533714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110116, -0.047234, 0.992796,
		0.458879, -0.888457, 0.008627,
		0.881649, 0.456523, 0.119508,
		29.887529, 31.701656, 41.569569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500265, 30.940838, 42.026459>,  <29.270376, 31.382090, 41.485912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500265, 30.940838, 42.026459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.727911, 31.269279, 42.009056>,  <29.864498, 31.466345, 41.998615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.727911, 31.269279, 42.009056>,  <29.500265, 30.940838, 42.026459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727911, 31.269279, 42.009056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022009, 0.037684, 0.999047,
		0.821964, -0.569530, 0.003374,
		0.569115, 0.821106, -0.043510,
		29.898645, 31.515612, 41.996002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884512, 30.862949, 42.640087>,  <29.500265, 30.940838, 42.026459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884512, 30.862949, 42.640087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982433, 31.236176, 42.534668>,  <30.041185, 31.460112, 42.471416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982433, 31.236176, 42.534668>,  <29.884512, 30.862949, 42.640087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982433, 31.236176, 42.534668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325217, 0.177055, 0.928916,
		0.913403, -0.313113, -0.260106,
		0.244802, 0.933066, -0.263553,
		30.055874, 31.516096, 42.455601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650606, 31.043934, 42.756611>,  <29.884512, 30.862949, 42.640087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650606, 31.043934, 42.756611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445995, 31.387333, 42.742039>,  <30.323229, 31.593372, 42.733295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445995, 31.387333, 42.742039>,  <30.650606, 31.043934, 42.756611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445995, 31.387333, 42.742039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394152, 0.272103, 0.877841,
		0.763535, 0.434679, -0.477565,
		-0.511526, 0.858495, -0.036431,
		30.292538, 31.644882, 42.731110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091047, 31.592360, 42.725113>,  <30.650606, 31.043934, 42.756611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091047, 31.592360, 42.725113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737875, 31.694683, 42.882591>,  <30.525972, 31.756077, 42.977077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737875, 31.694683, 42.882591>,  <31.091047, 31.592360, 42.725113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737875, 31.694683, 42.882591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440648, 0.162060, 0.882930,
		0.162060, 0.953047, -0.255809,
		-0.882930, 0.255809, 0.393695,
		30.472996, 31.771425, 43.000698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221941, 32.242447, 43.171062>,  <31.091047, 31.592360, 42.725113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221941, 32.242447, 43.171062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882328, 32.070042, 43.293289>,  <30.678560, 31.966600, 43.366627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882328, 32.070042, 43.293289>,  <31.221941, 32.242447, 43.171062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882328, 32.070042, 43.293289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310179, 0.061570, 0.948682,
		-0.427704, 0.900245, 0.081415,
		-0.849034, -0.431009, 0.305571,
		30.627619, 31.940739, 43.384960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048817, 32.577244, 43.779305>,  <31.221941, 32.242447, 43.171062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048817, 32.577244, 43.779305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823965, 32.249496, 43.824280>,  <30.689054, 32.052849, 43.851265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823965, 32.249496, 43.824280>,  <31.048817, 32.577244, 43.779305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823965, 32.249496, 43.824280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229772, -0.024121, 0.972946,
		-0.794490, 0.572758, 0.201828,
		-0.562131, -0.819369, 0.112440,
		30.655325, 32.003685, 43.858013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713440, 32.724228, 44.363377>,  <31.048817, 32.577244, 43.779305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.713440, 32.724228, 44.363377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660385, 32.329586, 44.325397>,  <30.628553, 32.092800, 44.302608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660385, 32.329586, 44.325397>,  <30.713440, 32.724228, 44.363377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660385, 32.329586, 44.325397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153279, -0.115060, 0.981461,
		-0.979241, 0.115622, 0.166487,
		-0.132635, -0.986606, -0.094949,
		30.620594, 32.033604, 44.296913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281202, 32.579258, 44.951839>,  <30.713440, 32.724228, 44.363377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281202, 32.579258, 44.951839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448914, 32.232449, 44.844154>,  <30.549540, 32.024364, 44.779545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448914, 32.232449, 44.844154>,  <30.281202, 32.579258, 44.951839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448914, 32.232449, 44.844154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133070, -0.234643, 0.962931,
		-0.898053, -0.439559, 0.016994,
		0.419277, -0.867024, -0.269214,
		30.574697, 31.972342, 44.763390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120010, 32.111118, 45.535629>,  <30.281202, 32.579258, 44.951839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120010, 32.111118, 45.535629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432949, 31.943785, 45.351051>,  <30.620712, 31.843386, 45.240303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432949, 31.943785, 45.351051>,  <30.120010, 32.111118, 45.535629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432949, 31.943785, 45.351051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346686, -0.323016, 0.880607,
		-0.517442, -0.848917, -0.107680,
		0.782345, -0.418332, -0.461450,
		30.667652, 31.818285, 45.212616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154686, 31.474239, 45.902512>,  <30.120010, 32.111118, 45.535629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154686, 31.474239, 45.902512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513105, 31.480349, 45.725033>,  <30.728157, 31.484015, 45.618546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513105, 31.480349, 45.725033>,  <30.154686, 31.474239, 45.902512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513105, 31.480349, 45.725033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403032, -0.447102, 0.798539,
		-0.186183, -0.894353, -0.406779,
		0.896048, 0.015271, -0.443696,
		30.781919, 31.484930, 45.591923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427643, 30.874598, 46.090771>,  <30.154686, 31.474239, 45.902512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427643, 30.874598, 46.090771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760511, 31.064558, 45.976257>,  <30.960232, 31.178535, 45.907551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760511, 31.064558, 45.976257>,  <30.427643, 30.874598, 46.090771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760511, 31.064558, 45.976257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473056, -0.338617, 0.813362,
		0.289327, -0.812284, -0.506443,
		0.832171, 0.474903, -0.286285,
		31.010162, 31.207029, 45.890373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989838, 30.506247, 46.192177>,  <30.427643, 30.874598, 46.090771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989838, 30.506247, 46.192177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150143, 30.872601, 46.201546>,  <31.246325, 31.092413, 46.207165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150143, 30.872601, 46.201546>,  <30.989838, 30.506247, 46.192177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150143, 30.872601, 46.201546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437823, -0.213906, 0.873244,
		0.804799, -0.339709, -0.486720,
		0.400761, 0.915883, 0.023419,
		31.270370, 31.147366, 46.208572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693092, 30.277704, 46.259769>,  <30.989838, 30.506247, 46.192177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693092, 30.277704, 46.259769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653316, 30.660679, 46.368160>,  <31.629450, 30.890463, 46.433193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653316, 30.660679, 46.368160>,  <31.693092, 30.277704, 46.259769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653316, 30.660679, 46.368160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452705, -0.198978, 0.869176,
		0.886098, 0.209104, -0.413649,
		-0.099442, 0.957436, 0.270976,
		31.623484, 30.947910, 46.449451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356537, 30.563242, 46.572807>,  <31.693092, 30.277704, 46.259769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356537, 30.563242, 46.572807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086464, 30.814968, 46.726738>,  <31.924421, 30.966003, 46.819096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086464, 30.814968, 46.726738>,  <32.356537, 30.563242, 46.572807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086464, 30.814968, 46.726738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406017, -0.118501, 0.906150,
		0.615858, 0.768061, -0.175504,
		-0.675181, 0.629317, 0.384826,
		31.883909, 31.003763, 46.842186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749748, 30.970697, 46.975739>,  <32.356537, 30.563242, 46.572807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749748, 30.970697, 46.975739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378933, 31.021118, 47.116993>,  <32.156445, 31.051371, 47.201744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378933, 31.021118, 47.116993>,  <32.749748, 30.970697, 46.975739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378933, 31.021118, 47.116993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335156, -0.143699, 0.931140,
		0.168115, 0.981561, 0.090969,
		-0.927042, 0.126050, 0.353134,
		32.100819, 31.058933, 47.222935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709076, 31.464689, 47.528362>,  <32.749748, 30.970697, 46.975739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709076, 31.464689, 47.528362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388367, 31.234543, 47.593010>,  <32.195942, 31.096455, 47.631798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388367, 31.234543, 47.593010>,  <32.709076, 31.464689, 47.528362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388367, 31.234543, 47.593010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303819, -0.159526, 0.939279,
		-0.514644, 0.802190, 0.302710,
		-0.801770, -0.575364, 0.161622,
		32.147835, 31.061934, 47.641495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433678, 31.638777, 48.145454>,  <32.709076, 31.464689, 47.528362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433678, 31.638777, 48.145454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251259, 31.283545, 48.122349>,  <32.141808, 31.070406, 48.108486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251259, 31.283545, 48.122349>,  <32.433678, 31.638777, 48.145454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251259, 31.283545, 48.122349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143958, -0.137669, 0.979961,
		-0.878237, 0.438589, 0.190630,
		-0.456044, -0.888080, -0.057767,
		32.114445, 31.017120, 48.105019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074902, 31.480595, 48.760365>,  <32.433678, 31.638777, 48.145454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074902, 31.480595, 48.760365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139324, 31.114395, 48.612896>,  <32.177979, 30.894674, 48.524414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139324, 31.114395, 48.612896>,  <32.074902, 31.480595, 48.760365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139324, 31.114395, 48.612896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288646, -0.313519, 0.904649,
		-0.943792, -0.252118, 0.213760,
		0.161060, -0.915501, -0.368670,
		32.187641, 30.839745, 48.502296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957947, 31.328976, 49.472080>,  <32.074902, 31.480595, 48.760365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957947, 31.328976, 49.472080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898090, 31.142057, 49.123543>,  <31.862177, 31.029905, 48.914421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898090, 31.142057, 49.123543>,  <31.957947, 31.328976, 49.472080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898090, 31.142057, 49.123543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506244, -0.793201, 0.338450,
		-0.849308, -0.390467, 0.355262,
		-0.149641, -0.467298, -0.871344,
		31.853197, 31.001867, 48.862141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500025, 30.676683, 49.529160>,  <31.957947, 31.328976, 49.472080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500025, 30.676683, 49.529160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808029, 30.696955, 49.274754>,  <31.992832, 30.709118, 49.122108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808029, 30.696955, 49.274754>,  <31.500025, 30.676683, 49.529160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808029, 30.696955, 49.274754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485691, -0.692987, 0.532798,
		-0.413750, -0.719167, -0.558220,
		0.770010, 0.050677, -0.636016,
		32.039032, 30.712158, 49.083950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592321, 30.064951, 49.116528>,  <31.500025, 30.676683, 49.529160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592321, 30.064951, 49.116528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922054, 30.254282, 49.240746>,  <32.119892, 30.367880, 49.315277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922054, 30.254282, 49.240746>,  <31.592321, 30.064951, 49.116528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922054, 30.254282, 49.240746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206566, -0.762230, 0.613462,
		0.527075, -0.441549, -0.726104,
		0.824332, 0.473328, 0.310543,
		32.169353, 30.396280, 49.333908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190987, 29.611515, 48.985714>,  <31.592321, 30.064951, 49.116528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190987, 29.611515, 48.985714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270802, 29.880096, 49.271187>,  <32.318691, 30.041245, 49.442471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270802, 29.880096, 49.271187>,  <32.190987, 29.611515, 48.985714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270802, 29.880096, 49.271187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286801, -0.736447, 0.612691,
		0.936980, 0.082432, -0.339520,
		0.199533, 0.671454, 0.713678,
		32.330662, 30.081533, 49.485291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924507, 29.581280, 49.103123>,  <32.190987, 29.611515, 48.985714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924507, 29.581280, 49.103123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724510, 29.713469, 49.423321>,  <32.604511, 29.792782, 49.615440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724510, 29.713469, 49.423321>,  <32.924507, 29.581280, 49.103123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724510, 29.713469, 49.423321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423860, -0.712673, 0.558963,
		0.755212, 0.618778, 0.216260,
		-0.499997, 0.330471, 0.800495,
		32.574512, 29.812611, 49.663467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670624, 29.031855, 49.575684>,  <32.924507, 29.581280, 49.103123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670624, 29.031855, 49.575684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683868, 28.808035, 49.244431>,  <32.691814, 28.673742, 49.045677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683868, 28.808035, 49.244431>,  <32.670624, 29.031855, 49.575684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683868, 28.808035, 49.244431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304266, -0.783616, 0.541635,
		-0.952011, -0.269910, 0.144303,
		0.033114, -0.559549, -0.828135,
		32.693802, 28.640171, 48.995991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117523, 28.365627, 49.611229>,  <32.670624, 29.031855, 49.575684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117523, 28.365627, 49.611229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468914, 28.361425, 49.420158>,  <32.679749, 28.358904, 49.305515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468914, 28.361425, 49.420158>,  <32.117523, 28.365627, 49.611229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468914, 28.361425, 49.420158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289902, -0.782980, 0.550363,
		-0.379791, -0.621958, -0.684782,
		0.878473, -0.010503, -0.477676,
		32.732456, 28.358274, 49.276855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579790, 28.839952, 49.289326>,  <32.117523, 28.365627, 49.611229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579790, 28.839952, 49.289326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192703, 28.740761, 49.307327>,  <30.960451, 28.681246, 49.318127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192703, 28.740761, 49.307327>,  <31.579790, 28.839952, 49.289326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192703, 28.740761, 49.307327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050624, -0.366181, -0.929165,
		0.246896, -0.896893, 0.366915,
		-0.967719, -0.247982, 0.045004,
		30.902388, 28.666367, 49.320827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538200, 28.241709, 49.091133>,  <31.579790, 28.839952, 49.289326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538200, 28.241709, 49.091133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169252, 28.371397, 49.007118>,  <30.947884, 28.449209, 48.956711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169252, 28.371397, 49.007118>,  <31.538200, 28.241709, 49.091133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169252, 28.371397, 49.007118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141630, -0.222033, -0.964698,
		-0.359410, -0.919556, 0.158877,
		-0.922369, 0.324220, -0.210037,
		30.892542, 28.468662, 48.944107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128473, 27.813395, 48.616112>,  <31.538200, 28.241709, 49.091133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128473, 27.813395, 48.616112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025688, 28.197317, 48.570957>,  <30.964016, 28.427670, 48.543861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025688, 28.197317, 48.570957>,  <31.128473, 27.813395, 48.616112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025688, 28.197317, 48.570957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011827, -0.113682, -0.993447,
		-0.966348, -0.256616, 0.017861,
		-0.256965, 0.959804, -0.112891,
		30.948599, 28.485258, 48.537090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530172, 27.855675, 48.274117>,  <31.128473, 27.813395, 48.616112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530172, 27.855675, 48.274117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765305, 28.176344, 48.230717>,  <30.906384, 28.368746, 48.204678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765305, 28.176344, 48.230717>,  <30.530172, 27.855675, 48.274117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765305, 28.176344, 48.230717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041201, -0.163615, -0.985663,
		-0.807933, 0.574934, -0.129208,
		0.587832, 0.801674, -0.108502,
		30.941654, 28.416845, 48.198166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302038, 28.321226, 47.702538>,  <30.530172, 27.855675, 48.274117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302038, 28.321226, 47.702538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687756, 28.412077, 47.757019>,  <30.919186, 28.466587, 47.789707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687756, 28.412077, 47.757019>,  <30.302038, 28.321226, 47.702538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687756, 28.412077, 47.757019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164433, -0.110332, -0.980198,
		-0.207602, 0.967595, -0.143740,
		0.964294, 0.227127, 0.136199,
		30.977043, 28.480215, 47.797878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522375, 28.926058, 47.334549>,  <30.302038, 28.321226, 47.702538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522375, 28.926058, 47.334549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864748, 28.727409, 47.392159>,  <31.070171, 28.608219, 47.426723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864748, 28.727409, 47.392159>,  <30.522375, 28.926058, 47.334549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864748, 28.727409, 47.392159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119170, -0.081569, -0.989517,
		0.503165, 0.864125, -0.010635,
		0.855934, -0.496623, 0.144021,
		31.121529, 28.578423, 47.435364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964821, 29.324244, 46.829212>,  <30.522375, 28.926058, 47.334549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964821, 29.324244, 46.829212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149647, 28.978901, 46.910316>,  <31.260542, 28.771696, 46.958981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149647, 28.978901, 46.910316>,  <30.964821, 29.324244, 46.829212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149647, 28.978901, 46.910316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367522, -0.021657, -0.929762,
		0.807107, 0.504131, 0.307295,
		0.462067, -0.863356, 0.202759,
		31.288267, 28.719894, 46.971146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690184, 29.370373, 46.577026>,  <30.964821, 29.324244, 46.829212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690184, 29.370373, 46.577026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615379, 28.977823, 46.594597>,  <31.570498, 28.742292, 46.605137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615379, 28.977823, 46.594597>,  <31.690184, 29.370373, 46.577026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615379, 28.977823, 46.594597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335560, -0.105840, -0.936054,
		0.923269, -0.160313, 0.349104,
		-0.187011, -0.981375, 0.043924,
		31.559277, 28.683411, 46.607773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416660, 29.007898, 46.320274>,  <31.690184, 29.370373, 46.577026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416660, 29.007898, 46.320274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135754, 28.723181, 46.315060>,  <31.967209, 28.552351, 46.311932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135754, 28.723181, 46.315060>,  <32.416660, 29.007898, 46.320274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135754, 28.723181, 46.315060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286336, -0.265643, -0.920568,
		0.651789, -0.650220, 0.390365,
		-0.702269, -0.711792, -0.013039,
		31.925074, 28.509644, 46.311150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672043, 28.251299, 46.277939>,  <32.416660, 29.007898, 46.320274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672043, 28.251299, 46.277939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322651, 28.296993, 46.088631>,  <32.113018, 28.324409, 45.975044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322651, 28.296993, 46.088631>,  <32.672043, 28.251299, 46.277939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322651, 28.296993, 46.088631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421322, -0.309769, -0.852368,
		-0.243973, -0.943925, 0.222448,
		-0.873479, 0.114232, -0.473271,
		32.060608, 28.331264, 45.946648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685066, 27.730330, 45.793205>,  <32.672043, 28.251299, 46.277939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685066, 27.730330, 45.793205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374268, 27.944338, 45.660519>,  <32.187790, 28.072742, 45.580906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374268, 27.944338, 45.660519>,  <32.685066, 27.730330, 45.793205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374268, 27.944338, 45.660519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265933, -0.198641, -0.943303,
		-0.570578, -0.821155, 0.012064,
		-0.776994, 0.535020, -0.331712,
		32.141171, 28.104843, 45.561005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565815, 27.487474, 45.211582>,  <32.685066, 27.730330, 45.793205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565815, 27.487474, 45.211582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359028, 27.822929, 45.142960>,  <32.234955, 28.024202, 45.101788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359028, 27.822929, 45.142960>,  <32.565815, 27.487474, 45.211582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359028, 27.822929, 45.142960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037459, -0.178061, -0.983306,
		-0.855187, -0.514760, 0.060636,
		-0.516964, 0.838640, -0.171558,
		32.203938, 28.074522, 45.091492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259743, 27.245819, 44.615997>,  <32.565815, 27.487474, 45.211582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259743, 27.245819, 44.615997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229195, 27.644503, 44.605129>,  <32.210865, 27.883713, 44.598606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229195, 27.644503, 44.605129>,  <32.259743, 27.245819, 44.615997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229195, 27.644503, 44.605129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040570, -0.024125, -0.998885,
		-0.996254, -0.077386, -0.038594,
		-0.076369, 0.996709, -0.027174,
		32.206284, 27.943516, 44.596977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693701, 27.384525, 44.082539>,  <32.259743, 27.245819, 44.615997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693701, 27.384525, 44.082539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921085, 27.708788, 44.138668>,  <32.057514, 27.903345, 44.172348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921085, 27.708788, 44.138668>,  <31.693701, 27.384525, 44.082539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921085, 27.708788, 44.138668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140413, 0.072468, -0.987437,
		-0.810641, 0.581022, -0.072631,
		0.568460, 0.810655, 0.140328,
		32.091621, 27.951984, 44.180767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416702, 27.861809, 43.539982>,  <31.693701, 27.384525, 44.082539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416702, 27.861809, 43.539982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775806, 27.994190, 43.656258>,  <31.991268, 28.073620, 43.726021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775806, 27.994190, 43.656258>,  <31.416702, 27.861809, 43.539982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775806, 27.994190, 43.656258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179552, 0.327655, -0.927579,
		-0.402232, 0.884935, 0.234732,
		0.897759, 0.330955, 0.290686,
		32.045135, 28.093477, 43.743462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378986, 28.510626, 43.414761>,  <31.416702, 27.861809, 43.539982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378986, 28.510626, 43.414761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750504, 28.362385, 43.414234>,  <31.973413, 28.273441, 43.413918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750504, 28.362385, 43.414234>,  <31.378986, 28.510626, 43.414761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750504, 28.362385, 43.414234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118111, 0.299361, -0.946801,
		0.351279, 0.879226, 0.321816,
		0.928791, -0.370601, -0.001313,
		32.029140, 28.251204, 43.413841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665619, 28.857786, 42.946976>,  <31.378986, 28.510626, 43.414761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665619, 28.857786, 42.946976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945244, 28.575132, 42.990761>,  <32.113018, 28.405540, 43.017033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945244, 28.575132, 42.990761>,  <31.665619, 28.857786, 42.946976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945244, 28.575132, 42.990761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325396, 0.178047, -0.928664,
		0.636735, 0.684812, 0.354401,
		0.699061, -0.706634, 0.109466,
		32.154961, 28.363142, 43.023602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242386, 29.136236, 42.533791>,  <31.665619, 28.857786, 42.946976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242386, 29.136236, 42.533791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280830, 28.740999, 42.581844>,  <32.303898, 28.503857, 42.610676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280830, 28.740999, 42.581844>,  <32.242386, 29.136236, 42.533791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280830, 28.740999, 42.581844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128731, -0.107344, -0.985853,
		0.987011, 0.110221, 0.116881,
		0.096115, -0.988093, 0.120139,
		32.309666, 28.444571, 42.617886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847252, 28.988653, 42.415115>,  <32.242386, 29.136236, 42.533791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847252, 28.988653, 42.415115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676155, 28.630836, 42.363224>,  <32.573498, 28.416145, 42.332088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676155, 28.630836, 42.363224>,  <32.847252, 28.988653, 42.415115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676155, 28.630836, 42.363224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351302, -0.032286, -0.935705,
		0.832841, -0.445813, 0.328065,
		-0.427742, -0.894544, -0.129726,
		32.547832, 28.362473, 42.324306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298557, 28.576370, 41.913803>,  <32.847252, 28.988653, 42.415115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298557, 28.576370, 41.913803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938557, 28.402025, 41.912022>,  <32.722557, 28.297419, 41.910954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938557, 28.402025, 41.912022>,  <33.298557, 28.576370, 41.913803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938557, 28.402025, 41.912022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051124, -0.095409, -0.994125,
		0.432877, -0.894942, 0.108151,
		-0.900003, -0.435862, -0.004453,
		32.668556, 28.271267, 41.910686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315613, 27.906128, 41.459663>,  <33.298557, 28.576370, 41.913803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315613, 27.906128, 41.459663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927448, 28.000397, 41.480682>,  <32.694550, 28.056957, 41.493294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927448, 28.000397, 41.480682>,  <33.315613, 27.906128, 41.459663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927448, 28.000397, 41.480682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051844, 0.009182, -0.998613,
		-0.235827, -0.971790, 0.003308,
		-0.970411, 0.235672, 0.052547,
		32.636326, 28.071098, 41.496445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955616, 27.421659, 40.978657>,  <33.315613, 27.906128, 41.459663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955616, 27.421659, 40.978657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679531, 27.706055, 41.032478>,  <32.513882, 27.876692, 41.064770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679531, 27.706055, 41.032478>,  <32.955616, 27.421659, 40.978657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679531, 27.706055, 41.032478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262194, -0.072421, -0.962294,
		-0.674437, -0.699462, 0.236403,
		-0.690209, 0.710990, 0.134551,
		32.472469, 27.919352, 41.072845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408894, 27.137760, 40.655609>,  <32.955616, 27.421659, 40.978657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408894, 27.137760, 40.655609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355408, 27.534145, 40.659805>,  <32.323315, 27.771976, 40.662323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355408, 27.534145, 40.659805>,  <32.408894, 27.137760, 40.655609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355408, 27.534145, 40.659805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312273, -0.032085, -0.949450,
		-0.940535, -0.130233, 0.313742,
		-0.133716, 0.990964, 0.010491,
		32.315292, 27.831434, 40.662952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877007, 27.142372, 40.136318>,  <32.408894, 27.137760, 40.655609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877007, 27.142372, 40.136318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998852, 27.522085, 40.167484>,  <32.071957, 27.749914, 40.186184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998852, 27.522085, 40.167484>,  <31.877007, 27.142372, 40.136318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998852, 27.522085, 40.167484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219187, 0.149467, -0.964167,
		-0.926914, 0.276618, 0.253600,
		0.304611, 0.949285, 0.077912,
		32.090237, 27.806871, 40.190857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325371, 27.544174, 39.785774>,  <31.877007, 27.142372, 40.136318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325371, 27.544174, 39.785774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659481, 27.763716, 39.798920>,  <31.859947, 27.895441, 39.806805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659481, 27.763716, 39.798920>,  <31.325371, 27.544174, 39.785774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659481, 27.763716, 39.798920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035057, 0.112804, -0.992998,
		-0.548716, 0.828273, 0.113463,
		0.835274, 0.548851, 0.032861,
		31.910063, 27.928371, 39.808777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244780, 27.999271, 39.260410>,  <31.325371, 27.544174, 39.785774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244780, 27.999271, 39.260410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636070, 28.026434, 39.338856>,  <31.870844, 28.042732, 39.385921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636070, 28.026434, 39.338856>,  <31.244780, 27.999271, 39.260410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636070, 28.026434, 39.338856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200949, -0.073737, -0.976822,
		-0.051873, 0.994963, -0.085777,
		0.978227, 0.067908, 0.196112,
		31.929539, 28.046806, 39.397690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456041, 28.527025, 38.774719>,  <31.244780, 27.999271, 39.260410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456041, 28.527025, 38.774719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781298, 28.316021, 38.873135>,  <31.976452, 28.189419, 38.932182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781298, 28.316021, 38.873135>,  <31.456041, 28.527025, 38.774719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781298, 28.316021, 38.873135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313454, 0.040679, -0.948732,
		0.490459, 0.848573, 0.198429,
		0.813140, -0.527512, 0.246037,
		32.025238, 28.157766, 38.946945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016430, 28.894075, 38.437035>,  <31.456041, 28.527025, 38.774719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016430, 28.894075, 38.437035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128952, 28.514853, 38.496441>,  <32.196465, 28.287319, 38.532085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128952, 28.514853, 38.496441>,  <32.016430, 28.894075, 38.437035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128952, 28.514853, 38.496441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307285, -0.057622, -0.949871,
		0.909089, 0.312842, 0.275114,
		0.281307, -0.948056, 0.148515,
		32.213345, 28.230436, 38.540997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802776, 28.789492, 38.104610>,  <32.016430, 28.894075, 38.437035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802776, 28.789492, 38.104610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642620, 28.425566, 38.148296>,  <32.546528, 28.207211, 38.174507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642620, 28.425566, 38.148296>,  <32.802776, 28.789492, 38.104610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642620, 28.425566, 38.148296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202822, -0.204218, -0.957684,
		0.893619, -0.361292, 0.266297,
		-0.400386, -0.909815, 0.109215,
		32.522503, 28.152622, 38.181061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268570, 28.381628, 37.764397>,  <32.802776, 28.789492, 38.104610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268570, 28.381628, 37.764397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932121, 28.167572, 37.795738>,  <32.730251, 28.039139, 37.814545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932121, 28.167572, 37.795738>,  <33.268570, 28.381628, 37.764397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932121, 28.167572, 37.795738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126847, -0.336027, -0.933272,
		0.525761, -0.775056, 0.350520,
		-0.841122, -0.535140, 0.078356,
		32.679787, 28.007030, 37.819244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379330, 27.706842, 37.484249>,  <33.268570, 28.381628, 37.764397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379330, 27.706842, 37.484249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981750, 27.750357, 37.478039>,  <32.743202, 27.776464, 37.474312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981750, 27.750357, 37.478039>,  <33.379330, 27.706842, 37.484249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981750, 27.750357, 37.478039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005488, -0.190220, -0.981726,
		-0.109748, -0.975696, 0.189665,
		-0.993944, 0.108783, -0.015522,
		32.683567, 27.782991, 37.473381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177910, 27.132036, 37.186310>,  <33.379330, 27.706842, 37.484249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177910, 27.132036, 37.186310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897381, 27.411621, 37.130306>,  <32.729065, 27.579372, 37.096706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897381, 27.411621, 37.130306>,  <33.177910, 27.132036, 37.186310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897381, 27.411621, 37.130306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010553, -0.206561, -0.978377,
		-0.712768, -0.684678, 0.152242,
		-0.701320, 0.698962, -0.140005,
		32.686985, 27.621309, 37.088306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799118, 26.853476, 36.678822>,  <33.177910, 27.132036, 37.186310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799118, 26.853476, 36.678822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709602, 27.243124, 36.666149>,  <32.655895, 27.476913, 36.658546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709602, 27.243124, 36.666149>,  <32.799118, 26.853476, 36.678822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709602, 27.243124, 36.666149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035100, -0.024431, -0.999085,
		-0.974006, -0.224693, -0.028724,
		-0.223786, 0.974123, -0.031682,
		32.642467, 27.535360, 36.656643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172348, 26.918543, 36.307781>,  <32.799118, 26.853476, 36.678822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172348, 26.918543, 36.307781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360584, 27.271450, 36.302891>,  <32.473526, 27.483194, 36.299957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360584, 27.271450, 36.302891>,  <32.172348, 26.918543, 36.307781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360584, 27.271450, 36.302891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145481, 0.063920, -0.987294,
		-0.870276, 0.466388, 0.158433,
		0.470589, 0.882268, -0.012222,
		32.501762, 27.536131, 36.299225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677151, 27.473991, 36.031219>,  <32.172348, 26.918543, 36.307781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677151, 27.473991, 36.031219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055023, 27.595490, 35.981716>,  <32.281746, 27.668388, 35.952015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055023, 27.595490, 35.981716>,  <31.677151, 27.473991, 36.031219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055023, 27.595490, 35.981716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186068, 0.185583, -0.964851,
		-0.270100, 0.934505, 0.231834,
		0.944683, 0.303743, -0.123755,
		32.338428, 27.686613, 35.944592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640665, 27.902798, 35.412159>,  <31.677151, 27.473991, 36.031219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640665, 27.902798, 35.412159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036037, 27.860905, 35.456039>,  <32.273262, 27.835770, 35.482368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036037, 27.860905, 35.456039>,  <31.640665, 27.902798, 35.412159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036037, 27.860905, 35.456039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125163, 0.154728, -0.979997,
		0.085662, 0.982390, 0.166046,
		0.988431, -0.104731, 0.109705,
		32.332565, 27.829485, 35.488953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074074, 28.546566, 35.121155>,  <31.640665, 27.902798, 35.412159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074074, 28.546566, 35.121155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293007, 28.212362, 35.101727>,  <32.424366, 28.011841, 35.090069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293007, 28.212362, 35.101727>,  <32.074074, 28.546566, 35.121155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293007, 28.212362, 35.101727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099625, 0.122665, -0.987435,
		0.830967, 0.535613, 0.150375,
		0.547329, -0.835507, -0.048570,
		32.457207, 27.961710, 35.087154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512901, 28.744038, 34.694267>,  <32.074074, 28.546566, 35.121155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512901, 28.744038, 34.694267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588322, 28.351250, 34.688793>,  <32.633575, 28.115578, 34.685509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588322, 28.351250, 34.688793>,  <32.512901, 28.744038, 34.694267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588322, 28.351250, 34.688793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158625, 0.044205, -0.986349,
		0.969168, 0.183806, 0.164099,
		0.188551, -0.981968, -0.013686,
		32.644886, 28.056660, 34.684689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098560, 28.750996, 34.259529>,  <32.512901, 28.744038, 34.694267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098560, 28.750996, 34.259529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988441, 28.366581, 34.249584>,  <32.922371, 28.135931, 34.243618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988441, 28.366581, 34.249584>,  <33.098560, 28.750996, 34.259529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988441, 28.366581, 34.249584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231901, -0.041288, -0.971862,
		0.932971, -0.273313, 0.234233,
		-0.275294, -0.961038, -0.024861,
		32.905853, 28.078270, 34.242126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619316, 28.403488, 34.004597>,  <33.098560, 28.750996, 34.259529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619316, 28.403488, 34.004597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280731, 28.206974, 33.922489>,  <33.077579, 28.089066, 33.873226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280731, 28.206974, 33.922489>,  <33.619316, 28.403488, 34.004597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280731, 28.206974, 33.922489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146224, 0.156208, -0.976840,
		0.511971, -0.856877, -0.060387,
		-0.846465, -0.491284, -0.205270,
		33.026791, 28.059589, 33.860909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827507, 27.976719, 33.408150>,  <33.619316, 28.403488, 34.004597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827507, 27.976719, 33.408150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429218, 28.012384, 33.417923>,  <33.190247, 28.033783, 33.423786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429218, 28.012384, 33.417923>,  <33.827507, 27.976719, 33.408150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429218, 28.012384, 33.417923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009477, 0.361349, -0.932383,
		-0.091965, -0.928158, -0.360646,
		-0.995717, 0.089165, 0.024436,
		33.130505, 28.039133, 33.425255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485924, 27.567884, 33.359955>,  <33.827507, 27.976719, 33.408150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485924, 27.567884, 33.359955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858356, 27.424570, 33.332458>,  <35.081814, 27.338581, 33.315960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858356, 27.424570, 33.332458>,  <34.485924, 27.567884, 33.359955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858356, 27.424570, 33.332458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140224, 0.525414, -0.839213,
		0.336796, 0.771733, 0.539441,
		0.931078, -0.358286, -0.068742,
		35.137680, 27.317083, 33.311836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415539, 26.898033, 33.497478>,  <34.485924, 27.567884, 33.359955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415539, 26.898033, 33.497478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750721, 26.744511, 33.342293>,  <34.951832, 26.652397, 33.249180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750721, 26.744511, 33.342293>,  <34.415539, 26.898033, 33.497478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750721, 26.744511, 33.342293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536331, 0.710563, 0.455466,
		0.100864, -0.589740, 0.801269,
		0.837959, -0.383805, -0.387966,
		35.002110, 26.629370, 33.225903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591030, 27.050991, 34.200695>,  <34.415539, 26.898033, 33.497478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591030, 27.050991, 34.200695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944885, 27.220646, 34.123211>,  <35.157200, 27.322439, 34.076721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944885, 27.220646, 34.123211>,  <34.591030, 27.050991, 34.200695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944885, 27.220646, 34.123211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307030, -0.217203, 0.926583,
		0.350924, -0.879165, -0.322369,
		0.884638, 0.424137, -0.193708,
		35.210278, 27.347887, 34.065098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129417, 26.568693, 34.426197>,  <34.591030, 27.050991, 34.200695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129417, 26.568693, 34.426197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254620, 26.948042, 34.405724>,  <35.329739, 27.175652, 34.393440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254620, 26.948042, 34.405724>,  <35.129417, 26.568693, 34.426197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254620, 26.948042, 34.405724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293395, -0.045292, 0.954917,
		0.903298, -0.313910, -0.292424,
		0.313003, 0.948372, -0.051188,
		35.348522, 27.232553, 34.390366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799717, 26.535213, 34.670235>,  <35.129417, 26.568693, 34.426197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799717, 26.535213, 34.670235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660538, 26.905890, 34.727062>,  <35.577030, 27.128294, 34.761158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660538, 26.905890, 34.727062>,  <35.799717, 26.535213, 34.670235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660538, 26.905890, 34.727062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353844, -0.010521, 0.935245,
		0.868175, 0.375685, -0.324243,
		-0.347946, 0.926688, 0.142068,
		35.556152, 27.183895, 34.769684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430969, 26.829214, 35.010269>,  <35.799717, 26.535213, 34.670235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430969, 26.829214, 35.010269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119389, 27.057129, 35.115017>,  <35.932442, 27.193878, 35.177868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119389, 27.057129, 35.115017>,  <36.430969, 26.829214, 35.010269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119389, 27.057129, 35.115017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409091, 0.145233, 0.900862,
		0.475267, 0.808857, -0.346225,
		-0.778952, 0.569787, 0.261872,
		35.885704, 27.228065, 35.193577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743393, 27.416021, 35.337284>,  <36.430969, 26.829214, 35.010269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743393, 27.416021, 35.337284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357536, 27.417568, 35.442703>,  <36.126022, 27.418497, 35.505955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357536, 27.417568, 35.442703>,  <36.743393, 27.416021, 35.337284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357536, 27.417568, 35.442703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263523, -0.005719, 0.964636,
		0.005240, 0.999976, 0.004497,
		-0.964639, 0.003869, 0.263547,
		36.068146, 27.418730, 35.521767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741932, 27.922728, 35.971497>,  <36.743393, 27.416021, 35.337284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741932, 27.922728, 35.971497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398705, 27.719748, 36.003014>,  <36.192768, 27.597960, 36.021923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398705, 27.719748, 36.003014>,  <36.741932, 27.922728, 35.971497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398705, 27.719748, 36.003014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019399, 0.185363, 0.982479,
		-0.513164, 0.841508, -0.168898,
		-0.858071, -0.507449, 0.078797,
		36.141285, 27.567513, 36.026653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341930, 28.147329, 36.581219>,  <36.741932, 27.922728, 35.971497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341930, 28.147329, 36.581219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163002, 27.797195, 36.507797>,  <36.055645, 27.587114, 36.463745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163002, 27.797195, 36.507797>,  <36.341930, 28.147329, 36.581219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163002, 27.797195, 36.507797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105429, -0.152193, 0.982711,
		-0.888138, 0.458940, -0.024206,
		-0.447321, -0.875335, -0.183554,
		36.028805, 27.534595, 36.452732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787670, 28.152271, 37.101467>,  <36.341930, 28.147329, 36.581219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787670, 28.152271, 37.101467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842892, 27.780764, 36.963875>,  <35.876022, 27.557859, 36.881317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842892, 27.780764, 36.963875>,  <35.787670, 28.152271, 37.101467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842892, 27.780764, 36.963875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067094, -0.355283, 0.932348,
		-0.988150, -0.105633, -0.111363,
		0.138052, -0.928771, -0.343985,
		35.884308, 27.502132, 36.860680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314499, 27.685055, 37.474316>,  <35.787670, 28.152271, 37.101467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314499, 27.685055, 37.474316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600132, 27.441032, 37.336956>,  <35.771511, 27.294619, 37.254539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600132, 27.441032, 37.336956>,  <35.314499, 27.685055, 37.474316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600132, 27.441032, 37.336956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011615, -0.500780, 0.865497,
		-0.699968, -0.614045, -0.364682,
		0.714080, -0.610056, -0.343398,
		35.814358, 27.258017, 37.233936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052032, 27.006445, 37.461891>,  <35.314499, 27.685055, 37.474316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052032, 27.006445, 37.461891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449722, 26.964052, 37.468678>,  <35.688335, 26.938616, 37.472748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449722, 26.964052, 37.468678>,  <35.052032, 27.006445, 37.461891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449722, 26.964052, 37.468678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065729, -0.476252, 0.876849,
		-0.084850, -0.872899, -0.480467,
		0.994223, -0.105981, 0.016965,
		35.747990, 26.932259, 37.473766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195885, 26.334063, 37.518562>,  <35.052032, 27.006445, 37.461891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195885, 26.334063, 37.518562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517986, 26.509308, 37.678379>,  <35.711246, 26.614454, 37.774269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517986, 26.509308, 37.678379>,  <35.195885, 26.334063, 37.518562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517986, 26.509308, 37.678379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160052, -0.488209, 0.857925,
		0.570926, -0.754790, -0.323009,
		0.805250, 0.438113, 0.399537,
		35.759560, 26.640741, 37.798241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446949, 25.819069, 37.981445>,  <35.195885, 26.334063, 37.518562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446949, 25.819069, 37.981445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634014, 26.151627, 38.101501>,  <35.746254, 26.351160, 38.173534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634014, 26.151627, 38.101501>,  <35.446949, 25.819069, 37.981445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634014, 26.151627, 38.101501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055170, -0.311439, 0.948663,
		0.882185, -0.460210, -0.099780,
		0.467659, 0.831392, 0.300136,
		35.774311, 26.401045, 38.191544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904301, 25.590887, 38.516972>,  <35.446949, 25.819069, 37.981445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904301, 25.590887, 38.516972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836639, 25.978212, 38.590466>,  <35.796043, 26.210608, 38.634560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836639, 25.978212, 38.590466>,  <35.904301, 25.590887, 38.516972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836639, 25.978212, 38.590466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018852, -0.183204, 0.982894,
		0.985410, 0.169721, 0.012735,
		-0.169151, 0.968313, 0.183731,
		35.785892, 26.268707, 38.645584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163113, 25.763405, 39.263474>,  <35.904301, 25.590887, 38.516972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163113, 25.763405, 39.263474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959221, 26.103407, 39.210316>,  <35.836884, 26.307407, 39.178421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959221, 26.103407, 39.210316>,  <36.163113, 25.763405, 39.263474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959221, 26.103407, 39.210316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135804, 0.073040, 0.988040,
		0.849546, 0.521685, 0.078203,
		-0.509734, 0.850006, -0.132898,
		35.806301, 26.358408, 39.170444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475815, 26.298405, 39.691578>,  <36.163113, 25.763405, 39.263474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475815, 26.298405, 39.691578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097767, 26.394606, 39.603123>,  <35.870937, 26.452326, 39.550049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097767, 26.394606, 39.603123>,  <36.475815, 26.298405, 39.691578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097767, 26.394606, 39.603123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210627, 0.068893, 0.975136,
		0.249758, 0.968200, -0.014456,
		-0.945123, 0.240503, -0.221135,
		35.814232, 26.466757, 39.536781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416691, 26.812468, 40.196659>,  <36.475815, 26.298405, 39.691578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416691, 26.812468, 40.196659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044853, 26.746113, 40.065002>,  <35.821751, 26.706301, 39.986008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044853, 26.746113, 40.065002>,  <36.416691, 26.812468, 40.196659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044853, 26.746113, 40.065002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352894, 0.142843, 0.924695,
		-0.106379, 0.975745, -0.191327,
		-0.929596, -0.165887, -0.329139,
		35.765976, 26.696346, 39.966259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999615, 27.403051, 40.467300>,  <36.416691, 26.812468, 40.196659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999615, 27.403051, 40.467300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750107, 27.101763, 40.383816>,  <35.600403, 26.920990, 40.333725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750107, 27.101763, 40.383816>,  <35.999615, 27.403051, 40.467300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750107, 27.101763, 40.383816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364452, 0.044067, 0.930179,
		-0.691434, 0.656288, -0.302001,
		-0.623773, -0.753223, -0.208716,
		35.562973, 26.875795, 40.321201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307777, 27.629036, 40.686298>,  <35.999615, 27.403051, 40.467300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307777, 27.629036, 40.686298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271904, 27.231092, 40.667496>,  <35.250381, 26.992327, 40.656216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271904, 27.231092, 40.667496>,  <35.307777, 27.629036, 40.686298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271904, 27.231092, 40.667496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301130, -0.017901, 0.953415,
		-0.949357, 0.099656, -0.297977,
		-0.089679, -0.994861, -0.047003,
		35.244999, 26.932634, 40.653393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627975, 27.536228, 41.019627>,  <35.307777, 27.629036, 40.686298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627975, 27.536228, 41.019627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813328, 27.182156, 41.036297>,  <34.924538, 26.969713, 41.046299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813328, 27.182156, 41.036297>,  <34.627975, 27.536228, 41.019627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813328, 27.182156, 41.036297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309924, -0.117827, 0.943432,
		-0.830196, -0.450083, -0.328937,
		0.463380, -0.885179, 0.041672,
		34.952343, 26.916601, 41.048798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184624, 26.976860, 41.245640>,  <34.627975, 27.536228, 41.019627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184624, 26.976860, 41.245640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549831, 26.845366, 41.342247>,  <34.768955, 26.766468, 41.400211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549831, 26.845366, 41.342247>,  <34.184624, 26.976860, 41.245640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549831, 26.845366, 41.342247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339968, -0.286024, 0.895886,
		-0.225431, -0.900068, -0.372905,
		0.913018, -0.328736, 0.241515,
		34.823738, 26.746744, 41.414700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981487, 26.550730, 41.808270>,  <34.184624, 26.976860, 41.245640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981487, 26.550730, 41.808270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373707, 26.620602, 41.844082>,  <34.609039, 26.662525, 41.865570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373707, 26.620602, 41.844082>,  <33.981487, 26.550730, 41.808270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373707, 26.620602, 41.844082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078653, -0.068249, 0.994563,
		0.179842, -0.982257, -0.053182,
		0.980546, 0.174681, 0.089532,
		34.667870, 26.673006, 41.870941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118473, 26.076210, 42.323261>,  <33.981487, 26.550730, 41.808270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118473, 26.076210, 42.323261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420074, 26.338726, 42.312183>,  <34.601036, 26.496235, 42.305538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420074, 26.338726, 42.312183>,  <34.118473, 26.076210, 42.323261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420074, 26.338726, 42.312183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031246, 0.006274, 0.999492,
		0.656129, -0.754484, -0.015775,
		0.754002, 0.656289, -0.027691,
		34.646275, 26.535612, 42.303875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547005, 25.835686, 42.835033>,  <34.118473, 26.076210, 42.323261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547005, 25.835686, 42.835033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617523, 26.226536, 42.787464>,  <34.659836, 26.461046, 42.758923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617523, 26.226536, 42.787464>,  <34.547005, 25.835686, 42.835033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617523, 26.226536, 42.787464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056734, 0.130705, 0.989797,
		0.982700, -0.167753, 0.078479,
		0.176299, 0.977126, -0.118927,
		34.670414, 26.519674, 42.751785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031925, 25.956757, 43.430225>,  <34.547005, 25.835686, 42.835033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031925, 25.956757, 43.430225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890736, 26.300737, 43.282772>,  <34.806023, 26.507126, 43.194302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890736, 26.300737, 43.282772>,  <35.031925, 25.956757, 43.430225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890736, 26.300737, 43.282772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007585, 0.396606, 0.917958,
		0.935601, 0.321223, -0.146516,
		-0.352978, 0.859953, -0.368629,
		34.784843, 26.558723, 43.172184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382034, 26.404245, 43.741524>,  <35.031925, 25.956757, 43.430225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382034, 26.404245, 43.741524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090408, 26.646170, 43.613358>,  <34.915432, 26.791325, 43.536457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090408, 26.646170, 43.613358>,  <35.382034, 26.404245, 43.741524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090408, 26.646170, 43.613358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049148, 0.513198, 0.856862,
		0.682677, 0.608961, -0.403880,
		-0.729066, 0.604810, -0.320419,
		34.871689, 26.827612, 43.517231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652451, 27.101665, 43.953484>,  <35.382034, 26.404245, 43.741524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652451, 27.101665, 43.953484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257145, 27.121346, 43.895645>,  <35.019962, 27.133154, 43.860943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257145, 27.121346, 43.895645>,  <35.652451, 27.101665, 43.953484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257145, 27.121346, 43.895645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092277, 0.562080, 0.821919,
		0.121717, 0.825618, -0.550944,
		-0.988266, 0.049202, -0.144600,
		34.960667, 27.136106, 43.852264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531052, 27.858730, 44.052189>,  <35.652451, 27.101665, 43.953484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531052, 27.858730, 44.052189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191685, 27.662746, 44.132313>,  <34.988064, 27.545156, 44.180386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191685, 27.662746, 44.132313>,  <35.531052, 27.858730, 44.052189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191685, 27.662746, 44.132313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188169, 0.632879, 0.751037,
		-0.494746, 0.599504, -0.629143,
		-0.848421, -0.489958, 0.200306,
		34.937157, 27.515759, 44.192406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071808, 28.334591, 44.074875>,  <35.531052, 27.858730, 44.052189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071808, 28.334591, 44.074875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918839, 28.028883, 44.282581>,  <34.827057, 27.845457, 44.407207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918839, 28.028883, 44.282581>,  <35.071808, 28.334591, 44.074875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918839, 28.028883, 44.282581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038662, 0.548260, 0.835414,
		-0.923177, 0.339560, -0.180121,
		-0.382426, -0.764271, 0.519269,
		34.804111, 27.799603, 44.438362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765041, 28.645472, 44.656086>,  <35.071808, 28.334591, 44.074875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765041, 28.645472, 44.656086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709984, 28.265791, 44.769276>,  <34.676949, 28.037983, 44.837189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709984, 28.265791, 44.769276>,  <34.765041, 28.645472, 44.656086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709984, 28.265791, 44.769276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056865, 0.292792, 0.954484,
		-0.988848, 0.115288, -0.094278,
		-0.137644, -0.949201, 0.282971,
		34.668690, 27.981031, 44.854168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170494, 28.590820, 45.112286>,  <34.765041, 28.645472, 44.656086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170494, 28.590820, 45.112286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435677, 28.300550, 45.185913>,  <34.594788, 28.126389, 45.230091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435677, 28.300550, 45.185913>,  <34.170494, 28.590820, 45.112286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435677, 28.300550, 45.185913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084888, 0.317142, 0.944571,
		-0.743829, -0.610586, 0.271853,
		0.662958, -0.725677, 0.184068,
		34.634563, 28.082848, 45.241135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007114, 28.434431, 45.871895>,  <34.170494, 28.590820, 45.112286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007114, 28.434431, 45.871895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365650, 28.279503, 45.785583>,  <34.580772, 28.186546, 45.733799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365650, 28.279503, 45.785583>,  <34.007114, 28.434431, 45.871895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365650, 28.279503, 45.785583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244314, 0.025364, 0.969364,
		-0.369981, -0.921597, 0.117362,
		0.896340, -0.387320, -0.215775,
		34.634552, 28.163307, 45.720852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009914, 27.843584, 46.272411>,  <34.007114, 28.434431, 45.871895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009914, 27.843584, 46.272411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359238, 28.009787, 46.170681>,  <34.568832, 28.109509, 46.109642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359238, 28.009787, 46.170681>,  <34.009914, 27.843584, 46.272411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359238, 28.009787, 46.170681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150531, 0.266345, 0.952051,
		0.463323, -0.869720, 0.170055,
		0.873311, 0.415508, -0.254323,
		34.621231, 28.134439, 46.094383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575249, 27.579823, 46.731327>,  <34.009914, 27.843584, 46.272411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575249, 27.579823, 46.731327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714817, 27.923223, 46.581005>,  <34.798557, 28.129263, 46.490810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714817, 27.923223, 46.581005>,  <34.575249, 27.579823, 46.731327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714817, 27.923223, 46.581005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166983, 0.337641, 0.926345,
		0.922157, -0.385972, -0.025547,
		0.348917, 0.858501, -0.375809,
		34.819492, 28.180775, 46.468262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939991, 27.727760, 47.205772>,  <34.575249, 27.579823, 46.731327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939991, 27.727760, 47.205772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932339, 28.063795, 46.988926>,  <34.927746, 28.265417, 46.858818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932339, 28.063795, 46.988926>,  <34.939991, 27.727760, 47.205772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932339, 28.063795, 46.988926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042333, 0.542406, 0.839049,
		0.998920, -0.006899, -0.045939,
		-0.019129, 0.840088, -0.542113,
		34.926601, 28.315821, 46.826294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333790, 28.148951, 47.479412>,  <34.939991, 27.727760, 47.205772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333790, 28.148951, 47.479412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088070, 28.400440, 47.288692>,  <34.940636, 28.551334, 47.174263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088070, 28.400440, 47.288692>,  <35.333790, 28.148951, 47.479412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088070, 28.400440, 47.288692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051476, 0.571033, 0.819311,
		0.787389, 0.527850, -0.318423,
		-0.614304, 0.628725, -0.476797,
		34.903778, 28.589058, 47.145653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651634, 28.887669, 47.412022>,  <35.333790, 28.148951, 47.479412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651634, 28.887669, 47.412022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254227, 28.900375, 47.368355>,  <35.015781, 28.907999, 47.342155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254227, 28.900375, 47.368355>,  <35.651634, 28.887669, 47.412022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254227, 28.900375, 47.368355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062359, 0.650617, 0.756842,
		0.095072, 0.758742, -0.644417,
		-0.993515, 0.031769, -0.109170,
		34.956173, 28.909906, 47.335606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369015, 29.607288, 47.543106>,  <35.651634, 28.887669, 47.412022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369015, 29.607288, 47.543106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053009, 29.366083, 47.587379>,  <34.863407, 29.221359, 47.613945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053009, 29.366083, 47.587379>,  <35.369015, 29.607288, 47.543106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053009, 29.366083, 47.587379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267165, 0.501101, 0.823116,
		-0.551815, 0.620703, -0.556982,
		-0.790015, -0.603014, 0.110685,
		34.816006, 29.185179, 47.620586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209965, 30.256203, 47.790707>,  <35.369015, 29.607288, 47.543106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209965, 30.256203, 47.790707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444382, 30.559525, 47.904922>,  <35.585030, 30.741518, 47.973454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444382, 30.559525, 47.904922>,  <35.209965, 30.256203, 47.790707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444382, 30.559525, 47.904922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318363, 0.108574, -0.941731,
		-0.745121, 0.642797, -0.177787,
		0.586038, 0.758304, 0.285543,
		35.620193, 30.787016, 47.990585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178055, 30.707603, 47.210014>,  <35.209965, 30.256203, 47.790707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178055, 30.707603, 47.210014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486328, 30.850197, 47.421284>,  <35.671291, 30.935753, 47.548046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486328, 30.850197, 47.421284>,  <35.178055, 30.707603, 47.210014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486328, 30.850197, 47.421284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496942, 0.182590, -0.848357,
		-0.398866, 0.916285, -0.036433,
		0.770685, 0.356486, 0.528169,
		35.717533, 30.957142, 47.579735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310631, 31.369282, 46.998817>,  <35.178055, 30.707603, 47.210014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310631, 31.369282, 46.998817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643726, 31.251307, 47.186249>,  <35.843582, 31.180521, 47.298706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643726, 31.251307, 47.186249>,  <35.310631, 31.369282, 46.998817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643726, 31.251307, 47.186249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530429, 0.182342, -0.827887,
		0.158734, 0.937957, 0.308286,
		0.832736, -0.294937, 0.468576,
		35.893547, 31.162825, 47.326820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796173, 31.890156, 46.994488>,  <35.310631, 31.369282, 46.998817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796173, 31.890156, 46.994488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999233, 31.548269, 47.037857>,  <36.121071, 31.343138, 47.063877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999233, 31.548269, 47.037857>,  <35.796173, 31.890156, 46.994488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999233, 31.548269, 47.037857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520250, 0.203797, -0.829341,
		0.686755, 0.477419, 0.548123,
		0.507649, -0.854715, 0.108418,
		36.151527, 31.291855, 47.070381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448887, 32.108662, 46.735260>,  <35.796173, 31.890156, 46.994488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448887, 32.108662, 46.735260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445721, 31.709597, 46.762405>,  <36.443821, 31.470158, 46.778694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445721, 31.709597, 46.762405>,  <36.448887, 32.108662, 46.735260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445721, 31.709597, 46.762405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338644, -0.066532, -0.938560,
		0.940881, 0.015556, 0.338379,
		-0.007913, -0.997663, 0.067867,
		36.443348, 31.410297, 46.782764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021126, 32.041977, 46.250469>,  <36.448887, 32.108662, 46.735260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021126, 32.041977, 46.250469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863228, 31.676224, 46.286415>,  <36.768490, 31.456772, 46.307983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863228, 31.676224, 46.286415>,  <37.021126, 32.041977, 46.250469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863228, 31.676224, 46.286415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284191, -0.214525, -0.934460,
		0.873733, -0.343338, 0.344543,
		-0.394748, -0.914384, 0.089864,
		36.744804, 31.401909, 46.313374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491627, 31.607609, 45.925209>,  <37.021126, 32.041977, 46.250469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491627, 31.607609, 45.925209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138931, 31.418919, 45.926823>,  <36.927315, 31.305704, 45.927792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138931, 31.418919, 45.926823>,  <37.491627, 31.607609, 45.925209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138931, 31.418919, 45.926823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157316, -0.302087, -0.940210,
		0.444739, -0.828383, 0.340571,
		-0.881736, -0.471726, 0.004032,
		36.874409, 31.277401, 45.928032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617912, 30.871368, 45.642387>,  <37.491627, 31.607609, 45.925209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617912, 30.871368, 45.642387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223873, 30.932356, 45.610527>,  <36.987450, 30.968948, 45.591412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223873, 30.932356, 45.610527>,  <37.617912, 30.871368, 45.642387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223873, 30.932356, 45.610527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013232, -0.528818, -0.848632,
		-0.171511, -0.834928, 0.522953,
		-0.985093, 0.152469, -0.079651,
		36.928345, 30.978096, 45.586632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326401, 30.210529, 45.543633>,  <37.617912, 30.871368, 45.642387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326401, 30.210529, 45.543633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076786, 30.473192, 45.374218>,  <36.927017, 30.630791, 45.272568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076786, 30.473192, 45.374218>,  <37.326401, 30.210529, 45.543633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076786, 30.473192, 45.374218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109311, -0.463336, -0.879415,
		-0.773715, -0.595081, 0.217357,
		-0.624032, 0.656657, -0.423539,
		36.889576, 30.670189, 45.247158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794758, 29.830648, 45.184101>,  <37.326401, 30.210529, 45.543633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794758, 29.830648, 45.184101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769470, 30.191647, 45.013687>,  <36.754295, 30.408245, 44.911438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769470, 30.191647, 45.013687>,  <36.794758, 29.830648, 45.184101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769470, 30.191647, 45.013687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122420, -0.416653, -0.900785,
		-0.990463, -0.109105, -0.084142,
		-0.063222, 0.902494, -0.426036,
		36.750504, 30.462395, 44.885876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254566, 29.813297, 44.745483>,  <36.794758, 29.830648, 45.184101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254566, 29.813297, 44.745483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486870, 30.099413, 44.590004>,  <36.626251, 30.271082, 44.496716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486870, 30.099413, 44.590004>,  <36.254566, 29.813297, 44.745483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486870, 30.099413, 44.590004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071700, -0.430667, -0.899658,
		-0.810915, 0.550350, -0.198826,
		0.580754, 0.715291, -0.388694,
		36.661095, 30.314001, 44.473396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955467, 29.815830, 44.124493>,  <36.254566, 29.813297, 44.745483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955467, 29.815830, 44.124493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279457, 30.045675, 44.077557>,  <36.473850, 30.183582, 44.049397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279457, 30.045675, 44.077557>,  <35.955467, 29.815830, 44.124493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279457, 30.045675, 44.077557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010160, -0.213799, -0.976825,
		-0.586382, 0.790007, -0.179009,
		0.809971, 0.574611, -0.117341,
		36.522449, 30.218060, 44.042355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828316, 30.308596, 43.648117>,  <35.955467, 29.815830, 44.124493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828316, 30.308596, 43.648117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219193, 30.225042, 43.663429>,  <36.453720, 30.174911, 43.672619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219193, 30.225042, 43.663429>,  <35.828316, 30.308596, 43.648117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219193, 30.225042, 43.663429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005714, -0.154345, -0.988001,
		0.212283, 0.965684, -0.149632,
		0.977192, -0.208881, 0.038282,
		36.512348, 30.162378, 43.674915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229103, 30.668106, 43.170288>,  <35.828316, 30.308596, 43.648117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229103, 30.668106, 43.170288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435486, 30.335461, 43.252464>,  <36.559315, 30.135874, 43.301769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435486, 30.335461, 43.252464>,  <36.229103, 30.668106, 43.170288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435486, 30.335461, 43.252464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165978, -0.138231, -0.976393,
		0.840382, 0.537874, 0.066709,
		0.515955, -0.831615, 0.205442,
		36.590271, 30.085976, 43.314098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835243, 30.768845, 42.880054>,  <36.229103, 30.668106, 43.170288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835243, 30.768845, 42.880054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827923, 30.370039, 42.910065>,  <36.823532, 30.130756, 42.928070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827923, 30.370039, 42.910065>,  <36.835243, 30.768845, 42.880054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827923, 30.370039, 42.910065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098953, -0.076473, -0.992149,
		0.994924, -0.010730, 0.100057,
		-0.018297, -0.997014, 0.075023,
		36.822433, 30.070934, 42.932571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302200, 30.598476, 42.467842>,  <36.835243, 30.768845, 42.880054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302200, 30.598476, 42.467842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102482, 30.253822, 42.504257>,  <36.982651, 30.047029, 42.526108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102482, 30.253822, 42.504257>,  <37.302200, 30.598476, 42.467842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102482, 30.253822, 42.504257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072928, -0.146491, -0.986520,
		0.863357, -0.485926, 0.135979,
		-0.499295, -0.861636, 0.091036,
		36.952694, 29.995331, 42.531567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655182, 30.120987, 41.996929>,  <37.302200, 30.598476, 42.467842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655182, 30.120987, 41.996929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315445, 29.916363, 42.048973>,  <37.111603, 29.793589, 42.080200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315445, 29.916363, 42.048973>,  <37.655182, 30.120987, 41.996929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315445, 29.916363, 42.048973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010737, -0.263175, -0.964688,
		0.527738, -0.817951, 0.229017,
		-0.849339, -0.511562, 0.130106,
		37.060642, 29.762894, 42.088005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758053, 29.379957, 41.775631>,  <37.655182, 30.120987, 41.996929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758053, 29.379957, 41.775631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378029, 29.497183, 41.732727>,  <37.150017, 29.567518, 41.706985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378029, 29.497183, 41.732727>,  <37.758053, 29.379957, 41.775631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378029, 29.497183, 41.732727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037047, -0.235352, -0.971204,
		-0.309872, -0.926672, 0.212741,
		-0.950056, 0.293068, -0.107260,
		37.093010, 29.585102, 41.700550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550236, 28.851091, 41.426998>,  <37.758053, 29.379957, 41.775631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550236, 28.851091, 41.426998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252701, 29.115442, 41.387108>,  <37.074181, 29.274052, 41.363174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252701, 29.115442, 41.387108>,  <37.550236, 28.851091, 41.426998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252701, 29.115442, 41.387108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252030, -0.415551, -0.873955,
		-0.619018, -0.624949, 0.475664,
		-0.743840, 0.660876, -0.099728,
		37.029549, 29.313705, 41.357189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004528, 28.487795, 41.156071>,  <37.550236, 28.851091, 41.426998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004528, 28.487795, 41.156071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884529, 28.861618, 41.079544>,  <36.812531, 29.085913, 41.033627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884529, 28.861618, 41.079544>,  <37.004528, 28.487795, 41.156071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884529, 28.861618, 41.079544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268404, -0.275149, -0.923175,
		-0.915402, -0.225600, 0.333383,
		-0.299999, 0.934557, -0.191320,
		36.794529, 29.141985, 41.022148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361214, 28.420973, 40.811199>,  <37.004528, 28.487795, 41.156071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361214, 28.420973, 40.811199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503487, 28.777426, 40.698505>,  <36.588852, 28.991297, 40.630890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503487, 28.777426, 40.698505>,  <36.361214, 28.420973, 40.811199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503487, 28.777426, 40.698505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068979, -0.275597, -0.958795,
		-0.932058, 0.360461, -0.036556,
		0.355683, 0.891131, -0.281736,
		36.610191, 29.044765, 40.613983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065445, 28.489084, 40.191746>,  <36.361214, 28.420973, 40.811199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065445, 28.489084, 40.191746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395836, 28.714218, 40.179222>,  <36.594070, 28.849298, 40.171707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395836, 28.714218, 40.179222>,  <36.065445, 28.489084, 40.191746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395836, 28.714218, 40.179222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130718, -0.245270, -0.960602,
		-0.548338, 0.789342, -0.276159,
		0.825977, 0.562834, -0.031309,
		36.643627, 28.883068, 40.169830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043308, 28.805090, 39.590717>,  <36.065445, 28.489084, 40.191746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043308, 28.805090, 39.590717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426174, 28.870218, 39.686489>,  <36.655895, 28.909294, 39.743954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426174, 28.870218, 39.686489>,  <36.043308, 28.805090, 39.590717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426174, 28.870218, 39.686489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250723, -0.052467, -0.966636,
		-0.144825, 0.985260, -0.091042,
		0.957164, 0.162819, 0.239429,
		36.713322, 28.919064, 39.758316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264629, 29.369324, 39.250587>,  <36.043308, 28.805090, 39.590717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264629, 29.369324, 39.250587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604126, 29.175442, 39.335163>,  <36.807823, 29.059113, 39.385910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604126, 29.175442, 39.335163>,  <36.264629, 29.369324, 39.250587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604126, 29.175442, 39.335163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290574, 0.093394, -0.952284,
		0.441827, 0.869678, 0.220110,
		0.848737, -0.484703, 0.211442,
		36.858746, 29.030031, 39.398594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877731, 29.683165, 38.887211>,  <36.264629, 29.369324, 39.250587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877731, 29.683165, 38.887211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997677, 29.307241, 38.952744>,  <37.069645, 29.081688, 38.992062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997677, 29.307241, 38.952744>,  <36.877731, 29.683165, 38.887211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997677, 29.307241, 38.952744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525846, 0.019546, -0.850355,
		0.795970, 0.341138, 0.500057,
		0.299863, -0.939810, 0.163828,
		37.087635, 29.025299, 39.001892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485199, 29.625664, 38.591354>,  <36.877731, 29.683165, 38.887211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485199, 29.625664, 38.591354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420567, 29.237347, 38.662289>,  <37.381786, 29.004356, 38.704849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420567, 29.237347, 38.662289>,  <37.485199, 29.625664, 38.591354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420567, 29.237347, 38.662289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443953, -0.231993, -0.865497,
		0.881361, -0.061121, 0.468473,
		-0.161583, -0.970795, 0.177335,
		37.372093, 28.946108, 38.715488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168304, 29.236050, 38.783043>,  <37.485199, 29.625664, 38.591354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168304, 29.236050, 38.783043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910900, 28.964691, 38.641239>,  <37.756458, 28.801876, 38.556156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910900, 28.964691, 38.641239>,  <38.168304, 29.236050, 38.783043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910900, 28.964691, 38.641239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464403, 0.022129, -0.885348,
		0.608460, -0.734364, 0.300808,
		-0.643511, -0.678395, -0.354505,
		37.717846, 28.761173, 38.534889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644432, 28.854048, 38.407204>,  <38.168304, 29.236050, 38.783043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644432, 28.854048, 38.407204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284084, 28.748672, 38.269203>,  <38.067875, 28.685448, 38.186401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284084, 28.748672, 38.269203>,  <38.644432, 28.854048, 38.407204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284084, 28.748672, 38.269203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331624, 0.095167, -0.938599,
		0.280095, -0.959971, 0.001629,
		-0.900873, -0.263437, -0.345005,
		38.013821, 28.669641, 38.165703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759251, 28.388479, 37.913479>,  <38.644432, 28.854048, 38.407204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759251, 28.388479, 37.913479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387428, 28.517677, 37.842373>,  <38.164333, 28.595196, 37.799709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387428, 28.517677, 37.842373>,  <38.759251, 28.388479, 37.913479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387428, 28.517677, 37.842373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295248, 0.363376, -0.883621,
		-0.220810, -0.873860, -0.433142,
		-0.929554, 0.322996, -0.177768,
		38.108562, 28.614576, 37.789043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671120, 28.159906, 37.328007>,  <38.759251, 28.388479, 37.913479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671120, 28.159906, 37.328007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410591, 28.459330, 37.377705>,  <38.254272, 28.638985, 37.407524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410591, 28.459330, 37.377705>,  <38.671120, 28.159906, 37.328007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410591, 28.459330, 37.377705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268200, 0.380274, -0.885133,
		-0.709822, -0.543185, -0.448445,
		-0.651322, 0.748560, 0.124245,
		38.215195, 28.683897, 37.414978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493057, 28.297997, 36.653522>,  <38.671120, 28.159906, 37.328007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493057, 28.297997, 36.653522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372326, 28.633137, 36.835468>,  <38.299885, 28.834221, 36.944637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372326, 28.633137, 36.835468>,  <38.493057, 28.297997, 36.653522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372326, 28.633137, 36.835468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349522, 0.541148, -0.764848,
		-0.886979, -0.071869, -0.456183,
		-0.301832, 0.837851, 0.454867,
		38.281776, 28.884493, 36.971928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980045, 28.717836, 36.100479>,  <38.493057, 28.297997, 36.653522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980045, 28.717836, 36.100479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123734, 28.960272, 36.384342>,  <38.209946, 29.105734, 36.554661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123734, 28.960272, 36.384342>,  <37.980045, 28.717836, 36.100479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123734, 28.960272, 36.384342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318016, 0.635406, -0.703651,
		-0.877396, 0.478450, 0.035506,
		0.359223, 0.606089, 0.709658,
		38.231499, 29.142099, 36.597240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727322, 29.313505, 35.957447>,  <37.980045, 28.717836, 36.100479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727322, 29.313505, 35.957447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046196, 29.394352, 36.185005>,  <38.237518, 29.442860, 36.321541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046196, 29.394352, 36.185005>,  <37.727322, 29.313505, 35.957447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046196, 29.394352, 36.185005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271054, 0.722174, -0.636392,
		-0.539470, 0.661524, 0.520920,
		0.797184, 0.202117, 0.568900,
		38.285351, 29.454987, 36.355675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691265, 29.979824, 36.225822>,  <37.727322, 29.313505, 35.957447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691265, 29.979824, 36.225822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083466, 29.901220, 36.226898>,  <38.318787, 29.854057, 36.227543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083466, 29.901220, 36.226898>,  <37.691265, 29.979824, 36.225822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083466, 29.901220, 36.226898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171916, 0.851007, -0.496217,
		0.095227, 0.487002, 0.868194,
		0.980498, -0.196510, 0.002685,
		38.377617, 29.842268, 36.227703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983505, 30.549578, 36.353306>,  <37.691265, 29.979824, 36.225822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983505, 30.549578, 36.353306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284679, 30.338800, 36.195610>,  <38.465382, 30.212334, 36.100990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284679, 30.338800, 36.195610>,  <37.983505, 30.549578, 36.353306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284679, 30.338800, 36.195610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379963, 0.837204, -0.393342,
		0.537329, 0.146362, 0.830575,
		0.752931, -0.526942, -0.394242,
		38.510559, 30.180717, 36.077339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542469, 31.032421, 36.406178>,  <37.983505, 30.549578, 36.353306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542469, 31.032421, 36.406178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689983, 30.757452, 36.155914>,  <38.778492, 30.592470, 36.005756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689983, 30.757452, 36.155914>,  <38.542469, 31.032421, 36.406178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689983, 30.757452, 36.155914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494758, 0.714998, -0.493957,
		0.786901, -0.127385, 0.603788,
		0.368784, -0.687424, -0.625657,
		38.800617, 30.551226, 35.968216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230507, 31.348524, 36.256077>,  <38.542469, 31.032421, 36.406178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230507, 31.348524, 36.256077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163826, 31.049486, 35.998917>,  <39.123817, 30.870064, 35.844620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163826, 31.049486, 35.998917>,  <39.230507, 31.348524, 36.256077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163826, 31.049486, 35.998917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489296, 0.503352, -0.712198,
		0.856037, -0.433292, 0.281884,
		-0.166703, -0.747593, -0.642896,
		39.113815, 30.825209, 35.806049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846226, 31.139275, 36.084473>,  <39.230507, 31.348524, 36.256077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846226, 31.139275, 36.084473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586117, 31.057764, 35.791725>,  <39.430054, 31.008858, 35.616077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586117, 31.057764, 35.791725>,  <39.846226, 31.139275, 36.084473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586117, 31.057764, 35.791725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635995, 0.380893, -0.671141,
		0.415527, -0.901884, -0.118081,
		-0.650268, -0.203778, -0.731866,
		39.391037, 30.996632, 35.572166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262337, 30.781050, 35.535301>,  <39.846226, 31.139275, 36.084473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262337, 30.781050, 35.535301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940193, 30.949429, 35.368351>,  <39.746906, 31.050455, 35.268181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940193, 30.949429, 35.368351>,  <40.262337, 30.781050, 35.535301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940193, 30.949429, 35.368351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552509, 0.277936, -0.785802,
		-0.214777, -0.863456, -0.456414,
		-0.805360, 0.420945, -0.417373,
		39.698586, 31.075712, 35.243137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275875, 30.514280, 34.846733>,  <40.262337, 30.781050, 35.535301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275875, 30.514280, 34.846733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028568, 30.827415, 34.818707>,  <39.880184, 31.015297, 34.801891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028568, 30.827415, 34.818707>,  <40.275875, 30.514280, 34.846733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028568, 30.827415, 34.818707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438754, 0.269795, -0.857150,
		-0.652105, -0.560692, -0.510279,
		-0.618267, 0.782838, -0.070071,
		39.843086, 31.062267, 34.797684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918346, 31.050995, 34.689423>,  <40.275875, 30.514280, 34.846733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918346, 31.050995, 34.689423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258408, 31.255520, 34.639145>,  <41.462444, 31.378235, 34.608978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258408, 31.255520, 34.639145>,  <40.918346, 31.050995, 34.689423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258408, 31.255520, 34.639145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525247, 0.840242, -0.134566,
		0.036804, 0.180420, 0.982901,
		0.850153, 0.511313, -0.125690,
		41.513454, 31.408915, 34.601437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902786, 31.573145, 35.189899>,  <40.918346, 31.050995, 34.689423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902786, 31.573145, 35.189899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133808, 31.686573, 34.883694>,  <41.272423, 31.754629, 34.699970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133808, 31.686573, 34.883694>,  <40.902786, 31.573145, 35.189899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133808, 31.686573, 34.883694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231319, 0.956145, 0.179661,
		0.782892, 0.073315, 0.617823,
		0.577556, 0.283569, -0.765518,
		41.307076, 31.771645, 34.654037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261490, 32.175022, 35.382198>,  <40.902786, 31.573145, 35.189899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261490, 32.175022, 35.382198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254707, 32.192703, 34.982647>,  <41.250637, 32.203312, 34.742916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254707, 32.192703, 34.982647>,  <41.261490, 32.175022, 35.382198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254707, 32.192703, 34.982647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303075, 0.951794, 0.047261,
		0.952816, 0.303537, -0.002747,
		-0.016960, 0.044199, -0.998879,
		41.249619, 32.205963, 34.682983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758469, 32.688446, 35.037701>,  <41.261490, 32.175022, 35.382198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758469, 32.688446, 35.037701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407127, 32.609985, 34.863338>,  <41.196323, 32.562908, 34.758720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407127, 32.609985, 34.863338>,  <41.758469, 32.688446, 35.037701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407127, 32.609985, 34.863338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282229, 0.948819, 0.141735,
		0.385795, 0.247520, -0.888761,
		-0.878356, -0.196153, -0.435907,
		41.143620, 32.551140, 34.732567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576416, 33.315746, 34.962376>,  <41.758469, 32.688446, 35.037701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576416, 33.315746, 34.962376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912560, 33.239536, 34.759396>,  <42.114246, 33.193810, 34.637608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912560, 33.239536, 34.759396>,  <41.576416, 33.315746, 34.962376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912560, 33.239536, 34.759396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391174, 0.861234, 0.324437,
		0.375216, -0.471142, 0.798272,
		0.840354, -0.190530, -0.507448,
		42.164665, 33.182377, 34.607162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212513, 33.413280, 35.303257>,  <41.576416, 33.315746, 34.962376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212513, 33.413280, 35.303257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307907, 33.487747, 34.922001>,  <42.365143, 33.532425, 34.693249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307907, 33.487747, 34.922001>,  <42.212513, 33.413280, 35.303257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307907, 33.487747, 34.922001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419122, 0.865618, 0.273939,
		0.876048, -0.464812, 0.128416,
		0.238489, 0.186162, -0.953135,
		42.379452, 33.543594, 34.636059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728882, 33.050903, 34.916027>,  <42.212513, 33.413280, 35.303257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728882, 33.050903, 34.916027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066963, 32.842327, 34.962902>,  <43.269810, 32.717182, 34.991028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066963, 32.842327, 34.962902>,  <42.728882, 33.050903, 34.916027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066963, 32.842327, 34.962902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432959, 0.539489, -0.722148,
		0.313338, 0.661097, 0.681740,
		0.845201, -0.521442, 0.117186,
		43.320522, 32.685894, 34.998058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035938, 32.870361, 34.355980>,  <42.728882, 33.050903, 34.916027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035938, 32.870361, 34.355980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419613, 32.903931, 34.247959>,  <43.649818, 32.924072, 34.183147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419613, 32.903931, 34.247959>,  <43.035938, 32.870361, 34.355980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.419613, 32.903931, 34.247959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280706, 0.398197, -0.873295,
		0.034244, 0.913453, 0.405501,
		0.959183, 0.083921, -0.270047,
		43.707367, 32.929108, 34.166946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156452, 33.547230, 34.057762>,  <43.035938, 32.870361, 34.355980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156452, 33.547230, 34.057762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451954, 33.323517, 33.907330>,  <43.629253, 33.189289, 33.817070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451954, 33.323517, 33.907330>,  <43.156452, 33.547230, 34.057762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451954, 33.323517, 33.907330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166468, 0.389305, -0.905941,
		0.653091, 0.731876, 0.194499,
		0.738756, -0.559285, -0.376086,
		43.673580, 33.155731, 33.794502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545246, 33.974590, 33.616585>,  <43.156452, 33.547230, 34.057762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545246, 33.974590, 33.616585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.659580, 33.605595, 33.512802>,  <43.728180, 33.384197, 33.450531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.659580, 33.605595, 33.512802>,  <43.545246, 33.974590, 33.616585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659580, 33.605595, 33.512802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187086, 0.319266, -0.929015,
		0.939838, 0.217007, 0.263842,
		0.285838, -0.922484, -0.259459,
		43.745331, 33.328850, 33.434963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.146370, 34.061470, 33.205242>,  <43.545246, 33.974590, 33.616585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.146370, 34.061470, 33.205242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.988377, 33.705765, 33.112976>,  <43.893581, 33.492344, 33.057617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.988377, 33.705765, 33.112976>,  <44.146370, 34.061470, 33.205242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.988377, 33.705765, 33.112976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082958, 0.215527, -0.972968,
		0.914936, -0.403438, -0.011358,
		-0.394980, -0.889261, -0.230662,
		43.869881, 33.438988, 33.043777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614933, 33.856022, 32.703506>,  <44.146370, 34.061470, 33.205242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614933, 33.856022, 32.703506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.280640, 33.636711, 32.691174>,  <44.080063, 33.505127, 32.683773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.280640, 33.636711, 32.691174>,  <44.614933, 33.856022, 32.703506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.280640, 33.636711, 32.691174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148779, 0.280116, -0.948367,
		0.528602, -0.787991, -0.315673,
		-0.835730, -0.548274, -0.030833,
		44.029919, 33.472229, 32.681923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.535366, 33.936081, 32.056232>,  <44.614933, 33.856022, 32.703506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.535366, 33.936081, 32.056232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.192188, 33.741737, 32.123020>,  <43.986282, 33.625134, 32.163094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.192188, 33.741737, 32.123020>,  <44.535366, 33.936081, 32.056232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192188, 33.741737, 32.123020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269193, 0.148335, -0.951595,
		0.437571, -0.861360, -0.258052,
		-0.857943, -0.485856, 0.166965,
		43.934807, 33.595982, 32.173111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.475784, 33.386909, 31.509102>,  <44.535366, 33.936081, 32.056232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.475784, 33.386909, 31.509102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106873, 33.461628, 31.644455>,  <43.885525, 33.506458, 31.725666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106873, 33.461628, 31.644455>,  <44.475784, 33.386909, 31.509102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.106873, 33.461628, 31.644455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364452, -0.128720, -0.922283,
		-0.128720, -0.973930, 0.186794,
		0.922283, -0.186794, -0.338382,
		43.830189, 33.517666, 31.745970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.064705, 32.778099, 31.343790>,  <44.475784, 33.386909, 31.509102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.064705, 32.778099, 31.343790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855801, 33.118103, 31.371317>,  <43.730457, 33.322105, 31.387833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855801, 33.118103, 31.371317>,  <44.064705, 32.778099, 31.343790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855801, 33.118103, 31.371317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377645, -0.158168, -0.912342,
		-0.764612, -0.502466, 0.403605,
		-0.522259, 0.850006, 0.068817,
		43.699123, 33.373104, 31.391962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470112, 32.593616, 31.020395>,  <44.064705, 32.778099, 31.343790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470112, 32.593616, 31.020395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444885, 32.992664, 31.031540>,  <43.429749, 33.232094, 31.038227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444885, 32.992664, 31.031540>,  <43.470112, 32.593616, 31.020395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444885, 32.992664, 31.031540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350614, 0.003993, -0.936512,
		-0.934394, -0.068830, 0.349528,
		-0.063065, 0.997621, 0.027864,
		43.425964, 33.291950, 31.039900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803272, 32.848545, 30.893332>,  <43.470112, 32.593616, 31.020395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803272, 32.848545, 30.893332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012112, 33.178268, 30.805769>,  <43.137417, 33.376102, 30.753231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012112, 33.178268, 30.805769>,  <42.803272, 32.848545, 30.893332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.012112, 33.178268, 30.805769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447086, 0.045941, -0.893310,
		-0.726310, 0.564267, 0.392525,
		0.522099, 0.824313, -0.218908,
		43.168743, 33.425564, 30.740097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.353382, 33.232048, 30.419498>,  <42.803272, 32.848545, 30.893332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.353382, 33.232048, 30.419498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720978, 33.382889, 30.373451>,  <42.941536, 33.473392, 30.345823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720978, 33.382889, 30.373451>,  <42.353382, 33.232048, 30.419498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720978, 33.382889, 30.373451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190412, 0.168807, -0.967082,
		-0.345255, 0.910659, 0.226937,
		0.918990, 0.377102, -0.115118,
		42.996674, 33.496017, 30.338915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253185, 33.822170, 30.058224>,  <42.353382, 33.232048, 30.419498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253185, 33.822170, 30.058224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639603, 33.751644, 29.982674>,  <42.871452, 33.709328, 29.937344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639603, 33.751644, 29.982674>,  <42.253185, 33.822170, 30.058224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639603, 33.751644, 29.982674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180051, 0.064918, -0.981513,
		0.185316, 0.982191, 0.030968,
		0.966043, -0.176315, -0.188874,
		42.929417, 33.698750, 29.926012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359936, 34.132324, 29.384262>,  <42.253185, 33.822170, 30.058224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359936, 34.132324, 29.384262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658367, 33.866455, 29.400129>,  <42.837425, 33.706932, 29.409649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658367, 33.866455, 29.400129>,  <42.359936, 34.132324, 29.384262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658367, 33.866455, 29.400129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125833, -0.199244, -0.971837,
		0.653859, 0.720076, -0.232290,
		0.746080, -0.664674, 0.039668,
		42.882191, 33.667053, 29.412029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646984, 34.296669, 28.820690>,  <42.359936, 34.132324, 29.384262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646984, 34.296669, 28.820690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.822117, 33.942738, 28.884409>,  <42.927197, 33.730377, 28.922640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.822117, 33.942738, 28.884409>,  <42.646984, 34.296669, 28.820690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.822117, 33.942738, 28.884409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031662, -0.161898, -0.986299,
		0.898498, 0.436879, -0.042869,
		0.437834, -0.884831, 0.159298,
		42.953468, 33.677288, 28.932198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282948, 34.356621, 28.469515>,  <42.646984, 34.296669, 28.820690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.282948, 34.356621, 28.469515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.147827, 33.983337, 28.518528>,  <43.066753, 33.759369, 28.547935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.147827, 33.983337, 28.518528>,  <43.282948, 34.356621, 28.469515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.147827, 33.983337, 28.518528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138315, -0.177991, -0.974263,
		0.930999, -0.312158, 0.189202,
		-0.337800, -0.933208, 0.122533,
		43.046486, 33.703377, 28.555288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.780838, 33.925308, 28.156181>,  <43.282948, 34.356621, 28.469515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.780838, 33.925308, 28.156181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428497, 33.736759, 28.173655>,  <43.217094, 33.623631, 28.184137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428497, 33.736759, 28.173655>,  <43.780838, 33.925308, 28.156181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428497, 33.736759, 28.173655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087835, -0.253410, -0.963363,
		0.465172, -0.844743, 0.264620,
		-0.880852, -0.471372, 0.043682,
		43.164242, 33.595348, 28.186760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.909714, 33.277191, 27.715555>,  <43.780838, 33.925308, 28.156181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.909714, 33.277191, 27.715555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.516094, 33.325176, 27.768110>,  <43.279922, 33.353966, 27.799643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.516094, 33.325176, 27.768110>,  <43.909714, 33.277191, 27.715555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.516094, 33.325176, 27.768110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165002, -0.339160, -0.926145,
		-0.066540, -0.933048, 0.353543,
		-0.984046, 0.119961, 0.131387,
		43.220879, 33.361164, 27.807526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685249, 32.705460, 27.445589>,  <43.909714, 33.277191, 27.715555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.685249, 32.705460, 27.445589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.393364, 32.978905, 27.439962>,  <43.218231, 33.142971, 27.436586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.393364, 32.978905, 27.439962>,  <43.685249, 32.705460, 27.445589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393364, 32.978905, 27.439962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286787, -0.324675, -0.901299,
		-0.620704, -0.653654, 0.432970,
		-0.729712, 0.683610, -0.014067,
		43.174450, 33.183987, 27.435741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222069, 32.339603, 27.052341>,  <43.685249, 32.705460, 27.445589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.222069, 32.339603, 27.052341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088345, 32.716465, 27.042706>,  <43.008110, 32.942581, 27.036924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088345, 32.716465, 27.042706>,  <43.222069, 32.339603, 27.052341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.088345, 32.716465, 27.042706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413068, -0.169454, -0.894796,
		-0.847118, -0.289192, 0.445824,
		-0.334315, 0.942154, -0.024091,
		42.988049, 32.999111, 27.035479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514240, 32.304802, 26.902231>,  <43.222069, 32.339603, 27.052341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514240, 32.304802, 26.902231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655354, 32.662434, 26.791840>,  <42.740021, 32.877014, 26.725605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655354, 32.662434, 26.791840>,  <42.514240, 32.304802, 26.902231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655354, 32.662434, 26.791840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320838, -0.161482, -0.933267,
		-0.878981, 0.417785, 0.229887,
		0.352783, 0.894080, -0.275981,
		42.761189, 32.930656, 26.709045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859722, 32.626282, 26.623348>,  <42.514240, 32.304802, 26.902231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859722, 32.626282, 26.623348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192146, 32.809280, 26.496836>,  <42.391602, 32.919079, 26.420927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192146, 32.809280, 26.496836>,  <41.859722, 32.626282, 26.623348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192146, 32.809280, 26.496836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370380, 0.031002, -0.928363,
		-0.414919, 0.888670, 0.195213,
		0.831060, 0.457499, -0.316283,
		42.441463, 32.946529, 26.401951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673637, 33.264866, 26.349768>,  <41.859722, 32.626282, 26.623348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673637, 33.264866, 26.349768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015453, 33.170017, 26.164925>,  <42.220543, 33.113110, 26.054020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015453, 33.170017, 26.164925>,  <41.673637, 33.264866, 26.349768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015453, 33.170017, 26.164925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368705, 0.349703, -0.861258,
		0.365820, 0.906357, 0.211407,
		0.854537, -0.237118, -0.462106,
		42.271812, 33.098881, 26.026293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549980, 33.819202, 25.762547>,  <41.673637, 33.264866, 26.349768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549980, 33.819202, 25.762547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723137, 34.099583, 25.989269>,  <41.827030, 34.267811, 26.125303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723137, 34.099583, 25.989269>,  <41.549980, 33.819202, 25.762547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.723137, 34.099583, 25.989269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439578, 0.713095, -0.546138,
		-0.787004, -0.012737, 0.616816,
		0.432893, 0.700952, 0.566808,
		41.853004, 34.309868, 26.159311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047474, 34.397076, 25.868568>,  <41.549980, 33.819202, 25.762547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047474, 34.397076, 25.868568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405544, 34.569153, 25.915199>,  <41.620388, 34.672398, 25.943178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405544, 34.569153, 25.915199>,  <41.047474, 34.397076, 25.868568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405544, 34.569153, 25.915199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268747, 0.729628, -0.628823,
		-0.355572, 0.531579, 0.768760,
		0.895178, 0.430194, 0.116575,
		41.674099, 34.698212, 25.950172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280983, 34.934059, 26.344484>,  <41.047474, 34.397076, 25.868568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280983, 34.934059, 26.344484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002972, 35.109169, 26.116348>,  <40.836166, 35.214233, 25.979465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002972, 35.109169, 26.116348>,  <41.280983, 34.934059, 26.344484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002972, 35.109169, 26.116348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048107, 0.763171, 0.644404,
		0.717370, 0.475317, -0.509366,
		-0.695029, 0.437772, -0.570342,
		40.794464, 35.240501, 25.945246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522194, 35.604786, 26.208424>,  <41.280983, 34.934059, 26.344484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522194, 35.604786, 26.208424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124836, 35.619064, 26.164791>,  <40.886421, 35.627632, 26.138613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124836, 35.619064, 26.164791>,  <41.522194, 35.604786, 26.208424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124836, 35.619064, 26.164791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011897, 0.913253, 0.407218,
		0.114154, 0.405824, -0.906794,
		-0.993392, 0.035698, -0.109080,
		40.826817, 35.629772, 26.132067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304276, 36.225208, 25.779005>,  <41.522194, 35.604786, 26.208424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304276, 36.225208, 25.779005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.007961, 36.144035, 26.035149>,  <40.830173, 36.095333, 26.188835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.007961, 36.144035, 26.035149>,  <41.304276, 36.225208, 25.779005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007961, 36.144035, 26.035149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024861, 0.960906, 0.275755,
		-0.671283, 0.188355, -0.716869,
		-0.740784, -0.202932, 0.640358,
		40.785725, 36.083157, 26.227257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786213, 36.484241, 26.286539>,  <41.304276, 36.225208, 25.779005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786213, 36.484241, 26.286539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.722752, 36.855968, 26.153149>,  <41.684677, 37.079002, 26.073114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.722752, 36.855968, 26.153149>,  <41.786213, 36.484241, 26.286539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722752, 36.855968, 26.153149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022091, 0.334329, 0.942197,
		0.987088, 0.156845, -0.032511,
		-0.158649, 0.929313, -0.333477,
		41.675156, 37.134762, 26.053106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205070, 37.094448, 26.464893>,  <41.786213, 36.484241, 26.286539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205070, 37.094448, 26.464893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821556, 37.204250, 26.435553>,  <41.591450, 37.270134, 26.417948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821556, 37.204250, 26.435553>,  <42.205070, 37.094448, 26.464893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821556, 37.204250, 26.435553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046768, 0.407087, 0.912191,
		0.280265, 0.871163, -0.403146,
		-0.958783, 0.274509, -0.073350,
		41.533920, 37.286602, 26.413548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965733, 37.586246, 27.008766>,  <42.205070, 37.094448, 26.464893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965733, 37.586246, 27.008766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709187, 37.794460, 27.234224>,  <41.555260, 37.919388, 27.369499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709187, 37.794460, 27.234224>,  <41.965733, 37.586246, 27.008766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709187, 37.794460, 27.234224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668137, 0.017802, 0.743825,
		0.377155, 0.853653, -0.359208,
		-0.641363, 0.520538, 0.563643,
		41.516777, 37.950623, 27.403316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260918, 38.253670, 27.396154>,  <41.965733, 37.586246, 27.008766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260918, 38.253670, 27.396154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979195, 38.058529, 27.602438>,  <41.810162, 37.941444, 27.726208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979195, 38.058529, 27.602438>,  <42.260918, 38.253670, 27.396154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979195, 38.058529, 27.602438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607305, -0.037873, 0.793566,
		-0.367610, 0.872105, 0.322949,
		-0.704304, -0.487851, 0.515711,
		41.767902, 37.912174, 27.757151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231396, 38.512234, 28.121714>,  <42.260918, 38.253670, 27.396154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231396, 38.512234, 28.121714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072575, 38.148376, 28.170540>,  <41.977283, 37.930061, 28.199837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072575, 38.148376, 28.170540>,  <42.231396, 38.512234, 28.121714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072575, 38.148376, 28.170540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434560, -0.069182, 0.897982,
		-0.808397, 0.409593, 0.422763,
		-0.397054, -0.909642, 0.122067,
		41.953457, 37.875484, 28.207159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990742, 38.445049, 28.811195>,  <42.231396, 38.512234, 28.121714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990742, 38.445049, 28.811195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031136, 38.061146, 28.706377>,  <42.055370, 37.830803, 28.643486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031136, 38.061146, 28.706377>,  <41.990742, 38.445049, 28.811195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031136, 38.061146, 28.706377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421612, -0.197288, 0.885054,
		-0.901136, -0.199855, 0.384723,
		0.100982, -0.959758, -0.262044,
		42.061432, 37.773220, 28.627764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772667, 37.977871, 29.343100>,  <41.990742, 38.445049, 28.811195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772667, 37.977871, 29.343100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016117, 37.758324, 29.113905>,  <42.162186, 37.626595, 28.976389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016117, 37.758324, 29.113905>,  <41.772667, 37.977871, 29.343100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016117, 37.758324, 29.113905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493224, -0.303959, 0.815070,
		-0.621533, -0.778684, 0.085719,
		0.608627, -0.548872, -0.572986,
		42.198704, 37.593662, 28.942009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732933, 37.268608, 29.613815>,  <41.772667, 37.977871, 29.343100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732933, 37.268608, 29.613815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.071564, 37.263817, 29.400965>,  <42.274742, 37.260944, 29.273254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.071564, 37.263817, 29.400965>,  <41.732933, 37.268608, 29.613815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071564, 37.263817, 29.400965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480129, -0.414332, 0.773178,
		-0.229735, -0.910047, -0.345017,
		0.846580, -0.011974, -0.532127,
		42.325539, 37.260223, 29.241327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017761, 36.575340, 29.767576>,  <41.732933, 37.268608, 29.613815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017761, 36.575340, 29.767576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.312572, 36.810383, 29.634008>,  <42.489460, 36.951408, 29.553867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.312572, 36.810383, 29.634008>,  <42.017761, 36.575340, 29.767576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312572, 36.810383, 29.634008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565304, -0.265183, 0.781095,
		0.370425, -0.764459, -0.527624,
		0.737032, 0.587606, -0.333922,
		42.533684, 36.986664, 29.533833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627411, 36.136555, 29.770908>,  <42.017761, 36.575340, 29.767576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627411, 36.136555, 29.770908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806782, 36.493999, 29.763252>,  <42.914406, 36.708466, 29.758659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806782, 36.493999, 29.763252>,  <42.627411, 36.136555, 29.770908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806782, 36.493999, 29.763252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632417, -0.302077, 0.713301,
		0.631634, -0.331967, -0.700597,
		0.448427, 0.893615, -0.019139,
		42.941311, 36.762085, 29.757511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322029, 35.964809, 29.780363>,  <42.627411, 36.136555, 29.770908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.322029, 35.964809, 29.780363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.326267, 36.343876, 29.907993>,  <43.328808, 36.571316, 29.984571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.326267, 36.343876, 29.907993>,  <43.322029, 35.964809, 29.780363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.326267, 36.343876, 29.907993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656099, -0.247389, 0.712974,
		0.754600, 0.201793, -0.624386,
		0.010593, 0.947670, 0.319077,
		43.329445, 36.628178, 30.003716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.026566, 36.094921, 29.896065>,  <43.322029, 35.964809, 29.780363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.026566, 36.094921, 29.896065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817429, 36.364105, 30.105356>,  <43.691948, 36.525616, 30.230930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817429, 36.364105, 30.105356>,  <44.026566, 36.094921, 29.896065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817429, 36.364105, 30.105356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542475, -0.210799, 0.813194,
		0.657540, 0.709009, -0.254848,
		-0.522841, 0.672956, 0.523229,
		43.660576, 36.565990, 30.262325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.517529, 36.448662, 30.285389>,  <44.026566, 36.094921, 29.896065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.517529, 36.448662, 30.285389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173050, 36.528423, 30.472401>,  <43.966362, 36.576279, 30.584608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173050, 36.528423, 30.472401>,  <44.517529, 36.448662, 30.285389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.173050, 36.528423, 30.472401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425719, -0.219549, 0.877816,
		0.277682, 0.955007, 0.104186,
		-0.861195, 0.199400, 0.467529,
		43.914692, 36.588242, 30.612659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.623333, 37.001015, 30.832796>,  <44.517529, 36.448662, 30.285389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.623333, 37.001015, 30.832796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.300175, 36.790138, 30.938152>,  <44.106281, 36.663612, 31.001366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.300175, 36.790138, 30.938152>,  <44.623333, 37.001015, 30.832796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300175, 36.790138, 30.938152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334695, -0.042591, 0.941363,
		-0.485062, 0.848678, 0.210858,
		-0.807895, -0.527193, 0.263389,
		44.057808, 36.631981, 31.017170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.366962, 37.262154, 31.543451>,  <44.623333, 37.001015, 30.832796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.366962, 37.262154, 31.543451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191574, 36.908409, 31.479389>,  <44.086342, 36.696163, 31.440952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191574, 36.908409, 31.479389>,  <44.366962, 37.262154, 31.543451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191574, 36.908409, 31.479389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202936, -0.271018, 0.940939,
		-0.875537, 0.380069, 0.298301,
		-0.438467, -0.884363, -0.160157,
		44.060036, 36.643101, 31.431343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926525, 37.144363, 32.114902>,  <44.366962, 37.262154, 31.543451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.926525, 37.144363, 32.114902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967411, 36.775093, 31.966682>,  <43.991943, 36.553532, 31.877750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967411, 36.775093, 31.966682>,  <43.926525, 37.144363, 32.114902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967411, 36.775093, 31.966682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308562, -0.324702, 0.894068,
		-0.945697, -0.205721, 0.251668,
		0.102212, -0.923173, -0.370547,
		43.998074, 36.498142, 31.855518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519142, 36.794323, 32.517845>,  <43.926525, 37.144363, 32.114902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519142, 36.794323, 32.517845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770100, 36.531200, 32.351154>,  <43.920673, 36.373325, 32.251141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770100, 36.531200, 32.351154>,  <43.519142, 36.794323, 32.517845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.770100, 36.531200, 32.351154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260471, -0.327054, 0.908400,
		-0.733848, -0.678470, -0.033851,
		0.627393, -0.657810, -0.416729,
		43.958317, 36.333858, 32.226135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545456, 36.292862, 32.971916>,  <43.519142, 36.794323, 32.517845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545456, 36.292862, 32.971916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.865852, 36.197689, 32.752167>,  <44.058090, 36.140587, 32.620319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.865852, 36.197689, 32.752167>,  <43.545456, 36.292862, 32.971916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.865852, 36.197689, 32.752167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343386, -0.569100, 0.747135,
		-0.490412, -0.787092, -0.374141,
		0.800988, -0.237930, -0.549370,
		44.106148, 36.126308, 32.587357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.679470, 35.635143, 32.996964>,  <43.545456, 36.292862, 32.971916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.679470, 35.635143, 32.996964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.038425, 35.772076, 32.885605>,  <44.253799, 35.854237, 32.818790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.038425, 35.772076, 32.885605>,  <43.679470, 35.635143, 32.996964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038425, 35.772076, 32.885605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441183, -0.706575, 0.553271,
		-0.007302, -0.619321, -0.785104,
		0.897387, 0.342334, -0.278393,
		44.307640, 35.874775, 32.802086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016834, 35.036930, 32.838165>,  <43.679470, 35.635143, 32.996964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016834, 35.036930, 32.838165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.309738, 35.300758, 32.905998>,  <44.485481, 35.459057, 32.946697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.309738, 35.300758, 32.905998>,  <44.016834, 35.036930, 32.838165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.309738, 35.300758, 32.905998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540980, -0.714621, 0.443462,
		0.413680, -0.232992, -0.880105,
		0.732264, 0.659570, 0.169580,
		44.529419, 35.498631, 32.956871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.632858, 34.705914, 32.577156>,  <44.016834, 35.036930, 32.838165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.632858, 34.705914, 32.577156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.755573, 34.975155, 32.846321>,  <44.829201, 35.136700, 33.007820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.755573, 34.975155, 32.846321>,  <44.632858, 34.705914, 32.577156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.755573, 34.975155, 32.846321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677815, -0.650843, 0.342009,
		0.668170, 0.351190, -0.655908,
		0.306783, 0.673104, 0.672915,
		44.847607, 35.177086, 33.048195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.389568, 34.638115, 32.517418>,  <44.632858, 34.705914, 32.577156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.389568, 34.638115, 32.517418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.299904, 34.838734, 32.851654>,  <45.246105, 34.959106, 33.052197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.299904, 34.838734, 32.851654>,  <45.389568, 34.638115, 32.517418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.299904, 34.838734, 32.851654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688575, -0.525239, 0.499988,
		0.689649, 0.687442, -0.227613,
		-0.224162, 0.501545, 0.835586,
		45.232655, 34.989197, 33.102329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.027599, 34.740570, 32.766785>,  <45.389568, 34.638115, 32.517418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.027599, 34.740570, 32.766785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.811977, 34.825340, 33.092854>,  <45.682606, 34.876202, 33.288494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.811977, 34.825340, 33.092854>,  <46.027599, 34.740570, 32.766785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.811977, 34.825340, 33.092854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728072, -0.369362, 0.577480,
		0.423475, 0.904799, 0.044811,
		-0.539055, 0.211922, 0.815174,
		45.650261, 34.888916, 33.337406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.474888, 35.080406, 33.328712>,  <46.027599, 34.740570, 32.766785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.474888, 35.080406, 33.328712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.181499, 34.939953, 33.561516>,  <46.005466, 34.855679, 33.701195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.181499, 34.939953, 33.561516>,  <46.474888, 35.080406, 33.328712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.181499, 34.939953, 33.561516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668775, -0.219727, 0.710254,
		-0.121515, 0.910177, 0.395994,
		-0.733467, -0.351137, 0.582004,
		45.961460, 34.834610, 33.736118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.618347, 35.214523, 34.099186>,  <46.474888, 35.080406, 33.328712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.618347, 35.214523, 34.099186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.350903, 34.917084, 34.101059>,  <46.190437, 34.738621, 34.102184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.350903, 34.917084, 34.101059>,  <46.618347, 35.214523, 34.099186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.350903, 34.917084, 34.101059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446840, -0.396726, 0.801837,
		-0.594388, 0.538207, 0.597525,
		-0.668608, -0.743600, 0.004683,
		46.150322, 34.694004, 34.102463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.301563, 35.116837, 33.671520>,  <46.618347, 35.214523, 34.099186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.301563, 35.116837, 33.671520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.662575, 35.190125, 33.827408>,  <47.879181, 35.234097, 33.920940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.662575, 35.190125, 33.827408>,  <47.301563, 35.116837, 33.671520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.662575, 35.190125, 33.827408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419222, 0.166828, 0.892424,
		0.098496, -0.968813, 0.227377,
		0.902525, 0.183222, 0.389715,
		47.933331, 35.245090, 33.944321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.296001, 34.702526, 34.220539>,  <47.301563, 35.116837, 33.671520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.296001, 34.702526, 34.220539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.515102, 35.035210, 34.256813>,  <47.646564, 35.234821, 34.278580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.515102, 35.035210, 34.256813>,  <47.296001, 34.702526, 34.220539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.515102, 35.035210, 34.256813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414315, 0.175484, 0.893056,
		0.726851, -0.526745, 0.440712,
		0.547751, 0.831712, 0.090687,
		47.679428, 35.284721, 34.284019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.900928, 34.671009, 34.662693>,  <47.296001, 34.702526, 34.220539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.900928, 34.671009, 34.662693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.718021, 35.026436, 34.647995>,  <47.608276, 35.239693, 34.639175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.718021, 35.026436, 34.647995>,  <47.900928, 34.671009, 34.662693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.718021, 35.026436, 34.647995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327726, -0.129948, 0.935793,
		0.826743, 0.439949, 0.350628,
		-0.457265, 0.888571, -0.036749,
		47.580841, 35.293007, 34.636971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.165840, 35.190475, 35.149910>,  <47.900928, 34.671009, 34.662693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.165840, 35.190475, 35.149910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.777073, 35.186092, 35.055882>,  <47.543812, 35.183464, 34.999466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.777073, 35.186092, 35.055882>,  <48.165840, 35.190475, 35.149910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.777073, 35.186092, 35.055882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224687, -0.253724, 0.940819,
		-0.069950, 0.967215, 0.244137,
		-0.971917, -0.010956, -0.235069,
		47.485497, 35.182804, 34.985359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.148605, 34.046902, 40.412083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.809986, 33.840778, 40.465466>,  <32.606815, 33.717106, 40.497498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.809986, 33.840778, 40.465466>,  <33.148605, 34.046902, 40.412083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809986, 33.840778, 40.465466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001082, -0.249055, -0.968489,
		0.532307, -0.820019, 0.210280,
		-0.846551, -0.515306, 0.133460,
		32.556023, 33.686188, 40.505505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164707, 33.388977, 39.967278>,  <33.148605, 34.046902, 40.412083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164707, 33.388977, 39.967278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.783035, 33.475948, 40.049507>,  <32.554031, 33.528130, 40.098846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.783035, 33.475948, 40.049507>,  <33.164707, 33.388977, 39.967278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783035, 33.475948, 40.049507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265554, -0.298687, -0.916661,
		-0.137904, -0.929253, 0.342741,
		-0.954182, 0.217428, 0.205577,
		32.496780, 33.541176, 40.111179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891590, 32.791847, 39.707897>,  <33.164707, 33.388977, 39.967278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891590, 32.791847, 39.707897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.587704, 33.048714, 39.748791>,  <32.405373, 33.202835, 39.773327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.587704, 33.048714, 39.748791>,  <32.891590, 32.791847, 39.707897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587704, 33.048714, 39.748791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436734, -0.387423, -0.811891,
		-0.481766, -0.661453, 0.574788,
		-0.759714, 0.642171, 0.102232,
		32.359791, 33.241364, 39.779461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296017, 32.413620, 39.554871>,  <32.891590, 32.791847, 39.707897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296017, 32.413620, 39.554871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.217522, 32.800789, 39.492111>,  <32.170425, 33.033089, 39.454456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.217522, 32.800789, 39.492111>,  <32.296017, 32.413620, 39.554871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217522, 32.800789, 39.492111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252008, -0.204424, -0.945887,
		-0.947619, -0.146081, 0.284040,
		-0.196241, 0.967921, -0.156903,
		32.158649, 33.091164, 39.445042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593979, 32.433140, 39.337387>,  <32.296017, 32.413620, 39.554871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593979, 32.433140, 39.337387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.762421, 32.767822, 39.197330>,  <31.863485, 32.968632, 39.113297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.762421, 32.767822, 39.197330>,  <31.593979, 32.433140, 39.337387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762421, 32.767822, 39.197330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222516, -0.278940, -0.934173,
		-0.879293, 0.471298, 0.068716,
		0.421106, 0.836702, -0.350141,
		31.888752, 33.018833, 39.092289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111486, 32.618927, 38.874680>,  <31.593979, 32.433140, 39.337387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111486, 32.618927, 38.874680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.466862, 32.780201, 38.786930>,  <31.680086, 32.876965, 38.734280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.466862, 32.780201, 38.786930>,  <31.111486, 32.618927, 38.874680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466862, 32.780201, 38.786930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134995, -0.227273, -0.964429,
		-0.438696, 0.886449, -0.147490,
		0.888438, 0.403181, -0.219370,
		31.733393, 32.901154, 38.721119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043409, 32.828922, 38.268978>,  <31.111486, 32.618927, 38.874680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043409, 32.828922, 38.268978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.442902, 32.848782, 38.272301>,  <31.682598, 32.860699, 38.274292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.442902, 32.848782, 38.272301>,  <31.043409, 32.828922, 38.268978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442902, 32.848782, 38.272301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018833, -0.215607, -0.976299,
		-0.046680, 0.975217, -0.216269,
		0.998732, 0.049647, 0.008302,
		31.742521, 32.863674, 38.274792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181082, 33.157124, 37.601608>,  <31.043409, 32.828922, 38.268978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181082, 33.157124, 37.601608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.521755, 32.997383, 37.737343>,  <31.726160, 32.901539, 37.818783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.521755, 32.997383, 37.737343>,  <31.181082, 33.157124, 37.601608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521755, 32.997383, 37.737343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255921, -0.248115, -0.934315,
		0.457318, 0.882584, -0.109112,
		0.851683, -0.399355, 0.339339,
		31.777260, 32.877575, 37.839146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802132, 33.281338, 37.094959>,  <31.181082, 33.157124, 37.601608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802132, 33.281338, 37.094959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.931147, 32.970436, 37.311050>,  <32.008556, 32.783894, 37.440704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.931147, 32.970436, 37.311050>,  <31.802132, 33.281338, 37.094959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931147, 32.970436, 37.311050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316032, -0.449553, -0.835479,
		0.892241, 0.440202, 0.100640,
		0.322537, -0.777254, 0.540228,
		32.027908, 32.737259, 37.473118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540234, 33.157166, 36.994827>,  <31.802132, 33.281338, 37.094959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540234, 33.157166, 36.994827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.359032, 32.813065, 37.088425>,  <32.250309, 32.606606, 37.144581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.359032, 32.813065, 37.088425>,  <32.540234, 33.157166, 36.994827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359032, 32.813065, 37.088425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377306, -0.422802, -0.823941,
		0.807728, -0.284965, 0.516110,
		-0.453007, -0.860252, 0.233990,
		32.223129, 32.554989, 37.158623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003460, 32.777027, 36.753811>,  <32.540234, 33.157166, 36.994827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003460, 32.777027, 36.753811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.719131, 32.507458, 36.834358>,  <32.548534, 32.345715, 36.882687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.719131, 32.507458, 36.834358>,  <33.003460, 32.777027, 36.753811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719131, 32.507458, 36.834358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377273, -0.606939, -0.699492,
		0.593628, -0.421244, 0.685682,
		-0.710824, -0.673928, 0.201372,
		32.505886, 32.305279, 36.894772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352158, 32.150990, 36.813229>,  <33.003460, 32.777027, 36.753811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352158, 32.150990, 36.813229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.975880, 32.048100, 36.724747>,  <32.750114, 31.986366, 36.671658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.975880, 32.048100, 36.724747>,  <33.352158, 32.150990, 36.813229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975880, 32.048100, 36.724747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329845, -0.540942, -0.773682,
		0.079351, -0.800761, 0.593705,
		-0.940694, -0.257222, -0.221203,
		32.693672, 31.970932, 36.658386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230000, 31.411079, 36.756718>,  <33.352158, 32.150990, 36.813229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230000, 31.411079, 36.756718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.925327, 31.537132, 36.530258>,  <32.742523, 31.612764, 36.394382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.925327, 31.537132, 36.530258>,  <33.230000, 31.411079, 36.756718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925327, 31.537132, 36.530258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303386, -0.598611, -0.741365,
		-0.572526, -0.736451, 0.360351,
		-0.761689, 0.315126, -0.566150,
		32.696823, 31.631672, 36.360413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907272, 30.807451, 36.470089>,  <33.230000, 31.411079, 36.756718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907272, 30.807451, 36.470089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.812073, 31.110069, 36.226452>,  <32.754951, 31.291641, 36.080269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.812073, 31.110069, 36.226452>,  <32.907272, 30.807451, 36.470089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812073, 31.110069, 36.226452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262217, -0.553774, -0.790301,
		-0.935199, -0.347808, -0.066579,
		-0.238003, 0.756547, -0.609090,
		32.740673, 31.337034, 36.043724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840813, 30.487616, 35.814205>,  <32.907272, 30.807451, 36.470089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840813, 30.487616, 35.814205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.839058, 30.873379, 35.708450>,  <32.838005, 31.104836, 35.644997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.839058, 30.873379, 35.708450>,  <32.840813, 30.487616, 35.814205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839058, 30.873379, 35.708450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432455, -0.236559, -0.870070,
		-0.901645, -0.118149, -0.416026,
		-0.004383, 0.964407, -0.264386,
		32.837742, 31.162701, 35.629135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493828, 30.468880, 35.211830>,  <32.840813, 30.487616, 35.814205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493828, 30.468880, 35.211830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.735050, 30.787260, 35.232956>,  <32.879784, 30.978289, 35.245632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.735050, 30.787260, 35.232956>,  <32.493828, 30.468880, 35.211830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735050, 30.787260, 35.232956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456744, -0.290261, -0.840913,
		-0.653996, 0.531237, -0.538588,
		0.603055, 0.795950, 0.052810,
		32.915966, 31.026045, 35.248798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500954, 30.679350, 34.496494>,  <32.493828, 30.468880, 35.211830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500954, 30.679350, 34.496494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.800247, 30.868635, 34.682491>,  <32.979824, 30.982206, 34.794090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.800247, 30.868635, 34.682491>,  <32.500954, 30.679350, 34.496494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800247, 30.868635, 34.682491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555785, -0.064368, -0.828830,
		-0.362282, 0.878594, -0.311167,
		0.748234, 0.473212, 0.464990,
		33.024719, 31.010599, 34.821987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742702, 31.341516, 34.058952>,  <32.500954, 30.679350, 34.496494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742702, 31.341516, 34.058952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.037323, 31.235106, 34.307701>,  <33.214096, 31.171259, 34.456951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.037323, 31.235106, 34.307701>,  <32.742702, 31.341516, 34.058952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037323, 31.235106, 34.307701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641486, -0.016774, -0.766952,
		0.214462, 0.963819, 0.158298,
		0.736548, -0.266028, 0.621874,
		33.258286, 31.155296, 34.494263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322361, 31.822649, 33.869598>,  <32.742702, 31.341516, 34.058952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322361, 31.822649, 33.869598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.510571, 31.529671, 34.066429>,  <33.623497, 31.353884, 34.184528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.510571, 31.529671, 34.066429>,  <33.322361, 31.822649, 33.869598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510571, 31.529671, 34.066429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652302, -0.086826, -0.752970,
		0.594234, 0.675267, 0.436923,
		0.470519, -0.732445, 0.492073,
		33.651726, 31.309937, 34.214050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107983, 31.957251, 33.767467>,  <33.322361, 31.822649, 33.869598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107983, 31.957251, 33.767467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.044724, 31.573244, 33.859863>,  <34.006767, 31.342840, 33.915302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.044724, 31.573244, 33.859863>,  <34.107983, 31.957251, 33.767467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044724, 31.573244, 33.859863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622369, -0.278533, -0.731489,
		0.766581, 0.028080, 0.641534,
		-0.158148, -0.960016, 0.230994,
		33.997280, 31.285240, 33.929161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748436, 31.681326, 33.706383>,  <34.107983, 31.957251, 33.767467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748436, 31.681326, 33.706383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.488274, 31.379566, 33.670914>,  <34.332176, 31.198511, 33.649632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.488274, 31.379566, 33.670914>,  <34.748436, 31.681326, 33.706383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488274, 31.379566, 33.670914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592270, -0.430573, -0.681046,
		0.475599, -0.495471, 0.726852,
		-0.650401, -0.754397, -0.088673,
		34.293152, 31.153248, 33.644310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129185, 31.118914, 33.650017>,  <34.748436, 31.681326, 33.706383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129185, 31.118914, 33.650017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.789852, 31.023104, 33.461140>,  <34.586254, 30.965618, 33.347813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.789852, 31.023104, 33.461140>,  <35.129185, 31.118914, 33.650017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789852, 31.023104, 33.461140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521084, -0.535805, -0.664367,
		-0.093872, -0.809654, 0.579351,
		-0.848327, -0.239525, -0.472195,
		34.535355, 30.951246, 33.319481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990917, 30.409706, 33.567379>,  <35.129185, 31.118914, 33.650017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990917, 30.409706, 33.567379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.811565, 30.608648, 33.270302>,  <34.703953, 30.728014, 33.092056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.811565, 30.608648, 33.270302>,  <34.990917, 30.409706, 33.567379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811565, 30.608648, 33.270302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424384, -0.612821, -0.666595,
		-0.786672, -0.614076, 0.063709,
		-0.448382, 0.497354, -0.742693,
		34.677052, 30.757854, 33.047493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397945, 30.256256, 32.976116>,  <34.990917, 30.409706, 33.567379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397945, 30.256256, 32.976116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.784565, 30.184216, 33.049152>,  <36.016537, 30.140991, 33.092976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.784565, 30.184216, 33.049152>,  <35.397945, 30.256256, 32.976116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784565, 30.184216, 33.049152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193787, -0.046501, 0.979941,
		-0.168000, -0.982548, -0.079847,
		0.966552, -0.180103, 0.182593,
		36.074532, 30.130186, 33.103931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462456, 29.722633, 33.424030>,  <35.397945, 30.256256, 32.976116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462456, 29.722633, 33.424030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.805267, 29.925148, 33.462334>,  <36.010956, 30.046658, 33.485317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.805267, 29.925148, 33.462334>,  <35.462456, 29.722633, 33.424030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805267, 29.925148, 33.462334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094618, -0.028047, 0.995118,
		0.506502, -0.861908, 0.023867,
		0.857031, 0.506288, 0.095758,
		36.062378, 30.077034, 33.491062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942322, 29.395409, 33.931053>,  <35.462456, 29.722633, 33.424030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942322, 29.395409, 33.931053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.093967, 29.765278, 33.945198>,  <36.184956, 29.987200, 33.953686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.093967, 29.765278, 33.945198>,  <35.942322, 29.395409, 33.931053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093967, 29.765278, 33.945198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068031, -0.010259, 0.997630,
		0.922844, -0.380625, 0.059016,
		0.379118, 0.924672, 0.035362,
		36.207703, 30.042679, 33.955807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414619, 29.284119, 34.472195>,  <35.942322, 29.395409, 33.931053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414619, 29.284119, 34.472195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.363197, 29.680120, 34.449005>,  <36.332344, 29.917723, 34.435093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.363197, 29.680120, 34.449005>,  <36.414619, 29.284119, 34.472195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363197, 29.680120, 34.449005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096239, 0.070636, 0.992849,
		0.987021, 0.122059, -0.104358,
		-0.128557, 0.990006, -0.057973,
		36.324631, 29.977123, 34.431614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900589, 29.500801, 34.928692>,  <36.414619, 29.284119, 34.472195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900589, 29.500801, 34.928692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.651161, 29.811834, 34.896378>,  <36.501507, 29.998455, 34.876987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.651161, 29.811834, 34.896378>,  <36.900589, 29.500801, 34.928692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651161, 29.811834, 34.896378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064529, 0.051788, 0.996571,
		0.779102, 0.626641, 0.017883,
		-0.623567, 0.777585, -0.080785,
		36.464092, 30.045111, 34.872143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165367, 30.002909, 35.414295>,  <36.900589, 29.500801, 34.928692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165367, 30.002909, 35.414295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.778919, 30.089573, 35.358196>,  <36.547050, 30.141571, 35.324535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.778919, 30.089573, 35.358196>,  <37.165367, 30.002909, 35.414295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778919, 30.089573, 35.358196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063010, 0.328960, 0.942240,
		0.250284, 0.919153, -0.304163,
		-0.966120, 0.216662, -0.140249,
		36.489082, 30.154572, 35.316120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066410, 30.603918, 35.730541>,  <37.165367, 30.002909, 35.414295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066410, 30.603918, 35.730541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684937, 30.489199, 35.694260>,  <36.456051, 30.420368, 35.672493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684937, 30.489199, 35.694260>,  <37.066410, 30.603918, 35.730541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684937, 30.489199, 35.694260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175125, 0.284239, 0.942624,
		-0.244560, 0.914853, -0.321300,
		-0.953688, -0.286796, -0.090700,
		36.398830, 30.403160, 35.667049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634937, 31.154652, 35.928680>,  <37.066410, 30.603918, 35.730541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634937, 31.154652, 35.928680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.395576, 30.839794, 35.988441>,  <36.251961, 30.650879, 36.024296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.395576, 30.839794, 35.988441>,  <36.634937, 31.154652, 35.928680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395576, 30.839794, 35.988441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311616, 0.400446, 0.861707,
		-0.738115, 0.469090, -0.484914,
		-0.598400, -0.787145, 0.149399,
		36.216057, 30.603651, 36.033260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109283, 31.372299, 36.325371>,  <36.634937, 31.154652, 35.928680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109283, 31.372299, 36.325371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.061424, 30.980431, 36.389782>,  <36.032707, 30.745310, 36.428429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.061424, 30.980431, 36.389782>,  <36.109283, 31.372299, 36.325371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061424, 30.980431, 36.389782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414623, 0.196680, 0.888484,
		-0.902093, 0.039540, -0.429727,
		-0.119650, -0.979670, 0.161030,
		36.025528, 30.686529, 36.438091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446987, 31.342943, 36.508812>,  <36.109283, 31.372299, 36.325371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446987, 31.342943, 36.508812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.579929, 30.987909, 36.636391>,  <35.659695, 30.774889, 36.712940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.579929, 30.987909, 36.636391>,  <35.446987, 31.342943, 36.508812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579929, 30.987909, 36.636391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616616, 0.051403, 0.785584,
		-0.713668, -0.457766, -0.530216,
		0.332359, -0.887586, 0.318951,
		35.679638, 30.721634, 36.732075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854137, 31.087227, 36.892456>,  <35.446987, 31.342943, 36.508812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854137, 31.087227, 36.892456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.197575, 30.908970, 36.993828>,  <35.403637, 30.802015, 37.054649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.197575, 30.908970, 36.993828>,  <34.854137, 31.087227, 36.892456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197575, 30.908970, 36.993828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229162, 0.108586, 0.967313,
		-0.458594, -0.888602, -0.008893,
		0.858590, -0.445641, 0.253431,
		35.455151, 30.775278, 37.069859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607220, 30.634338, 37.419464>,  <34.854137, 31.087227, 36.892456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607220, 30.634338, 37.419464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.997978, 30.674644, 37.494854>,  <35.232433, 30.698828, 37.540089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.997978, 30.674644, 37.494854>,  <34.607220, 30.634338, 37.419464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997978, 30.674644, 37.494854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205095, 0.194023, 0.959318,
		0.060096, -0.975808, 0.210206,
		0.976895, 0.100763, 0.188473,
		35.291046, 30.704874, 37.551395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630863, 30.499571, 38.108681>,  <34.607220, 30.634338, 37.419464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630863, 30.499571, 38.108681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.981308, 30.685249, 38.056602>,  <35.191574, 30.796658, 38.025356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.981308, 30.685249, 38.056602>,  <34.630863, 30.499571, 38.108681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981308, 30.685249, 38.056602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068726, 0.147038, 0.986740,
		0.477185, -0.873442, 0.096920,
		0.876111, 0.464198, -0.130192,
		35.244141, 30.824509, 38.017544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977032, 30.270023, 38.666393>,  <34.630863, 30.499571, 38.108681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977032, 30.270023, 38.666393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.194664, 30.583666, 38.546959>,  <35.325241, 30.771852, 38.475296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.194664, 30.583666, 38.546959>,  <34.977032, 30.270023, 38.666393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194664, 30.583666, 38.546959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083750, 0.303340, 0.949195,
		0.834845, -0.541441, 0.099371,
		0.544077, 0.784109, -0.298588,
		35.357887, 30.818899, 38.457382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545517, 30.249054, 39.046459>,  <34.977032, 30.270023, 38.666393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545517, 30.249054, 39.046459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.518799, 30.625315, 38.913368>,  <35.502769, 30.851072, 38.833511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.518799, 30.625315, 38.913368>,  <35.545517, 30.249054, 39.046459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518799, 30.625315, 38.913368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008480, 0.332927, 0.942915,
		0.997731, 0.065804, -0.014261,
		-0.066795, 0.940654, -0.332730,
		35.498760, 30.907511, 38.813549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886196, 30.603899, 39.529861>,  <35.545517, 30.249054, 39.046459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886196, 30.603899, 39.529861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.658806, 30.889982, 39.367229>,  <35.522369, 31.061632, 39.269650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.658806, 30.889982, 39.367229>,  <35.886196, 30.603899, 39.529861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658806, 30.889982, 39.367229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167560, 0.383195, 0.908342,
		0.805453, 0.584501, -0.097998,
		-0.568479, 0.715207, -0.406585,
		35.488262, 31.104544, 39.245255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040543, 31.295235, 39.906075>,  <35.886196, 30.603899, 39.529861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040543, 31.295235, 39.906075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.676174, 31.314516, 39.742172>,  <35.457554, 31.326084, 39.643833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.676174, 31.314516, 39.742172>,  <36.040543, 31.295235, 39.906075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676174, 31.314516, 39.742172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331051, 0.507315, 0.795636,
		0.246226, 0.860411, -0.446167,
		-0.910921, 0.048203, -0.409754,
		35.402897, 31.328978, 39.619247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.774754, 31.978678, 39.829475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.420555, 31.792828, 39.827705>,  <35.208035, 31.681316, 39.826645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.420555, 31.792828, 39.827705>,  <35.774754, 31.978678, 39.829475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420555, 31.792828, 39.827705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380427, 0.719496, 0.581034,
		-0.266781, 0.516186, -0.813867,
		-0.885496, -0.464626, -0.004423,
		35.154907, 31.653440, 39.826378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133663, 32.565586, 39.721344>,  <35.774754, 31.978678, 39.829475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133663, 32.565586, 39.721344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.992153, 32.235825, 39.898071>,  <34.907246, 32.037968, 40.004108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.992153, 32.235825, 39.898071>,  <35.133663, 32.565586, 39.721344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992153, 32.235825, 39.898071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369954, 0.557175, 0.743431,
		-0.859056, 0.099555, -0.502106,
		-0.353774, -0.824405, 0.441814,
		34.886021, 31.988503, 40.030617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462830, 32.681957, 39.947670>,  <35.133663, 32.565586, 39.721344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462830, 32.681957, 39.947670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.543518, 32.349693, 40.155251>,  <34.591930, 32.150333, 40.279800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.543518, 32.349693, 40.155251>,  <34.462830, 32.681957, 39.947670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543518, 32.349693, 40.155251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420305, 0.405164, 0.811903,
		-0.884678, -0.381891, -0.267403,
		0.201717, -0.830663, 0.518950,
		34.604034, 32.100494, 40.310936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832424, 32.501476, 40.272373>,  <34.462830, 32.681957, 39.947670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832424, 32.501476, 40.272373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.136276, 32.331387, 40.469208>,  <34.318588, 32.229332, 40.587307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.136276, 32.331387, 40.469208>,  <33.832424, 32.501476, 40.272373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136276, 32.331387, 40.469208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303356, 0.437614, 0.846445,
		-0.575274, -0.792260, 0.203429,
		0.759628, -0.425227, 0.492085,
		34.364166, 32.203819, 40.616833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478233, 32.377811, 40.962372>,  <33.832424, 32.501476, 40.272373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478233, 32.377811, 40.962372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.865799, 32.307426, 41.031937>,  <34.098339, 32.265194, 41.073677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.865799, 32.307426, 41.031937>,  <33.478233, 32.377811, 40.962372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865799, 32.307426, 41.031937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125694, 0.255353, 0.958643,
		-0.213096, -0.950700, 0.225297,
		0.968913, -0.175965, 0.173912,
		34.156471, 32.254639, 41.084110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473335, 31.996756, 41.457695>,  <33.478233, 32.377811, 40.962372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473335, 31.996756, 41.457695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.835964, 32.164204, 41.479149>,  <34.053543, 32.264671, 41.492023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.835964, 32.164204, 41.479149>,  <33.473335, 31.996756, 41.457695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835964, 32.164204, 41.479149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166748, 0.238534, 0.956711,
		0.387705, -0.876275, 0.286053,
		0.906576, 0.418620, 0.053636,
		34.107937, 32.289787, 41.495239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848618, 31.686508, 42.073914>,  <33.473335, 31.996756, 41.457695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848618, 31.686508, 42.073914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.062710, 32.016754, 42.002487>,  <34.191166, 32.214901, 41.959633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.062710, 32.016754, 42.002487>,  <33.848618, 31.686508, 42.073914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062710, 32.016754, 42.002487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038685, 0.187211, 0.981557,
		0.843817, -0.532272, 0.068263,
		0.535235, 0.825614, -0.178563,
		34.223282, 32.264439, 41.948917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389431, 31.774424, 42.622265>,  <33.848618, 31.686508, 42.073914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389431, 31.774424, 42.622265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.356705, 32.139229, 42.461498>,  <34.337070, 32.358112, 42.365040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.356705, 32.139229, 42.461498>,  <34.389431, 31.774424, 42.622265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356705, 32.139229, 42.461498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132650, 0.409646, 0.902549,
		0.987780, 0.020530, -0.154494,
		-0.081817, 0.912013, -0.401917,
		34.332161, 32.412834, 42.340923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958206, 31.937527, 42.698082>,  <34.389431, 31.774424, 42.622265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958206, 31.937527, 42.698082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.699211, 32.241535, 42.675735>,  <34.543812, 32.423943, 42.662327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.699211, 32.241535, 42.675735>,  <34.958206, 31.937527, 42.698082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699211, 32.241535, 42.675735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148026, 0.197341, 0.969095,
		0.747559, 0.619210, -0.240280,
		-0.647490, 0.760023, -0.055865,
		34.504963, 32.469543, 42.658978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461845, 32.508041, 42.623466>,  <34.958206, 31.937527, 42.698082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461845, 32.508041, 42.623466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.124374, 32.681618, 42.749897>,  <34.921894, 32.785763, 42.825756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.124374, 32.681618, 42.749897>,  <35.461845, 32.508041, 42.623466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124374, 32.681618, 42.749897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411987, 0.145850, 0.899441,
		0.344207, 0.889056, -0.301830,
		-0.843675, 0.433944, 0.316077,
		34.871273, 32.811802, 42.844719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618336, 33.180756, 42.903210>,  <35.461845, 32.508041, 42.623466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618336, 33.180756, 42.903210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267765, 33.060314, 43.053520>,  <35.057423, 32.988049, 43.143707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267765, 33.060314, 43.053520>,  <35.618336, 33.180756, 42.903210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267765, 33.060314, 43.053520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296150, 0.278289, 0.913701,
		-0.379690, 0.912082, -0.154730,
		-0.876430, -0.301100, 0.375777,
		35.004837, 32.969986, 43.166252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488167, 33.752117, 43.430138>,  <35.618336, 33.180756, 42.903210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488167, 33.752117, 43.430138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.263729, 33.435013, 43.525391>,  <35.129066, 33.244751, 43.582542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.263729, 33.435013, 43.525391>,  <35.488167, 33.752117, 43.430138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263729, 33.435013, 43.525391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100056, 0.220624, 0.970213,
		-0.821685, 0.568204, -0.044469,
		-0.561090, -0.792760, 0.238136,
		35.095402, 33.197186, 43.596832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862701, 34.057243, 43.813820>,  <35.488167, 33.752117, 43.430138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862701, 34.057243, 43.813820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.913109, 33.670689, 43.903450>,  <34.943352, 33.438755, 43.957226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.913109, 33.670689, 43.903450>,  <34.862701, 34.057243, 43.813820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913109, 33.670689, 43.903450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116243, 0.238702, 0.964110,
		-0.985194, -0.095450, 0.142417,
		0.126019, -0.966390, 0.224073,
		34.950916, 33.380772, 43.970673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416977, 33.873131, 44.480343>,  <34.862701, 34.057243, 43.813820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416977, 33.873131, 44.480343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.658150, 33.554070, 44.474342>,  <34.802853, 33.362633, 44.470741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.658150, 33.554070, 44.474342>,  <34.416977, 33.873131, 44.480343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658150, 33.554070, 44.474342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038235, 0.010108, 0.999218,
		-0.796876, -0.603034, 0.036593,
		0.602932, -0.797652, -0.015002,
		34.839027, 33.314774, 44.469841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177017, 33.323814, 45.060104>,  <34.416977, 33.873131, 44.480343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177017, 33.323814, 45.060104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.560146, 33.255455, 44.967701>,  <34.790024, 33.214439, 44.912258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.560146, 33.255455, 44.967701>,  <34.177017, 33.323814, 45.060104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560146, 33.255455, 44.967701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234352, -0.000627, 0.972151,
		-0.166281, -0.985289, 0.039449,
		0.957826, -0.170895, -0.231009,
		34.847492, 33.204185, 44.898399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307606, 32.891392, 45.544857>,  <34.177017, 33.323814, 45.060104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307606, 32.891392, 45.544857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.667736, 32.997921, 45.407173>,  <34.883816, 33.061840, 45.324562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.667736, 32.997921, 45.407173>,  <34.307606, 32.891392, 45.544857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667736, 32.997921, 45.407173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391939, -0.152333, 0.907292,
		0.189200, -0.951770, -0.241533,
		0.900326, 0.266326, -0.344214,
		34.937836, 33.077820, 45.303909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731995, 32.414410, 45.867062>,  <34.307606, 32.891392, 45.544857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731995, 32.414410, 45.867062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.959198, 32.723850, 45.754700>,  <35.095520, 32.909515, 45.687283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.959198, 32.723850, 45.754700>,  <34.731995, 32.414410, 45.867062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959198, 32.723850, 45.754700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505918, -0.058981, 0.860563,
		0.649162, -0.630925, -0.424879,
		0.568010, 0.773599, -0.280908,
		35.129601, 32.955929, 45.670425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507648, 32.310055, 46.057743>,  <34.731995, 32.414410, 45.867062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507648, 32.310055, 46.057743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.449963, 32.703430, 46.013821>,  <35.415352, 32.939453, 45.987469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.449963, 32.703430, 46.013821>,  <35.507648, 32.310055, 46.057743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449963, 32.703430, 46.013821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333502, 0.152778, 0.930288,
		0.931653, 0.097542, -0.350011,
		-0.144216, 0.983435, -0.109806,
		35.406696, 32.998459, 45.980881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117050, 32.684422, 46.121765>,  <35.507648, 32.310055, 46.057743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117050, 32.684422, 46.121765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.823032, 32.940060, 46.212334>,  <35.646622, 33.093441, 46.266674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.823032, 32.940060, 46.212334>,  <36.117050, 32.684422, 46.121765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823032, 32.940060, 46.212334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369245, 0.097236, 0.924231,
		0.568656, 0.762956, -0.307455,
		-0.735043, 0.639096, 0.226424,
		35.602520, 33.131790, 46.280262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395679, 33.168842, 46.639507>,  <36.117050, 32.684422, 46.121765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395679, 33.168842, 46.639507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.005970, 33.233208, 46.702629>,  <35.772144, 33.271828, 46.740501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.005970, 33.233208, 46.702629>,  <36.395679, 33.168842, 46.639507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005970, 33.233208, 46.702629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196198, 0.260954, 0.945203,
		0.110915, 0.951846, -0.285811,
		-0.974271, 0.160913, 0.157806,
		35.713688, 33.281483, 46.749969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384422, 33.694729, 47.209686>,  <36.395679, 33.168842, 46.639507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384422, 33.694729, 47.209686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033707, 33.504803, 47.179264>,  <35.823277, 33.390846, 47.161011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033707, 33.504803, 47.179264>,  <36.384422, 33.694729, 47.209686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033707, 33.504803, 47.179264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056943, -0.054534, 0.996887,
		-0.477483, 0.878395, 0.020777,
		-0.876794, -0.474814, -0.076057,
		35.770668, 33.362358, 47.156448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055058, 33.965103, 47.701530>,  <36.384422, 33.694729, 47.209686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055058, 33.965103, 47.701530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.870052, 33.617508, 47.631161>,  <35.759048, 33.408951, 47.588940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.870052, 33.617508, 47.631161>,  <36.055058, 33.965103, 47.701530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870052, 33.617508, 47.631161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069523, -0.162269, 0.984295,
		-0.883883, 0.467479, 0.014637,
		-0.462512, -0.868983, -0.175927,
		35.731300, 33.356812, 47.578384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656963, 33.981392, 48.266830>,  <36.055058, 33.965103, 47.701530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656963, 33.981392, 48.266830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.712395, 33.618557, 48.107841>,  <35.745655, 33.400856, 48.012447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.712395, 33.618557, 48.107841>,  <35.656963, 33.981392, 48.266830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712395, 33.618557, 48.107841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267685, -0.352093, 0.896870,
		-0.953488, -0.230686, 0.194021,
		0.138582, -0.907091, -0.397468,
		35.753971, 33.346428, 47.988602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213341, 33.640816, 48.603294>,  <35.656963, 33.981392, 48.266830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213341, 33.640816, 48.603294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.523876, 33.422855, 48.476566>,  <35.710197, 33.292080, 48.400528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.523876, 33.422855, 48.476566>,  <35.213341, 33.640816, 48.603294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523876, 33.422855, 48.476566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188630, -0.278756, 0.941655,
		-0.601427, -0.790807, -0.113624,
		0.776340, -0.544903, -0.316822,
		35.756779, 33.259384, 48.381519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524532, 33.665760, 48.257900>,  <35.213341, 33.640816, 48.603294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524532, 33.665760, 48.257900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.156986, 33.606068, 48.404003>,  <33.936459, 33.570251, 48.491665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.156986, 33.606068, 48.404003>,  <34.524532, 33.665760, 48.257900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156986, 33.606068, 48.404003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314203, -0.283208, -0.906129,
		0.238667, -0.947377, 0.213341,
		-0.918866, -0.149231, 0.365261,
		33.881325, 33.561298, 48.513580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315407, 33.092842, 47.893356>,  <34.524532, 33.665760, 48.257900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315407, 33.092842, 47.893356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.966225, 33.216087, 48.044628>,  <33.756718, 33.290035, 48.135391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.966225, 33.216087, 48.044628>,  <34.315407, 33.092842, 47.893356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966225, 33.216087, 48.044628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468772, -0.315423, -0.825083,
		-0.134929, -0.897539, 0.419782,
		-0.872953, 0.308109, 0.378181,
		33.704338, 33.308521, 48.158081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843113, 32.560001, 47.669437>,  <34.315407, 33.092842, 47.893356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843113, 32.560001, 47.669437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.642784, 32.889370, 47.776134>,  <33.522587, 33.086990, 47.840153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.642784, 32.889370, 47.776134>,  <33.843113, 32.560001, 47.669437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642784, 32.889370, 47.776134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607561, -0.114936, -0.785913,
		-0.616482, -0.555662, 0.557843,
		-0.500819, 0.823425, 0.266742,
		33.492538, 33.136398, 47.856155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123650, 32.427681, 47.598370>,  <33.843113, 32.560001, 47.669437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123650, 32.427681, 47.598370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.143658, 32.827129, 47.592018>,  <33.155663, 33.066799, 47.588207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.143658, 32.827129, 47.592018>,  <33.123650, 32.427681, 47.598370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143658, 32.827129, 47.592018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557122, 0.014706, -0.830301,
		-0.828923, 0.050373, 0.557089,
		0.050017, 0.998622, -0.015874,
		33.158661, 33.126717, 47.587257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461239, 32.550591, 47.252769>,  <33.123650, 32.427681, 47.598370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461239, 32.550591, 47.252769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.706917, 32.862801, 47.206215>,  <32.854324, 33.050125, 47.178284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.706917, 32.862801, 47.206215>,  <32.461239, 32.550591, 47.252769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706917, 32.862801, 47.206215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396987, 0.178135, -0.900372,
		-0.682031, 0.599206, 0.419268,
		0.614194, 0.780525, -0.116383,
		32.891174, 33.096958, 47.171299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008827, 33.106796, 47.051140>,  <32.461239, 32.550591, 47.252769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008827, 33.106796, 47.051140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.382759, 33.196934, 46.941364>,  <32.607117, 33.251015, 46.875500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.382759, 33.196934, 46.941364>,  <32.008827, 33.106796, 47.051140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382759, 33.196934, 46.941364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300534, 0.090439, -0.949474,
		-0.189136, 0.970073, 0.152268,
		0.934830, 0.225341, -0.274435,
		32.663208, 33.264538, 46.859035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863899, 33.617409, 46.662708>,  <32.008827, 33.106796, 47.051140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863899, 33.617409, 46.662708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.237850, 33.521648, 46.557869>,  <32.462219, 33.464191, 46.494965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.237850, 33.521648, 46.557869>,  <31.863899, 33.617409, 46.662708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237850, 33.521648, 46.557869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296737, -0.121834, -0.947156,
		0.194814, 0.963247, -0.184937,
		0.934877, -0.239397, -0.262096,
		32.518314, 33.449829, 46.479240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994150, 33.928833, 45.973988>,  <31.863899, 33.617409, 46.662708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994150, 33.928833, 45.973988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.290653, 33.660496, 45.964993>,  <32.468555, 33.499493, 45.959595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.290653, 33.660496, 45.964993>,  <31.994150, 33.928833, 45.973988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290653, 33.660496, 45.964993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036366, -0.006679, -0.999316,
		0.670234, 0.741570, -0.029347,
		0.741259, -0.670843, -0.022491,
		32.513031, 33.459244, 45.958244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402302, 34.163326, 45.408653>,  <31.994150, 33.928833, 45.973988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402302, 34.163326, 45.408653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.531769, 33.785515, 45.430923>,  <32.609447, 33.558826, 45.444286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.531769, 33.785515, 45.430923>,  <32.402302, 34.163326, 45.408653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531769, 33.785515, 45.430923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092687, -0.026904, -0.995332,
		0.941620, 0.327318, 0.078837,
		0.323669, -0.944531, 0.055671,
		32.628868, 33.502155, 45.447624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024403, 34.070164, 45.151638>,  <32.402302, 34.163326, 45.408653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024403, 34.070164, 45.151638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.878338, 33.700035, 45.110783>,  <32.790699, 33.477959, 45.086269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.878338, 33.700035, 45.110783>,  <33.024403, 34.070164, 45.151638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878338, 33.700035, 45.110783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202630, 0.028079, -0.978853,
		0.908623, -0.378138, 0.177245,
		-0.365165, -0.925323, -0.102135,
		32.768787, 33.422440, 45.080143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541077, 33.609241, 44.735828>,  <33.024403, 34.070164, 45.151638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541077, 33.609241, 44.735828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.187576, 33.424931, 44.703159>,  <32.975475, 33.314342, 44.683559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.187576, 33.424931, 44.703159>,  <33.541077, 33.609241, 44.735828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187576, 33.424931, 44.703159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127262, -0.068703, -0.989487,
		0.450322, -0.884853, 0.119356,
		-0.883750, -0.460777, -0.081670,
		32.922451, 33.286697, 44.678658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621941, 33.095516, 44.237331>,  <33.541077, 33.609241, 44.735828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621941, 33.095516, 44.237331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.224834, 33.140888, 44.253101>,  <32.986572, 33.168110, 44.262562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.224834, 33.140888, 44.253101>,  <33.621941, 33.095516, 44.237331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224834, 33.140888, 44.253101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045366, -0.050279, -0.997704,
		-0.111192, -0.992273, 0.055061,
		-0.992763, 0.113434, 0.039425,
		32.927006, 33.174915, 44.264931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228645, 32.589870, 43.864975>,  <33.621941, 33.095516, 44.237331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228645, 32.589870, 43.864975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.980602, 32.903545, 43.855881>,  <32.831776, 33.091751, 43.850426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.980602, 32.903545, 43.855881>,  <33.228645, 32.589870, 43.864975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980602, 32.903545, 43.855881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074015, -0.087330, -0.993426,
		-0.781021, -0.614344, 0.112196,
		-0.620104, 0.784191, -0.022736,
		32.794571, 33.138802, 43.849060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958904, 32.499302, 43.282490>,  <33.228645, 32.589870, 43.864975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958904, 32.499302, 43.282490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.841133, 32.879173, 43.325253>,  <32.770470, 33.107094, 43.350910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.841133, 32.879173, 43.325253>,  <32.958904, 32.499302, 43.282490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841133, 32.879173, 43.325253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006681, 0.113908, -0.993469,
		-0.955650, -0.291792, -0.039882,
		-0.294429, 0.949675, 0.106907,
		32.752804, 33.164074, 43.357327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504162, 32.651905, 42.801464>,  <32.958904, 32.499302, 43.282490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504162, 32.651905, 42.801464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.582317, 33.032543, 42.896370>,  <32.629211, 33.260925, 42.953312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.582317, 33.032543, 42.896370>,  <32.504162, 32.651905, 42.801464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582317, 33.032543, 42.896370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212841, 0.277305, -0.936910,
		-0.957351, 0.132566, 0.256721,
		0.195393, 0.951593, 0.237262,
		32.640934, 33.318020, 42.967548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915665, 33.111671, 42.677864>,  <32.504162, 32.651905, 42.801464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915665, 33.111671, 42.677864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.245594, 33.335411, 42.644886>,  <32.443550, 33.469654, 42.625099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.245594, 33.335411, 42.644886>,  <31.915665, 33.111671, 42.677864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245594, 33.335411, 42.644886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260746, 0.246941, -0.933291,
		-0.501676, 0.791296, 0.349531,
		0.824823, 0.559349, -0.082443,
		32.493042, 33.503216, 42.620152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747734, 33.750435, 42.300240>,  <31.915665, 33.111671, 42.677864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747734, 33.750435, 42.300240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.141876, 33.693336, 42.262939>,  <32.378361, 33.659077, 42.240559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.141876, 33.693336, 42.262939>,  <31.747734, 33.750435, 42.300240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141876, 33.693336, 42.262939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023961, 0.425559, -0.904614,
		0.168818, 0.893601, 0.415906,
		0.985356, -0.142750, -0.093253,
		32.437485, 33.650513, 42.234962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058594, 34.348751, 42.054974>,  <31.747734, 33.750435, 42.300240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058594, 34.348751, 42.054974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.277668, 34.033497, 41.942631>,  <32.409111, 33.844345, 41.875225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.277668, 34.033497, 41.942631>,  <32.058594, 34.348751, 42.054974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277668, 34.033497, 41.942631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145553, 0.240812, -0.959596,
		0.823929, 0.566433, 0.017172,
		0.547682, -0.788140, -0.280858,
		32.441971, 33.797054, 41.858372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317524, 34.583431, 41.423714>,  <32.058594, 34.348751, 42.054974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317524, 34.583431, 41.423714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.362007, 34.186630, 41.399841>,  <32.388699, 33.948551, 41.385517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.362007, 34.186630, 41.399841>,  <32.317524, 34.583431, 41.423714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362007, 34.186630, 41.399841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030441, 0.056623, -0.997931,
		0.993330, 0.112797, -0.023900,
		0.111211, -0.992003, -0.059679,
		32.395370, 33.889030, 41.381939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765457, 34.454552, 40.862167>,  <32.317524, 34.583431, 41.423714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765457, 34.454552, 40.862167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.572182, 34.105419, 40.889576>,  <32.456219, 33.895939, 40.906021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.572182, 34.105419, 40.889576>,  <32.765457, 34.454552, 40.862167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572182, 34.105419, 40.889576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178039, 0.021328, -0.983792,
		0.857225, -0.487552, -0.165704,
		-0.483185, -0.872833, 0.068520,
		32.427227, 33.843571, 40.910133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.386845, 33.740726, 25.844948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.106133, 33.517120, 26.021585>,  <42.937706, 33.382957, 26.127567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.106133, 33.517120, 26.021585>,  <43.386845, 33.740726, 25.844948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106133, 33.517120, 26.021585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382032, 0.227888, 0.895611,
		-0.601298, 0.797223, 0.053637,
		-0.701778, -0.559020, 0.441593,
		42.895599, 33.349415, 26.154064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191803, 34.150421, 26.462442>,  <43.386845, 33.740726, 25.844948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191803, 34.150421, 26.462442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.059719, 33.778393, 26.526857>,  <42.980469, 33.555176, 26.565506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.059719, 33.778393, 26.526857>,  <43.191803, 34.150421, 26.462442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059719, 33.778393, 26.526857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051374, 0.152646, 0.986945,
		-0.942508, 0.334173, -0.002624,
		-0.330211, -0.930068, 0.161038,
		42.960655, 33.499371, 26.575169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588848, 34.217987, 26.955832>,  <43.191803, 34.150421, 26.462442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588848, 34.217987, 26.955832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.708435, 33.837547, 26.986912>,  <42.780186, 33.609283, 27.005560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.708435, 33.837547, 26.986912>,  <42.588848, 34.217987, 26.955832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708435, 33.837547, 26.986912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079813, 0.106060, 0.991151,
		-0.950920, -0.290121, 0.107619,
		0.298967, -0.951095, 0.077699,
		42.798126, 33.552219, 27.010221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107101, 33.917927, 27.486385>,  <42.588848, 34.217987, 26.955832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107101, 33.917927, 27.486385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.459763, 33.730801, 27.461617>,  <42.671360, 33.618526, 27.446756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.459763, 33.730801, 27.461617>,  <42.107101, 33.917927, 27.486385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459763, 33.730801, 27.461617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104966, 0.066486, 0.992251,
		-0.460071, -0.881323, 0.107722,
		0.881656, -0.467813, -0.061921,
		42.724258, 33.590458, 27.443041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966557, 33.360329, 27.867308>,  <42.107101, 33.917927, 27.486385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966557, 33.360329, 27.867308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.365105, 33.384537, 27.843386>,  <42.604233, 33.399063, 27.829033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.365105, 33.384537, 27.843386>,  <41.966557, 33.360329, 27.867308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.365105, 33.384537, 27.843386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068559, -0.154835, 0.985559,
		0.050389, -0.986085, -0.158423,
		0.996373, 0.060523, -0.059803,
		42.664017, 33.402695, 27.825445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183472, 32.764549, 28.179766>,  <41.966557, 33.360329, 27.867308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183472, 32.764549, 28.179766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.487858, 33.023361, 28.198923>,  <42.670490, 33.178646, 28.210419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.487858, 33.023361, 28.198923>,  <42.183472, 32.764549, 28.179766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487858, 33.023361, 28.198923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144472, -0.240956, 0.959723,
		0.632507, -0.723393, -0.276835,
		0.760962, 0.647026, 0.047896,
		42.716145, 33.217468, 28.213291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767334, 32.448700, 28.695654>,  <42.183472, 32.764549, 28.179766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767334, 32.448700, 28.695654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.838963, 32.840542, 28.659191>,  <42.881939, 33.075645, 28.637314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.838963, 32.840542, 28.659191>,  <42.767334, 32.448700, 28.695654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838963, 32.840542, 28.659191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403436, 0.011389, 0.914937,
		0.897313, -0.200618, -0.393168,
		0.179075, 0.979603, -0.091156,
		42.892685, 33.134422, 28.631844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.370281, 32.508797, 29.101883>,  <42.767334, 32.448700, 28.695654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.370281, 32.508797, 29.101883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.259136, 32.890312, 29.056133>,  <43.192448, 33.119221, 29.028683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.259136, 32.890312, 29.056133>,  <43.370281, 32.508797, 29.101883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259136, 32.890312, 29.056133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332937, 0.207302, 0.919879,
		0.901080, 0.217520, -0.375153,
		-0.277862, 0.953788, -0.114375,
		43.175777, 33.176449, 29.021820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.908966, 32.921608, 29.347492>,  <43.370281, 32.508797, 29.101883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.908966, 32.921608, 29.347492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.580536, 33.145069, 29.394365>,  <43.383476, 33.279148, 29.422489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.580536, 33.145069, 29.394365>,  <43.908966, 32.921608, 29.347492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580536, 33.145069, 29.394365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224997, 0.128080, 0.965905,
		0.524599, 0.819451, -0.230860,
		-0.821080, 0.558655, 0.117183,
		43.334213, 33.312664, 29.429520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.216427, 33.476372, 29.765488>,  <43.908966, 32.921608, 29.347492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.216427, 33.476372, 29.765488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.819534, 33.507267, 29.804502>,  <43.581398, 33.525803, 29.827911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.819534, 33.507267, 29.804502>,  <44.216427, 33.476372, 29.765488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.819534, 33.507267, 29.804502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112153, 0.215846, 0.969965,
		0.053864, 0.973368, -0.222831,
		-0.992230, 0.077238, 0.097539,
		43.521866, 33.530437, 29.833765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.162548, 34.015713, 30.244982>,  <44.216427, 33.476372, 29.765488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.162548, 34.015713, 30.244982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.794891, 33.859280, 30.263882>,  <43.574299, 33.765419, 30.275221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.794891, 33.859280, 30.263882>,  <44.162548, 34.015713, 30.244982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.794891, 33.859280, 30.263882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005820, 0.133408, 0.991044,
		-0.393885, 0.910634, -0.124897,
		-0.919141, -0.391085, 0.047248,
		43.519150, 33.741955, 30.278055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715561, 34.572708, 30.587648>,  <44.162548, 34.015713, 30.244982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715561, 34.572708, 30.587648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.569981, 34.202229, 30.627022>,  <43.482632, 33.979939, 30.650646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.569981, 34.202229, 30.627022>,  <43.715561, 34.572708, 30.587648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.569981, 34.202229, 30.627022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054759, 0.084220, 0.994941,
		-0.929808, 0.367498, 0.020067,
		-0.363949, -0.926203, 0.098433,
		43.460796, 33.924366, 30.656551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.270935, 34.589005, 31.088436>,  <43.715561, 34.572708, 30.587648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.270935, 34.589005, 31.088436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.341751, 34.195671, 31.071920>,  <43.384243, 33.959671, 31.062010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.341751, 34.195671, 31.071920>,  <43.270935, 34.589005, 31.088436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341751, 34.195671, 31.071920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155455, -0.013487, 0.987751,
		-0.971848, -0.181295, 0.150477,
		0.177045, -0.983336, -0.041291,
		43.394863, 33.900669, 31.059532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.913105, 34.355335, 31.631918>,  <43.270935, 34.589005, 31.088436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.913105, 34.355335, 31.631918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.159206, 34.048557, 31.558979>,  <43.306870, 33.864491, 31.515217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.159206, 34.048557, 31.558979>,  <42.913105, 34.355335, 31.631918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159206, 34.048557, 31.558979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194006, -0.076886, 0.977983,
		-0.764082, -0.637087, 0.101488,
		0.615257, -0.766948, -0.182346,
		43.343784, 33.818474, 31.504274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642254, 33.832592, 32.203678>,  <42.913105, 34.355335, 31.631918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642254, 33.832592, 32.203678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.997448, 33.726196, 32.053619>,  <43.210564, 33.662361, 31.963585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.997448, 33.726196, 32.053619>,  <42.642254, 33.832592, 32.203678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997448, 33.726196, 32.053619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267914, -0.363802, 0.892116,
		-0.373779, -0.892689, -0.251784,
		0.887982, -0.265998, -0.375146,
		43.263844, 33.646400, 31.941076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.737484, 33.120319, 32.431240>,  <42.642254, 33.832592, 32.203678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.737484, 33.120319, 32.431240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.100349, 33.273468, 32.361416>,  <43.318069, 33.365356, 32.319523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.100349, 33.273468, 32.361416>,  <42.737484, 33.120319, 32.431240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100349, 33.273468, 32.361416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351646, -0.461955, 0.814213,
		0.231099, -0.800005, -0.553702,
		0.907160, 0.382870, -0.174561,
		43.372498, 33.388329, 32.309048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174889, 32.545898, 32.420914>,  <42.737484, 33.120319, 32.431240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174889, 32.545898, 32.420914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.419487, 32.851910, 32.501717>,  <43.566246, 33.035515, 32.550198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.419487, 32.851910, 32.501717>,  <43.174889, 32.545898, 32.420914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.419487, 32.851910, 32.501717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428927, -0.535037, 0.727844,
		0.664901, -0.358427, -0.655314,
		0.611496, 0.765026, 0.202008,
		43.602936, 33.081417, 32.562321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731110, 32.173046, 32.590107>,  <43.174889, 32.545898, 32.420914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731110, 32.173046, 32.590107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.770191, 32.540405, 32.743465>,  <43.793640, 32.760822, 32.835480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.770191, 32.540405, 32.743465>,  <43.731110, 32.173046, 32.590107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.770191, 32.540405, 32.743465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327200, -0.393466, 0.859142,
		0.939891, 0.041510, -0.338942,
		0.097699, 0.918401, 0.383397,
		43.799500, 32.815926, 32.858486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.146992, 32.122307, 33.166222>,  <43.731110, 32.173046, 32.590107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.146992, 32.122307, 33.166222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.011414, 32.490509, 33.243977>,  <43.930065, 32.711430, 33.290630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.011414, 32.490509, 33.243977>,  <44.146992, 32.122307, 33.166222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011414, 32.490509, 33.243977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399834, -0.046086, 0.915428,
		0.851616, 0.388000, -0.352429,
		-0.338944, 0.920507, 0.194383,
		43.909729, 32.766663, 33.302292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.752499, 32.502304, 33.413383>,  <44.146992, 32.122307, 33.166222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.752499, 32.502304, 33.413383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.436466, 32.718159, 33.529701>,  <44.246849, 32.847672, 33.599491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.436466, 32.718159, 33.529701>,  <44.752499, 32.502304, 33.413383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.436466, 32.718159, 33.529701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350251, 0.008077, 0.936621,
		0.503090, 0.841857, -0.195391,
		-0.790079, 0.539641, 0.290797,
		44.199444, 32.880051, 33.616940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.972134, 32.982933, 33.966717>,  <44.752499, 32.502304, 33.413383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.972134, 32.982933, 33.966717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.577801, 32.947845, 34.023899>,  <44.341202, 32.926792, 34.058208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.577801, 32.947845, 34.023899>,  <44.972134, 32.982933, 33.966717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.577801, 32.947845, 34.023899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151319, -0.097569, 0.983658,
		-0.072337, 0.991356, 0.109461,
		-0.985835, -0.087718, 0.142953,
		44.282051, 32.921532, 34.066784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.350758, 33.657906, 33.903141>,  <44.972134, 32.982933, 33.966717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.350758, 33.657906, 33.903141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.576450, 33.978477, 33.982494>,  <45.711864, 34.170822, 34.030106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.576450, 33.978477, 33.982494>,  <45.350758, 33.657906, 33.903141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.576450, 33.978477, 33.982494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706208, 0.592958, -0.386874,
		-0.427687, 0.078182, 0.900539,
		0.564229, 0.801429, 0.198388,
		45.745720, 34.218906, 34.042011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.963394, 34.200745, 34.205788>,  <45.350758, 33.657906, 33.903141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.963394, 34.200745, 34.205788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.280563, 34.409702, 34.080326>,  <45.470863, 34.535076, 34.005051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.280563, 34.409702, 34.080326>,  <44.963394, 34.200745, 34.205788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.280563, 34.409702, 34.080326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608506, 0.652287, -0.451932,
		-0.031491, 0.549209, 0.835092,
		0.792925, 0.522390, -0.313655,
		45.518440, 34.566418, 33.986229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.763523, 34.858444, 34.328556>,  <44.963394, 34.200745, 34.205788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.763523, 34.858444, 34.328556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.043858, 34.889271, 34.044895>,  <45.212059, 34.907768, 33.874699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.043858, 34.889271, 34.044895>,  <44.763523, 34.858444, 34.328556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.043858, 34.889271, 34.044895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576232, 0.647159, -0.499142,
		0.420464, 0.758450, 0.497960,
		0.700833, 0.077069, -0.709149,
		45.254108, 34.912392, 33.832150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.049164, 35.596447, 34.256844>,  <44.763523, 34.858444, 34.328556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.049164, 35.596447, 34.256844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.107990, 35.427124, 33.899254>,  <45.143288, 35.325531, 33.684700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.107990, 35.427124, 33.899254>,  <45.049164, 35.596447, 34.256844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.107990, 35.427124, 33.899254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522436, 0.734202, -0.433598,
		0.839900, 0.530812, -0.113171,
		0.147069, -0.423304, -0.893971,
		45.152111, 35.300133, 33.631062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.311123, 36.134418, 33.844044>,  <45.049164, 35.596447, 34.256844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.311123, 36.134418, 33.844044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.162865, 35.840157, 33.617264>,  <45.073910, 35.663601, 33.481194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.162865, 35.840157, 33.617264>,  <45.311123, 36.134418, 33.844044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.162865, 35.840157, 33.617264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399577, 0.677351, -0.617684,
		0.838428, -0.002399, -0.545006,
		-0.370642, -0.735656, -0.566952,
		45.051670, 35.619461, 33.447178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.489445, 36.344677, 33.154934>,  <45.311123, 36.134418, 33.844044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.489445, 36.344677, 33.154934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.194016, 36.081909, 33.094311>,  <45.016758, 35.924248, 33.057938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.194016, 36.081909, 33.094311>,  <45.489445, 36.344677, 33.154934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.194016, 36.081909, 33.094311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378924, 0.590428, -0.712609,
		0.557613, -0.468881, -0.684995,
		-0.738569, -0.656921, -0.151560,
		44.972443, 35.884834, 33.048843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.493160, 36.203892, 32.472534>,  <45.489445, 36.344677, 33.154934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.493160, 36.203892, 32.472534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.119724, 36.104637, 32.575947>,  <44.895664, 36.045086, 32.637997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.119724, 36.104637, 32.575947>,  <45.493160, 36.203892, 32.472534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.119724, 36.104637, 32.575947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331780, 0.325949, -0.885257,
		0.135390, -0.912244, -0.386627,
		-0.933591, -0.248130, 0.258534,
		44.839645, 36.030197, 32.653507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.184143, 35.983063, 31.912611>,  <45.493160, 36.203892, 32.472534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.184143, 35.983063, 31.912611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.850346, 36.001804, 32.132221>,  <44.650066, 36.013050, 32.263988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.850346, 36.001804, 32.132221>,  <45.184143, 35.983063, 31.912611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.850346, 36.001804, 32.132221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530951, 0.198084, -0.823926,
		-0.147355, -0.979065, -0.140423,
		-0.834492, 0.046852, 0.549024,
		44.599998, 36.015862, 32.296928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.755184, 35.454800, 31.668484>,  <45.184143, 35.983063, 31.912611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.755184, 35.454800, 31.668484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.540199, 35.744858, 31.840668>,  <44.411209, 35.918892, 31.943977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.540199, 35.744858, 31.840668>,  <44.755184, 35.454800, 31.668484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.540199, 35.744858, 31.840668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505327, 0.131709, -0.852817,
		-0.675115, -0.675878, 0.295650,
		-0.537461, 0.725150, 0.430458,
		44.378960, 35.962402, 31.969805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.115494, 35.250778, 31.508654>,  <44.755184, 35.454800, 31.668484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.115494, 35.250778, 31.508654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.108616, 35.639179, 31.604031>,  <44.104488, 35.872219, 31.661257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.108616, 35.639179, 31.604031>,  <44.115494, 35.250778, 31.508654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108616, 35.639179, 31.604031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547194, 0.190457, -0.815049,
		-0.836829, -0.144484, 0.528054,
		-0.017190, 0.971005, 0.238441,
		44.103458, 35.930481, 31.675562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505871, 35.437057, 31.221876>,  <44.115494, 35.250778, 31.508654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505871, 35.437057, 31.221876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.662121, 35.794243, 31.311338>,  <43.755871, 36.008556, 31.365015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.662121, 35.794243, 31.311338>,  <43.505871, 35.437057, 31.221876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662121, 35.794243, 31.311338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434858, 0.393140, -0.810148,
		-0.811362, 0.219208, 0.541885,
		0.390627, 0.892967, 0.223654,
		43.779308, 36.062134, 31.378435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.935978, 36.035923, 31.209967>,  <43.505871, 35.437057, 31.221876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.935978, 36.035923, 31.209967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.280972, 36.232281, 31.160730>,  <43.487968, 36.350094, 31.131187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.280972, 36.232281, 31.160730>,  <42.935978, 36.035923, 31.209967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280972, 36.232281, 31.160730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423169, 0.566099, -0.707433,
		-0.277593, 0.662235, 0.695980,
		0.862480, 0.490895, -0.123092,
		43.539715, 36.379551, 31.123802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.816074, 36.722881, 31.247688>,  <42.935978, 36.035923, 31.209967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.816074, 36.722881, 31.247688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.167610, 36.715179, 31.056995>,  <43.378532, 36.710560, 30.942579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.167610, 36.715179, 31.056995>,  <42.816074, 36.722881, 31.247688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167610, 36.715179, 31.056995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425948, 0.418523, -0.802126,
		0.214968, 0.908002, 0.359612,
		0.878838, -0.019256, -0.476731,
		43.431263, 36.709404, 30.913977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974922, 37.364147, 31.010820>,  <42.816074, 36.722881, 31.247688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974922, 37.364147, 31.010820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.170227, 37.121666, 30.759705>,  <43.287411, 36.976177, 30.609035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.170227, 37.121666, 30.759705>,  <42.974922, 37.364147, 31.010820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.170227, 37.121666, 30.759705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458308, 0.434067, -0.775590,
		0.742665, 0.666414, -0.065887,
		0.488265, -0.606200, -0.627789,
		43.316708, 36.939804, 30.571367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.162895, 37.837376, 30.419334>,  <42.974922, 37.364147, 31.010820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.162895, 37.837376, 30.419334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.230747, 37.466801, 30.284912>,  <43.271458, 37.244453, 30.204260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.230747, 37.466801, 30.284912>,  <43.162895, 37.837376, 30.419334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230747, 37.466801, 30.284912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397627, 0.247668, -0.883489,
		0.901731, 0.283492, -0.326365,
		0.169632, -0.926441, -0.336054,
		43.281635, 37.188869, 30.184095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.568447, 37.899490, 29.773716>,  <43.162895, 37.837376, 30.419334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.568447, 37.899490, 29.773716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.353474, 37.562740, 29.793350>,  <43.224491, 37.360691, 29.805132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.353474, 37.562740, 29.793350>,  <43.568447, 37.899490, 29.773716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353474, 37.562740, 29.793350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534081, 0.294741, -0.792392,
		0.652629, -0.452073, -0.608033,
		-0.537432, -0.841877, 0.049087,
		43.192245, 37.310177, 29.808077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.539379, 37.691505, 29.069155>,  <43.568447, 37.899490, 29.773716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.539379, 37.691505, 29.069155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.234226, 37.482830, 29.221914>,  <43.051132, 37.357624, 29.313570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.234226, 37.482830, 29.221914>,  <43.539379, 37.691505, 29.069155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234226, 37.482830, 29.221914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475748, 0.052979, -0.877985,
		0.437803, -0.851489, -0.288610,
		-0.762884, -0.521690, 0.381900,
		43.005360, 37.326324, 29.336485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.409626, 37.098499, 28.575647>,  <43.539379, 37.691505, 29.069155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.409626, 37.098499, 28.575647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.073257, 37.173660, 28.778641>,  <42.871437, 37.218758, 28.900436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.073257, 37.173660, 28.778641>,  <43.409626, 37.098499, 28.575647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073257, 37.173660, 28.778641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536654, -0.168905, -0.826725,
		-0.069629, -0.967555, 0.242876,
		-0.840924, 0.187904, 0.507482,
		42.820980, 37.230034, 28.930885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919666, 36.826939, 28.192259>,  <43.409626, 37.098499, 28.575647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919666, 36.826939, 28.192259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.693230, 37.054401, 28.430979>,  <42.557369, 37.190880, 28.574211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.693230, 37.054401, 28.430979>,  <42.919666, 36.826939, 28.192259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.693230, 37.054401, 28.430979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622430, 0.179821, -0.761739,
		-0.540488, -0.802677, 0.252157,
		-0.566087, 0.568660, 0.596801,
		42.523403, 37.224998, 28.610020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275040, 36.669903, 28.085470>,  <42.919666, 36.826939, 28.192259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275040, 36.669903, 28.085470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.198521, 37.002361, 28.294315>,  <42.152607, 37.201836, 28.419622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.198521, 37.002361, 28.294315>,  <42.275040, 36.669903, 28.085470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.198521, 37.002361, 28.294315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726432, 0.237836, -0.644771,
		-0.660076, -0.502624, 0.558273,
		-0.191300, 0.831146, 0.522112,
		42.141132, 37.251705, 28.450949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604717, 36.642479, 28.393438>,  <42.275040, 36.669903, 28.085470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604717, 36.642479, 28.393438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.716690, 37.019691, 28.321524>,  <41.783875, 37.246021, 28.278376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.716690, 37.019691, 28.321524>,  <41.604717, 36.642479, 28.393438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716690, 37.019691, 28.321524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757284, 0.101809, -0.645101,
		-0.590049, 0.316734, 0.742645,
		0.279934, 0.943035, -0.179786,
		41.800671, 37.302601, 28.267588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.457695, 30.104362, 37.547508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160233, 30.314695, 37.382351>,  <35.981754, 30.440895, 37.283257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160233, 30.314695, 37.382351>,  <36.457695, 30.104362, 37.547508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160233, 30.314695, 37.382351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070342, -0.552616, -0.830462,
		-0.664855, -0.646619, 0.373966,
		-0.743653, 0.525832, -0.412894,
		35.937138, 30.472445, 37.258484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184231, 29.632172, 37.131847>,  <36.457695, 30.104362, 37.547508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184231, 29.632172, 37.131847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019184, 29.973427, 37.004158>,  <35.920155, 30.178181, 36.927544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019184, 29.973427, 37.004158>,  <36.184231, 29.632172, 37.131847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019184, 29.973427, 37.004158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056564, -0.325770, -0.943756,
		-0.909147, -0.407466, 0.086161,
		-0.412617, 0.853138, -0.319221,
		35.895397, 30.229368, 36.908390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967350, 29.386843, 36.519402>,  <36.184231, 29.632172, 37.131847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967350, 29.386843, 36.519402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976009, 29.786743, 36.517384>,  <35.981205, 30.026684, 36.516174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976009, 29.786743, 36.517384>,  <35.967350, 29.386843, 36.519402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976009, 29.786743, 36.517384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014598, -0.005361, -0.999879,
		-0.999659, 0.021570, -0.014710,
		0.021646, 0.999753, -0.005044,
		35.982502, 30.086670, 36.515869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432178, 29.616438, 36.091595>,  <35.967350, 29.386843, 36.519402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432178, 29.616438, 36.091595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675117, 29.934120, 36.099155>,  <35.820881, 30.124729, 36.103691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675117, 29.934120, 36.099155>,  <35.432178, 29.616438, 36.091595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675117, 29.934120, 36.099155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099433, -0.052386, -0.993664,
		-0.788185, 0.605384, -0.110788,
		0.607352, 0.794208, 0.018905,
		35.857323, 30.172382, 36.104828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239342, 29.980923, 35.517872>,  <35.432178, 29.616438, 36.091595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239342, 29.980923, 35.517872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607296, 30.127926, 35.572647>,  <35.828068, 30.216127, 35.605511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607296, 30.127926, 35.572647>,  <35.239342, 29.980923, 35.517872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607296, 30.127926, 35.572647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113754, 0.084133, -0.989940,
		-0.375330, 0.926208, 0.035587,
		0.919884, 0.367506, 0.136938,
		35.883263, 30.238178, 35.613728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280628, 30.511894, 35.055370>,  <35.239342, 29.980923, 35.517872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280628, 30.511894, 35.055370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668755, 30.446831, 35.126953>,  <35.901630, 30.407793, 35.169903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668755, 30.446831, 35.126953>,  <35.280628, 30.511894, 35.055370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668755, 30.446831, 35.126953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210843, 0.206602, -0.955438,
		0.118438, 0.964810, 0.234765,
		0.970319, -0.162658, 0.178954,
		35.959850, 30.398033, 35.180637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579983, 31.004261, 34.720261>,  <35.280628, 30.511894, 35.055370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579983, 31.004261, 34.720261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839104, 30.704168, 34.773178>,  <35.994576, 30.524113, 34.804928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839104, 30.704168, 34.773178>,  <35.579983, 31.004261, 34.720261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839104, 30.704168, 34.773178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253299, 0.048348, -0.966179,
		0.718461, 0.659407, 0.221353,
		0.647807, -0.750230, 0.132292,
		36.033447, 30.479099, 34.812866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266926, 31.252169, 34.417961>,  <35.579983, 31.004261, 34.720261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266926, 31.252169, 34.417961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261406, 30.852266, 34.411072>,  <36.258095, 30.612326, 34.406937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261406, 30.852266, 34.411072>,  <36.266926, 31.252169, 34.417961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261406, 30.852266, 34.411072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244629, 0.013325, -0.969525,
		0.969518, -0.017591, 0.244386,
		-0.013799, -0.999756, -0.017222,
		36.257267, 30.552340, 34.405907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845459, 31.131140, 34.058079>,  <36.266926, 31.252169, 34.417961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845459, 31.131140, 34.058079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621391, 30.803770, 34.006874>,  <36.486950, 30.607347, 33.976151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621391, 30.803770, 34.006874>,  <36.845459, 31.131140, 34.058079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621391, 30.803770, 34.006874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252595, -0.021583, -0.967331,
		0.788924, -0.574209, 0.218820,
		-0.560174, -0.818424, -0.128015,
		36.453339, 30.558243, 33.968468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134392, 30.807693, 33.584709>,  <36.845459, 31.131140, 34.058079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134392, 30.807693, 33.584709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808323, 30.576269, 33.573734>,  <36.612679, 30.437414, 33.567150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808323, 30.576269, 33.573734>,  <37.134392, 30.807693, 33.584709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808323, 30.576269, 33.573734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118851, -0.120726, -0.985545,
		0.566887, -0.806654, 0.167176,
		-0.815177, -0.578562, -0.027434,
		36.563770, 30.402700, 33.565506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349403, 30.087317, 33.326591>,  <37.134392, 30.807693, 33.584709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349403, 30.087317, 33.326591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964314, 30.165945, 33.252277>,  <36.733257, 30.213121, 33.207687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964314, 30.165945, 33.252277>,  <37.349403, 30.087317, 33.326591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964314, 30.165945, 33.252277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138332, -0.232427, -0.962726,
		-0.232427, -0.952542, 0.196572,
		0.962726, -0.196572, 0.185790,
		36.675495, 30.224916, 33.196541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645069, 29.987232, 33.998207>,  <37.349403, 30.087317, 33.326591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645069, 29.987232, 33.998207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653141, 30.350664, 34.165096>,  <37.657986, 30.568724, 34.265228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653141, 30.350664, 34.165096>,  <37.645069, 29.987232, 33.998207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653141, 30.350664, 34.165096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348380, -0.397544, 0.848876,
		0.937136, 0.128222, -0.324554,
		0.020180, 0.908580, 0.417223,
		37.659195, 30.623238, 34.290264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389427, 30.069962, 34.184292>,  <37.645069, 29.987232, 33.998207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389427, 30.069962, 34.184292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112812, 30.266365, 34.396210>,  <37.946842, 30.384207, 34.523361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112812, 30.266365, 34.396210>,  <38.389427, 30.069962, 34.184292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112812, 30.266365, 34.396210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274427, -0.499865, 0.821477,
		0.668180, 0.713473, 0.210929,
		-0.691538, 0.491010, 0.529796,
		37.905350, 30.413668, 34.555149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635834, 30.579977, 33.662476>,  <38.389427, 30.069962, 34.184292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635834, 30.579977, 33.662476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983025, 30.416100, 33.774734>,  <39.191341, 30.317772, 33.842091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983025, 30.416100, 33.774734>,  <38.635834, 30.579977, 33.662476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983025, 30.416100, 33.774734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494772, 0.761894, -0.417994,
		-0.042572, 0.501665, 0.864014,
		0.867980, -0.409695, 0.280645,
		39.243420, 30.293192, 33.858929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022503, 31.124865, 34.017330>,  <38.635834, 30.579977, 33.662476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022503, 31.124865, 34.017330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274681, 30.829504, 33.921585>,  <39.425987, 30.652287, 33.864136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274681, 30.829504, 33.921585>,  <39.022503, 31.124865, 34.017330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274681, 30.829504, 33.921585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675110, 0.673787, -0.300395,
		0.383095, 0.027784, 0.923291,
		0.630448, -0.738403, -0.239367,
		39.463814, 30.607983, 33.849773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609062, 31.389256, 34.533684>,  <39.022503, 31.124865, 34.017330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609062, 31.389256, 34.533684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914364, 31.282557, 34.769070>,  <39.097546, 31.218536, 34.910301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914364, 31.282557, 34.769070>,  <38.609062, 31.389256, 34.533684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914364, 31.282557, 34.769070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606458, -0.609900, 0.510128,
		0.222829, -0.746236, -0.627280,
		0.763253, -0.266747, 0.588464,
		39.143341, 31.202532, 34.945610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563469, 30.613216, 34.630661>,  <38.609062, 31.389256, 34.533684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563469, 30.613216, 34.630661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836735, 30.705866, 34.907688>,  <39.000694, 30.761456, 35.073902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836735, 30.705866, 34.907688>,  <38.563469, 30.613216, 34.630661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836735, 30.705866, 34.907688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220625, -0.838589, 0.498089,
		0.696145, -0.493071, -0.521788,
		0.683160, 0.231622, 0.692563,
		39.041683, 30.775352, 35.115456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820206, 30.015759, 34.805931>,  <38.563469, 30.613216, 34.630661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820206, 30.015759, 34.805931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928688, 30.249115, 35.112160>,  <38.993778, 30.389128, 35.295898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928688, 30.249115, 35.112160>,  <38.820206, 30.015759, 34.805931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928688, 30.249115, 35.112160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294506, -0.706944, 0.643037,
		0.916360, -0.399860, -0.019913,
		0.271202, 0.583389, 0.765576,
		39.010048, 30.424131, 35.341831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288166, 29.617588, 35.209179>,  <38.820206, 30.015759, 34.805931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288166, 29.617588, 35.209179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116821, 29.903200, 35.430687>,  <39.014015, 30.074568, 35.563591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116821, 29.903200, 35.430687>,  <39.288166, 29.617588, 35.209179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116821, 29.903200, 35.430687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237956, -0.680353, 0.693178,
		0.871711, 0.165161, 0.461348,
		-0.428366, 0.714032, 0.553770,
		38.988312, 30.117409, 35.596817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546101, 29.436575, 35.779041>,  <39.288166, 29.617588, 35.209179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546101, 29.436575, 35.779041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235935, 29.675884, 35.859844>,  <39.049835, 29.819469, 35.908325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235935, 29.675884, 35.859844>,  <39.546101, 29.436575, 35.779041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235935, 29.675884, 35.859844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253470, -0.587905, 0.768193,
		0.578350, 0.544462, 0.607513,
		-0.775412, 0.598271, 0.202010,
		39.003311, 29.855366, 35.920448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579525, 29.494621, 36.493134>,  <39.546101, 29.436575, 35.779041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579525, 29.494621, 36.493134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210835, 29.603735, 36.382858>,  <38.989620, 29.669203, 36.316692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210835, 29.603735, 36.382858>,  <39.579525, 29.494621, 36.493134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210835, 29.603735, 36.382858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383730, -0.538297, 0.750325,
		0.056276, 0.797386, 0.600840,
		-0.921729, 0.272785, -0.275688,
		38.934315, 29.685570, 36.300152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203457, 29.843460, 37.144062>,  <39.579525, 29.494621, 36.493134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203457, 29.843460, 37.144062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936214, 29.702885, 36.881725>,  <38.775867, 29.618540, 36.724323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936214, 29.702885, 36.881725>,  <39.203457, 29.843460, 37.144062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936214, 29.702885, 36.881725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443145, -0.520113, 0.730140,
		-0.597709, 0.778444, 0.191753,
		-0.668106, -0.351436, -0.655840,
		38.735783, 29.597454, 36.684975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572624, 29.935678, 37.543129>,  <39.203457, 29.843460, 37.144062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572624, 29.935678, 37.543129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487671, 29.682978, 37.244926>,  <38.436699, 29.531357, 37.066006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487671, 29.682978, 37.244926>,  <38.572624, 29.935678, 37.543129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487671, 29.682978, 37.244926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527919, -0.567823, 0.631569,
		-0.822312, 0.527702, -0.212919,
		-0.212380, -0.631750, -0.745511,
		38.423958, 29.493452, 37.021275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870911, 30.015659, 37.518131>,  <38.572624, 29.935678, 37.543129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870911, 30.015659, 37.518131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992542, 29.669878, 37.358006>,  <38.065521, 29.462410, 37.261929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992542, 29.669878, 37.358006>,  <37.870911, 30.015659, 37.518131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992542, 29.669878, 37.358006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550693, -0.502400, 0.666582,
		-0.777348, 0.017756, -0.628820,
		0.304083, -0.864453, -0.400318,
		38.083767, 29.410542, 37.237911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282753, 29.571268, 37.289085>,  <37.870911, 30.015659, 37.518131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282753, 29.571268, 37.289085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583286, 29.316433, 37.357918>,  <37.763607, 29.163532, 37.399220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583286, 29.316433, 37.357918>,  <37.282753, 29.571268, 37.289085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583286, 29.316433, 37.357918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584241, -0.520912, 0.622345,
		-0.306848, -0.568129, -0.763593,
		0.751337, -0.637087, 0.172083,
		37.808689, 29.125307, 37.409542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939171, 28.897430, 37.331020>,  <37.282753, 29.571268, 37.289085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939171, 28.897430, 37.331020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299515, 28.807653, 37.479652>,  <37.515720, 28.753788, 37.568832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299515, 28.807653, 37.479652>,  <36.939171, 28.897430, 37.331020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299515, 28.807653, 37.479652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434051, -0.452028, 0.779276,
		-0.006936, -0.863305, -0.504634,
		0.900862, -0.224441, 0.371583,
		37.569775, 28.740320, 37.591125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897179, 28.250557, 37.679832>,  <36.939171, 28.897430, 37.331020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897179, 28.250557, 37.679832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248619, 28.363726, 37.833721>,  <37.459484, 28.431627, 37.926052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248619, 28.363726, 37.833721>,  <36.897179, 28.250557, 37.679832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248619, 28.363726, 37.833721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349785, -0.167204, 0.921788,
		0.325123, -0.944456, -0.047943,
		0.878605, 0.282925, 0.384718,
		37.512199, 28.448603, 37.949135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120693, 27.756014, 38.061729>,  <36.897179, 28.250557, 37.679832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120693, 27.756014, 38.061729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279671, 28.089073, 38.215996>,  <37.375057, 28.288908, 38.308556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279671, 28.089073, 38.215996>,  <37.120693, 27.756014, 38.061729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279671, 28.089073, 38.215996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379979, -0.233219, 0.895112,
		0.835255, -0.502304, 0.223696,
		0.397448, 0.832646, 0.385662,
		37.398907, 28.338867, 38.331696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951931, 27.034946, 38.103477>,  <37.120693, 27.756014, 38.061729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951931, 27.034946, 38.103477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591518, 26.882803, 38.020081>,  <36.375271, 26.791517, 37.970043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591518, 26.882803, 38.020081>,  <36.951931, 27.034946, 38.103477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591518, 26.882803, 38.020081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148557, 0.180997, -0.972199,
		0.407520, -0.906955, -0.106579,
		-0.901032, -0.380357, -0.208495,
		36.321209, 26.768696, 37.957531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045403, 26.645876, 37.477348>,  <36.951931, 27.034946, 38.103477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045403, 26.645876, 37.477348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654892, 26.732483, 37.475952>,  <36.420586, 26.784447, 37.475113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654892, 26.732483, 37.475952>,  <37.045403, 26.645876, 37.477348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654892, 26.732483, 37.475952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095225, 0.414765, -0.904932,
		-0.194485, -0.883793, -0.425542,
		-0.976272, 0.216518, -0.003494,
		36.362011, 26.797438, 37.474903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743813, 26.403814, 36.758305>,  <37.045403, 26.645876, 37.477348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743813, 26.403814, 36.758305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468235, 26.662621, 36.888981>,  <36.302887, 26.817905, 36.967384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468235, 26.662621, 36.888981>,  <36.743813, 26.403814, 36.758305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468235, 26.662621, 36.888981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241626, 0.219918, -0.945120,
		-0.683354, -0.730071, 0.004825,
		-0.688944, 0.647017, 0.326686,
		36.261551, 26.856726, 36.986988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211151, 26.223852, 36.401886>,  <36.743813, 26.403814, 36.758305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211151, 26.223852, 36.401886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120728, 26.588873, 36.538208>,  <36.066475, 26.807884, 36.620003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120728, 26.588873, 36.538208>,  <36.211151, 26.223852, 36.401886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120728, 26.588873, 36.538208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395005, 0.233934, -0.888395,
		-0.890431, -0.335451, 0.307579,
		-0.226060, 0.912550, 0.340806,
		36.052910, 26.862638, 36.640450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574299, 26.381075, 36.076759>,  <36.211151, 26.223852, 36.401886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574299, 26.381075, 36.076759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703148, 26.731785, 36.219585>,  <35.780457, 26.942211, 36.305283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703148, 26.731785, 36.219585>,  <35.574299, 26.381075, 36.076759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703148, 26.731785, 36.219585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378611, 0.465009, -0.800263,
		-0.867692, 0.122595, 0.481748,
		0.322125, 0.876777, 0.357069,
		35.799786, 26.994818, 36.326706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033962, 26.847763, 36.180405>,  <35.574299, 26.381075, 36.076759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033962, 26.847763, 36.180405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363930, 27.067457, 36.126953>,  <35.561909, 27.199274, 36.094883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363930, 27.067457, 36.126953>,  <35.033962, 26.847763, 36.180405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363930, 27.067457, 36.126953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360617, 0.329310, -0.872645,
		-0.435283, 0.768046, 0.469716,
		0.824914, 0.549236, -0.133627,
		35.611404, 27.232227, 36.086864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881863, 27.591446, 36.020073>,  <35.033962, 26.847763, 36.180405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881863, 27.591446, 36.020073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240215, 27.502766, 35.866058>,  <35.455227, 27.449558, 35.773651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240215, 27.502766, 35.866058>,  <34.881863, 27.591446, 36.020073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240215, 27.502766, 35.866058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333194, 0.238036, -0.912316,
		0.293913, 0.945615, 0.139382,
		0.895878, -0.221701, -0.385035,
		35.508980, 27.436256, 35.750549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976372, 28.125212, 35.547085>,  <34.881863, 27.591446, 36.020073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976372, 28.125212, 35.547085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230160, 27.840412, 35.426746>,  <35.382431, 27.669533, 35.354542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230160, 27.840412, 35.426746>,  <34.976372, 28.125212, 35.547085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230160, 27.840412, 35.426746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211330, 0.214601, -0.953565,
		0.743499, 0.668584, -0.014309,
		0.634467, -0.711999, -0.300847,
		35.420502, 27.626812, 35.336491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284069, 28.402838, 35.009045>,  <34.976372, 28.125212, 35.547085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284069, 28.402838, 35.009045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364540, 28.020014, 34.925560>,  <35.412823, 27.790319, 34.875469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364540, 28.020014, 34.925560>,  <35.284069, 28.402838, 35.009045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364540, 28.020014, 34.925560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152749, 0.179812, -0.971769,
		0.967572, 0.227379, -0.110016,
		0.201178, -0.957061, -0.208713,
		35.424892, 27.732895, 34.862946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400299, 28.595856, 34.427292>,  <35.284069, 28.402838, 35.009045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400299, 28.595856, 34.427292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359249, 28.197994, 34.422672>,  <35.334618, 27.959278, 34.419899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359249, 28.197994, 34.422672>,  <35.400299, 28.595856, 34.427292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359249, 28.197994, 34.422672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152346, 0.027188, -0.987953,
		0.982985, -0.099628, -0.154322,
		-0.102623, -0.994653, -0.011548,
		35.328461, 27.899599, 34.419209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839016, 28.256214, 33.813545>,  <35.400299, 28.595856, 34.427292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839016, 28.256214, 33.813545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536789, 28.016369, 33.919064>,  <35.355453, 27.872461, 33.982372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536789, 28.016369, 33.919064>,  <35.839016, 28.256214, 33.813545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536789, 28.016369, 33.919064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302374, -0.037995, -0.952432,
		0.581115, -0.799386, -0.152600,
		-0.755563, -0.599615, 0.263793,
		35.310120, 27.836485, 33.998203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810108, 28.448881, 33.071384>,  <35.839016, 28.256214, 33.813545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810108, 28.448881, 33.071384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424030, 28.345772, 33.053730>,  <35.192383, 28.283905, 33.043137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424030, 28.345772, 33.053730>,  <35.810108, 28.448881, 33.071384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424030, 28.345772, 33.053730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053111, 0.027952, 0.998197,
		-0.256076, 0.965800, -0.040669,
		-0.965196, -0.257775, -0.044137,
		35.134472, 28.268440, 33.040489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.939186, 26.223215, 41.635609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.573380, 26.373293, 41.575104>,  <35.353893, 26.463339, 41.538799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.573380, 26.373293, 41.575104>,  <35.939186, 26.223215, 41.635609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573380, 26.373293, 41.575104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128902, -0.084157, -0.988080,
		-0.383453, -0.923118, 0.028600,
		-0.914521, 0.375196, -0.151261,
		35.299023, 26.485851, 41.529724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706596, 25.831276, 41.139145>,  <35.939186, 26.223215, 41.635609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706596, 25.831276, 41.139145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.459850, 26.145269, 41.116226>,  <35.311802, 26.333666, 41.102474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.459850, 26.145269, 41.116226>,  <35.706596, 25.831276, 41.139145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459850, 26.145269, 41.116226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011891, -0.063500, -0.997911,
		-0.786981, -0.616255, 0.029836,
		-0.616863, 0.784982, -0.057301,
		35.274792, 26.380764, 41.099037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173229, 25.683592, 40.605434>,  <35.706596, 25.831276, 41.139145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173229, 25.683592, 40.605434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.184319, 26.082554, 40.632004>,  <35.190971, 26.321932, 40.647945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.184319, 26.082554, 40.632004>,  <35.173229, 25.683592, 40.605434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184319, 26.082554, 40.632004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217507, 0.058837, -0.974284,
		-0.975665, 0.041459, -0.215312,
		0.027725, 0.997406, 0.066423,
		35.192635, 26.381775, 40.651932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852333, 25.868147, 40.038071>,  <35.173229, 25.683592, 40.605434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852333, 25.868147, 40.038071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.075653, 26.186296, 40.132454>,  <35.209644, 26.377186, 40.189083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.075653, 26.186296, 40.132454>,  <34.852333, 25.868147, 40.038071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075653, 26.186296, 40.132454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234947, 0.121190, -0.964424,
		-0.795674, 0.593879, -0.119209,
		0.558304, 0.795374, 0.235958,
		35.243145, 26.424910, 40.203239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525505, 26.353355, 39.662518>,  <34.852333, 25.868147, 40.038071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525505, 26.353355, 39.662518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.898335, 26.469542, 39.749115>,  <35.122032, 26.539253, 39.801075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.898335, 26.469542, 39.749115>,  <34.525505, 26.353355, 39.662518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898335, 26.469542, 39.749115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241760, -0.053670, -0.968851,
		-0.269798, 0.955379, -0.120247,
		0.932074, 0.290465, 0.216493,
		35.177956, 26.556681, 39.814064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625996, 26.916676, 39.314266>,  <34.525505, 26.353355, 39.662518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625996, 26.916676, 39.314266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.987045, 26.752447, 39.365955>,  <35.203674, 26.653910, 39.396969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.987045, 26.752447, 39.365955>,  <34.625996, 26.916676, 39.314266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987045, 26.752447, 39.365955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163624, 0.049615, -0.985274,
		0.398112, 0.910479, 0.111963,
		0.902626, -0.410570, 0.129223,
		35.257832, 26.629276, 39.404724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119110, 27.408783, 39.020832>,  <34.625996, 26.916676, 39.314266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119110, 27.408783, 39.020832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.344074, 27.079857, 39.055473>,  <35.479053, 26.882502, 39.076256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.344074, 27.079857, 39.055473>,  <35.119110, 27.408783, 39.020832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344074, 27.079857, 39.055473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383863, 0.166895, -0.908182,
		0.732358, 0.544010, 0.409519,
		0.562406, -0.822314, 0.086599,
		35.512794, 26.833162, 39.081451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799614, 27.531261, 38.795258>,  <35.119110, 27.408783, 39.020832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799614, 27.531261, 38.795258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.802017, 27.133453, 38.753506>,  <35.803459, 26.894770, 38.728455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.802017, 27.133453, 38.753506>,  <35.799614, 27.531261, 38.795258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802017, 27.133453, 38.753506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490801, 0.093881, -0.866199,
		0.871251, -0.046025, 0.488675,
		0.006011, -0.994519, -0.104383,
		35.803822, 26.835098, 38.722191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536839, 27.316338, 38.639095>,  <35.799614, 27.531261, 38.795258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536839, 27.316338, 38.639095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.270191, 27.053165, 38.498955>,  <36.110203, 26.895262, 38.414871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.270191, 27.053165, 38.498955>,  <36.536839, 27.316338, 38.639095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270191, 27.053165, 38.498955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200280, 0.294640, -0.934385,
		0.717989, -0.693047, -0.064642,
		-0.666619, -0.657931, -0.350352,
		36.070206, 26.855785, 38.393848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228191, 27.658134, 38.775143>,  <36.536839, 27.316338, 38.639095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228191, 27.658134, 38.775143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.276661, 28.055052, 38.785515>,  <37.305740, 28.293201, 38.791737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.276661, 28.055052, 38.785515>,  <37.228191, 27.658134, 38.775143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276661, 28.055052, 38.785515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372150, 0.021196, 0.927931,
		0.920230, -0.122086, 0.371850,
		0.121169, 0.992293, 0.025929,
		37.313011, 28.352739, 38.793293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476269, 27.871983, 39.388199>,  <37.228191, 27.658134, 38.775143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476269, 27.871983, 39.388199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.347198, 28.225458, 39.252567>,  <37.269756, 28.437544, 39.171188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.347198, 28.225458, 39.252567>,  <37.476269, 27.871983, 39.388199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347198, 28.225458, 39.252567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381544, 0.206408, 0.901010,
		0.866202, 0.420105, 0.270564,
		-0.322673, 0.883689, -0.339080,
		37.250397, 28.490564, 39.150845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893383, 28.334784, 39.768814>,  <37.476269, 27.871983, 39.388199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893383, 28.334784, 39.768814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.575569, 28.538330, 39.636292>,  <37.384880, 28.660458, 39.556778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.575569, 28.538330, 39.636292>,  <37.893383, 28.334784, 39.768814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575569, 28.538330, 39.636292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201332, 0.293982, 0.934366,
		0.572864, 0.809093, -0.131129,
		-0.794539, 0.508864, -0.331308,
		37.337208, 28.690989, 39.536900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966354, 28.912836, 40.114964>,  <37.893383, 28.334784, 39.768814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966354, 28.912836, 40.114964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.582172, 28.937275, 40.006306>,  <37.351662, 28.951939, 39.941113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.582172, 28.937275, 40.006306>,  <37.966354, 28.912836, 40.114964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582172, 28.937275, 40.006306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200493, 0.525211, 0.827016,
		0.193199, 0.848776, -0.492193,
		-0.960456, 0.061098, -0.271644,
		37.294037, 28.955605, 39.924812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736320, 29.619514, 40.187614>,  <37.966354, 28.912836, 40.114964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736320, 29.619514, 40.187614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.406933, 29.392574, 40.189346>,  <37.209301, 29.256411, 40.190384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.406933, 29.392574, 40.189346>,  <37.736320, 29.619514, 40.187614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406933, 29.392574, 40.189346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292457, 0.430994, 0.853647,
		-0.486181, 0.701684, -0.520834,
		-0.823467, -0.567348, 0.004329,
		37.159893, 29.222370, 40.190643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236347, 30.117943, 40.243458>,  <37.736320, 29.619514, 40.187614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236347, 30.117943, 40.243458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.057934, 29.778601, 40.357540>,  <36.950886, 29.574995, 40.425987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.057934, 29.778601, 40.357540>,  <37.236347, 30.117943, 40.243458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057934, 29.778601, 40.357540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199141, 0.404741, 0.892484,
		-0.872578, 0.341285, -0.349472,
		-0.446038, -0.848357, 0.285204,
		36.924122, 29.524094, 40.443100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563564, 30.314423, 40.529232>,  <37.236347, 30.117943, 40.243458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563564, 30.314423, 40.529232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.657539, 29.963552, 40.696739>,  <36.713924, 29.753031, 40.797241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.657539, 29.963552, 40.696739>,  <36.563564, 30.314423, 40.529232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657539, 29.963552, 40.696739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134826, 0.397251, 0.907752,
		-0.962614, -0.269725, -0.024937,
		0.234937, -0.877177, 0.418765,
		36.728020, 29.700399, 40.822369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080395, 30.163403, 41.174553>,  <36.563564, 30.314423, 40.529232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080395, 30.163403, 41.174553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.373043, 29.894651, 41.220715>,  <36.548630, 29.733400, 41.248413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.373043, 29.894651, 41.220715>,  <36.080395, 30.163403, 41.174553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373043, 29.894651, 41.220715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130680, 0.027928, 0.991031,
		-0.669074, -0.740137, -0.067368,
		0.731617, -0.671877, 0.115407,
		36.592529, 29.693089, 41.255337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839622, 29.731979, 41.736740>,  <36.080395, 30.163403, 41.174553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839622, 29.731979, 41.736740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.232475, 29.656921, 41.731068>,  <36.468189, 29.611887, 41.727665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.232475, 29.656921, 41.731068>,  <35.839622, 29.731979, 41.736740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232475, 29.656921, 41.731068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001177, -0.081486, 0.996674,
		-0.188179, -0.978851, -0.080251,
		0.982134, -0.187648, -0.014181,
		36.527115, 29.600628, 41.726814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952236, 29.143518, 42.171810>,  <35.839622, 29.731979, 41.736740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952236, 29.143518, 42.171810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.306019, 29.329185, 42.152679>,  <36.518288, 29.440586, 42.141201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.306019, 29.329185, 42.152679>,  <35.952236, 29.143518, 42.171810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306019, 29.329185, 42.152679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066994, -0.024871, 0.997443,
		0.461792, -0.885398, -0.053094,
		0.884455, 0.464168, -0.047831,
		36.571354, 29.468435, 42.138329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294746, 28.802656, 42.643509>,  <35.952236, 29.143518, 42.171810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294746, 28.802656, 42.643509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.520298, 29.130535, 42.603237>,  <36.655628, 29.327263, 42.579075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.520298, 29.130535, 42.603237>,  <36.294746, 28.802656, 42.643509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520298, 29.130535, 42.603237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071577, 0.169957, 0.982849,
		0.822750, -0.547001, 0.154507,
		0.563879, 0.819698, -0.100679,
		36.689461, 29.376444, 42.573032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801792, 28.810669, 43.143093>,  <36.294746, 28.802656, 42.643509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801792, 28.810669, 43.143093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.815620, 29.199583, 43.050606>,  <36.823917, 29.432932, 42.995113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.815620, 29.199583, 43.050606>,  <36.801792, 28.810669, 43.143093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815620, 29.199583, 43.050606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071516, 0.228359, 0.970947,
		0.996840, -0.050103, -0.061639,
		0.034571, 0.972287, -0.231221,
		36.825993, 29.491270, 42.981239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312309, 29.039383, 43.595688>,  <36.801792, 28.810669, 43.143093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312309, 29.039383, 43.595688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.091595, 29.359262, 43.501022>,  <36.959164, 29.551189, 43.444221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.091595, 29.359262, 43.501022>,  <37.312309, 29.039383, 43.595688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091595, 29.359262, 43.501022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057554, 0.319616, 0.945798,
		0.831994, 0.508261, -0.222387,
		-0.551790, 0.799698, -0.236666,
		36.926056, 29.599173, 43.430023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706604, 29.737774, 43.765785>,  <37.312309, 29.039383, 43.595688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706604, 29.737774, 43.765785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.331512, 29.873993, 43.738380>,  <37.106457, 29.955725, 43.721935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.331512, 29.873993, 43.738380>,  <37.706604, 29.737774, 43.765785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331512, 29.873993, 43.738380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141127, 0.553715, 0.820660,
		0.317411, 0.759887, -0.567294,
		-0.937728, 0.340547, -0.068514,
		37.050194, 29.976156, 43.717827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.666626, 32.759457, 42.723160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.857872, 32.408466, 42.738358>,  <29.972620, 32.197872, 42.747478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.857872, 32.408466, 42.738358>,  <29.666626, 32.759457, 42.723160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857872, 32.408466, 42.738358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059211, -0.010962, -0.998185,
		0.876300, 0.479496, 0.046715,
		0.478113, -0.877476, 0.037998,
		30.001307, 32.145222, 42.749756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292883, 32.743916, 42.261829>,  <29.666626, 32.759457, 42.723160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292883, 32.743916, 42.261829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.218065, 32.353947, 42.310062>,  <30.173174, 32.119965, 42.339001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.218065, 32.353947, 42.310062>,  <30.292883, 32.743916, 42.261829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218065, 32.353947, 42.310062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052057, -0.132410, -0.989827,
		0.980971, -0.178866, 0.075519,
		-0.187046, -0.974923, 0.120579,
		30.161951, 32.061470, 42.346237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885191, 32.316879, 41.957188>,  <30.292883, 32.743916, 42.261829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885191, 32.316879, 41.957188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.572886, 32.067001, 41.962330>,  <30.385502, 31.917074, 41.965416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.572886, 32.067001, 41.962330>,  <30.885191, 32.316879, 41.957188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572886, 32.067001, 41.962330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149335, -0.206542, -0.966974,
		0.606721, -0.753056, 0.254549,
		-0.780761, -0.624697, 0.012856,
		30.338657, 31.879593, 41.966187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058172, 31.533203, 41.754631>,  <30.885191, 32.316879, 41.957188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058172, 31.533203, 41.754631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.687048, 31.616867, 41.631069>,  <30.464373, 31.667065, 41.556934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.687048, 31.616867, 41.631069>,  <31.058172, 31.533203, 41.754631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687048, 31.616867, 41.631069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256257, -0.244435, -0.935192,
		-0.271116, -0.946838, 0.173189,
		-0.927808, 0.209165, -0.308904,
		30.408705, 31.679615, 41.538399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967180, 31.115725, 41.132011>,  <31.058172, 31.533203, 41.754631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967180, 31.115725, 41.132011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.613800, 31.302584, 41.146343>,  <30.401772, 31.414700, 41.154942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.613800, 31.302584, 41.146343>,  <30.967180, 31.115725, 41.132011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613800, 31.302584, 41.146343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121396, -0.154384, -0.980525,
		-0.452521, -0.870596, 0.193102,
		-0.883452, 0.467150, 0.035825,
		30.348764, 31.442728, 41.157089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447487, 30.690514, 40.694508>,  <30.967180, 31.115725, 41.132011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447487, 30.690514, 40.694508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.278913, 31.051447, 40.730701>,  <30.177771, 31.268007, 40.752419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.278913, 31.051447, 40.730701>,  <30.447487, 30.690514, 40.694508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278913, 31.051447, 40.730701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243837, -0.016643, -0.969673,
		-0.873464, -0.430715, 0.227036,
		-0.421431, 0.902334, 0.090487,
		30.152485, 31.322147, 40.757847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706396, 30.653118, 40.475262>,  <30.447487, 30.690514, 40.694508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706396, 30.653118, 40.475262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.812656, 31.034716, 40.419662>,  <29.876413, 31.263674, 40.386303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.812656, 31.034716, 40.419662>,  <29.706396, 30.653118, 40.475262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812656, 31.034716, 40.419662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293944, -0.057161, -0.954112,
		-0.918164, 0.294320, 0.265237,
		0.265653, 0.953996, -0.138997,
		29.892353, 31.320915, 40.377964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083027, 31.056444, 40.190861>,  <29.706396, 30.653118, 40.475262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083027, 31.056444, 40.190861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.428898, 31.231600, 40.092403>,  <29.636421, 31.336693, 40.033329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.428898, 31.231600, 40.092403>,  <29.083027, 31.056444, 40.190861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428898, 31.231600, 40.092403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230588, -0.089330, -0.968942,
		-0.446276, 0.894581, 0.023730,
		0.864677, 0.437888, -0.246145,
		29.688301, 31.362967, 40.018559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909950, 31.179209, 39.500042>,  <29.083027, 31.056444, 40.190861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909950, 31.179209, 39.500042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.296440, 31.279802, 39.522545>,  <29.528334, 31.340158, 39.536049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.296440, 31.279802, 39.522545>,  <28.909950, 31.179209, 39.500042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296440, 31.279802, 39.522545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108003, -0.196966, -0.974443,
		-0.233975, 0.947608, -0.217475,
		0.966225, 0.251483, 0.056259,
		29.586308, 31.355247, 39.539421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916357, 31.690495, 39.080948>,  <28.909950, 31.179209, 39.500042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916357, 31.690495, 39.080948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.294413, 31.567831, 39.125977>,  <29.521246, 31.494234, 39.152992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.294413, 31.567831, 39.125977>,  <28.916357, 31.690495, 39.080948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294413, 31.567831, 39.125977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037904, -0.239330, -0.970198,
		0.324461, 0.921239, -0.214577,
		0.945139, -0.306658, 0.112572,
		29.577955, 31.475834, 39.159748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383612, 32.091015, 38.591965>,  <28.916357, 31.690495, 39.080948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383612, 32.091015, 38.591965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.607893, 31.780060, 38.706005>,  <29.742462, 31.593487, 38.774429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.607893, 31.780060, 38.706005>,  <29.383612, 32.091015, 38.591965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607893, 31.780060, 38.706005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197914, -0.208513, -0.957785,
		0.804016, 0.593459, 0.036941,
		0.560704, -0.777386, 0.285102,
		29.776104, 31.546844, 38.791534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095272, 32.276333, 38.353241>,  <29.383612, 32.091015, 38.591965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095272, 32.276333, 38.353241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.075302, 31.878117, 38.385239>,  <30.063320, 31.639187, 38.404438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.075302, 31.878117, 38.385239>,  <30.095272, 32.276333, 38.353241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075302, 31.878117, 38.385239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304305, -0.091447, -0.948175,
		0.951266, -0.022993, 0.307514,
		-0.049922, -0.995544, 0.079993,
		30.060326, 31.579453, 38.409237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617794, 32.080311, 38.015038>,  <30.095272, 32.276333, 38.353241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617794, 32.080311, 38.015038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.405611, 31.741302, 38.022198>,  <30.278301, 31.537897, 38.026493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.405611, 31.741302, 38.022198>,  <30.617794, 32.080311, 38.015038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405611, 31.741302, 38.022198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081350, -0.071914, -0.994088,
		0.843798, -0.525867, 0.107093,
		-0.530459, -0.847521, 0.017902,
		30.246473, 31.487045, 38.027569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086279, 31.527695, 37.689964>,  <30.617794, 32.080311, 38.015038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086279, 31.527695, 37.689964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.710871, 31.390717, 37.672489>,  <30.485626, 31.308529, 37.662006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.710871, 31.390717, 37.672489>,  <31.086279, 31.527695, 37.689964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710871, 31.390717, 37.672489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080613, -0.094349, -0.992270,
		0.335677, -0.934789, 0.116154,
		-0.938522, -0.342445, -0.043685,
		30.429314, 31.287983, 37.659382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880871, 31.459671, 37.655975>,  <31.086279, 31.527695, 37.689964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880871, 31.459671, 37.655975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.003773, 31.803717, 37.493099>,  <32.077515, 32.010143, 37.395374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.003773, 31.803717, 37.493099>,  <31.880871, 31.459671, 37.655975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003773, 31.803717, 37.493099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051114, 0.442182, 0.895468,
		0.950254, -0.254322, 0.179825,
		0.307252, 0.860114, -0.407186,
		32.095947, 32.061752, 37.370945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371437, 31.715752, 38.112484>,  <31.880871, 31.459671, 37.655975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371437, 31.715752, 38.112484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.242321, 32.031303, 37.903305>,  <32.164852, 32.220634, 37.777798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.242321, 32.031303, 37.903305>,  <32.371437, 31.715752, 38.112484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242321, 32.031303, 37.903305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114804, 0.581079, 0.805709,
		0.939481, 0.200041, -0.278135,
		-0.322793, 0.788880, -0.522947,
		32.145485, 32.267967, 37.746422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777412, 32.263527, 38.310184>,  <32.371437, 31.715752, 38.112484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777412, 32.263527, 38.310184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463791, 32.462765, 38.162048>,  <32.275616, 32.582306, 38.073166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463791, 32.462765, 38.162048>,  <32.777412, 32.263527, 38.310184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463791, 32.462765, 38.162048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099922, 0.690176, 0.716709,
		0.612592, 0.524936, -0.590909,
		-0.784058, 0.498095, -0.370344,
		32.228573, 32.612194, 38.050945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032730, 32.965912, 38.292835>,  <32.777412, 32.263527, 38.310184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032730, 32.965912, 38.292835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.633434, 32.943245, 38.299866>,  <32.393856, 32.929646, 38.304085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.633434, 32.943245, 38.299866>,  <33.032730, 32.965912, 38.292835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633434, 32.943245, 38.299866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022488, 0.635534, 0.771745,
		-0.054902, 0.769991, -0.635689,
		-0.998238, -0.056666, 0.017577,
		32.333961, 32.926247, 38.305138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823071, 33.705116, 38.336109>,  <33.032730, 32.965912, 38.292835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823071, 33.705116, 38.336109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.510704, 33.482071, 38.448700>,  <32.323284, 33.348244, 38.516254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.510704, 33.482071, 38.448700>,  <32.823071, 33.705116, 38.336109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510704, 33.482071, 38.448700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131174, 0.586983, 0.798902,
		-0.610706, 0.586952, -0.531530,
		-0.780917, -0.557617, 0.281481,
		32.276428, 33.314785, 38.533146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300686, 34.144688, 38.629158>,  <32.823071, 33.705116, 38.336109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300686, 34.144688, 38.629158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.202122, 33.785477, 38.774937>,  <32.142982, 33.569950, 38.862404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.202122, 33.785477, 38.774937>,  <32.300686, 34.144688, 38.629158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202122, 33.785477, 38.774937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038252, 0.384762, 0.922223,
		-0.968411, 0.213302, -0.129159,
		-0.246407, -0.898032, 0.364449,
		32.128201, 33.516068, 38.884270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905865, 34.371506, 39.263474>,  <32.300686, 34.144688, 38.629158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905865, 34.371506, 39.263474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.940804, 33.976074, 39.312603>,  <31.961767, 33.738815, 39.342079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.940804, 33.976074, 39.312603>,  <31.905865, 34.371506, 39.263474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940804, 33.976074, 39.312603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157703, 0.108019, 0.981561,
		-0.983616, -0.105108, -0.146466,
		0.087348, -0.988577, 0.122825,
		31.967009, 33.679501, 39.349449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464132, 34.170612, 39.784157>,  <31.905865, 34.371506, 39.263474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464132, 34.170612, 39.784157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.749151, 33.889965, 39.782864>,  <31.920162, 33.721577, 39.782085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.749151, 33.889965, 39.782864>,  <31.464132, 34.170612, 39.784157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749151, 33.889965, 39.782864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062768, 0.059148, 0.996274,
		-0.698813, -0.710093, 0.086185,
		0.712545, -0.701619, -0.003237,
		31.962915, 33.679478, 39.781891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261854, 33.795639, 40.347050>,  <31.464132, 34.170612, 39.784157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261854, 33.795639, 40.347050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.640224, 33.692493, 40.268326>,  <31.867247, 33.630608, 40.221092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.640224, 33.692493, 40.268326>,  <31.261854, 33.795639, 40.347050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640224, 33.692493, 40.268326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148390, -0.195528, 0.969407,
		-0.288454, -0.946190, -0.146690,
		0.945925, -0.257862, -0.196806,
		31.924002, 33.615135, 40.209286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376295, 33.120838, 40.709515>,  <31.261854, 33.795639, 40.347050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376295, 33.120838, 40.709515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.745979, 33.257488, 40.641243>,  <31.967789, 33.339478, 40.600281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.745979, 33.257488, 40.641243>,  <31.376295, 33.120838, 40.709515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745979, 33.257488, 40.641243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162575, 0.052459, 0.985301,
		0.345554, -0.938372, -0.007056,
		0.924209, 0.341621, -0.170684,
		32.023243, 33.359974, 40.590038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712551, 32.758739, 41.128948>,  <31.376295, 33.120838, 40.709515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712551, 32.758739, 41.128948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.946905, 33.073212, 41.050308>,  <32.087517, 33.261894, 41.003124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.946905, 33.073212, 41.050308>,  <31.712551, 32.758739, 41.128948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946905, 33.073212, 41.050308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243297, 0.060763, 0.968047,
		0.773009, -0.614997, -0.155676,
		0.585886, 0.786185, -0.196597,
		32.122669, 33.309067, 40.991329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396374, 32.605488, 41.438095>,  <31.712551, 32.758739, 41.128948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396374, 32.605488, 41.438095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.397949, 33.002403, 41.388527>,  <32.398895, 33.240551, 41.358788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.397949, 33.002403, 41.388527>,  <32.396374, 32.605488, 41.438095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397949, 33.002403, 41.388527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233055, 0.119597, 0.965081,
		0.972456, -0.032678, -0.230786,
		0.003936, 0.992285, -0.123919,
		32.399132, 33.300087, 41.351353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082325, 32.698353, 41.641792>,  <32.396374, 32.605488, 41.438095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082325, 32.698353, 41.641792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.875526, 33.035004, 41.704243>,  <32.751446, 33.236996, 41.741714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.875526, 33.035004, 41.704243>,  <33.082325, 32.698353, 41.641792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875526, 33.035004, 41.704243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288864, -0.000155, 0.957370,
		0.805773, 0.540060, -0.243035,
		-0.516999, 0.841627, 0.156128,
		32.720428, 33.287491, 41.751080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597233, 33.143143, 42.010612>,  <33.082325, 32.698353, 41.641792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597233, 33.143143, 42.010612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.222523, 33.268139, 42.073608>,  <32.997696, 33.343136, 42.111408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.222523, 33.268139, 42.073608>,  <33.597233, 33.143143, 42.010612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222523, 33.268139, 42.073608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169272, 0.010746, 0.985511,
		0.306270, 0.949860, -0.062963,
		-0.936774, 0.312490, 0.157494,
		32.941490, 33.361885, 42.120857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242268, 33.582188, 41.931080>,  <33.597233, 33.143143, 42.010612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242268, 33.582188, 41.931080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.255520, 33.208912, 42.074223>,  <34.263474, 32.984947, 42.160110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.255520, 33.208912, 42.074223>,  <34.242268, 33.582188, 41.931080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255520, 33.208912, 42.074223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215580, -0.342955, -0.914280,
		0.975924, 0.107441, 0.189813,
		0.033134, -0.933187, 0.357860,
		34.265461, 32.928955, 42.181580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930691, 33.389290, 41.720196>,  <34.242268, 33.582188, 41.931080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930691, 33.389290, 41.720196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.705917, 33.066566, 41.793171>,  <34.571053, 32.872932, 41.836956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.705917, 33.066566, 41.793171>,  <34.930691, 33.389290, 41.720196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705917, 33.066566, 41.793171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340773, -0.426769, -0.837701,
		0.753728, -0.408560, 0.514755,
		-0.561933, -0.806813, 0.182441,
		34.537338, 32.824524, 41.847904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303173, 32.824173, 41.572865>,  <34.930691, 33.389290, 41.720196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303173, 32.824173, 41.572865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.928638, 32.687038, 41.542557>,  <34.703918, 32.604759, 41.524372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.928638, 32.687038, 41.542557>,  <35.303173, 32.824173, 41.572865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928638, 32.687038, 41.542557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257376, -0.523403, -0.812285,
		0.238820, -0.780073, 0.578318,
		-0.936335, -0.342835, -0.075773,
		34.647739, 32.584187, 41.519825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361252, 32.055637, 41.518856>,  <35.303173, 32.824173, 41.572865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361252, 32.055637, 41.518856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.002739, 32.128937, 41.357315>,  <34.787632, 32.172916, 41.260391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.002739, 32.128937, 41.357315>,  <35.361252, 32.055637, 41.518856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002739, 32.128937, 41.357315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252993, -0.536651, -0.804984,
		-0.364235, -0.823667, 0.434633,
		-0.896285, 0.183245, -0.403849,
		34.733852, 32.183910, 41.236160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445747, 31.608761, 41.012840>,  <35.361252, 32.055637, 41.518856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445747, 31.608761, 41.012840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.089420, 31.769175, 40.927402>,  <34.875626, 31.865423, 40.876141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.089420, 31.769175, 40.927402>,  <35.445747, 31.608761, 41.012840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089420, 31.769175, 40.927402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059126, -0.568407, -0.820620,
		-0.450503, -0.718392, 0.530057,
		-0.890815, 0.401032, -0.213594,
		34.822178, 31.889484, 40.863323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872738, 31.042704, 41.014706>,  <35.445747, 31.608761, 41.012840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872738, 31.042704, 41.014706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.830189, 31.370861, 40.789978>,  <34.804661, 31.567755, 40.655140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.830189, 31.370861, 40.789978>,  <34.872738, 31.042704, 41.014706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830189, 31.370861, 40.789978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037264, -0.561339, -0.826747,
		-0.993628, -0.108879, 0.029140,
		-0.106372, 0.820392, -0.561819,
		34.798279, 31.616980, 40.621433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236797, 30.991381, 40.461472>,  <34.872738, 31.042704, 41.014706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236797, 30.991381, 40.461472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.488956, 31.281616, 40.351109>,  <34.640251, 31.455757, 40.284889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.488956, 31.281616, 40.351109>,  <34.236797, 30.991381, 40.461472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488956, 31.281616, 40.351109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132317, -0.450658, -0.882836,
		-0.764914, 0.520029, -0.380101,
		0.630396, 0.725587, -0.275906,
		34.678074, 31.499292, 40.268337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035378, 31.057112, 39.794403>,  <34.236797, 30.991381, 40.461472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035378, 31.057112, 39.794403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.393711, 31.234158, 39.810284>,  <34.608711, 31.340385, 39.819813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.393711, 31.234158, 39.810284>,  <34.035378, 31.057112, 39.794403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393711, 31.234158, 39.810284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289119, -0.512640, -0.808462,
		-0.337482, 0.735726, -0.587207,
		0.895832, 0.442614, 0.039706,
		34.662460, 31.366941, 39.822197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211330, 31.412138, 39.198349>,  <34.035378, 31.057112, 39.794403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211330, 31.412138, 39.198349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.587933, 31.413639, 39.333138>,  <34.813892, 31.414539, 39.414013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.587933, 31.413639, 39.333138>,  <34.211330, 31.412138, 39.198349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587933, 31.413639, 39.333138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334456, -0.132905, -0.932993,
		0.041285, 0.991122, -0.126386,
		0.941507, 0.003751, 0.336974,
		34.870384, 31.414764, 39.434231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660137, 32.017410, 38.768909>,  <34.211330, 31.412138, 39.198349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660137, 32.017410, 38.768909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.929241, 31.756186, 38.908001>,  <35.090702, 31.599451, 38.991455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.929241, 31.756186, 38.908001>,  <34.660137, 32.017410, 38.768909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929241, 31.756186, 38.908001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266563, -0.224477, -0.937312,
		0.690177, 0.723273, 0.023064,
		0.672756, -0.653059, 0.347726,
		35.131069, 31.560268, 39.012318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210815, 32.155869, 38.388958>,  <34.660137, 32.017410, 38.768909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210815, 32.155869, 38.388958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.313553, 31.803106, 38.547085>,  <35.375195, 31.591450, 38.641960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.313553, 31.803106, 38.547085>,  <35.210815, 32.155869, 38.388958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313553, 31.803106, 38.547085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332195, -0.303557, -0.893028,
		0.907568, 0.360689, 0.214998,
		0.256842, -0.881905, 0.395317,
		35.390606, 31.538534, 38.665680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798462, 31.963039, 38.065163>,  <35.210815, 32.155869, 38.388958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798462, 31.963039, 38.065163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.684254, 31.600988, 38.191162>,  <35.615730, 31.383759, 38.266762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.684254, 31.600988, 38.191162>,  <35.798462, 31.963039, 38.065163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684254, 31.600988, 38.191162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274594, -0.392164, -0.877955,
		0.918192, -0.164175, 0.360513,
		-0.285519, -0.905126, 0.315001,
		35.598598, 31.329451, 38.285664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305016, 31.458462, 37.865318>,  <35.798462, 31.963039, 38.065163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305016, 31.458462, 37.865318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.964016, 31.255175, 37.914257>,  <35.759418, 31.133204, 37.943619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.964016, 31.255175, 37.914257>,  <36.305016, 31.458462, 37.865318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964016, 31.255175, 37.914257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214434, -0.553440, -0.804812,
		0.476729, -0.659864, 0.580784,
		-0.852495, -0.508217, 0.122343,
		35.708267, 31.102709, 37.950958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592812, 30.779018, 37.824257>,  <36.305016, 31.458462, 37.865318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592812, 30.779018, 37.824257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.204044, 30.777109, 37.730145>,  <35.970783, 30.775963, 37.673679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.204044, 30.777109, 37.730145>,  <36.592812, 30.779018, 37.824257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204044, 30.777109, 37.730145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200017, -0.543500, -0.815231,
		-0.123982, -0.839396, 0.529191,
		-0.971917, -0.004773, -0.235277,
		35.912468, 30.775677, 37.659561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.899061, 41.014027, 31.756269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.566656, 41.198868, 31.632414>,  <30.367212, 41.309772, 31.558100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.566656, 41.198868, 31.632414>,  <30.899061, 41.014027, 31.756269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566656, 41.198868, 31.632414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540357, -0.538515, 0.646541,
		0.132023, 0.704601, 0.697214,
		-0.831014, 0.462103, -0.309640,
		30.317352, 41.337498, 31.539522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494156, 41.405174, 32.295990>,  <30.899061, 41.014027, 31.756269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494156, 41.405174, 32.295990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.268797, 41.230972, 32.015160>,  <30.133581, 41.126450, 31.846661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.268797, 41.230972, 32.015160>,  <30.494156, 41.405174, 32.295990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268797, 41.230972, 32.015160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466403, -0.533771, 0.705377,
		-0.681945, 0.724861, 0.097605,
		-0.563400, -0.435506, -0.702080,
		30.099777, 41.100319, 31.804535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776670, 41.566994, 32.469654>,  <30.494156, 41.405174, 32.295990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776670, 41.566994, 32.469654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.813786, 41.238438, 32.244549>,  <29.836054, 41.041302, 32.109486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.813786, 41.238438, 32.244549>,  <29.776670, 41.566994, 32.469654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813786, 41.238438, 32.244549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434992, -0.541852, 0.719151,
		-0.895641, 0.178070, -0.407577,
		0.092788, -0.821394, -0.562763,
		29.841621, 40.992020, 32.075718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940416, 41.225101, 32.398350>,  <29.776670, 41.566994, 32.469654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940416, 41.225101, 32.398350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.206337, 40.941864, 32.303158>,  <29.365891, 40.771919, 32.246040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.206337, 40.941864, 32.303158>,  <28.940416, 41.225101, 32.398350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206337, 40.941864, 32.303158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582251, -0.690755, 0.428766,
		-0.467995, -0.146480, -0.871507,
		0.664804, -0.708096, -0.237982,
		29.405779, 40.729435, 32.231762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.497133, 40.718029, 32.133770>,  <28.940416, 41.225101, 32.398350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.497133, 40.718029, 32.133770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.848001, 40.548717, 32.224464>,  <29.058521, 40.447132, 32.278881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.848001, 40.548717, 32.224464>,  <28.497133, 40.718029, 32.133770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848001, 40.548717, 32.224464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479578, -0.795944, 0.369429,
		0.024098, -0.432790, -0.901173,
		0.877168, -0.423280, 0.226737,
		29.111153, 40.421734, 32.292484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410460, 40.040916, 31.939468>,  <28.497133, 40.718029, 32.133770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410460, 40.040916, 31.939468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.707094, 40.025490, 32.207367>,  <28.885075, 40.016235, 32.368107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.707094, 40.025490, 32.207367>,  <28.410460, 40.040916, 31.939468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707094, 40.025490, 32.207367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476618, -0.732861, 0.485542,
		0.472106, -0.679285, -0.561861,
		0.741587, -0.038566, 0.669747,
		28.929571, 40.013920, 32.408291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466003, 39.320728, 32.119755>,  <28.410460, 40.040916, 31.939468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466003, 39.320728, 32.119755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.649651, 39.535164, 32.403111>,  <28.759838, 39.663826, 32.573124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.649651, 39.535164, 32.403111>,  <28.466003, 39.320728, 32.119755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649651, 39.535164, 32.403111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382056, -0.600745, 0.702238,
		0.802026, -0.593055, -0.070996,
		0.459116, 0.536089, 0.708393,
		28.787386, 39.695992, 32.615627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820318, 38.838879, 32.552113>,  <28.466003, 39.320728, 32.119755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820318, 38.838879, 32.552113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.770527, 39.166279, 32.776455>,  <28.740652, 39.362720, 32.911060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.770527, 39.166279, 32.776455>,  <28.820318, 38.838879, 32.552113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770527, 39.166279, 32.776455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382999, -0.561083, 0.733824,
		0.915323, -0.123463, 0.383328,
		-0.124479, 0.818500, 0.560859,
		28.733183, 39.411827, 32.944714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009748, 38.580547, 33.157890>,  <28.820318, 38.838879, 32.552113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009748, 38.580547, 33.157890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.792595, 38.906452, 33.239315>,  <28.662302, 39.101994, 33.288170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.792595, 38.906452, 33.239315>,  <29.009748, 38.580547, 33.157890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792595, 38.906452, 33.239315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351071, -0.440375, 0.826329,
		0.762907, 0.377134, 0.525112,
		-0.542883, 0.814763, 0.203565,
		28.629730, 39.150883, 33.300385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083477, 38.593456, 33.833836>,  <29.009748, 38.580547, 33.157890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083477, 38.593456, 33.833836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.750040, 38.808548, 33.783287>,  <28.549978, 38.937603, 33.752956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.750040, 38.808548, 33.783287>,  <29.083477, 38.593456, 33.833836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750040, 38.808548, 33.783287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434854, -0.497757, 0.750427,
		0.340622, 0.680505, 0.648760,
		-0.833594, 0.537728, -0.126374,
		28.499962, 38.969868, 33.745377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715122, 38.608276, 34.491489>,  <29.083477, 38.593456, 33.833836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715122, 38.608276, 34.491489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.431465, 38.744862, 34.244743>,  <28.261271, 38.826813, 34.096695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.431465, 38.744862, 34.244743>,  <28.715122, 38.608276, 34.491489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.431465, 38.744862, 34.244743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703779, -0.395602, 0.590080,
		-0.042544, 0.852587, 0.520851,
		-0.709144, 0.341459, -0.616863,
		28.218721, 38.847298, 34.059685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194393, 38.942886, 34.868172>,  <28.715122, 38.608276, 34.491489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.194393, 38.942886, 34.868172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.006166, 38.836010, 34.531796>,  <27.893230, 38.771885, 34.329971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.006166, 38.836010, 34.531796>,  <28.194393, 38.942886, 34.868172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006166, 38.836010, 34.531796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712077, -0.447817, 0.540746,
		-0.521070, 0.853268, 0.020463,
		-0.470565, -0.267195, -0.840937,
		27.864998, 38.755852, 34.279514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496328, 38.975998, 35.097794>,  <28.194393, 38.942886, 34.868172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.496328, 38.975998, 35.097794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.475620, 38.756863, 34.763802>,  <27.463196, 38.625381, 34.563408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.475620, 38.756863, 34.763802>,  <27.496328, 38.975998, 35.097794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475620, 38.756863, 34.763802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644334, -0.620468, 0.447050,
		-0.762990, 0.561149, -0.320871,
		-0.051771, -0.547842, -0.834978,
		27.460089, 38.592510, 34.513309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753502, 38.910122, 34.819996>,  <27.496328, 38.975998, 35.097794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753502, 38.910122, 34.819996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.916315, 38.577915, 34.667908>,  <27.014002, 38.378590, 34.576656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.916315, 38.577915, 34.667908>,  <26.753502, 38.910122, 34.819996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.916315, 38.577915, 34.667908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680419, -0.553398, 0.480396,
		-0.609390, 0.063172, -0.790350,
		0.407030, -0.830518, -0.380219,
		27.038424, 38.328758, 34.553841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.291248, 38.557682, 34.757420>,  <26.753502, 38.910122, 34.819996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.291248, 38.557682, 34.757420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.549501, 38.261303, 34.683498>,  <26.704454, 38.083477, 34.639145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.549501, 38.261303, 34.683498>,  <26.291248, 38.557682, 34.757420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549501, 38.261303, 34.683498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727281, -0.670401, 0.147051,
		-0.232850, 0.039463, -0.971712,
		0.645634, -0.740948, -0.184804,
		26.743191, 38.039017, 34.628056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.954388, 37.988800, 34.610756>,  <26.291248, 38.557682, 34.757420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.954388, 37.988800, 34.610756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.297857, 37.799683, 34.689896>,  <26.503939, 37.686211, 34.737381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.297857, 37.799683, 34.689896>,  <25.954388, 37.988800, 34.610756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.297857, 37.799683, 34.689896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504718, -0.847169, 0.166026,
		0.089114, -0.242420, -0.966070,
		0.858673, -0.472798, 0.197848,
		26.555460, 37.657845, 34.749249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872618, 37.376415, 34.284855>,  <25.954388, 37.988800, 34.610756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.872618, 37.376415, 34.284855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.144642, 37.332241, 34.574772>,  <26.307856, 37.305737, 34.748722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.144642, 37.332241, 34.574772>,  <25.872618, 37.376415, 34.284855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.144642, 37.332241, 34.574772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362990, -0.909636, 0.201990,
		0.636991, -0.400458, -0.658693,
		0.680059, -0.110433, 0.724792,
		26.348660, 37.299110, 34.792210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199028, 36.788460, 34.156410>,  <25.872618, 37.376415, 34.284855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.199028, 36.788460, 34.156410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.235357, 36.842388, 34.551090>,  <26.257154, 36.874744, 34.787899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.235357, 36.842388, 34.551090>,  <26.199028, 36.788460, 34.156410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235357, 36.842388, 34.551090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128064, -0.980986, 0.145826,
		0.987599, -0.139605, -0.071829,
		0.090821, 0.134819, 0.986699,
		26.262604, 36.882835, 34.847099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690077, 36.286865, 34.418198>,  <26.199028, 36.788460, 34.156410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690077, 36.286865, 34.418198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.482365, 36.400467, 34.740612>,  <26.357737, 36.468628, 34.934059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.482365, 36.400467, 34.740612>,  <26.690077, 36.286865, 34.418198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.482365, 36.400467, 34.740612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268737, -0.949585, 0.161455,
		0.811251, -0.132770, 0.569424,
		-0.519280, 0.284006, 0.806033,
		26.326580, 36.485668, 34.982422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730587, 35.724453, 34.885326>,  <26.690077, 36.286865, 34.418198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730587, 35.724453, 34.885326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.424541, 35.930683, 35.039616>,  <26.240915, 36.054420, 35.132191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.424541, 35.930683, 35.039616>,  <26.730587, 35.724453, 34.885326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.424541, 35.930683, 35.039616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447460, -0.856499, 0.257271,
		0.463016, 0.024245, 0.886018,
		-0.765112, 0.515578, 0.385724,
		26.195007, 36.085358, 35.155334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.328548, 35.630394, 34.307762>,  <26.730587, 35.724453, 34.885326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.328548, 35.630394, 34.307762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.460020, 35.459671, 33.970760>,  <27.538902, 35.357239, 33.768559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.460020, 35.459671, 33.970760>,  <27.328548, 35.630394, 34.307762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460020, 35.459671, 33.970760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104356, 0.903011, -0.416750,
		0.938660, 0.049057, 0.341338,
		0.328677, -0.426807, -0.842501,
		27.558622, 35.331631, 33.718010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851561, 36.109829, 34.000759>,  <27.328548, 35.630394, 34.307762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851561, 36.109829, 34.000759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.755693, 35.869450, 33.695755>,  <27.698174, 35.725220, 33.512753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.755693, 35.869450, 33.695755>,  <27.851561, 36.109829, 34.000759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755693, 35.869450, 33.695755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093762, 0.767399, -0.634278,
		0.966317, -0.223509, -0.127574,
		-0.239667, -0.600952, -0.762507,
		27.683794, 35.689163, 33.467003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305300, 36.299046, 33.421764>,  <27.851561, 36.109829, 34.000759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305300, 36.299046, 33.421764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.998831, 36.121029, 33.236332>,  <27.814949, 36.014217, 33.125072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.998831, 36.121029, 33.236332>,  <28.305300, 36.299046, 33.421764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998831, 36.121029, 33.236332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009661, 0.713327, -0.700765,
		0.642561, -0.541387, -0.542233,
		-0.766174, -0.445045, -0.463586,
		27.768978, 35.987514, 33.097256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487127, 36.348251, 32.759010>,  <28.305300, 36.299046, 33.421764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487127, 36.348251, 32.759010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.101681, 36.249981, 32.716888>,  <27.870413, 36.191017, 32.691616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.101681, 36.249981, 32.716888>,  <28.487127, 36.348251, 32.759010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101681, 36.249981, 32.716888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012230, 0.353033, -0.935531,
		0.267013, -0.902780, -0.337183,
		-0.963615, -0.245675, -0.105305,
		27.812595, 36.176277, 32.685295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403315, 35.934444, 32.076229>,  <28.487127, 36.348251, 32.759010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403315, 35.934444, 32.076229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.058189, 36.101315, 32.190434>,  <27.851114, 36.201435, 32.258957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.058189, 36.101315, 32.190434>,  <28.403315, 35.934444, 32.076229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058189, 36.101315, 32.190434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065179, 0.468267, -0.881179,
		-0.501303, -0.778903, -0.376836,
		-0.862813, 0.417176, 0.285512,
		27.799345, 36.226467, 32.276089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915174, 35.815136, 31.484846>,  <28.403315, 35.934444, 32.076229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915174, 35.815136, 31.484846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.779398, 36.129562, 31.691484>,  <27.697931, 36.318218, 31.815468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.779398, 36.129562, 31.691484>,  <27.915174, 35.815136, 31.484846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.779398, 36.129562, 31.691484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209446, 0.598580, -0.773198,
		-0.917012, -0.154257, -0.367823,
		-0.339443, 0.786070, 0.516597,
		27.677565, 36.365383, 31.846464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.385012, 36.176319, 30.974094>,  <27.915174, 35.815136, 31.484846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.385012, 36.176319, 30.974094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.492290, 36.433914, 31.260687>,  <27.556658, 36.588470, 31.432642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.492290, 36.433914, 31.260687>,  <27.385012, 36.176319, 30.974094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492290, 36.433914, 31.260687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020492, 0.739746, -0.672573,
		-0.963146, 0.195066, 0.185202,
		0.268199, 0.643991, 0.716481,
		27.572750, 36.627113, 31.475632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028254, 36.791142, 30.763943>,  <27.385012, 36.176319, 30.974094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028254, 36.791142, 30.763943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.310778, 36.899990, 31.025347>,  <27.480291, 36.965298, 31.182190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.310778, 36.899990, 31.025347>,  <27.028254, 36.791142, 30.763943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310778, 36.899990, 31.025347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172686, 0.829044, -0.531851,
		-0.686518, 0.488503, 0.538570,
		0.706309, 0.272121, 0.653511,
		27.522671, 36.981625, 31.221399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964808, 37.502728, 30.765451>,  <27.028254, 36.791142, 30.763943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964808, 37.502728, 30.765451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.325300, 37.458321, 30.933002>,  <27.541595, 37.431675, 31.033533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.325300, 37.458321, 30.933002>,  <26.964808, 37.502728, 30.765451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325300, 37.458321, 30.933002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376466, 0.679303, -0.629937,
		-0.214607, 0.725412, 0.654004,
		0.901231, -0.111021, 0.418876,
		27.595669, 37.425014, 31.058666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147177, 38.182732, 30.878607>,  <26.964808, 37.502728, 30.765451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147177, 38.182732, 30.878607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.474997, 37.953800, 30.889740>,  <27.671688, 37.816441, 30.896420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.474997, 37.953800, 30.889740>,  <27.147177, 38.182732, 30.878607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474997, 37.953800, 30.889740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469066, 0.642201, -0.606263,
		0.329108, 0.509919, 0.794777,
		0.819552, -0.572329, 0.027832,
		27.720861, 37.782101, 30.898090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735701, 38.641865, 31.108459>,  <27.147177, 38.182732, 30.878607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735701, 38.641865, 31.108459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.905542, 38.329460, 30.925274>,  <28.007448, 38.142017, 30.815363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.905542, 38.329460, 30.925274>,  <27.735701, 38.641865, 31.108459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.905542, 38.329460, 30.925274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483935, 0.623284, -0.614267,
		0.765191, 0.039197, 0.642609,
		0.424606, -0.781012, -0.457962,
		28.032925, 38.095158, 30.787886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412565, 38.810432, 31.009642>,  <27.735701, 38.641865, 31.108459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412565, 38.810432, 31.009642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.353767, 38.527607, 30.732962>,  <28.318489, 38.357910, 30.566954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.353767, 38.527607, 30.732962>,  <28.412565, 38.810432, 31.009642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353767, 38.527607, 30.732962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469083, 0.565830, -0.678084,
		0.870835, -0.424140, 0.248498,
		-0.146994, -0.707065, -0.691702,
		28.309669, 38.315487, 30.525452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982691, 38.840946, 30.629116>,  <28.412565, 38.810432, 31.009642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982691, 38.840946, 30.629116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.731802, 38.649536, 30.383320>,  <28.581268, 38.534691, 30.235842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.731802, 38.649536, 30.383320>,  <28.982691, 38.840946, 30.629116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731802, 38.649536, 30.383320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280452, 0.597287, -0.751395,
		0.726593, -0.643628, -0.240428,
		-0.627224, -0.478530, -0.614491,
		28.543634, 38.505978, 30.198973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399551, 38.490433, 30.144009>,  <28.982691, 38.840946, 30.629116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399551, 38.490433, 30.144009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.045589, 38.526531, 29.961229>,  <28.833212, 38.548191, 29.851562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.045589, 38.526531, 29.961229>,  <29.399551, 38.490433, 30.144009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045589, 38.526531, 29.961229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456994, 0.357819, -0.814323,
		0.090011, -0.929419, -0.357879,
		-0.884904, 0.090251, -0.456947,
		28.780119, 38.553608, 29.824144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544371, 38.177696, 29.458755>,  <29.399551, 38.490433, 30.144009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544371, 38.177696, 29.458755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.211220, 38.397362, 29.431211>,  <29.011330, 38.529160, 29.414684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.211220, 38.397362, 29.431211>,  <29.544371, 38.177696, 29.458755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211220, 38.397362, 29.431211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397544, 0.507035, -0.764771,
		-0.385066, -0.664334, -0.640613,
		-0.832876, 0.549159, -0.068860,
		28.961357, 38.562111, 29.410553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265999, 38.187466, 28.759649>,  <29.544371, 38.177696, 29.458755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265999, 38.187466, 28.759649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.112062, 38.519249, 28.921587>,  <29.019701, 38.718319, 29.018749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.112062, 38.519249, 28.921587>,  <29.265999, 38.187466, 28.759649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112062, 38.519249, 28.921587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230562, 0.511114, -0.828012,
		-0.893721, -0.225313, -0.387940,
		-0.384843, 0.829456, 0.404845,
		28.996609, 38.768085, 29.043041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021597, 38.571587, 28.167418>,  <29.265999, 38.187466, 28.759649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021597, 38.571587, 28.167418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.074202, 38.840019, 28.459267>,  <29.105764, 39.001080, 28.634377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.074202, 38.840019, 28.459267>,  <29.021597, 38.571587, 28.167418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074202, 38.840019, 28.459267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351703, 0.656552, -0.667266,
		-0.926828, 0.344363, -0.149680,
		0.131510, 0.671084, 0.729624,
		29.113655, 39.041344, 28.678154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743988, 39.179298, 27.917412>,  <29.021597, 38.571587, 28.167418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743988, 39.179298, 27.917412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.958654, 39.324650, 28.222029>,  <29.087454, 39.411861, 28.404799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.958654, 39.324650, 28.222029>,  <28.743988, 39.179298, 27.917412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958654, 39.324650, 28.222029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377153, 0.704049, -0.601723,
		-0.754815, 0.610143, 0.240791,
		0.536665, 0.363375, 0.761544,
		29.119654, 39.433662, 28.450493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617430, 39.875774, 27.804388>,  <28.743988, 39.179298, 27.917412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617430, 39.875774, 27.804388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.927433, 39.883892, 28.057037>,  <29.113436, 39.888763, 28.208628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.927433, 39.883892, 28.057037>,  <28.617430, 39.875774, 27.804388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927433, 39.883892, 28.057037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488993, 0.613865, -0.619723,
		-0.400307, 0.789150, 0.465829,
		0.775010, 0.020292, 0.631623,
		29.159937, 39.889980, 28.246525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726311, 40.619186, 27.903721>,  <28.617430, 39.875774, 27.804388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726311, 40.619186, 27.903721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.068398, 40.432049, 27.992916>,  <29.273649, 40.319767, 28.046432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.068398, 40.432049, 27.992916>,  <28.726311, 40.619186, 27.903721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068398, 40.432049, 27.992916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517503, 0.747504, -0.416447,
		0.028148, 0.471550, 0.881390,
		0.855218, -0.467844, 0.222988,
		29.324963, 40.291695, 28.059813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168180, 41.083687, 28.223030>,  <28.726311, 40.619186, 27.903721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168180, 41.083687, 28.223030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.426012, 40.807053, 28.092657>,  <29.580711, 40.641071, 28.014433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.426012, 40.807053, 28.092657>,  <29.168180, 41.083687, 28.223030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426012, 40.807053, 28.092657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596642, 0.721592, -0.351175,
		0.478057, 0.031894, 0.877750,
		0.644578, -0.691583, -0.325932,
		29.619385, 40.599579, 27.994877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.836828, 41.377232, 28.223312>,  <29.168180, 41.083687, 28.223030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.836828, 41.377232, 28.223312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.861952, 41.079048, 27.957876>,  <29.877026, 40.900139, 27.798615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.861952, 41.079048, 27.957876>,  <29.836828, 41.377232, 28.223312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861952, 41.079048, 27.957876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620684, 0.549851, -0.558941,
		0.781541, -0.376773, 0.497228,
		0.062807, -0.745457, -0.663588,
		29.880795, 40.855412, 27.758801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.703861, 30.811445, 43.921833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.341976, 30.643349, 43.949791>,  <37.124844, 30.542490, 43.966564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.341976, 30.643349, 43.949791>,  <37.703861, 30.811445, 43.921833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341976, 30.643349, 43.949791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173294, 0.512913, 0.840767,
		-0.389174, 0.748544, -0.536866,
		-0.904717, -0.420241, 0.069894,
		37.070560, 30.517277, 43.970760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270794, 31.384363, 44.098160>,  <37.703861, 30.811445, 43.921833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270794, 31.384363, 44.098160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.078430, 31.056091, 44.221588>,  <36.963013, 30.859129, 44.295647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.078430, 31.056091, 44.221588>,  <37.270794, 31.384363, 44.098160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078430, 31.056091, 44.221588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287473, 0.480076, 0.828786,
		-0.828305, 0.309862, -0.466794,
		-0.480906, -0.820678, 0.308572,
		36.934158, 30.809887, 44.314159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653316, 31.662502, 44.496769>,  <37.270794, 31.384363, 44.098160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653316, 31.662502, 44.496769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.679531, 31.277130, 44.600697>,  <36.695259, 31.045906, 44.663052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.679531, 31.277130, 44.600697>,  <36.653316, 31.662502, 44.496769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679531, 31.277130, 44.600697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250871, 0.236106, 0.938785,
		-0.965800, -0.126704, -0.226224,
		0.065535, -0.963431, 0.259818,
		36.699192, 30.988100, 44.678642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077221, 31.581795, 44.885307>,  <36.653316, 31.662502, 44.496769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077221, 31.581795, 44.885307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.322556, 31.284121, 44.991142>,  <36.469757, 31.105516, 45.054642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.322556, 31.284121, 44.991142>,  <36.077221, 31.581795, 44.885307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322556, 31.284121, 44.991142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175006, 0.198617, 0.964326,
		-0.770186, -0.637764, -0.008417,
		0.613340, -0.744183, 0.264584,
		36.506557, 31.060865, 45.070518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694099, 31.065855, 45.287949>,  <36.077221, 31.581795, 44.885307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694099, 31.065855, 45.287949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.078102, 31.033821, 45.395264>,  <36.308502, 31.014601, 45.459652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.078102, 31.033821, 45.395264>,  <35.694099, 31.065855, 45.287949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078102, 31.033821, 45.395264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264404, 0.055918, 0.962789,
		-0.092109, -0.995218, 0.032506,
		0.960003, -0.080086, 0.268291,
		36.366104, 31.009796, 45.475750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772602, 30.521927, 45.815674>,  <35.694099, 31.065855, 45.287949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772602, 30.521927, 45.815674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.094086, 30.755903, 45.859310>,  <36.286976, 30.896288, 45.885490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.094086, 30.755903, 45.859310>,  <35.772602, 30.521927, 45.815674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094086, 30.755903, 45.859310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038907, -0.131283, 0.990581,
		0.593752, -0.800381, -0.082755,
		0.803707, 0.584940, 0.109090,
		36.335197, 30.931385, 45.892036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220512, 30.251123, 46.318111>,  <35.772602, 30.521927, 45.815674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220512, 30.251123, 46.318111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.412476, 30.601934, 46.327160>,  <36.527653, 30.812422, 46.332588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.412476, 30.601934, 46.327160>,  <36.220512, 30.251123, 46.318111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412476, 30.601934, 46.327160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001852, -0.024767, 0.999692,
		0.877317, -0.479803, -0.010262,
		0.479909, 0.877027, 0.022617,
		36.556450, 30.865042, 46.333946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774849, 30.181984, 46.859436>,  <36.220512, 30.251123, 46.318111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774849, 30.181984, 46.859436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.682384, 30.569504, 46.823673>,  <36.626904, 30.802015, 46.802216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.682384, 30.569504, 46.823673>,  <36.774849, 30.181984, 46.859436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682384, 30.569504, 46.823673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015825, 0.088136, 0.995983,
		0.972786, 0.231652, -0.005043,
		-0.231166, 0.968798, -0.089403,
		36.613033, 30.860144, 46.796852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290894, 30.563368, 47.292316>,  <36.774849, 30.181984, 46.859436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290894, 30.563368, 47.292316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.936668, 30.744198, 47.249607>,  <36.724133, 30.852695, 47.223980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.936668, 30.744198, 47.249607>,  <37.290894, 30.563368, 47.292316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936668, 30.744198, 47.249607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074014, 0.089601, 0.993224,
		0.458579, 0.887468, -0.045887,
		-0.885566, 0.452076, -0.106774,
		36.670998, 30.879820, 47.217575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994854, 30.691004, 47.951385>,  <37.290894, 30.563368, 47.292316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994854, 30.691004, 47.951385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.680141, 30.840111, 47.754604>,  <36.491314, 30.929575, 47.636536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.680141, 30.840111, 47.754604>,  <36.994854, 30.691004, 47.951385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680141, 30.840111, 47.754604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440487, 0.219210, 0.870585,
		0.432367, 0.901660, -0.008272,
		-0.786785, 0.372768, -0.491949,
		36.444107, 30.951941, 47.607021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758575, 31.292112, 48.330727>,  <36.994854, 30.691004, 47.951385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758575, 31.292112, 48.330727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.447388, 31.177509, 48.107056>,  <36.260674, 31.108747, 47.972855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.447388, 31.177509, 48.107056>,  <36.758575, 31.292112, 48.330727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447388, 31.177509, 48.107056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611497, 0.140797, 0.778619,
		-0.144348, 0.947676, -0.284733,
		-0.777969, -0.286506, -0.559177,
		36.213997, 31.091558, 47.939304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326900, 31.821508, 48.328030>,  <36.758575, 31.292112, 48.330727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326900, 31.821508, 48.328030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.109119, 31.499949, 48.232265>,  <35.978451, 31.307013, 48.174809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.109119, 31.499949, 48.232265>,  <36.326900, 31.821508, 48.328030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109119, 31.499949, 48.232265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506106, 0.087239, 0.858048,
		-0.668898, 0.588334, -0.454355,
		-0.544456, -0.803898, -0.239406,
		35.945782, 31.258780, 48.160442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593018, 32.031174, 48.437042>,  <36.326900, 31.821508, 48.328030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593018, 32.031174, 48.437042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.672966, 31.639746, 48.456860>,  <35.720936, 31.404890, 48.468750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.672966, 31.639746, 48.456860>,  <35.593018, 32.031174, 48.437042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672966, 31.639746, 48.456860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426156, -0.041289, 0.903707,
		-0.882294, -0.201738, -0.425275,
		0.199871, -0.978569, 0.049543,
		35.732925, 31.346174, 48.471722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634174, 32.142387, 47.697456>,  <35.593018, 32.031174, 48.437042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634174, 32.142387, 47.697456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.592335, 32.525105, 47.805977>,  <35.567230, 32.754734, 47.871090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.592335, 32.525105, 47.805977>,  <35.634174, 32.142387, 47.697456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592335, 32.525105, 47.805977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485941, 0.188842, -0.853347,
		-0.867710, -0.221091, 0.445194,
		-0.104596, 0.956796, 0.271297,
		35.560955, 32.812141, 47.887367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966927, 32.294247, 47.500259>,  <35.634174, 32.142387, 47.697456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966927, 32.294247, 47.500259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.194908, 32.622540, 47.516033>,  <35.331696, 32.819515, 47.525497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.194908, 32.622540, 47.516033>,  <34.966927, 32.294247, 47.500259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194908, 32.622540, 47.516033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307157, 0.257321, -0.916210,
		-0.762108, 0.510085, 0.398754,
		0.569953, 0.820731, 0.039430,
		35.365894, 32.868759, 47.527863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587173, 32.789658, 47.182793>,  <34.966927, 32.294247, 47.500259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587173, 32.789658, 47.182793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.948616, 32.960255, 47.166775>,  <35.165482, 33.062614, 47.157166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.948616, 32.960255, 47.166775>,  <34.587173, 32.789658, 47.182793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948616, 32.960255, 47.166775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216005, 0.372918, -0.902371,
		-0.369922, 0.824036, 0.429095,
		0.903603, 0.426494, -0.040046,
		35.219696, 33.088203, 47.154762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511475, 33.486309, 46.968166>,  <34.587173, 32.789658, 47.182793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511475, 33.486309, 46.968166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.888538, 33.396160, 46.869698>,  <35.114777, 33.342072, 46.810616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.888538, 33.396160, 46.869698>,  <34.511475, 33.486309, 46.968166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888538, 33.396160, 46.869698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168272, 0.316051, -0.933700,
		0.288235, 0.921585, 0.260004,
		0.942659, -0.225374, -0.246174,
		35.171337, 33.328548, 46.795845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684849, 33.975052, 46.464386>,  <34.511475, 33.486309, 46.968166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684849, 33.975052, 46.464386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.996082, 33.728718, 46.414867>,  <35.182823, 33.580917, 46.385159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.996082, 33.728718, 46.414867>,  <34.684849, 33.975052, 46.464386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996082, 33.728718, 46.414867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040021, 0.245275, -0.968627,
		0.626880, 0.748722, 0.215492,
		0.778087, -0.615837, -0.123794,
		35.229507, 33.543968, 46.377728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231918, 34.279686, 45.903114>,  <34.684849, 33.975052, 46.464386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231918, 34.279686, 45.903114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304199, 33.886551, 45.917980>,  <35.347569, 33.650669, 45.926899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304199, 33.886551, 45.917980>,  <35.231918, 34.279686, 45.903114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304199, 33.886551, 45.917980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092696, -0.020598, -0.995481,
		0.979159, 0.183334, 0.087382,
		0.180706, -0.982835, 0.037163,
		35.358410, 33.591702, 45.929131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554447, 34.144241, 45.291897>,  <35.231918, 34.279686, 45.903114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554447, 34.144241, 45.291897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.462780, 33.773468, 45.410748>,  <35.407780, 33.551006, 45.482056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.462780, 33.773468, 45.410748>,  <35.554447, 34.144241, 45.291897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462780, 33.773468, 45.410748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067925, -0.289274, -0.954833,
		0.971013, -0.239003, 0.003332,
		-0.229172, -0.926929, 0.297123,
		35.394028, 33.495388, 45.499886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066402, 33.648899, 45.027779>,  <35.554447, 34.144241, 45.291897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066402, 33.648899, 45.027779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722530, 33.456875, 45.097626>,  <35.516209, 33.341660, 45.139534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722530, 33.456875, 45.097626>,  <36.066402, 33.648899, 45.027779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722530, 33.456875, 45.097626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042031, -0.274189, -0.960757,
		0.509101, -0.833282, 0.215537,
		-0.859680, -0.480063, 0.174614,
		35.464626, 33.312855, 45.150009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056255, 33.062046, 44.538521>,  <36.066402, 33.648899, 45.027779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056255, 33.062046, 44.538521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.674637, 33.094238, 44.653984>,  <35.445667, 33.113552, 44.723263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.674637, 33.094238, 44.653984>,  <36.056255, 33.062046, 44.538521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674637, 33.094238, 44.653984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299343, -0.300969, -0.905434,
		0.014012, -0.950232, 0.311227,
		-0.954043, 0.080477, 0.288662,
		35.388424, 33.118382, 44.740582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746971, 32.414566, 44.451923>,  <36.056255, 33.062046, 44.538521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746971, 32.414566, 44.451923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.452324, 32.684708, 44.437557>,  <35.275536, 32.846794, 44.428936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.452324, 32.684708, 44.437557>,  <35.746971, 32.414566, 44.451923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452324, 32.684708, 44.437557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289702, -0.363080, -0.885577,
		-0.611119, -0.641926, 0.463103,
		-0.736618, 0.675355, -0.035918,
		35.231339, 32.887314, 44.426781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178417, 32.108700, 44.189125>,  <35.746971, 32.414566, 44.451923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178417, 32.108700, 44.189125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.124798, 32.501362, 44.134903>,  <35.092625, 32.736961, 44.102367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.124798, 32.501362, 44.134903>,  <35.178417, 32.108700, 44.189125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124798, 32.501362, 44.134903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133587, -0.153446, -0.979086,
		-0.981929, -0.113138, 0.151706,
		-0.134050, 0.981659, -0.135559,
		35.084583, 32.795860, 44.094234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383087, 32.169018, 43.877361>,  <35.178417, 32.108700, 44.189125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383087, 32.169018, 43.877361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.594769, 32.498257, 43.794945>,  <34.721779, 32.695801, 43.745495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.594769, 32.498257, 43.794945>,  <34.383087, 32.169018, 43.877361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594769, 32.498257, 43.794945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378635, 0.011776, -0.925471,
		-0.759325, 0.567781, 0.317884,
		0.529208, 0.823096, -0.206040,
		34.753532, 32.745186, 43.733131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911636, 32.476315, 43.529709>,  <34.383087, 32.169018, 43.877361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911636, 32.476315, 43.529709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.245567, 32.678215, 43.441811>,  <34.445927, 32.799355, 43.389072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.245567, 32.678215, 43.441811>,  <33.911636, 32.476315, 43.529709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245567, 32.678215, 43.441811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342905, 0.164508, -0.924853,
		-0.430671, 0.847446, 0.310417,
		0.834829, 0.504751, -0.219744,
		34.496017, 32.829639, 43.375889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697609, 33.209602, 43.301098>,  <33.911636, 32.476315, 43.529709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697609, 33.209602, 43.301098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.048851, 33.081314, 43.159073>,  <34.259598, 33.004341, 43.073860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.048851, 33.081314, 43.159073>,  <33.697609, 33.209602, 43.301098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048851, 33.081314, 43.159073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350335, 0.074439, -0.933661,
		0.325872, 0.944245, -0.046994,
		0.878107, -0.320718, -0.355060,
		34.312283, 32.985100, 43.052555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922108, 33.601200, 42.624996>,  <33.697609, 33.209602, 43.301098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922108, 33.601200, 42.624996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.084709, 33.235741, 42.625374>,  <34.182270, 33.016464, 42.625599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.084709, 33.235741, 42.625374>,  <33.922108, 33.601200, 42.624996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084709, 33.235741, 42.625374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204001, -0.091774, -0.974659,
		0.890581, 0.396013, -0.223692,
		0.406507, -0.913647, 0.000945,
		34.206661, 32.961647, 42.625656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503246, 34.143246, 42.891567>,  <33.922108, 33.601200, 42.624996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503246, 34.143246, 42.891567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129185, 34.024281, 42.814602>,  <32.904747, 33.952900, 42.768421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129185, 34.024281, 42.814602>,  <33.503246, 34.143246, 42.891567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129185, 34.024281, 42.814602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159315, -0.132032, 0.978359,
		-0.316385, 0.945575, 0.076088,
		-0.935157, -0.297416, -0.192418,
		32.848637, 33.935055, 42.756878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016403, 34.499184, 43.390373>,  <33.503246, 34.143246, 42.891567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016403, 34.499184, 43.390373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.875942, 34.151371, 43.251465>,  <32.791664, 33.942684, 43.168118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.875942, 34.151371, 43.251465>,  <33.016403, 34.499184, 43.390373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875942, 34.151371, 43.251465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403384, -0.194215, 0.894182,
		-0.844968, 0.454081, -0.282557,
		-0.351155, -0.869535, -0.347275,
		32.770596, 33.890511, 43.147282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399841, 34.355099, 43.636013>,  <33.016403, 34.499184, 43.390373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399841, 34.355099, 43.636013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.491619, 33.977150, 43.542568>,  <32.546688, 33.750381, 43.486504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.491619, 33.977150, 43.542568>,  <32.399841, 34.355099, 43.636013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491619, 33.977150, 43.542568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415203, -0.312097, 0.854519,
		-0.880318, -0.099072, -0.463923,
		0.229448, -0.944870, -0.233609,
		32.560455, 33.693687, 43.472485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800323, 34.012001, 43.853214>,  <32.399841, 34.355099, 43.636013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800323, 34.012001, 43.853214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.111095, 33.760250, 43.859787>,  <32.297558, 33.609200, 43.863731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.111095, 33.760250, 43.859787>,  <31.800323, 34.012001, 43.853214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111095, 33.760250, 43.859787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217381, -0.243666, 0.945184,
		-0.590869, -0.737913, -0.326125,
		0.776929, -0.629374, 0.016434,
		32.344173, 33.571438, 43.864716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645332, 33.297581, 44.252598>,  <31.800323, 34.012001, 43.853214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645332, 33.297581, 44.252598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.044556, 33.272690, 44.253387>,  <32.284092, 33.257755, 44.253860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.044556, 33.272690, 44.253387>,  <31.645332, 33.297581, 44.252598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044556, 33.272690, 44.253387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011890, -0.159434, 0.987137,
		-0.061113, -0.985246, -0.159864,
		0.998060, -0.062228, 0.001971,
		32.343975, 33.254021, 44.253979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858316, 32.618103, 44.507027>,  <31.645332, 33.297581, 44.252598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858316, 32.618103, 44.507027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.188545, 32.831936, 44.579308>,  <32.386681, 32.960236, 44.622677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.188545, 32.831936, 44.579308>,  <31.858316, 32.618103, 44.507027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188545, 32.831936, 44.579308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035358, -0.270597, 0.962043,
		0.563189, -0.800625, -0.204495,
		0.825571, 0.534581, 0.180706,
		32.436218, 32.992310, 44.633518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243534, 32.252048, 44.968433>,  <31.858316, 32.618103, 44.507027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243534, 32.252048, 44.968433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.380646, 32.625996, 45.005363>,  <32.462914, 32.850365, 45.027523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.380646, 32.625996, 45.005363>,  <32.243534, 32.252048, 44.968433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380646, 32.625996, 45.005363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063290, -0.075077, 0.995167,
		0.937282, -0.346964, 0.033433,
		0.342777, 0.934869, 0.092328,
		32.483479, 32.906456, 45.033062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919861, 31.641762, 44.974144>,  <32.243534, 32.252048, 44.968433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919861, 31.641762, 44.974144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.584570, 31.565834, 45.178631>,  <31.383396, 31.520277, 45.301323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.584570, 31.565834, 45.178631>,  <31.919861, 31.641762, 44.974144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584570, 31.565834, 45.178631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507707, -0.070479, -0.858642,
		0.199017, -0.979286, -0.037296,
		-0.838228, -0.189820, 0.511217,
		31.333101, 31.508888, 45.331997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602568, 31.227583, 44.597702>,  <31.919861, 31.641762, 44.974144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602568, 31.227583, 44.597702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.289894, 31.365852, 44.805347>,  <31.102291, 31.448814, 44.929935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.289894, 31.365852, 44.805347>,  <31.602568, 31.227583, 44.597702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289894, 31.365852, 44.805347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528856, 0.073811, -0.845496,
		-0.330583, -0.935447, 0.125116,
		-0.781682, 0.345675, 0.519117,
		31.055389, 31.469555, 44.961082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120316, 30.829454, 44.460682>,  <31.602568, 31.227583, 44.597702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120316, 30.829454, 44.460682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.933485, 31.170532, 44.554279>,  <30.821386, 31.375179, 44.610439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.933485, 31.170532, 44.554279>,  <31.120316, 30.829454, 44.460682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933485, 31.170532, 44.554279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338377, 0.072123, -0.938243,
		-0.816909, -0.517411, 0.254845,
		-0.467077, 0.852692, 0.233998,
		30.793362, 31.426340, 44.624477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454988, 30.746748, 44.222210>,  <31.120316, 30.829454, 44.460682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454988, 30.746748, 44.222210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.521568, 31.141024, 44.232857>,  <30.561516, 31.377590, 44.239243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.521568, 31.141024, 44.232857>,  <30.454988, 30.746748, 44.222210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521568, 31.141024, 44.232857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361882, 0.086172, -0.928233,
		-0.917244, 0.144872, 0.371047,
		0.166449, 0.985691, 0.026614,
		30.571503, 31.436731, 44.240841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973003, 30.922506, 43.790585>,  <30.454988, 30.746748, 44.222210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973003, 30.922506, 43.790585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.163277, 31.271553, 43.834885>,  <30.277441, 31.480982, 43.861465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.163277, 31.271553, 43.834885>,  <29.973003, 30.922506, 43.790585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163277, 31.271553, 43.834885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323143, 0.290468, -0.900671,
		-0.818110, 0.392644, 0.420150,
		0.475683, 0.872616, 0.110754,
		30.305981, 31.533339, 43.868111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521147, 31.522646, 43.905746>,  <29.973003, 30.922506, 43.790585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521147, 31.522646, 43.905746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.852470, 31.655832, 43.725510>,  <30.051264, 31.735744, 43.617367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.852470, 31.655832, 43.725510>,  <29.521147, 31.522646, 43.905746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852470, 31.655832, 43.725510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542910, 0.278349, -0.792320,
		-0.138392, 0.900919, 0.411329,
		0.828309, 0.332966, -0.450597,
		30.100964, 31.755722, 43.590332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379225, 32.137138, 43.506386>,  <29.521147, 31.522646, 43.905746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379225, 32.137138, 43.506386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.715750, 31.997446, 43.341351>,  <29.917665, 31.913630, 43.242329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.715750, 31.997446, 43.341351>,  <29.379225, 32.137138, 43.506386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715750, 31.997446, 43.341351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392002, 0.131366, -0.910537,
		0.372190, 0.927782, -0.026380,
		0.841314, -0.349233, -0.412585,
		29.968143, 31.892675, 43.217575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.561008, 28.695845, 47.475677> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.919762, 28.862608, 47.534718>,  <34.135014, 28.962666, 47.570141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.919762, 28.862608, 47.534718>,  <33.561008, 28.695845, 47.475677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919762, 28.862608, 47.534718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210626, -0.109182, -0.971450,
		-0.388891, 0.902367, -0.185736,
		0.896884, 0.416909, 0.147602,
		34.188828, 28.987680, 47.578999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721260, 29.081528, 46.899555>,  <33.561008, 28.695845, 47.475677>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721260, 29.081528, 46.899555> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.087257, 29.023235, 47.050049>,  <34.306854, 28.988258, 47.140347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.087257, 29.023235, 47.050049>,  <33.721260, 29.081528, 46.899555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087257, 29.023235, 47.050049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349515, -0.179568, -0.919562,
		0.201571, 0.972891, -0.113367,
		0.914991, -0.145733, 0.376236,
		34.361755, 28.979515, 47.162918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199165, 29.226431, 46.361660>,  <33.721260, 29.081528, 46.899555>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199165, 29.226431, 46.361660> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.443661, 29.036116, 46.614647>,  <34.590359, 28.921926, 46.766438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.443661, 29.036116, 46.614647>,  <34.199165, 29.226431, 46.361660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443661, 29.036116, 46.614647> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528739, -0.349147, -0.773648,
		0.588916, 0.807293, 0.038155,
		0.611239, -0.475788, 0.632466,
		34.627033, 28.893379, 46.804386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879471, 29.413588, 46.186478>,  <34.199165, 29.226431, 46.361660>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879471, 29.413588, 46.186478> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.887222, 29.059008, 46.371445>,  <34.891872, 28.846260, 46.482426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.887222, 29.059008, 46.371445>,  <34.879471, 29.413588, 46.186478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887222, 29.059008, 46.371445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483420, -0.396542, -0.780423,
		0.875174, 0.238662, 0.420845,
		0.019375, -0.886451, 0.462417,
		34.893036, 28.793072, 46.510170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464378, 29.144329, 45.899120>,  <34.879471, 29.413588, 46.186478>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464378, 29.144329, 45.899120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.282005, 28.822206, 46.050705>,  <35.172581, 28.628933, 46.141655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.282005, 28.822206, 46.050705>,  <35.464378, 29.144329, 45.899120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282005, 28.822206, 46.050705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210541, -0.511296, -0.833216,
		0.864754, -0.300101, 0.402665,
		-0.455930, -0.805305, 0.378962,
		35.145226, 28.580616, 46.164394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859203, 28.472481, 45.685436>,  <35.464378, 29.144329, 45.899120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859203, 28.472481, 45.685436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.496265, 28.362083, 45.812271>,  <35.278503, 28.295845, 45.888374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.496265, 28.362083, 45.812271>,  <35.859203, 28.472481, 45.685436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496265, 28.362083, 45.812271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089558, -0.610073, -0.787268,
		0.410729, -0.742724, 0.528831,
		-0.907348, -0.275992, 0.317091,
		35.224060, 28.279285, 45.907398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838192, 27.742157, 45.657169>,  <35.859203, 28.472481, 45.685436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838192, 27.742157, 45.657169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.457684, 27.865488, 45.655697>,  <35.229378, 27.939487, 45.654812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.457684, 27.865488, 45.655697>,  <35.838192, 27.742157, 45.657169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457684, 27.865488, 45.655697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210290, -0.657439, -0.723569,
		-0.225516, -0.687537, 0.690243,
		-0.951273, 0.308328, -0.003681,
		35.172302, 27.957987, 45.654591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471260, 27.154169, 45.638203>,  <35.838192, 27.742157, 45.657169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471260, 27.154169, 45.638203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.216545, 27.430954, 45.502148>,  <35.063717, 27.597025, 45.420517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.216545, 27.430954, 45.502148>,  <35.471260, 27.154169, 45.638203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216545, 27.430954, 45.502148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354857, -0.654651, -0.667464,
		-0.684529, -0.304334, 0.662421,
		-0.636787, 0.691963, -0.340132,
		35.025509, 27.638542, 45.400108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876652, 26.757111, 45.219166>,  <35.471260, 27.154169, 45.638203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876652, 26.757111, 45.219166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.793152, 27.134241, 45.115242>,  <34.743053, 27.360519, 45.052887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.793152, 27.134241, 45.115242>,  <34.876652, 26.757111, 45.219166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793152, 27.134241, 45.115242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263070, -0.310007, -0.913614,
		-0.941923, -0.122364, 0.312743,
		-0.208746, 0.942827, -0.259812,
		34.730530, 27.417089, 45.037300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234550, 26.718248, 45.014694>,  <34.876652, 26.757111, 45.219166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234550, 26.718248, 45.014694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.370758, 27.047676, 44.833244>,  <34.452484, 27.245333, 44.724373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.370758, 27.047676, 44.833244>,  <34.234550, 26.718248, 45.014694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370758, 27.047676, 44.833244> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394381, -0.312856, -0.864051,
		-0.853527, 0.473130, 0.218266,
		0.340523, 0.823571, -0.453625,
		34.472916, 27.294746, 44.697155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738178, 27.019672, 44.448414>,  <34.234550, 26.718248, 45.014694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738178, 27.019672, 44.448414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.086464, 27.184437, 44.340946>,  <34.295437, 27.283295, 44.276466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.086464, 27.184437, 44.340946>,  <33.738178, 27.019672, 44.448414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086464, 27.184437, 44.340946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101923, -0.383303, -0.917982,
		-0.481109, 0.826685, -0.291765,
		0.870716, 0.411911, -0.268669,
		34.347679, 27.308010, 44.260345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647957, 27.399826, 43.840279>,  <33.738178, 27.019672, 44.448414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647957, 27.399826, 43.840279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.042381, 27.335714, 43.822407>,  <34.279037, 27.297247, 43.811684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.042381, 27.335714, 43.822407>,  <33.647957, 27.399826, 43.840279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042381, 27.335714, 43.822407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099420, -0.352234, -0.930616,
		0.133423, 0.922085, -0.363259,
		0.986060, -0.160281, -0.044678,
		34.338200, 27.287630, 43.809002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304565, 28.089821, 43.548874>,  <33.647957, 27.399826, 43.840279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304565, 28.089821, 43.548874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.909405, 28.130611, 43.502144>,  <32.672310, 28.155087, 43.474106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.909405, 28.130611, 43.502144>,  <33.304565, 28.089821, 43.548874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909405, 28.130611, 43.502144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099257, 0.163023, 0.981617,
		0.119149, 0.981338, -0.150929,
		-0.987903, 0.101978, -0.116829,
		32.613033, 28.161205, 43.467094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227200, 28.558714, 43.996777>,  <33.304565, 28.089821, 43.548874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227200, 28.558714, 43.996777> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.863426, 28.401670, 43.941956>,  <32.645161, 28.307444, 43.909061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.863426, 28.401670, 43.941956>,  <33.227200, 28.558714, 43.996777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863426, 28.401670, 43.941956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204556, 0.135421, 0.969442,
		-0.362051, 0.909681, -0.203468,
		-0.909437, -0.392608, -0.137052,
		32.590595, 28.283888, 43.900841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803680, 29.024002, 44.294643>,  <33.227200, 28.558714, 43.996777>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803680, 29.024002, 44.294643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.585754, 28.690195, 44.261772>,  <32.454998, 28.489910, 44.242050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.585754, 28.690195, 44.261772>,  <32.803680, 29.024002, 44.294643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585754, 28.690195, 44.261772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228540, 0.053479, 0.972065,
		-0.806811, 0.548379, -0.219857,
		-0.544817, -0.834518, -0.082179,
		32.422310, 28.439840, 44.237118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136623, 29.204401, 44.438618>,  <32.803680, 29.024002, 44.294643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136623, 29.204401, 44.438618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.163132, 28.809774, 44.498348>,  <32.179035, 28.572998, 44.534187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.163132, 28.809774, 44.498348>,  <32.136623, 29.204401, 44.438618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163132, 28.809774, 44.498348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360345, 0.115890, 0.925592,
		-0.930462, -0.115146, -0.347824,
		0.066269, -0.986565, 0.149323,
		32.183014, 28.513805, 44.543144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653185, 29.195202, 44.958801>,  <32.136623, 29.204401, 44.438618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653185, 29.195202, 44.958801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.818544, 28.831215, 44.971817>,  <31.917761, 28.612823, 44.979626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.818544, 28.831215, 44.971817>,  <31.653185, 29.195202, 44.958801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818544, 28.831215, 44.971817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321122, -0.112259, 0.940361,
		-0.852046, -0.399194, -0.338619,
		0.413399, -0.909968, 0.032540,
		31.942564, 28.558224, 44.981579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118689, 28.801004, 45.100681>,  <31.653185, 29.195202, 44.958801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118689, 28.801004, 45.100681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.439459, 28.605591, 45.238232>,  <31.631922, 28.488342, 45.320763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.439459, 28.605591, 45.238232>,  <31.118689, 28.801004, 45.100681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439459, 28.605591, 45.238232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388888, 0.010093, 0.921230,
		-0.453523, -0.872487, -0.181891,
		0.801925, -0.488534, 0.343877,
		31.680037, 28.459030, 45.341396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831762, 28.338037, 45.569599>,  <31.118689, 28.801004, 45.100681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831762, 28.338037, 45.569599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.213902, 28.346836, 45.687466>,  <31.443184, 28.352116, 45.758186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.213902, 28.346836, 45.687466>,  <30.831762, 28.338037, 45.569599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213902, 28.346836, 45.687466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283556, -0.212252, 0.935171,
		0.083117, -0.976967, -0.196536,
		0.955347, 0.022000, 0.294666,
		31.500505, 28.353436, 45.775864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979025, 27.695259, 45.992947>,  <30.831762, 28.338037, 45.569599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979025, 27.695259, 45.992947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.254795, 27.964548, 46.099876>,  <31.420258, 28.126122, 46.164036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.254795, 27.964548, 46.099876>,  <30.979025, 27.695259, 45.992947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254795, 27.964548, 46.099876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101698, -0.275438, 0.955925,
		0.717183, -0.686225, -0.121428,
		0.689425, 0.673224, 0.267327,
		31.461622, 28.166515, 46.180073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345472, 27.404793, 46.613300>,  <30.979025, 27.695259, 45.992947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345472, 27.404793, 46.613300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.387661, 27.802330, 46.626900>,  <31.412973, 28.040852, 46.635059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.387661, 27.802330, 46.626900>,  <31.345472, 27.404793, 46.613300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387661, 27.802330, 46.626900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116270, -0.021632, 0.992982,
		0.987602, -0.108685, 0.113273,
		0.105472, 0.993841, 0.034001,
		31.419302, 28.100483, 46.637100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736490, 27.497255, 47.223049>,  <31.345472, 27.404793, 46.613300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736490, 27.497255, 47.223049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.603868, 27.867420, 47.149635>,  <31.524296, 28.089520, 47.105587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.603868, 27.867420, 47.149635>,  <31.736490, 27.497255, 47.223049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603868, 27.867420, 47.149635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035273, 0.182241, 0.982621,
		0.942776, 0.332267, -0.027780,
		-0.331555, 0.925412, -0.183532,
		31.504402, 28.145044, 47.094574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143803, 27.897129, 47.649624>,  <31.736490, 27.497255, 47.223049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143803, 27.897129, 47.649624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.819532, 28.116718, 47.568203>,  <31.624969, 28.248472, 47.519352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.819532, 28.116718, 47.568203>,  <32.143803, 27.897129, 47.649624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819532, 28.116718, 47.568203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071901, 0.251678, 0.965137,
		0.581061, 0.797050, -0.164558,
		-0.810678, 0.548972, -0.203549,
		31.576328, 28.281410, 47.507137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286415, 28.633169, 47.871063>,  <32.143803, 27.897129, 47.649624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286415, 28.633169, 47.871063> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.891212, 28.571754, 47.864395>,  <31.654091, 28.534906, 47.860394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.891212, 28.571754, 47.864395>,  <32.286415, 28.633169, 47.871063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891212, 28.571754, 47.864395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071067, 0.356162, 0.931718,
		-0.137114, 0.921725, -0.362800,
		-0.988003, -0.153535, -0.016669,
		31.594812, 28.525694, 47.859394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035759, 29.174078, 48.191353>,  <32.286415, 28.633169, 47.871063>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035759, 29.174078, 48.191353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.712994, 28.938232, 48.205433>,  <31.519333, 28.796724, 48.213882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.712994, 28.938232, 48.205433>,  <32.035759, 29.174078, 48.191353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712994, 28.938232, 48.205433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177175, 0.298461, 0.937833,
		-0.563464, 0.750518, -0.345298,
		-0.806918, -0.589613, 0.035199,
		31.470919, 28.761349, 48.215992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400282, 29.565464, 48.348133>,  <32.035759, 29.174078, 48.191353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400282, 29.565464, 48.348133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.396479, 29.181517, 48.460247>,  <31.394196, 28.951149, 48.527515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.396479, 29.181517, 48.460247>,  <31.400282, 29.565464, 48.348133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396479, 29.181517, 48.460247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111012, 0.277555, 0.954275,
		-0.993774, 0.040191, 0.103917,
		-0.009510, -0.959869, 0.280288,
		31.393625, 28.893557, 48.544334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453466, 29.980247, 47.785072>,  <31.400282, 29.565464, 48.348133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453466, 29.980247, 47.785072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.652857, 30.302261, 47.913723>,  <31.772491, 30.495470, 47.990913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.652857, 30.302261, 47.913723>,  <31.453466, 29.980247, 47.785072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652857, 30.302261, 47.913723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354390, 0.527820, -0.771890,
		-0.791157, 0.270789, 0.548401,
		0.498477, 0.805034, 0.321623,
		31.802401, 30.543772, 48.010208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004787, 30.524748, 47.713207>,  <31.453466, 29.980247, 47.785072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004787, 30.524748, 47.713207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.380840, 30.658623, 47.687485>,  <31.606472, 30.738949, 47.672050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.380840, 30.658623, 47.687485>,  <31.004787, 30.524748, 47.713207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380840, 30.658623, 47.687485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192846, 0.366831, -0.910080,
		-0.281003, 0.867997, 0.409413,
		0.940132, 0.334689, -0.064309,
		31.662880, 30.759029, 47.668194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824062, 31.125095, 47.472382>,  <31.004787, 30.524748, 47.713207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824062, 31.125095, 47.472382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.217651, 31.104794, 47.404007>,  <31.453806, 31.092611, 47.362984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.217651, 31.104794, 47.404007>,  <30.824062, 31.125095, 47.472382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217651, 31.104794, 47.404007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113079, 0.563606, -0.818267,
		0.137874, 0.824483, 0.548834,
		0.983974, -0.050756, -0.170938,
		31.512844, 31.089567, 47.352726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054932, 31.840225, 47.332561>,  <30.824062, 31.125095, 47.472382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054932, 31.840225, 47.332561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.309446, 31.583288, 47.161663>,  <31.462156, 31.429127, 47.059124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.309446, 31.583288, 47.161663>,  <31.054932, 31.840225, 47.332561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309446, 31.583288, 47.161663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154917, 0.436144, -0.886442,
		0.755737, 0.630220, 0.178004,
		0.636288, -0.642340, -0.427242,
		31.500332, 31.390587, 47.033489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519415, 32.175179, 46.822765>,  <31.054932, 31.840225, 47.332561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519415, 32.175179, 46.822765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.577805, 31.800806, 46.694569>,  <31.612839, 31.576181, 46.617649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.577805, 31.800806, 46.694569>,  <31.519415, 32.175179, 46.822765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577805, 31.800806, 46.694569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282223, 0.271104, -0.920246,
		0.948178, 0.224784, -0.224568,
		0.145975, -0.935935, -0.320494,
		31.621597, 31.520025, 46.598419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776802, 32.321106, 46.145893>,  <31.519415, 32.175179, 46.822765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776802, 32.321106, 46.145893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.645220, 31.944416, 46.174015>,  <31.566271, 31.718403, 46.190887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.645220, 31.944416, 46.174015>,  <31.776802, 32.321106, 46.145893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645220, 31.944416, 46.174015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328697, 0.044391, -0.943391,
		0.885295, -0.333441, -0.324145,
		-0.328955, -0.941725, 0.070302,
		31.546534, 31.661898, 46.195107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120567, 31.934916, 45.676216>,  <31.776802, 32.321106, 46.145893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120567, 31.934916, 45.676216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.773336, 31.742599, 45.725670>,  <31.564999, 31.627211, 45.755341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.773336, 31.742599, 45.725670>,  <32.120567, 31.934916, 45.676216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773336, 31.742599, 45.725670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259423, 0.227018, -0.938703,
		0.423251, -0.846939, -0.321797,
		-0.868078, -0.480788, 0.123630,
		31.512913, 31.598364, 45.762760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729404, 32.241161, 45.640675>,  <32.120567, 31.934916, 45.676216>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729404, 32.241161, 45.640675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.737877, 32.636505, 45.580425>,  <32.742962, 32.873711, 45.544273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.737877, 32.636505, 45.580425>,  <32.729404, 32.241161, 45.640675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737877, 32.636505, 45.580425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143415, 0.146099, 0.978819,
		0.989436, -0.042336, -0.138651,
		0.021183, 0.988364, -0.150627,
		32.744232, 32.933014, 45.535236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437336, 32.515388, 45.940865>,  <32.729404, 32.241161, 45.640675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437336, 32.515388, 45.940865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.149204, 32.792801, 45.936188>,  <32.976326, 32.959248, 45.933380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.149204, 32.792801, 45.936188>,  <33.437336, 32.515388, 45.940865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149204, 32.792801, 45.936188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169087, 0.191925, 0.966734,
		0.672705, 0.694391, -0.255517,
		-0.720331, 0.693531, -0.011696,
		32.933105, 33.000862, 45.932678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736771, 33.046711, 46.131500>,  <33.437336, 32.515388, 45.940865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736771, 33.046711, 46.131500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.373043, 33.177593, 46.234314>,  <33.154804, 33.256123, 46.296001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.373043, 33.177593, 46.234314>,  <33.736771, 33.046711, 46.131500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373043, 33.177593, 46.234314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336204, 0.213821, 0.917195,
		0.245152, 0.920443, -0.304441,
		-0.909322, 0.327206, 0.257038,
		33.100246, 33.275757, 46.311424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815151, 33.751068, 46.438740>,  <33.736771, 33.046711, 46.131500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815151, 33.751068, 46.438740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.469597, 33.597176, 46.568783>,  <33.262264, 33.504841, 46.646809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.469597, 33.597176, 46.568783>,  <33.815151, 33.751068, 46.438740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469597, 33.597176, 46.568783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311501, 0.099146, 0.945059,
		-0.395823, 0.917690, 0.034192,
		-0.863882, -0.384727, 0.325105,
		33.210434, 33.481758, 46.666313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604855, 34.213757, 47.006145>,  <33.815151, 33.751068, 46.438740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604855, 34.213757, 47.006145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.397072, 33.875500, 47.055218>,  <33.272404, 33.672546, 47.084663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.397072, 33.875500, 47.055218>,  <33.604855, 34.213757, 47.006145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397072, 33.875500, 47.055218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331321, -0.066984, 0.941137,
		-0.787649, 0.529527, 0.314975,
		-0.519456, -0.845644, 0.122684,
		33.241234, 33.621807, 47.092022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272942, 34.390972, 47.640350>,  <33.604855, 34.213757, 47.006145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272942, 34.390972, 47.640350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.242290, 33.993927, 47.602737>,  <33.223900, 33.755699, 47.580170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.242290, 33.993927, 47.602737>,  <33.272942, 34.390972, 47.640350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242290, 33.993927, 47.602737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134922, -0.103763, 0.985408,
		-0.987889, 0.062825, 0.141877,
		-0.076630, -0.992616, -0.094030,
		33.219303, 33.696144, 47.574528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676876, 34.190506, 48.050827>,  <33.272942, 34.390972, 47.640350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676876, 34.190506, 48.050827> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.939041, 33.892574, 48.000774>,  <33.096340, 33.713814, 47.970741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.939041, 33.892574, 48.000774>,  <32.676876, 34.190506, 48.050827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939041, 33.892574, 48.000774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298625, 0.103384, 0.948755,
		-0.693724, -0.659197, 0.290184,
		0.655417, -0.744830, -0.125132,
		33.135666, 33.669125, 47.963234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623806, 33.953587, 48.593483>,  <32.676876, 34.190506, 48.050827>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623806, 33.953587, 48.593483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.944439, 33.750278, 48.467545>,  <33.136818, 33.628296, 48.391979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.944439, 33.750278, 48.467545>,  <32.623806, 33.953587, 48.593483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944439, 33.750278, 48.467545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374909, 0.017087, 0.926904,
		-0.465734, -0.861031, 0.204251,
		0.801583, -0.508266, -0.314850,
		33.184914, 33.597797, 48.373089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698338, 33.414532, 49.017220>,  <32.623806, 33.953587, 48.593483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698338, 33.414532, 49.017220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.065746, 33.453918, 48.864059>,  <33.286194, 33.477551, 48.772163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.065746, 33.453918, 48.864059>,  <32.698338, 33.414532, 49.017220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065746, 33.453918, 48.864059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386133, -0.015392, 0.922314,
		0.084925, -0.995021, -0.052160,
		0.918525, 0.098468, -0.382904,
		33.341305, 33.483459, 48.749187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.344723, 30.464725, 33.092236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729820, 30.553587, 33.153900>,  <33.960880, 30.606903, 33.190899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729820, 30.553587, 33.153900>,  <33.344723, 30.464725, 33.092236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729820, 30.553587, 33.153900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184235, 0.121598, 0.975331,
		0.197929, -0.967399, 0.157997,
		0.962747, 0.222155, 0.154161,
		34.018646, 30.620234, 33.200150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590950, 30.046038, 33.500923>,  <33.344723, 30.464725, 33.092236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590950, 30.046038, 33.500923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802616, 30.384056, 33.531597>,  <33.929615, 30.586866, 33.549999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802616, 30.384056, 33.531597>,  <33.590950, 30.046038, 33.500923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802616, 30.384056, 33.531597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476263, 0.221006, 0.851076,
		0.702252, -0.486880, 0.519413,
		0.529165, 0.845047, 0.076681,
		33.961365, 30.637569, 33.554600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889107, 30.065266, 34.243019>,  <33.590950, 30.046038, 33.500923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889107, 30.065266, 34.243019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903790, 30.453501, 34.147842>,  <33.912601, 30.686441, 34.090736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903790, 30.453501, 34.147842>,  <33.889107, 30.065266, 34.243019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903790, 30.453501, 34.147842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487441, 0.225246, 0.843602,
		0.872384, 0.085013, 0.481373,
		0.036711, 0.970586, -0.237940,
		33.914803, 30.744677, 34.076462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162762, 30.306072, 34.794029>,  <33.889107, 30.065266, 34.243019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162762, 30.306072, 34.794029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969383, 30.602190, 34.607162>,  <33.853355, 30.779861, 34.495041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969383, 30.602190, 34.607162>,  <34.162762, 30.306072, 34.794029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969383, 30.602190, 34.607162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449237, 0.248227, 0.858236,
		0.751312, 0.624777, 0.212565,
		-0.483442, 0.740296, -0.467169,
		33.824352, 30.824278, 34.467010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240032, 30.904636, 35.283825>,  <34.162762, 30.306072, 34.794029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240032, 30.904636, 35.283825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936260, 30.975105, 35.033310>,  <33.753998, 31.017387, 34.883003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936260, 30.975105, 35.033310>,  <34.240032, 30.904636, 35.283825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936260, 30.975105, 35.033310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537156, 0.373324, 0.756368,
		0.367059, 0.910819, -0.188879,
		-0.759428, 0.176175, -0.626284,
		33.708431, 31.027958, 34.845425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988640, 31.641483, 35.503418>,  <34.240032, 30.904636, 35.283825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988640, 31.641483, 35.503418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709946, 31.465866, 35.276508>,  <33.542728, 31.360497, 35.140362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709946, 31.465866, 35.276508>,  <33.988640, 31.641483, 35.503418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709946, 31.465866, 35.276508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713883, 0.501813, 0.488420,
		0.070229, 0.745268, -0.663056,
		-0.696734, -0.439043, -0.567276,
		33.500927, 31.334152, 35.106327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551781, 32.146366, 35.158688>,  <33.988640, 31.641483, 35.503418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551781, 32.146366, 35.158688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356075, 31.798489, 35.184792>,  <33.238651, 31.589762, 35.200455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356075, 31.798489, 35.184792>,  <33.551781, 32.146366, 35.158688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356075, 31.798489, 35.184792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636445, 0.407197, 0.655078,
		-0.596291, 0.278969, -0.752737,
		-0.489259, -0.869693, 0.065260,
		33.209297, 31.537580, 35.204369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004532, 32.362103, 35.244240>,  <33.551781, 32.146366, 35.158688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004532, 32.362103, 35.244240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926178, 31.980951, 35.336891>,  <32.879166, 31.752260, 35.392483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926178, 31.980951, 35.336891>,  <33.004532, 32.362103, 35.244240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926178, 31.980951, 35.336891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614146, 0.303352, 0.728562,
		-0.764494, 0.000466, -0.644630,
		-0.195889, -0.952878, 0.231625,
		32.867413, 31.695087, 35.406380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275303, 32.295265, 35.318710>,  <33.004532, 32.362103, 35.244240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275303, 32.295265, 35.318710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415138, 31.993473, 35.540897>,  <32.499039, 31.812397, 35.674210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415138, 31.993473, 35.540897>,  <32.275303, 32.295265, 35.318710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415138, 31.993473, 35.540897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614263, 0.263098, 0.743950,
		-0.707441, -0.601276, -0.371477,
		0.349584, -0.754484, 0.555467,
		32.520012, 31.767128, 35.707539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723803, 32.035080, 35.643337>,  <32.275303, 32.295265, 35.318710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723803, 32.035080, 35.643337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018673, 31.908308, 35.882042>,  <32.195595, 31.832245, 36.025265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018673, 31.908308, 35.882042>,  <31.723803, 32.035080, 35.643337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018673, 31.908308, 35.882042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484868, 0.367003, 0.793859,
		-0.470614, -0.874564, 0.116875,
		0.737174, -0.316932, 0.596765,
		32.239826, 31.813229, 36.061073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482813, 31.699236, 36.292313>,  <31.723803, 32.035080, 35.643337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482813, 31.699236, 36.292313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856966, 31.800459, 36.391121>,  <32.081459, 31.861193, 36.450405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856966, 31.800459, 36.391121>,  <31.482813, 31.699236, 36.292313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856966, 31.800459, 36.391121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299629, 0.196122, 0.933680,
		0.187796, -0.947373, 0.259264,
		0.935390, 0.253025, 0.247029,
		32.137581, 31.876377, 36.465225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564693, 31.387039, 36.988087>,  <31.482813, 31.699236, 36.292313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564693, 31.387039, 36.988087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828974, 31.683594, 36.941063>,  <31.987541, 31.861526, 36.912849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828974, 31.683594, 36.941063>,  <31.564693, 31.387039, 36.988087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828974, 31.683594, 36.941063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106255, 0.247400, 0.963070,
		0.743091, -0.623810, 0.242233,
		0.660701, 0.741386, -0.117558,
		32.027184, 31.906010, 36.905796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112234, 30.956110, 37.170227>,  <31.564693, 31.387039, 36.988087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112234, 30.956110, 37.170227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725883, 31.058212, 37.187798>,  <30.494074, 31.119474, 37.198338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725883, 31.058212, 37.187798>,  <31.112234, 30.956110, 37.170227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725883, 31.058212, 37.187798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119024, -0.286814, -0.950563,
		-0.230036, -0.923354, 0.307408,
		-0.965876, 0.255253, 0.043924,
		30.436121, 31.134790, 37.200974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763144, 30.447851, 36.758850>,  <31.112234, 30.956110, 37.170227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763144, 30.447851, 36.758850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496576, 30.745277, 36.780754>,  <30.336636, 30.923733, 36.793896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496576, 30.745277, 36.780754>,  <30.763144, 30.447851, 36.758850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496576, 30.745277, 36.780754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299655, -0.199865, -0.932878,
		-0.682709, -0.638097, 0.356006,
		-0.666420, 0.743563, 0.054759,
		30.296650, 30.968346, 36.797180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180164, 30.189819, 36.625778>,  <30.763144, 30.447851, 36.758850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180164, 30.189819, 36.625778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149227, 30.578724, 36.537479>,  <30.130665, 30.812067, 36.484501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149227, 30.578724, 36.537479>,  <30.180164, 30.189819, 36.625778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149227, 30.578724, 36.537479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206429, -0.232228, -0.950504,
		-0.975400, -0.027946, 0.218663,
		-0.077342, 0.972260, -0.220746,
		30.126024, 30.870401, 36.471256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634663, 30.181761, 36.190449>,  <30.180164, 30.189819, 36.625778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634663, 30.181761, 36.190449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781866, 30.548058, 36.125969>,  <29.870188, 30.767836, 36.087280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781866, 30.548058, 36.125969>,  <29.634663, 30.181761, 36.190449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781866, 30.548058, 36.125969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289181, -0.052047, -0.955859,
		-0.883711, 0.398379, 0.245661,
		0.368008, 0.915743, -0.161198,
		29.892269, 30.822781, 36.077610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095778, 30.536362, 35.812485>,  <29.634663, 30.181761, 36.190449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095778, 30.536362, 35.812485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.437567, 30.734184, 35.748871>,  <29.642641, 30.852877, 35.710701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.437567, 30.734184, 35.748871>,  <29.095778, 30.536362, 35.812485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.437567, 30.734184, 35.748871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199942, 0.030524, -0.979332,
		-0.479479, 0.868610, 0.124964,
		0.854472, 0.494555, -0.159036,
		29.693909, 30.882551, 35.701160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902349, 30.992514, 35.332878>,  <29.095778, 30.536362, 35.812485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902349, 30.992514, 35.332878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301317, 31.012106, 35.311863>,  <29.540697, 31.023861, 35.299255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301317, 31.012106, 35.311863>,  <28.902349, 30.992514, 35.332878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301317, 31.012106, 35.311863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063282, 0.253283, -0.965320,
		-0.033975, 0.966151, 0.255729,
		0.997417, 0.048980, -0.052535,
		29.600542, 31.026800, 35.296101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994173, 31.496836, 34.918652>,  <28.902349, 30.992514, 35.332878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994173, 31.496836, 34.918652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327290, 31.276068, 34.901466>,  <29.527159, 31.143606, 34.891155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327290, 31.276068, 34.901466>,  <28.994173, 31.496836, 34.918652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327290, 31.276068, 34.901466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057371, -0.008855, -0.998314,
		0.550609, 0.833850, -0.039039,
		0.832790, -0.551920, -0.042964,
		29.577126, 31.110493, 34.888577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470798, 31.907177, 34.518543>,  <28.994173, 31.496836, 34.918652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470798, 31.907177, 34.518543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600264, 31.529007, 34.503502>,  <29.677942, 31.302105, 34.494476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600264, 31.529007, 34.503502>,  <29.470798, 31.907177, 34.518543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600264, 31.529007, 34.503502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056917, 0.059120, -0.996627,
		0.944459, 0.320432, 0.072946,
		0.323664, -0.945425, -0.037599,
		29.697363, 31.245380, 34.492222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066933, 31.959152, 34.104923>,  <29.470798, 31.907177, 34.518543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066933, 31.959152, 34.104923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.962999, 31.573315, 34.086845>,  <29.900639, 31.341812, 34.076000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.962999, 31.573315, 34.086845>,  <30.066933, 31.959152, 34.104923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962999, 31.573315, 34.086845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034688, 0.037446, -0.998697,
		0.965030, -0.261064, 0.023730,
		-0.259835, -0.964595, -0.045192,
		29.885048, 31.283936, 34.073288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513752, 31.681864, 33.594948>,  <30.066933, 31.959152, 34.104923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513752, 31.681864, 33.594948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185589, 31.454212, 33.616936>,  <29.988691, 31.317621, 33.630127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185589, 31.454212, 33.616936>,  <30.513752, 31.681864, 33.594948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185589, 31.454212, 33.616936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027200, -0.134877, -0.990489,
		0.571130, -0.811111, 0.126134,
		-0.820409, -0.569129, 0.054970,
		29.939466, 31.283474, 33.633427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602568, 31.454275, 32.954136>,  <30.513752, 31.681864, 33.594948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602568, 31.454275, 32.954136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256651, 31.288134, 33.067005>,  <30.049101, 31.188448, 33.134727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256651, 31.288134, 33.067005>,  <30.602568, 31.454275, 32.954136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256651, 31.288134, 33.067005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217799, -0.196055, -0.956100,
		0.452440, -0.888281, 0.079083,
		-0.864790, -0.415354, 0.282169,
		29.997213, 31.163528, 33.151657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670221, 30.777256, 32.630337>,  <30.602568, 31.454275, 32.954136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670221, 30.777256, 32.630337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296160, 30.883596, 32.723988>,  <30.071724, 30.947401, 32.780178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296160, 30.883596, 32.723988>,  <30.670221, 30.777256, 32.630337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296160, 30.883596, 32.723988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269852, -0.106438, -0.957001,
		-0.229504, -0.958119, 0.171277,
		-0.935151, 0.265855, 0.234122,
		30.015614, 30.963352, 32.794224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222527, 30.274189, 32.786232>,  <30.670221, 30.777256, 32.630337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222527, 30.274189, 32.786232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385735, 29.952438, 32.613491>,  <31.483660, 29.759388, 32.509846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385735, 29.952438, 32.613491>,  <31.222527, 30.274189, 32.786232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385735, 29.952438, 32.613491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189150, -0.537237, 0.821948,
		-0.893165, -0.253683, -0.371350,
		0.408018, -0.804377, -0.431857,
		31.508141, 29.711126, 32.483932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571009, 30.156872, 32.184841>,  <31.222527, 30.274189, 32.786232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571009, 30.156872, 32.184841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706823, 29.801294, 32.307804>,  <31.788313, 29.587948, 32.381580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706823, 29.801294, 32.307804>,  <31.571009, 30.156872, 32.184841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706823, 29.801294, 32.307804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791297, -0.093276, 0.604275,
		-0.508492, -0.448421, -0.735088,
		0.339536, -0.888942, 0.307404,
		31.808683, 29.534613, 32.400024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057665, 29.537806, 32.123371>,  <31.571009, 30.156872, 32.184841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057665, 29.537806, 32.123371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333286, 29.427132, 32.391296>,  <31.498659, 29.360727, 32.552052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333286, 29.427132, 32.391296>,  <31.057665, 29.537806, 32.123371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333286, 29.427132, 32.391296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699314, -0.496385, 0.514355,
		0.190170, -0.822828, -0.535527,
		0.689054, -0.276686, 0.669813,
		31.540003, 29.344126, 32.592239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056957, 28.753336, 32.318077>,  <31.057665, 29.537806, 32.123371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056957, 28.753336, 32.318077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184935, 28.988884, 32.614960>,  <31.261721, 29.130213, 32.793091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184935, 28.988884, 32.614960>,  <31.056957, 28.753336, 32.318077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184935, 28.988884, 32.614960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687063, -0.395199, 0.609723,
		0.652367, -0.705018, 0.278150,
		0.319941, 0.588869, 0.742207,
		31.280916, 29.165545, 32.837624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192352, 28.328320, 32.968761>,  <31.056957, 28.753336, 32.318077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192352, 28.328320, 32.968761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089642, 28.710491, 33.027027>,  <31.028015, 28.939795, 33.061989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089642, 28.710491, 33.027027>,  <31.192352, 28.328320, 32.968761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089642, 28.710491, 33.027027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858892, -0.294698, 0.418877,
		0.443136, -0.017555, 0.896282,
		-0.256779, 0.955429, 0.145669,
		31.012608, 28.997120, 33.070728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774878, 28.096731, 33.411030>,  <31.192352, 28.328320, 32.968761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774878, 28.096731, 33.411030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166317, 28.014830, 33.402790>,  <32.401180, 27.965689, 33.397846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166317, 28.014830, 33.402790>,  <31.774878, 28.096731, 33.411030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166317, 28.014830, 33.402790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007497, -0.135500, 0.990749,
		-0.205649, -0.969390, -0.134135,
		0.978597, -0.204752, -0.020597,
		32.459896, 27.953403, 33.396610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878866, 27.510435, 33.798668>,  <31.774878, 28.096731, 33.411030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878866, 27.510435, 33.798668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245838, 27.669086, 33.811359>,  <32.466022, 27.764277, 33.818974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245838, 27.669086, 33.811359>,  <31.878866, 27.510435, 33.798668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245838, 27.669086, 33.811359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017196, -0.040136, 0.999046,
		0.397522, -0.917102, -0.030002,
		0.917431, 0.396627, 0.031725,
		32.521069, 27.788074, 33.820877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180901, 26.980103, 34.223392>,  <31.878866, 27.510435, 33.798668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180901, 26.980103, 34.223392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436672, 27.287622, 34.219810>,  <32.590134, 27.472134, 34.217663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436672, 27.287622, 34.219810>,  <32.180901, 26.980103, 34.223392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436672, 27.287622, 34.219810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211108, -0.164364, 0.963544,
		0.739300, -0.618008, -0.267399,
		0.639429, 0.768798, -0.008952,
		32.628502, 27.518261, 34.217125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777542, 26.766518, 34.717491>,  <32.180901, 26.980103, 34.223392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777542, 26.766518, 34.717491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731365, 27.163261, 34.696014>,  <32.703659, 27.401308, 34.683128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731365, 27.163261, 34.696014>,  <32.777542, 26.766518, 34.717491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731365, 27.163261, 34.696014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300400, 0.086387, 0.949893,
		0.946801, 0.093531, -0.307928,
		-0.115445, 0.991862, -0.053695,
		32.696732, 27.460819, 34.679905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245789, 26.989763, 35.136086>,  <32.777542, 26.766518, 34.717491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245789, 26.989763, 35.136086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012100, 27.313869, 35.117519>,  <32.871887, 27.508333, 35.106380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012100, 27.313869, 35.117519>,  <33.245789, 26.989763, 35.136086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012100, 27.313869, 35.117519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090257, 0.121697, 0.988455,
		0.806561, 0.573286, -0.144230,
		-0.584220, 0.810267, -0.046413,
		32.836834, 27.556950, 35.103596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610828, 27.529734, 35.553276>,  <33.245789, 26.989763, 35.136086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610828, 27.529734, 35.553276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228901, 27.646818, 35.532711>,  <32.999744, 27.717070, 35.520374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228901, 27.646818, 35.532711>,  <33.610828, 27.529734, 35.553276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228901, 27.646818, 35.532711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058970, 0.356151, 0.932566,
		0.291282, 0.887399, -0.357321,
		-0.954818, 0.292711, -0.051410,
		32.942455, 27.734632, 35.517288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494343, 28.303106, 35.877819>,  <33.610828, 27.529734, 35.553276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494343, 28.303106, 35.877819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146717, 28.105490, 35.888000>,  <32.938141, 27.986919, 35.894108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146717, 28.105490, 35.888000>,  <33.494343, 28.303106, 35.877819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146717, 28.105490, 35.888000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112949, 0.248250, 0.962089,
		-0.481631, 0.833243, -0.271547,
		-0.869065, -0.494043, 0.025451,
		32.885998, 27.957277, 35.895638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052830, 28.705151, 36.282166>,  <33.494343, 28.303106, 35.877819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052830, 28.705151, 36.282166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895126, 28.337574, 36.286308>,  <32.800507, 28.117027, 36.288795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895126, 28.337574, 36.286308>,  <33.052830, 28.705151, 36.282166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895126, 28.337574, 36.286308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090010, 0.049827, 0.994694,
		-0.914582, 0.391231, -0.102358,
		-0.394255, -0.918943, 0.010356,
		32.776848, 28.061892, 36.289413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457874, 28.808537, 36.615578>,  <33.052830, 28.705151, 36.282166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457874, 28.808537, 36.615578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517059, 28.413136, 36.628044>,  <32.552570, 28.175896, 36.635525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517059, 28.413136, 36.628044>,  <32.457874, 28.808537, 36.615578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517059, 28.413136, 36.628044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248994, -0.006739, 0.968481,
		-0.957136, -0.151059, -0.247128,
		0.147964, -0.988502, 0.031163,
		32.561447, 28.116585, 36.637394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759405, 28.451492, 36.762077>,  <32.457874, 28.808537, 36.615578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759405, 28.451492, 36.762077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038067, 28.188992, 36.878010>,  <32.205265, 28.031490, 36.947571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038067, 28.188992, 36.878010>,  <31.759405, 28.451492, 36.762077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038067, 28.188992, 36.878010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482105, -0.129079, 0.866552,
		-0.531267, -0.743418, -0.406307,
		0.696656, -0.656254, 0.289830,
		32.247063, 27.992115, 36.964958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434683, 27.934704, 37.211067>,  <31.759405, 28.451492, 36.762077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434683, 27.934704, 37.211067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822521, 27.888721, 37.297482>,  <32.055225, 27.861132, 37.349331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822521, 27.888721, 37.297482>,  <31.434683, 27.934704, 37.211067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822521, 27.888721, 37.297482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213173, 0.036796, 0.976321,
		-0.120183, -0.992689, 0.011171,
		0.969594, -0.114956, 0.216037,
		32.113400, 27.854235, 37.362293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534813, 27.407343, 37.797398>,  <31.434683, 27.934704, 37.211067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534813, 27.407343, 37.797398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871101, 27.622747, 37.820011>,  <32.072876, 27.751989, 37.833580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871101, 27.622747, 37.820011>,  <31.534813, 27.407343, 37.797398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871101, 27.622747, 37.820011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006315, -0.094655, 0.995490,
		0.541433, -0.837285, -0.076178,
		0.840720, 0.538510, 0.056537,
		32.123318, 27.784300, 37.836971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905926, 27.041376, 38.366287>,  <31.534813, 27.407343, 37.797398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905926, 27.041376, 38.366287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089130, 27.391567, 38.304626>,  <32.199055, 27.601683, 38.267632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089130, 27.391567, 38.304626>,  <31.905926, 27.041376, 38.366287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089130, 27.391567, 38.304626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212003, 0.060830, 0.975374,
		0.863297, -0.479411, -0.157744,
		0.458010, 0.875480, -0.154151,
		32.226532, 27.654211, 38.258381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543209, 26.993624, 38.761940>,  <31.905926, 27.041376, 38.366287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543209, 26.993624, 38.761940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460110, 27.380394, 38.702755>,  <32.410252, 27.612457, 38.667244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460110, 27.380394, 38.702755>,  <32.543209, 26.993624, 38.761940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460110, 27.380394, 38.702755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109556, 0.173314, 0.978754,
		0.972028, 0.187121, -0.141938,
		-0.207745, 0.966927, -0.147966,
		32.397785, 27.670471, 38.658363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049423, 27.369476, 39.137085>,  <32.543209, 26.993624, 38.761940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049423, 27.369476, 39.137085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729492, 27.603518, 39.083534>,  <32.537533, 27.743942, 39.051403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729492, 27.603518, 39.083534>,  <33.049423, 27.369476, 39.137085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729492, 27.603518, 39.083534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058060, 0.297420, 0.952980,
		0.597409, 0.754451, -0.271857,
		-0.799832, 0.585103, -0.133878,
		32.489544, 27.779049, 39.043369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227757, 27.930958, 39.531967>,  <33.049423, 27.369476, 39.137085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227757, 27.930958, 39.531967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831299, 27.958683, 39.486664>,  <32.593426, 27.975319, 39.459480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831299, 27.958683, 39.486664>,  <33.227757, 27.930958, 39.531967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831299, 27.958683, 39.486664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094003, 0.236191, 0.967149,
		0.093787, 0.969232, -0.227584,
		-0.991145, 0.069312, -0.113262,
		32.533955, 27.979477, 39.452686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071934, 28.560179, 39.781464>,  <33.227757, 27.930958, 39.531967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071934, 28.560179, 39.781464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723804, 28.363594, 39.794117>,  <32.514927, 28.245644, 39.801708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723804, 28.363594, 39.794117>,  <33.071934, 28.560179, 39.781464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723804, 28.363594, 39.794117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140422, 0.309209, 0.940570,
		-0.472037, 0.814158, -0.338125,
		-0.870323, -0.491464, 0.031632,
		32.462708, 28.216154, 39.803608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520271, 29.048645, 40.137051>,  <33.071934, 28.560179, 39.781464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520271, 29.048645, 40.137051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379642, 28.674849, 40.159420>,  <32.295265, 28.450571, 40.172844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379642, 28.674849, 40.159420>,  <32.520271, 29.048645, 40.137051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379642, 28.674849, 40.159420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059561, 0.081946, 0.994856,
		-0.934264, 0.346432, -0.084469,
		-0.351572, -0.934489, 0.055926,
		32.274170, 28.394503, 40.176197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036808, 29.095625, 40.735264>,  <32.520271, 29.048645, 40.137051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036808, 29.095625, 40.735264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120678, 28.705185, 40.712399>,  <32.170998, 28.470921, 40.698681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120678, 28.705185, 40.712399>,  <32.036808, 29.095625, 40.735264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120678, 28.705185, 40.712399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075801, -0.074511, 0.994335,
		-0.974830, -0.204149, -0.089612,
		0.209670, -0.976100, -0.057161,
		32.183578, 28.412355, 40.695251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666351, 28.852295, 41.262085>,  <32.036808, 29.095625, 40.735264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666351, 28.852295, 41.262085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914339, 28.547918, 41.185555>,  <32.063133, 28.365292, 41.139637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914339, 28.547918, 41.185555>,  <31.666351, 28.852295, 41.262085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914339, 28.547918, 41.185555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044255, -0.209541, 0.976798,
		-0.783377, -0.614052, -0.096234,
		0.619969, -0.760942, -0.191324,
		32.100330, 28.319635, 41.128159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375395, 28.276718, 41.526833>,  <31.666351, 28.852295, 41.262085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375395, 28.276718, 41.526833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771441, 28.220671, 41.524300>,  <32.009068, 28.187042, 41.522778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771441, 28.220671, 41.524300>,  <31.375395, 28.276718, 41.526833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771441, 28.220671, 41.524300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012256, -0.131418, 0.991251,
		-0.139754, -0.981371, -0.131836,
		0.990110, -0.140147, -0.006339,
		32.068474, 28.178637, 41.522400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483702, 27.678600, 41.860302>,  <31.375395, 28.276718, 41.526833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483702, 27.678600, 41.860302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850019, 27.838997, 41.869465>,  <32.069809, 27.935234, 41.874962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850019, 27.838997, 41.869465>,  <31.483702, 27.678600, 41.860302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850019, 27.838997, 41.869465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071024, -0.217819, 0.973402,
		0.395316, -0.889809, -0.227957,
		0.915795, 0.400992, 0.022910,
		32.124760, 27.959293, 41.876339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956984, 27.212669, 42.158772>,  <31.483702, 27.678600, 41.860302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956984, 27.212669, 42.158772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129791, 27.569687, 42.210499>,  <32.233475, 27.783897, 42.241535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129791, 27.569687, 42.210499>,  <31.956984, 27.212669, 42.158772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129791, 27.569687, 42.210499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034337, -0.159567, 0.986590,
		0.901210, -0.421787, -0.099584,
		0.432021, 0.892544, 0.129320,
		32.259399, 27.837450, 42.249294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412193, 27.116266, 42.725533>,  <31.956984, 27.212669, 42.158772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412193, 27.116266, 42.725533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413807, 27.515909, 42.708714>,  <32.414776, 27.755695, 42.698624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413807, 27.515909, 42.708714>,  <32.412193, 27.116266, 42.725533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413807, 27.515909, 42.708714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176595, 0.040672, 0.983443,
		0.984275, -0.011389, -0.176274,
		0.004031, 0.999108, -0.042044,
		32.415016, 27.815641, 42.696102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046623, 27.467665, 43.113594>,  <32.412193, 27.116266, 42.725533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046623, 27.467665, 43.113594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759853, 27.745539, 43.090137>,  <32.587791, 27.912262, 43.076061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759853, 27.745539, 43.090137>,  <33.046623, 27.467665, 43.113594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759853, 27.745539, 43.090137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057170, 0.142418, 0.988154,
		0.694807, 0.705075, -0.141818,
		-0.716920, 0.694684, -0.058644,
		32.544777, 27.953943, 43.072544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882008, 27.651424, 43.218716>,  <33.046623, 27.467665, 43.113594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882008, 27.651424, 43.218716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189384, 27.403301, 43.281601>,  <34.373810, 27.254427, 43.319332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189384, 27.403301, 43.281601>,  <33.882008, 27.651424, 43.218716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189384, 27.403301, 43.281601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156111, -0.056532, -0.986120,
		0.620584, 0.782320, 0.053395,
		0.768443, -0.620306, 0.157212,
		34.419918, 27.217209, 43.328766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336597, 27.752995, 42.819496>,  <33.882008, 27.651424, 43.218716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336597, 27.752995, 42.819496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491779, 27.396536, 42.913601>,  <34.584888, 27.182661, 42.970062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491779, 27.396536, 42.913601>,  <34.336597, 27.752995, 42.819496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491779, 27.396536, 42.913601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167211, -0.182967, -0.968795,
		0.906383, 0.415190, 0.078026,
		0.387958, -0.891146, 0.235262,
		34.608166, 27.129192, 42.984180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055740, 27.735544, 42.637234>,  <34.336597, 27.752995, 42.819496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055740, 27.735544, 42.637234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927231, 27.358242, 42.670822>,  <34.850124, 27.131861, 42.690975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927231, 27.358242, 42.670822>,  <35.055740, 27.735544, 42.637234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927231, 27.358242, 42.670822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048028, -0.104790, -0.993334,
		0.945768, -0.315097, 0.078969,
		-0.321272, -0.943256, 0.083974,
		34.830849, 27.075266, 42.696014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548500, 27.433191, 42.282078>,  <35.055740, 27.735544, 42.637234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548500, 27.433191, 42.282078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252930, 27.163677, 42.282509>,  <35.075588, 27.001968, 42.282768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252930, 27.163677, 42.282509>,  <35.548500, 27.433191, 42.282078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252930, 27.163677, 42.282509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164073, -0.181483, -0.969610,
		0.653504, -0.716294, 0.244652,
		-0.738926, -0.673785, 0.001076,
		35.031250, 26.961542, 42.282833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923092, 26.721819, 42.172321>,  <35.548500, 27.433191, 42.282078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923092, 26.721819, 42.172321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536339, 26.724234, 42.070263>,  <35.304287, 26.725683, 42.009026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536339, 26.724234, 42.070263>,  <35.923092, 26.721819, 42.172321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536339, 26.724234, 42.070263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236016, -0.359310, -0.902880,
		-0.097127, -0.933199, 0.345987,
		-0.966883, 0.006036, -0.255148,
		35.246273, 26.726044, 41.993717>
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
