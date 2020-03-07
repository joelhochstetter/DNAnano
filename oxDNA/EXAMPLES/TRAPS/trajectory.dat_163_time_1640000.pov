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
	<36.739296, 53.698334, 49.857037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978367, 53.392673, 49.759995>,  <37.121811, 53.209278, 49.701771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978367, 53.392673, 49.759995>,  <36.739296, 53.698334, 49.857037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978367, 53.392673, 49.759995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256984, 0.469228, -0.844858,
		0.759431, 0.442611, 0.476822,
		0.597682, -0.764147, -0.242602,
		37.157673, 53.163429, 49.687214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448280, 53.830711, 49.996391>,  <36.739296, 53.698334, 49.857037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448280, 53.830711, 49.996391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361279, 53.597130, 49.683548>,  <37.309078, 53.456982, 49.495842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361279, 53.597130, 49.683548>,  <37.448280, 53.830711, 49.996391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361279, 53.597130, 49.683548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125564, 0.777892, -0.615726,
		0.967949, -0.232127, -0.095871,
		-0.217504, -0.583953, -0.782106,
		37.296028, 53.421944, 49.448917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022907, 53.945095, 49.500538>,  <37.448280, 53.830711, 49.996391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022907, 53.945095, 49.500538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683041, 53.832199, 49.322365>,  <37.479122, 53.764462, 49.215462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683041, 53.832199, 49.322365>,  <38.022907, 53.945095, 49.500538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683041, 53.832199, 49.322365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063670, 0.783609, -0.617983,
		0.523463, -0.553439, -0.647836,
		-0.849666, -0.282244, -0.445428,
		37.428143, 53.747524, 49.188736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663685, 53.536194, 49.583813>,  <38.022907, 53.945095, 49.500538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663685, 53.536194, 49.583813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988617, 53.386570, 49.404839>,  <39.183575, 53.296795, 49.297455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988617, 53.386570, 49.404839>,  <38.663685, 53.536194, 49.583813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988617, 53.386570, 49.404839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305183, 0.926428, -0.220441,
		0.496971, 0.042523, 0.866724,
		0.812332, -0.374063, -0.447431,
		39.232315, 53.274353, 49.270611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280830, 53.742943, 49.823448>,  <38.663685, 53.536194, 49.583813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280830, 53.742943, 49.823448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320175, 53.646370, 49.437279>,  <39.343781, 53.588425, 49.205578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320175, 53.646370, 49.437279>,  <39.280830, 53.742943, 49.823448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320175, 53.646370, 49.437279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281115, 0.937353, -0.205777,
		0.954620, -0.251153, 0.160069,
		0.098360, -0.241437, -0.965419,
		39.349682, 53.573940, 49.147652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413906, 54.439640, 49.969856>,  <39.280830, 53.742943, 49.823448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413906, 54.439640, 49.969856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544121, 54.168686, 50.233727>,  <39.622250, 54.006115, 50.392048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544121, 54.168686, 50.233727>,  <39.413906, 54.439640, 49.969856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544121, 54.168686, 50.233727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528268, -0.448335, -0.721061,
		0.784192, 0.583219, 0.211892,
		0.325538, -0.677386, 0.659677,
		39.641781, 53.965469, 50.431629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154362, 54.274330, 49.872154>,  <39.413906, 54.439640, 49.969856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154362, 54.274330, 49.872154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010284, 53.971138, 50.089676>,  <39.923836, 53.789223, 50.220188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010284, 53.971138, 50.089676>,  <40.154362, 54.274330, 49.872154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010284, 53.971138, 50.089676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436725, -0.652118, -0.619689,
		0.824336, 0.014281, 0.565921,
		-0.360197, -0.757983, 0.543801,
		39.902225, 53.743744, 50.252815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675522, 53.933594, 50.470863>,  <40.154362, 54.274330, 49.872154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675522, 53.933594, 50.470863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398186, 53.707844, 50.291637>,  <40.231785, 53.572395, 50.184101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398186, 53.707844, 50.291637>,  <40.675522, 53.933594, 50.470863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398186, 53.707844, 50.291637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720596, -0.539086, -0.436036,
		0.004540, -0.625196, 0.780454,
		-0.693341, -0.564371, -0.448067,
		40.190182, 53.538532, 50.157219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838196, 53.296902, 50.652084>,  <40.675522, 53.933594, 50.470863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838196, 53.296902, 50.652084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666401, 53.278198, 50.291340>,  <40.563324, 53.266975, 50.074894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666401, 53.278198, 50.291340>,  <40.838196, 53.296902, 50.652084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666401, 53.278198, 50.291340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825318, -0.425718, -0.370964,
		-0.366592, -0.903647, 0.221435,
		-0.429489, -0.046762, -0.901861,
		40.537556, 53.264168, 50.020782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953529, 52.598831, 50.514812>,  <40.838196, 53.296902, 50.652084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953529, 52.598831, 50.514812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941109, 52.881474, 50.232040>,  <40.933655, 53.051060, 50.062378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941109, 52.881474, 50.232040>,  <40.953529, 52.598831, 50.514812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941109, 52.881474, 50.232040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828178, -0.377793, -0.413997,
		-0.559604, -0.598317, -0.573463,
		-0.031051, 0.706604, -0.706927,
		40.931793, 53.093456, 50.019962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182621, 52.377132, 49.766838>,  <40.953529, 52.598831, 50.514812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182621, 52.377132, 49.766838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253525, 52.770100, 49.743408>,  <41.296066, 53.005878, 49.729351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253525, 52.770100, 49.743408>,  <41.182621, 52.377132, 49.766838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253525, 52.770100, 49.743408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877524, -0.184722, -0.442527,
		-0.445567, 0.027040, -0.894840,
		0.177263, 0.982419, -0.058578,
		41.306702, 53.064827, 49.725834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242798, 52.605389, 49.045586>,  <41.182621, 52.377132, 49.766838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242798, 52.605389, 49.045586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461185, 52.839668, 49.285210>,  <41.592216, 52.980236, 49.428986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461185, 52.839668, 49.285210>,  <41.242798, 52.605389, 49.045586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461185, 52.839668, 49.285210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808144, -0.179585, -0.560938,
		-0.220957, 0.790385, -0.571375,
		0.545968, 0.585697, 0.599065,
		41.624977, 53.015377, 49.464928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517532, 53.063587, 48.680248>,  <41.242798, 52.605389, 49.045586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517532, 53.063587, 48.680248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744045, 52.990276, 49.001678>,  <41.879951, 52.946289, 49.194538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744045, 52.990276, 49.001678>,  <41.517532, 53.063587, 48.680248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744045, 52.990276, 49.001678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715992, -0.373553, -0.589757,
		0.408269, 0.909322, -0.080309,
		0.566279, -0.183279, 0.803577,
		41.913929, 52.935291, 49.242752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166668, 53.463528, 48.690495>,  <41.517532, 53.063587, 48.680248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166668, 53.463528, 48.690495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183449, 53.088619, 48.828926>,  <42.193516, 52.863674, 48.911983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183449, 53.088619, 48.828926>,  <42.166668, 53.463528, 48.690495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183449, 53.088619, 48.828926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732111, -0.206873, -0.649012,
		0.679892, 0.280592, 0.677506,
		0.041950, -0.937268, 0.346076,
		42.196033, 52.807438, 48.932751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674000, 53.835564, 48.294285>,  <42.166668, 53.463528, 48.690495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674000, 53.835564, 48.294285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933891, 54.092869, 48.132263>,  <43.089825, 54.247250, 48.035049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933891, 54.092869, 48.132263>,  <42.674000, 53.835564, 48.294285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933891, 54.092869, 48.132263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094411, 0.460440, 0.882656,
		0.754281, -0.611728, 0.238430,
		0.649728, 0.643260, -0.405055,
		43.128811, 54.285847, 48.010746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258251, 53.877033, 48.671360>,  <42.674000, 53.835564, 48.294285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258251, 53.877033, 48.671360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275208, 54.229118, 48.482285>,  <43.285381, 54.440369, 48.368839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275208, 54.229118, 48.482285>,  <43.258251, 53.877033, 48.671360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.275208, 54.229118, 48.482285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008859, 0.472764, 0.881145,
		0.999062, -0.041538, 0.012242,
		0.042388, 0.880210, -0.472688,
		43.287926, 54.493183, 48.340477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.709423, 54.206371, 49.092113>,  <43.258251, 53.877033, 48.671360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.709423, 54.206371, 49.092113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.483208, 54.461571, 48.883068>,  <43.347477, 54.614689, 48.757641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.483208, 54.461571, 48.883068>,  <43.709423, 54.206371, 49.092113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483208, 54.461571, 48.883068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067598, 0.595690, 0.800365,
		0.821944, 0.487968, -0.293761,
		-0.565543, 0.637997, -0.522610,
		43.313545, 54.652969, 48.726284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.121082, 53.727257, 49.543659>,  <43.709423, 54.206371, 49.092113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.121082, 53.727257, 49.543659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.304943, 54.081974, 49.562935>,  <44.415260, 54.294804, 49.574501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.304943, 54.081974, 49.562935>,  <44.121082, 53.727257, 49.543659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.304943, 54.081974, 49.562935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650203, 0.299067, 0.698424,
		0.604941, -0.352369, 0.714060,
		0.459655, 0.886789, 0.048193,
		44.442841, 54.348011, 49.577393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.564381, 53.929676, 50.186279>,  <44.121082, 53.727257, 49.543659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.564381, 53.929676, 50.186279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.353180, 54.223701, 50.016151>,  <44.226460, 54.400116, 49.914074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.353180, 54.223701, 50.016151>,  <44.564381, 53.929676, 50.186279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.353180, 54.223701, 50.016151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416174, 0.212601, 0.884082,
		0.740282, 0.643799, 0.193662,
		-0.527998, 0.735067, -0.425317,
		44.194782, 54.444221, 49.888557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.125610, 53.349178, 50.422207>,  <44.564381, 53.929676, 50.186279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.125610, 53.349178, 50.422207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239922, 53.730797, 50.458256>,  <45.308510, 53.959770, 50.479885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239922, 53.730797, 50.458256>,  <45.125610, 53.349178, 50.422207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.239922, 53.730797, 50.458256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568323, -0.244452, 0.785654,
		0.771583, -0.173302, -0.612066,
		0.285776, 0.954049, 0.090124,
		45.325653, 54.017010, 50.485294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.805458, 53.389225, 50.461124>,  <45.125610, 53.349178, 50.422207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.805458, 53.389225, 50.461124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.654186, 53.701836, 50.659592>,  <45.563423, 53.889404, 50.778671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.654186, 53.701836, 50.659592>,  <45.805458, 53.389225, 50.461124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.654186, 53.701836, 50.659592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529665, -0.256904, 0.808366,
		0.759232, 0.568515, -0.316793,
		-0.378183, 0.781531, 0.496173,
		45.540730, 53.936295, 50.808445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.303211, 53.903305, 50.598221>,  <45.805458, 53.389225, 50.461124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.303211, 53.903305, 50.598221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.007004, 53.872238, 50.865234>,  <45.829281, 53.853600, 51.025444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.007004, 53.872238, 50.865234>,  <46.303211, 53.903305, 50.598221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.007004, 53.872238, 50.865234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606555, -0.504918, 0.614124,
		0.289352, 0.859666, 0.421011,
		-0.740518, -0.077669, 0.667534,
		45.784847, 53.848938, 51.065495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.379128, 54.324856, 51.265404>,  <46.303211, 53.903305, 50.598221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.379128, 54.324856, 51.265404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.196503, 53.972820, 51.317543>,  <46.086929, 53.761597, 51.348827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.196503, 53.972820, 51.317543>,  <46.379128, 54.324856, 51.265404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.196503, 53.972820, 51.317543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770604, -0.317956, 0.552335,
		-0.444661, 0.352621, 0.823368,
		-0.456560, -0.880092, 0.130348,
		46.059536, 53.708794, 51.356647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.498337, 54.141666, 51.939320>,  <46.379128, 54.324856, 51.265404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.498337, 54.141666, 51.939320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.429886, 53.812218, 51.723038>,  <46.388813, 53.614548, 51.593269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.429886, 53.812218, 51.723038>,  <46.498337, 54.141666, 51.939320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.429886, 53.812218, 51.723038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809846, -0.430144, 0.398906,
		-0.561128, -0.369619, 0.740619,
		-0.171129, -0.823625, -0.540700,
		46.378548, 53.565132, 51.560829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.709145, 53.426956, 52.388721>,  <46.498337, 54.141666, 51.939320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.709145, 53.426956, 52.388721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.810795, 53.442390, 52.002159>,  <46.871784, 53.451649, 51.770222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.810795, 53.442390, 52.002159>,  <46.709145, 53.426956, 52.388721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.810795, 53.442390, 52.002159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903112, -0.367063, 0.222829,
		-0.346133, -0.929395, -0.128124,
		0.254126, 0.038582, -0.966401,
		46.887032, 53.453964, 51.712238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.031773, 52.785706, 52.313610>,  <46.709145, 53.426956, 52.388721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.031773, 52.785706, 52.313610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.169498, 53.045555, 52.042480>,  <47.252132, 53.201466, 51.879803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.169498, 53.045555, 52.042480>,  <47.031773, 52.785706, 52.313610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.169498, 53.045555, 52.042480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929984, -0.335003, 0.151337,
		-0.128760, -0.682469, -0.719484,
		0.344312, 0.649622, -0.677820,
		47.272793, 53.240440, 51.839134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.601391, 52.460266, 51.894543>,  <47.031773, 52.785706, 52.313610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.601391, 52.460266, 51.894543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.648628, 52.857338, 51.904610>,  <47.676971, 53.095581, 51.910648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.648628, 52.857338, 51.904610>,  <47.601391, 52.460266, 51.894543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.648628, 52.857338, 51.904610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992997, -0.117966, -0.006412,
		-0.003397, 0.025747, -0.999663,
		0.118091, 0.992684, 0.025165,
		47.684055, 53.155144, 51.912159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.912636, 52.762291, 51.267845>,  <47.601391, 52.460266, 51.894543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.912636, 52.762291, 51.267845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.000286, 52.983147, 51.589622>,  <48.052876, 53.115662, 51.782688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.000286, 52.983147, 51.589622>,  <47.912636, 52.762291, 51.267845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.000286, 52.983147, 51.589622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975101, -0.152716, -0.160795,
		0.034069, 0.819644, -0.571860,
		0.219127, 0.552143, 0.804439,
		48.066025, 53.148788, 51.830956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.654755, 52.923470, 51.168995>,  <47.912636, 52.762291, 51.267845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.654755, 52.923470, 51.168995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.585739, 52.959122, 51.561378>,  <48.544331, 52.980511, 51.796810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.585739, 52.959122, 51.561378>,  <48.654755, 52.923470, 51.168995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.585739, 52.959122, 51.561378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976229, 0.148098, 0.158250,
		-0.131175, 0.984948, -0.112560,
		-0.172538, 0.089126, 0.980962,
		48.533978, 52.985859, 51.855667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.001873, 53.604130, 51.456642>,  <48.654755, 52.923470, 51.168995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.001873, 53.604130, 51.456642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.954647, 53.314648, 51.728615>,  <48.926311, 53.140957, 51.891800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.954647, 53.314648, 51.728615>,  <49.001873, 53.604130, 51.456642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.954647, 53.314648, 51.728615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988393, -0.019728, 0.150630,
		-0.095599, 0.689823, 0.717638,
		-0.118066, -0.723709, 0.679931,
		48.919228, 53.097534, 51.932594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.287357, 53.761875, 52.183788>,  <49.001873, 53.604130, 51.456642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.287357, 53.761875, 52.183788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.314236, 53.375290, 52.084641>,  <49.330364, 53.143341, 52.025150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.314236, 53.375290, 52.084641>,  <49.287357, 53.761875, 52.183788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.314236, 53.375290, 52.084641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997733, 0.064224, 0.020080,
		-0.003488, -0.248659, 0.968585,
		0.067199, -0.966460, -0.247871,
		49.334396, 53.085354, 52.010281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.873436, 53.444454, 52.629902>,  <49.287357, 53.761875, 52.183788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.873436, 53.444454, 52.629902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.830971, 53.234585, 52.292038>,  <49.805492, 53.108665, 52.089321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.830971, 53.234585, 52.292038>,  <49.873436, 53.444454, 52.629902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.830971, 53.234585, 52.292038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994316, -0.049093, -0.094474,
		0.008101, -0.849888, 0.526901,
		-0.106160, -0.524672, -0.844660,
		49.799122, 53.077183, 52.038639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.503971, 53.502968, 52.270458>,  <49.873436, 53.444454, 52.629902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.503971, 53.502968, 52.270458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.704536, 53.498333, 51.924408>,  <50.824875, 53.495552, 51.716778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.704536, 53.498333, 51.924408>,  <50.503971, 53.502968, 52.270458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.704536, 53.498333, 51.924408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793938, -0.391245, 0.465391,
		-0.343868, -0.920214, -0.186981,
		0.501415, -0.011582, -0.865130,
		50.854961, 53.494858, 51.664867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.930603, 52.926548, 52.268959>,  <50.503971, 53.502968, 52.270458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.930603, 52.926548, 52.268959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.110638, 53.123608, 51.971043>,  <51.218658, 53.241844, 51.792294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.110638, 53.123608, 51.971043>,  <50.930603, 52.926548, 52.268959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.110638, 53.123608, 51.971043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886570, -0.346305, 0.306702,
		-0.106826, -0.798352, -0.592640,
		0.450090, 0.492653, -0.744790,
		51.245667, 53.271404, 51.747604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.200806, 52.465996, 51.668659>,  <50.930603, 52.926548, 52.268959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.200806, 52.465996, 51.668659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.382977, 52.798275, 51.796738>,  <51.492279, 52.997643, 51.873585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.382977, 52.798275, 51.796738>,  <51.200806, 52.465996, 51.668659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.382977, 52.798275, 51.796738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792817, -0.542051, 0.278606,
		0.404999, 0.126970, -0.905458,
		0.455430, 0.830698, 0.320194,
		51.519604, 53.047485, 51.892796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.892662, 52.522411, 51.362095>,  <51.200806, 52.465996, 51.668659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.892662, 52.522411, 51.362095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.858944, 52.692577, 51.722519>,  <51.838715, 52.794678, 51.938774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.858944, 52.692577, 51.722519>,  <51.892662, 52.522411, 51.362095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.858944, 52.692577, 51.722519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832192, -0.467298, 0.298478,
		0.548042, 0.775018, -0.314638,
		-0.084297, 0.425418, 0.901063,
		51.833656, 52.820202, 51.992836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.537563, 52.798805, 51.554497>,  <51.892662, 52.522411, 51.362095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.537563, 52.798805, 51.554497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.361839, 52.713512, 51.903561>,  <52.256405, 52.662334, 52.112999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.361839, 52.713512, 51.903561>,  <52.537563, 52.798805, 51.554497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.361839, 52.713512, 51.903561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812576, -0.508536, 0.284802,
		0.383049, 0.834219, 0.396676,
		-0.439311, -0.213236, 0.872660,
		52.230045, 52.649540, 52.165359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.993324, 52.951748, 52.011181>,  <52.537563, 52.798805, 51.554497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.993324, 52.951748, 52.011181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.750061, 52.693573, 52.196030>,  <52.604103, 52.538670, 52.306938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.750061, 52.693573, 52.196030>,  <52.993324, 52.951748, 52.011181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.750061, 52.693573, 52.196030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790149, -0.548095, 0.274330,
		0.076228, 0.531984, 0.843316,
		-0.608157, -0.645434, 0.462127,
		52.567616, 52.499943, 52.334667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.333313, 52.773651, 52.554195>,  <52.993324, 52.951748, 52.011181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.333313, 52.773651, 52.554195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.071030, 52.475746, 52.504597>,  <52.913662, 52.297001, 52.474838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.071030, 52.475746, 52.504597>,  <53.333313, 52.773651, 52.554195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.071030, 52.475746, 52.504597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732031, -0.667326, 0.137137,
		-0.184882, -0.000849, 0.982760,
		-0.655705, -0.744765, -0.123998,
		52.874317, 52.252316, 52.467396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.129021, 52.893318, 52.631550>,  <53.333313, 52.773651, 52.554195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.129021, 52.893318, 52.631550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.860100, 53.039928, 52.888817>,  <53.698746, 53.127895, 53.043179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.860100, 53.039928, 52.888817>,  <54.129021, 52.893318, 52.631550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.860100, 53.039928, 52.888817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170326, 0.768924, -0.616235,
		-0.720413, -0.523846, -0.454522,
		-0.672305, 0.366526, 0.643168,
		53.658409, 53.149887, 53.081768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.471237, 53.187057, 52.061241>,  <54.129021, 52.893318, 52.631550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.471237, 53.187057, 52.061241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.198441, 53.478519, 52.086388>,  <54.034763, 53.653397, 52.101475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.198441, 53.478519, 52.086388>,  <54.471237, 53.187057, 52.061241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.198441, 53.478519, 52.086388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038889, 0.049708, -0.998006,
		-0.730328, -0.683074, -0.005564,
		-0.681989, 0.728655, 0.062867,
		53.993843, 53.697117, 52.105247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.025711, 52.807995, 51.682640>,  <54.471237, 53.187057, 52.061241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.025711, 52.807995, 51.682640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.247810, 53.007439, 51.948898>,  <55.381073, 53.127106, 52.108654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.247810, 53.007439, 51.948898>,  <55.025711, 52.807995, 51.682640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.247810, 53.007439, 51.948898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768652, -0.002021, -0.639664,
		-0.317598, 0.866823, -0.384380,
		0.555253, 0.498611, 0.665643,
		55.414387, 53.157021, 52.148590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.284451, 53.388119, 51.370911>,  <55.025711, 52.807995, 51.682640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.284451, 53.388119, 51.370911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.535118, 53.253780, 51.652191>,  <55.685520, 53.173176, 51.820957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.535118, 53.253780, 51.652191>,  <55.284451, 53.388119, 51.370911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.535118, 53.253780, 51.652191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691731, -0.175822, -0.700425,
		0.358874, 0.925361, 0.122135,
		0.626672, -0.335849, 0.703198,
		55.723118, 53.153027, 51.863152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.948753, 53.841423, 51.450935>,  <55.284451, 53.388119, 51.370911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.948753, 53.841423, 51.450935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.017654, 53.454525, 51.525513>,  <56.058994, 53.222385, 51.570259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.017654, 53.454525, 51.525513>,  <55.948753, 53.841423, 51.450935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.017654, 53.454525, 51.525513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555219, -0.061009, -0.829464,
		0.813672, 0.246392, 0.526526,
		0.172251, -0.967248, 0.186443,
		56.069328, 53.164352, 51.581444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.632565, 53.758007, 51.332607>,  <55.948753, 53.841423, 51.450935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.632565, 53.758007, 51.332607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.466576, 53.404251, 51.247131>,  <56.366982, 53.191998, 51.195847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.466576, 53.404251, 51.247131>,  <56.632565, 53.758007, 51.332607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.466576, 53.404251, 51.247131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457876, -0.000037, -0.889016,
		0.786225, -0.466757, 0.404954,
		-0.414970, -0.884385, -0.213688,
		56.342083, 53.138935, 51.183025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.196392, 53.223419, 51.022015>,  <56.632565, 53.758007, 51.332607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.196392, 53.223419, 51.022015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.811264, 53.208359, 50.915009>,  <56.580189, 53.199322, 50.850807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.811264, 53.208359, 50.915009>,  <57.196392, 53.223419, 51.022015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.811264, 53.208359, 50.915009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264061, 0.077840, -0.961360,
		0.057007, -0.996255, -0.065007,
		-0.962820, -0.037639, -0.267510,
		56.522419, 53.197063, 50.834755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.312847, 53.409027, 50.340538>,  <57.196392, 53.223419, 51.022015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.312847, 53.409027, 50.340538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.447357, 53.744755, 50.511398>,  <57.528061, 53.946194, 50.613914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.447357, 53.744755, 50.511398>,  <57.312847, 53.409027, 50.340538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.447357, 53.744755, 50.511398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621868, -0.538514, 0.568580,
		0.707249, 0.074434, -0.703036,
		0.336273, 0.839323, 0.427151,
		57.548241, 53.996552, 50.639545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.953831, 53.240864, 50.771301>,  <57.312847, 53.409027, 50.340538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.953831, 53.240864, 50.771301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.855873, 53.597157, 50.924469>,  <57.797100, 53.810932, 51.016369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.855873, 53.597157, 50.924469>,  <57.953831, 53.240864, 50.771301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.855873, 53.597157, 50.924469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416474, -0.260006, 0.871175,
		0.875543, 0.372820, -0.307293,
		-0.244893, 0.890731, 0.382917,
		57.782406, 53.864376, 51.039345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.436951, 53.547241, 51.122021>,  <57.953831, 53.240864, 50.771301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.436951, 53.547241, 51.122021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.134300, 53.741745, 51.296867>,  <57.952709, 53.858448, 51.401775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.134300, 53.741745, 51.296867>,  <58.436951, 53.547241, 51.122021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.134300, 53.741745, 51.296867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402067, -0.181182, 0.897505,
		0.515619, 0.854824, -0.058423,
		-0.756624, 0.486260, 0.437117,
		57.907314, 53.887623, 51.428001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.719460, 53.894875, 51.713535>,  <58.436951, 53.547241, 51.122021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.719460, 53.894875, 51.713535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.324402, 53.847290, 51.754333>,  <58.087368, 53.818741, 51.778812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.324402, 53.847290, 51.754333>,  <58.719460, 53.894875, 51.713535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.324402, 53.847290, 51.754333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136827, -0.337441, 0.931350,
		-0.076374, 0.933800, 0.349549,
		-0.987646, -0.118959, 0.101997,
		58.028107, 53.811604, 51.784931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.392887, 54.077873, 52.326744>,  <58.719460, 53.894875, 51.713535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.392887, 54.077873, 52.326744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.169434, 53.764938, 52.216560>,  <58.035362, 53.577179, 52.150452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.169434, 53.764938, 52.216560>,  <58.392887, 54.077873, 52.326744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.169434, 53.764938, 52.216560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105233, -0.396284, 0.912077,
		-0.822710, 0.480532, 0.303706,
		-0.558637, -0.782335, -0.275459,
		58.001842, 53.530239, 52.133923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.155987, 54.244804, 52.922764>,  <58.392887, 54.077873, 52.326744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.155987, 54.244804, 52.922764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.184822, 53.860058, 53.028305>,  <58.202122, 53.629211, 53.091629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.184822, 53.860058, 53.028305>,  <58.155987, 54.244804, 52.922764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.184822, 53.860058, 53.028305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993464, 0.045769, -0.104568,
		0.088504, 0.269670, 0.958877,
		0.072085, -0.961865, 0.263857,
		58.206448, 53.571499, 53.107464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.588085, 54.119831, 53.559757>,  <58.155987, 54.244804, 52.922764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.588085, 54.119831, 53.559757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.641930, 53.828072, 53.291470>,  <58.674236, 53.653015, 53.130497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.641930, 53.828072, 53.291470>,  <58.588085, 54.119831, 53.559757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.641930, 53.828072, 53.291470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988845, 0.142438, 0.043556,
		0.063765, -0.669097, 0.740435,
		0.134609, -0.729398, -0.670716,
		58.682312, 53.609253, 53.090256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.061741, 53.473652, 53.801495>,  <58.588085, 54.119831, 53.559757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.061741, 53.473652, 53.801495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.087059, 53.573795, 53.415062>,  <59.102249, 53.633881, 53.183201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.087059, 53.573795, 53.415062>,  <59.061741, 53.473652, 53.801495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.087059, 53.573795, 53.415062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995582, 0.051434, 0.078553,
		0.069356, -0.966786, -0.245996,
		0.063292, 0.250357, -0.966082,
		59.106045, 53.648903, 53.125237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.559261, 53.010063, 53.503567>,  <59.061741, 53.473652, 53.801495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.559261, 53.010063, 53.503567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.539558, 53.359428, 53.309776>,  <59.527737, 53.569050, 53.193501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.539558, 53.359428, 53.309776>,  <59.559261, 53.010063, 53.503567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.539558, 53.359428, 53.309776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954087, 0.184635, 0.235857,
		0.295453, -0.450614, -0.842410,
		-0.049258, 0.873417, -0.484475,
		59.524780, 53.621452, 53.164433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.217354, 53.069923, 53.177818>,  <59.559261, 53.010063, 53.503567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.217354, 53.069923, 53.177818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.077385, 53.432873, 53.270966>,  <59.993404, 53.650642, 53.326855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.077385, 53.432873, 53.270966>,  <60.217354, 53.069923, 53.177818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.077385, 53.432873, 53.270966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800796, 0.160754, 0.576961,
		0.486083, 0.388374, -0.782872,
		-0.349926, 0.907372, 0.232869,
		59.972408, 53.705086, 53.340828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.776184, 53.501976, 53.056671>,  <60.217354, 53.069923, 53.177818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.776184, 53.501976, 53.056671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.530548, 53.670273, 53.323765>,  <60.383167, 53.771252, 53.484020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.530548, 53.670273, 53.323765>,  <60.776184, 53.501976, 53.056671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.530548, 53.670273, 53.323765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781570, 0.206545, 0.588633,
		0.109742, 0.883357, -0.455673,
		-0.614089, 0.420738, 0.667738,
		60.346321, 53.796494, 53.524086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.906658, 54.214092, 53.138046>,  <60.776184, 53.501976, 53.056671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.906658, 54.214092, 53.138046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.774605, 54.038883, 53.472507>,  <60.695374, 53.933758, 53.673183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.774605, 54.038883, 53.472507>,  <60.906658, 54.214092, 53.138046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.774605, 54.038883, 53.472507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854686, 0.237275, 0.461749,
		-0.400656, 0.867083, 0.296043,
		-0.330131, -0.438026, 0.836150,
		60.675564, 53.907475, 53.723351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.637089, 54.151604, 53.224228>,  <60.906658, 54.214092, 53.138046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.637089, 54.151604, 53.224228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.395233, 53.869480, 53.372253>,  <61.250118, 53.700207, 53.461067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.395233, 53.869480, 53.372253>,  <61.637089, 54.151604, 53.224228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.395233, 53.869480, 53.372253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538438, 0.704318, 0.462624,
		-0.586934, 0.080467, -0.805626,
		-0.604643, -0.705309, 0.370062,
		61.213840, 53.657887, 53.483273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.080360, 54.462322, 52.759487>,  <61.637089, 54.151604, 53.224228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.080360, 54.462322, 52.759487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.358559, 54.276062, 52.978374>,  <62.525478, 54.164307, 53.109707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.358559, 54.276062, 52.978374>,  <62.080360, 54.462322, 52.759487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.358559, 54.276062, 52.978374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629050, 0.762651, -0.150529,
		-0.347241, 0.448919, 0.823344,
		0.695500, -0.465655, 0.547216,
		62.567207, 54.136364, 53.142540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.251465, 54.930771, 53.226337>,  <62.080360, 54.462322, 52.759487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.251465, 54.930771, 53.226337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.558197, 54.679375, 53.174225>,  <62.742237, 54.528538, 53.142960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.558197, 54.679375, 53.174225>,  <62.251465, 54.930771, 53.226337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.558197, 54.679375, 53.174225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638276, 0.768074, 0.051630,
		0.067615, -0.122745, 0.990132,
		0.766832, -0.628487, -0.130278,
		62.788246, 54.490829, 53.135143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.786087, 55.232441, 53.625187>,  <62.251465, 54.930771, 53.226337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.786087, 55.232441, 53.625187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.966980, 54.984444, 53.368721>,  <63.075516, 54.835648, 53.214840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.966980, 54.984444, 53.368721>,  <62.786087, 55.232441, 53.625187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.966980, 54.984444, 53.368721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765110, 0.639114, -0.078352,
		0.458357, -0.455131, 0.763391,
		0.452233, -0.619991, -0.641167,
		63.102650, 54.798447, 53.176373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.581013, 55.166630, 53.809967>,  <62.786087, 55.232441, 53.625187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.581013, 55.166630, 53.809967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.473083, 55.092831, 53.431938>,  <63.408325, 55.048550, 53.205120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.473083, 55.092831, 53.431938>,  <63.581013, 55.166630, 53.809967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.473083, 55.092831, 53.431938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760700, 0.560901, -0.326687,
		0.590365, -0.807062, -0.010992,
		-0.269822, -0.184503, -0.945068,
		63.392136, 55.037479, 53.148418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.859001, 54.451614, 53.951591>,  <63.581013, 55.166630, 53.809967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.859001, 54.451614, 53.951591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.980659, 54.139999, 54.170898>,  <64.053658, 53.953030, 54.302483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.980659, 54.139999, 54.170898>,  <63.859001, 54.451614, 53.951591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.980659, 54.139999, 54.170898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803892, -0.518691, -0.291063,
		0.511128, -0.352218, -0.784022,
		0.304147, -0.779039, 0.548263,
		64.071907, 53.906288, 54.335377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.271042, 54.114273, 53.515656>,  <63.859001, 54.451614, 53.951591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.271042, 54.114273, 53.515656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.597412, 54.306370, 53.644424>,  <64.793236, 54.421627, 53.721687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.597412, 54.306370, 53.644424>,  <64.271042, 54.114273, 53.515656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.597412, 54.306370, 53.644424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101895, -0.667542, 0.737567,
		0.569109, -0.568996, -0.593598,
		0.815924, 0.480241, 0.321927,
		64.842186, 54.450443, 53.741001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.898781, 53.638138, 53.554264>,  <64.271042, 54.114273, 53.515656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.898781, 53.638138, 53.554264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.972153, 53.916557, 53.831932>,  <65.016174, 54.083607, 53.998531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.972153, 53.916557, 53.831932>,  <64.898781, 53.638138, 53.554264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.972153, 53.916557, 53.831932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337200, -0.707861, 0.620668,
		0.923389, 0.120221, -0.364554,
		0.183437, 0.696046, 0.694170,
		65.027184, 54.125370, 54.040184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.993393, 53.411118, 54.308743>,  <64.898781, 53.638138, 53.554264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.993393, 53.411118, 54.308743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.216087, 53.519711, 53.994717>,  <65.349709, 53.584866, 53.806301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.216087, 53.519711, 53.994717>,  <64.993393, 53.411118, 54.308743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.216087, 53.519711, 53.994717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409361, -0.732693, -0.543676,
		-0.722813, 0.624065, -0.296788,
		0.556744, 0.271483, -0.785069,
		65.383110, 53.601154, 53.759197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.816948, 53.683510, 54.261845>,  <64.993393, 53.411118, 54.308743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.816948, 53.683510, 54.261845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.195465, 53.666939, 54.390110>,  <66.422577, 53.656998, 54.467068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.195465, 53.666939, 54.390110>,  <65.816948, 53.683510, 54.261845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.195465, 53.666939, 54.390110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323270, 0.103029, -0.940681,
		0.005934, 0.993815, 0.110888,
		0.946288, -0.041429, 0.320659,
		66.479355, 53.654510, 54.486309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.283134, 54.234455, 54.062687>,  <65.816948, 53.683510, 54.261845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.283134, 54.234455, 54.062687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.527687, 53.921017, 54.106819>,  <66.674423, 53.732952, 54.133297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.527687, 53.921017, 54.106819>,  <66.283134, 54.234455, 54.062687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.527687, 53.921017, 54.106819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259587, 0.066897, -0.963400,
		0.747540, 0.617653, 0.244313,
		0.611391, -0.783600, 0.110327,
		66.711105, 53.685936, 54.139915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.094513, 54.298176, 53.848217>,  <66.283134, 54.234455, 54.062687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.094513, 54.298176, 53.848217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.953842, 53.927071, 53.798286>,  <66.869438, 53.704407, 53.768330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.953842, 53.927071, 53.798286>,  <67.094513, 54.298176, 53.848217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.953842, 53.927071, 53.798286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278097, 0.023784, -0.960258,
		0.893862, -0.372409, 0.249644,
		-0.351671, -0.927764, -0.124826,
		66.848343, 53.648743, 53.760838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.422287, 54.731201, 54.339725>,  <67.094513, 54.298176, 53.848217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.422287, 54.731201, 54.339725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.389076, 55.056847, 54.109829>,  <67.369148, 55.252235, 53.971889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.389076, 55.056847, 54.109829>,  <67.422287, 54.731201, 54.339725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.389076, 55.056847, 54.109829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620095, 0.409279, 0.669307,
		0.780122, 0.411959, 0.470851,
		-0.083017, 0.814113, -0.574742,
		67.364174, 55.301079, 53.937405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.945045, 55.215076, 54.791695>,  <67.422287, 54.731201, 54.339725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.945045, 55.215076, 54.791695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.189590, 55.513832, 54.896301>,  <68.336319, 55.693085, 54.959064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.189590, 55.513832, 54.896301>,  <67.945045, 55.215076, 54.791695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.189590, 55.513832, 54.896301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309907, -0.078111, 0.947553,
		0.728147, -0.660342, 0.183713,
		0.611359, 0.746892, 0.261520,
		68.373001, 55.737900, 54.974758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.322891, 54.962841, 55.423679>,  <67.945045, 55.215076, 54.791695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.322891, 54.962841, 55.423679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.300026, 55.362110, 55.415932>,  <68.286308, 55.601673, 55.411282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.300026, 55.362110, 55.415932>,  <68.322891, 54.962841, 55.423679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.300026, 55.362110, 55.415932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273512, 0.003005, 0.961864,
		0.960169, 0.060280, 0.272841,
		-0.057161, 0.998177, -0.019373,
		68.282875, 55.661564, 55.410118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.704849, 55.316212, 56.057556>,  <68.322891, 54.962841, 55.423679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.704849, 55.316212, 56.057556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.366028, 55.455284, 55.896744>,  <68.162735, 55.538727, 55.800259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.366028, 55.455284, 55.896744>,  <68.704849, 55.316212, 56.057556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.366028, 55.455284, 55.896744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368141, 0.161801, 0.915583,
		0.383380, 0.923547, -0.009057,
		-0.847049, 0.347682, -0.402026,
		68.111916, 55.559589, 55.776134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.607758, 56.162491, 56.071827>,  <68.704849, 55.316212, 56.057556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.607758, 56.162491, 56.071827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.288902, 55.921543, 56.088486>,  <68.097588, 55.776974, 56.098480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.288902, 55.921543, 56.088486>,  <68.607758, 56.162491, 56.071827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.288902, 55.921543, 56.088486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111995, 0.215279, 0.970109,
		-0.593327, 0.768641, -0.239068,
		-0.797132, -0.602367, 0.041647,
		68.049759, 55.740833, 56.100979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.103920, 56.563545, 56.477188>,  <68.607758, 56.162491, 56.071827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.103920, 56.563545, 56.477188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.027870, 56.171040, 56.489655>,  <67.982239, 55.935535, 56.497135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.027870, 56.171040, 56.489655>,  <68.103920, 56.563545, 56.477188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.027870, 56.171040, 56.489655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163410, 0.062937, 0.984549,
		-0.968063, 0.182101, -0.172315,
		-0.190132, -0.981264, 0.031170,
		67.970833, 55.876659, 56.499004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.450226, 56.285294, 56.930454>,  <68.103920, 56.563545, 56.477188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.450226, 56.285294, 56.930454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.703979, 55.976273, 56.919785>,  <67.856232, 55.790859, 56.913383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.703979, 55.976273, 56.919785>,  <67.450226, 56.285294, 56.930454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.703979, 55.976273, 56.919785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069081, -0.091025, 0.993450,
		-0.769924, -0.628387, -0.111114,
		0.634385, -0.772557, -0.026672,
		67.894295, 55.744507, 56.911781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.155678, 55.570221, 57.237347>,  <67.450226, 56.285294, 56.930454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.155678, 55.570221, 57.237347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.541397, 55.669621, 57.273933>,  <67.772827, 55.729259, 57.295887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.541397, 55.669621, 57.273933>,  <67.155678, 55.570221, 57.237347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.541397, 55.669621, 57.273933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071586, -0.087920, 0.993552,
		0.254935, -0.964635, -0.066993,
		0.964305, 0.248495, 0.091468,
		67.830688, 55.744167, 57.301373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.435127, 55.101536, 57.645111>,  <67.155678, 55.570221, 57.237347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.435127, 55.101536, 57.645111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.653061, 55.436237, 57.667000>,  <67.783821, 55.637058, 57.680134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.653061, 55.436237, 57.667000>,  <67.435127, 55.101536, 57.645111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.653061, 55.436237, 57.667000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108331, 0.005528, 0.994099,
		0.831511, -0.547556, 0.093658,
		0.544842, 0.836751, 0.054720,
		67.816513, 55.687263, 57.683414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.108376, 55.100368, 58.028973>,  <67.435127, 55.101536, 57.645111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.108376, 55.100368, 58.028973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.851974, 55.406776, 58.009689>,  <67.698135, 55.590622, 57.998119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.851974, 55.406776, 58.009689>,  <68.108376, 55.100368, 58.028973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.851974, 55.406776, 58.009689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136900, -0.052311, 0.989203,
		0.755225, 0.640688, 0.138400,
		-0.641010, 0.766017, -0.048204,
		67.659668, 55.636581, 57.995228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.283440, 55.759567, 58.344791>,  <68.108376, 55.100368, 58.028973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.283440, 55.759567, 58.344791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.890656, 55.684540, 58.354279>,  <67.654984, 55.639523, 58.359970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.890656, 55.684540, 58.354279>,  <68.283440, 55.759567, 58.344791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.890656, 55.684540, 58.354279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043576, 0.346628, 0.936990,
		-0.183975, 0.919057, -0.348550,
		-0.981965, -0.187571, 0.023722,
		67.596069, 55.628269, 58.361397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.811401, 56.380867, 58.469677>,  <68.283440, 55.759567, 58.344791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.811401, 56.380867, 58.469677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.603928, 56.080894, 58.633904>,  <67.479446, 55.900909, 58.732441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.603928, 56.080894, 58.633904>,  <67.811401, 56.380867, 58.469677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.603928, 56.080894, 58.633904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204147, 0.357688, 0.911254,
		-0.830234, 0.556471, -0.032431,
		-0.518686, -0.749933, 0.410566,
		67.448318, 55.855915, 58.757072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.671280, 56.589046, 59.105328>,  <67.811401, 56.380867, 58.469677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.671280, 56.589046, 59.105328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.657944, 56.189445, 59.117226>,  <67.649940, 55.949684, 59.124363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.657944, 56.189445, 59.117226>,  <67.671280, 56.589046, 59.105328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.657944, 56.189445, 59.117226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140457, 0.024782, 0.989777,
		-0.989525, 0.037185, 0.139490,
		-0.033348, -0.999001, 0.029746,
		67.647942, 55.889744, 59.126148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.485413, 56.481178, 59.730473>,  <67.671280, 56.589046, 59.105328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.485413, 56.481178, 59.730473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.610977, 56.116039, 59.626038>,  <67.686317, 55.896957, 59.563377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.610977, 56.116039, 59.626038>,  <67.485413, 56.481178, 59.730473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.610977, 56.116039, 59.626038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116163, -0.235994, 0.964786,
		-0.942319, -0.333187, 0.031957,
		0.313913, -0.912849, -0.261085,
		67.705154, 55.842186, 59.547710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.603401, 56.299904, 60.591618>,  <67.485413, 56.481178, 59.730473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.603401, 56.299904, 60.591618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.436104, 56.053989, 60.324150>,  <67.335724, 55.906441, 60.163670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.436104, 56.053989, 60.324150>,  <67.603401, 56.299904, 60.591618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.436104, 56.053989, 60.324150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900575, -0.376698, -0.216943,
		-0.118513, -0.692919, 0.711208,
		-0.418234, -0.614786, -0.668669,
		67.310631, 55.869553, 60.123550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.911545, 55.629055, 60.765953>,  <67.603401, 56.299904, 60.591618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.911545, 55.629055, 60.765953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.781006, 55.608353, 60.388420>,  <67.702682, 55.595932, 60.161900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.781006, 55.608353, 60.388420>,  <67.911545, 55.629055, 60.765953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.781006, 55.608353, 60.388420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848284, -0.456557, -0.268271,
		-0.417028, -0.888188, 0.192901,
		-0.326345, -0.051758, -0.943833,
		67.683105, 55.592827, 60.105270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.952744, 54.836807, 60.522404>,  <67.911545, 55.629055, 60.765953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.952744, 54.836807, 60.522404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.999374, 55.102196, 60.226776>,  <68.027351, 55.261429, 60.049400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.999374, 55.102196, 60.226776>,  <67.952744, 54.836807, 60.522404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.999374, 55.102196, 60.226776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733062, -0.559546, -0.386688,
		-0.670098, -0.496706, -0.551590,
		0.116569, 0.663469, -0.739067,
		68.034348, 55.301235, 60.005054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.951088, 54.456993, 59.923042>,  <67.952744, 54.836807, 60.522404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.951088, 54.456993, 59.923042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.133110, 54.800705, 59.829613>,  <68.242325, 55.006931, 59.773556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.133110, 54.800705, 59.829613>,  <67.951088, 54.456993, 59.923042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.133110, 54.800705, 59.829613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677364, -0.504306, -0.535587,
		-0.578015, 0.085506, -0.811534,
		0.455057, 0.859281, -0.233577,
		68.269630, 55.058491, 59.759541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.942482, 54.632107, 59.175789>,  <67.951088, 54.456993, 59.923042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.942482, 54.632107, 59.175789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.266563, 54.772827, 59.363327>,  <68.461014, 54.857258, 59.475849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.266563, 54.772827, 59.363327>,  <67.942482, 54.632107, 59.175789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.266563, 54.772827, 59.363327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574134, -0.637442, -0.513846,
		0.118090, 0.685497, -0.718435,
		0.810201, 0.351798, 0.468843,
		68.509621, 54.878368, 59.503979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.434021, 54.914349, 58.637093>,  <67.942482, 54.632107, 59.175789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.434021, 54.914349, 58.637093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.608131, 54.770878, 58.967400>,  <68.712593, 54.684795, 59.165585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.608131, 54.770878, 58.967400>,  <68.434021, 54.914349, 58.637093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.608131, 54.770878, 58.967400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752683, -0.358274, -0.552365,
		0.493972, 0.861969, 0.114025,
		0.435269, -0.358677, 0.825767,
		68.738708, 54.663273, 59.215130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.053085, 55.288021, 58.740219>,  <68.434021, 54.914349, 58.637093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.053085, 55.288021, 58.740219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.083496, 54.919796, 58.893471>,  <69.101738, 54.698860, 58.985424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.083496, 54.919796, 58.893471>,  <69.053085, 55.288021, 58.740219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.083496, 54.919796, 58.893471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822661, -0.159214, -0.545783,
		0.563426, 0.356679, 0.745205,
		0.076022, -0.920560, 0.383132,
		69.106300, 54.643627, 59.008411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.034927, 56.043911, 59.024906>,  <69.053085, 55.288021, 58.740219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.034927, 56.043911, 59.024906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.966309, 56.364044, 59.254700>,  <68.925140, 56.556126, 59.392578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.966309, 56.364044, 59.254700>,  <69.034927, 56.043911, 59.024906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.966309, 56.364044, 59.254700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893790, -0.118846, 0.432452,
		0.414383, 0.587654, -0.694946,
		-0.171541, 0.800337, 0.574487,
		68.914848, 56.604145, 59.427044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.700676, 56.286667, 59.021061>,  <69.034927, 56.043911, 59.024906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.700676, 56.286667, 59.021061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.473083, 56.386936, 59.334343>,  <69.336525, 56.447098, 59.522312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.473083, 56.386936, 59.334343>,  <69.700676, 56.286667, 59.021061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.473083, 56.386936, 59.334343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721258, -0.305371, 0.621719,
		0.395018, 0.918647, -0.007048,
		-0.568988, 0.250673, 0.783209,
		69.302383, 56.462139, 59.569305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.040520, 56.717392, 59.510128>,  <69.700676, 56.286667, 59.021061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.040520, 56.717392, 59.510128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.763489, 56.514626, 59.715408>,  <69.597267, 56.392967, 59.838577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.763489, 56.514626, 59.715408>,  <70.040520, 56.717392, 59.510128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.763489, 56.514626, 59.715408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693799, -0.273387, 0.666259,
		-0.197432, 0.817496, 0.541037,
		-0.692577, -0.506912, 0.513203,
		69.555717, 56.362553, 59.869370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.087936, 56.790066, 60.260136>,  <70.040520, 56.717392, 59.510128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.087936, 56.790066, 60.260136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.888641, 56.446289, 60.214325>,  <69.769066, 56.240025, 60.186840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.888641, 56.446289, 60.214325>,  <70.087936, 56.790066, 60.260136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.888641, 56.446289, 60.214325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649819, -0.457594, 0.606913,
		-0.574010, 0.227972, 0.786474,
		-0.498245, -0.859440, -0.114523,
		69.739166, 56.188457, 60.179970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.293518, 57.435112, 60.593403>,  <70.087936, 56.790066, 60.260136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.293518, 57.435112, 60.593403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.602409, 57.553200, 60.818443>,  <70.787743, 57.624054, 60.953468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.602409, 57.553200, 60.818443>,  <70.293518, 57.435112, 60.593403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.602409, 57.553200, 60.818443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511456, -0.814193, -0.274777,
		0.376944, 0.499933, -0.779731,
		0.772222, 0.295222, 0.562599,
		70.834076, 57.641766, 60.987225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.923340, 57.708878, 60.176517>,  <70.293518, 57.435112, 60.593403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.923340, 57.708878, 60.176517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.053146, 57.557686, 60.523346>,  <71.131035, 57.466972, 60.731445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.053146, 57.557686, 60.523346>,  <70.923340, 57.708878, 60.176517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.053146, 57.557686, 60.523346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540541, -0.678146, -0.497929,
		0.776209, 0.630279, -0.015762,
		0.324523, -0.377977, 0.867075,
		71.150505, 57.444294, 60.783470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.691170, 57.761398, 60.301826>,  <70.923340, 57.708878, 60.176517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.691170, 57.761398, 60.301826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.494255, 57.444901, 60.446922>,  <71.376106, 57.255001, 60.533981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.494255, 57.444901, 60.446922>,  <71.691170, 57.761398, 60.301826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.494255, 57.444901, 60.446922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463102, -0.590954, -0.660538,
		0.737009, -0.157192, 0.657349,
		-0.492294, -0.791242, 0.362742,
		71.346565, 57.207527, 60.555744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.131226, 57.302036, 60.367020>,  <71.691170, 57.761398, 60.301826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.131226, 57.302036, 60.367020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.327843, 57.193924, 60.035881>,  <72.445816, 57.129055, 59.837200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.327843, 57.193924, 60.035881>,  <72.131226, 57.302036, 60.367020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.327843, 57.193924, 60.035881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339429, 0.934899, -0.103695,
		0.801977, -0.230023, 0.551291,
		0.491549, -0.270285, -0.827844,
		72.475304, 57.112839, 59.787529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.662376, 57.567074, 60.522430>,  <72.131226, 57.302036, 60.367020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.662376, 57.567074, 60.522430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.652252, 57.516869, 60.125725>,  <72.646179, 57.486744, 59.887699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.652252, 57.516869, 60.125725>,  <72.662376, 57.567074, 60.522430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.652252, 57.516869, 60.125725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421695, 0.898159, -0.124432,
		0.906384, -0.421375, 0.030187,
		-0.025320, -0.125513, -0.991769,
		72.644653, 57.479214, 59.828194>
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
