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
	<35.881752, 53.118252, 49.663254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189011, 53.048912, 49.909798>,  <36.373367, 53.007309, 50.057724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189011, 53.048912, 49.909798>,  <35.881752, 53.118252, 49.663254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189011, 53.048912, 49.909798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481496, -0.478127, -0.734544,
		0.422028, 0.861014, -0.283808,
		0.768149, -0.173346, 0.616359,
		36.419456, 52.996910, 50.094704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518623, 53.420547, 49.437950>,  <35.881752, 53.118252, 49.663254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518623, 53.420547, 49.437950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562969, 53.079445, 49.642113>,  <36.589577, 52.874783, 49.764610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562969, 53.079445, 49.642113>,  <36.518623, 53.420547, 49.437950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562969, 53.079445, 49.642113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648977, -0.326836, -0.687028,
		0.752687, 0.407409, 0.517185,
		0.110866, -0.852758, 0.510404,
		36.596230, 52.823616, 49.795235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269524, 53.114670, 49.551792>,  <36.518623, 53.420547, 49.437950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269524, 53.114670, 49.551792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015125, 52.806602, 49.571159>,  <36.862484, 52.621761, 49.582779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015125, 52.806602, 49.571159>,  <37.269524, 53.114670, 49.551792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015125, 52.806602, 49.571159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606786, -0.537872, -0.585239,
		0.476777, -0.342830, 0.809414,
		-0.635998, -0.770170, 0.048421,
		36.824326, 52.575550, 49.585686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565971, 52.650475, 49.067196>,  <37.269524, 53.114670, 49.551792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565971, 52.650475, 49.067196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252079, 52.451496, 49.215111>,  <37.063744, 52.332108, 49.303860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252079, 52.451496, 49.215111>,  <37.565971, 52.650475, 49.067196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252079, 52.451496, 49.215111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225467, -0.784806, -0.577273,
		0.577370, -0.369632, 0.728022,
		-0.784735, -0.497445, 0.369784,
		37.016659, 52.302261, 49.326046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984108, 52.046974, 49.205666>,  <37.565971, 52.650475, 49.067196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984108, 52.046974, 49.205666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962997, 51.729385, 48.963402>,  <37.950333, 51.538830, 48.818043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962997, 51.729385, 48.963402>,  <37.984108, 52.046974, 49.205666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962997, 51.729385, 48.963402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997089, 0.075315, -0.011847,
		0.055021, 0.603268, -0.795638,
		-0.052776, -0.793974, -0.605656,
		37.947163, 51.491192, 48.781704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614029, 52.051903, 49.551510>,  <37.984108, 52.046974, 49.205666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614029, 52.051903, 49.551510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490265, 52.423752, 49.471436>,  <38.416008, 52.646862, 49.423393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490265, 52.423752, 49.471436>,  <38.614029, 52.051903, 49.551510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490265, 52.423752, 49.471436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556383, 0.347692, 0.754684,
		0.771172, 0.122126, -0.624803,
		-0.309406, 0.929621, -0.200181,
		38.397442, 52.702637, 49.411381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099678, 52.606838, 49.725876>,  <38.614029, 52.051903, 49.551510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099678, 52.606838, 49.725876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754673, 52.808609, 49.741951>,  <38.547668, 52.929672, 49.751595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754673, 52.808609, 49.741951>,  <39.099678, 52.606838, 49.725876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754673, 52.808609, 49.741951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389406, 0.610923, 0.689301,
		0.323154, 0.610183, -0.723359,
		-0.862516, 0.504431, 0.040187,
		38.495918, 52.959938, 49.754005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289295, 53.280426, 49.632133>,  <39.099678, 52.606838, 49.725876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289295, 53.280426, 49.632133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969185, 53.184204, 49.851837>,  <38.777119, 53.126472, 49.983662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969185, 53.184204, 49.851837>,  <39.289295, 53.280426, 49.632133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969185, 53.184204, 49.851837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429879, 0.408441, 0.805220,
		-0.418041, 0.880516, -0.223457,
		-0.800278, -0.240556, 0.549261,
		38.729103, 53.112038, 50.016617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943008, 53.857861, 50.092587>,  <39.289295, 53.280426, 49.632133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943008, 53.857861, 50.092587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870220, 53.509514, 50.275223>,  <38.826546, 53.300507, 50.384804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870220, 53.509514, 50.275223>,  <38.943008, 53.857861, 50.092587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870220, 53.509514, 50.275223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467249, 0.331985, 0.819429,
		-0.865196, 0.362455, 0.346501,
		-0.181973, -0.870869, 0.456588,
		38.815628, 53.248253, 50.412201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735573, 54.020718, 50.769730>,  <38.943008, 53.857861, 50.092587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735573, 54.020718, 50.769730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886780, 53.651691, 50.738800>,  <38.977505, 53.430275, 50.720242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886780, 53.651691, 50.738800>,  <38.735573, 54.020718, 50.769730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886780, 53.651691, 50.738800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712804, 0.236732, 0.660204,
		-0.590776, -0.304681, 0.747096,
		0.378013, -0.922566, -0.077322,
		39.000183, 53.374920, 50.715603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678123, 53.691868, 51.449524>,  <38.735573, 54.020718, 50.769730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678123, 53.691868, 51.449524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975491, 53.528355, 51.237778>,  <39.153912, 53.430248, 51.110729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975491, 53.528355, 51.237778>,  <38.678123, 53.691868, 51.449524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975491, 53.528355, 51.237778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661813, 0.335298, 0.670506,
		-0.096595, -0.848808, 0.519803,
		0.743420, -0.408780, -0.529364,
		39.198517, 53.405720, 51.078968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047985, 53.136440, 51.780499>,  <38.678123, 53.691868, 51.449524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047985, 53.136440, 51.780499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277481, 53.343903, 51.526939>,  <39.415176, 53.468380, 51.374805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277481, 53.343903, 51.526939>,  <39.047985, 53.136440, 51.780499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277481, 53.343903, 51.526939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492106, 0.400382, 0.772998,
		0.654719, -0.755442, -0.025518,
		0.573738, 0.518654, -0.633895,
		39.449604, 53.499500, 51.336769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561676, 53.338203, 52.178635>,  <39.047985, 53.136440, 51.780499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561676, 53.338203, 52.178635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672070, 53.554829, 51.861008>,  <39.738304, 53.684803, 51.670433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672070, 53.554829, 51.861008>,  <39.561676, 53.338203, 52.178635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672070, 53.554829, 51.861008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569190, 0.573625, 0.589048,
		0.774504, -0.614541, -0.149943,
		0.275983, 0.541566, -0.794065,
		39.754864, 53.717297, 51.622787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037655, 53.599033, 52.702778>,  <39.561676, 53.338203, 52.178635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037655, 53.599033, 52.702778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799809, 53.765720, 52.977814>,  <39.657101, 53.865734, 53.142838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799809, 53.765720, 52.977814>,  <40.037655, 53.599033, 52.702778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799809, 53.765720, 52.977814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557470, 0.829934, -0.020899,
		-0.579365, 0.370885, -0.725796,
		-0.594612, 0.416718, 0.687592,
		39.621426, 53.890736, 53.184090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669262, 53.374790, 52.917088>,  <40.037655, 53.599033, 52.702778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669262, 53.374790, 52.917088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721436, 52.978943, 52.941223>,  <40.752739, 52.741436, 52.955704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721436, 52.978943, 52.941223>,  <40.669262, 53.374790, 52.917088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721436, 52.978943, 52.941223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871322, 0.143457, 0.469274,
		-0.473058, -0.008639, 0.880989,
		0.130438, -0.989619, 0.060336,
		40.760567, 52.682056, 52.959324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111568, 53.272377, 53.379974>,  <40.669262, 53.374790, 52.917088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111568, 53.272377, 53.379974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119392, 52.921497, 53.188080>,  <41.124084, 52.710972, 53.072945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119392, 52.921497, 53.188080>,  <41.111568, 53.272377, 53.379974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119392, 52.921497, 53.188080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931335, -0.158534, 0.327845,
		-0.363639, -0.453207, 0.813862,
		0.019557, -0.877195, -0.479736,
		41.125259, 52.658340, 53.044159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035091, 52.698040, 53.813431>,  <41.111568, 53.272377, 53.379974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035091, 52.698040, 53.813431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274914, 52.615074, 53.504234>,  <41.418808, 52.565296, 53.318718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274914, 52.615074, 53.504234>,  <41.035091, 52.698040, 53.813431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274914, 52.615074, 53.504234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779677, -0.066640, 0.622626,
		-0.180653, -0.975981, 0.121762,
		0.599556, -0.207414, -0.772989,
		41.454781, 52.552849, 53.272339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460632, 52.239750, 54.085594>,  <41.035091, 52.698040, 53.813431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460632, 52.239750, 54.085594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.652359, 52.417576, 53.782909>,  <41.767395, 52.524273, 53.601299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.652359, 52.417576, 53.782909>,  <41.460632, 52.239750, 54.085594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652359, 52.417576, 53.782909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827252, 0.059099, 0.558714,
		0.293108, -0.893793, -0.339444,
		0.479313, 0.444569, -0.756714,
		41.796154, 52.550945, 53.555897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025917, 51.808651, 54.121403>,  <41.460632, 52.239750, 54.085594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025917, 51.808651, 54.121403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120167, 52.176666, 53.996178>,  <42.176716, 52.397476, 53.921043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120167, 52.176666, 53.996178>,  <42.025917, 51.808651, 54.121403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120167, 52.176666, 53.996178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830230, -0.023118, 0.556941,
		0.505170, -0.391143, -0.769292,
		0.235629, 0.920039, -0.313060,
		42.190857, 52.452679, 53.902260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691067, 51.952999, 53.836090>,  <42.025917, 51.808651, 54.121403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691067, 51.952999, 53.836090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575596, 52.293896, 54.010605>,  <42.506313, 52.498436, 54.115314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575596, 52.293896, 54.010605>,  <42.691067, 51.952999, 53.836090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575596, 52.293896, 54.010605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831260, -0.002993, 0.555876,
		0.475048, 0.523136, -0.707572,
		-0.288681, 0.852244, 0.436284,
		42.488991, 52.549568, 54.141491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689106, 51.239124, 53.993256>,  <42.691067, 51.952999, 53.836090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689106, 51.239124, 53.993256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787964, 51.060825, 54.337402>,  <42.847279, 50.953846, 54.543888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787964, 51.060825, 54.337402>,  <42.689106, 51.239124, 53.993256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787964, 51.060825, 54.337402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883890, -0.467550, 0.011662,
		0.397065, -0.763350, -0.509545,
		0.247140, -0.445751, 0.860365,
		42.862106, 50.927101, 54.595512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895336, 50.576939, 53.971043>,  <42.689106, 51.239124, 53.993256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895336, 50.576939, 53.971043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689320, 50.708168, 54.287804>,  <42.565712, 50.786907, 54.477859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689320, 50.708168, 54.287804>,  <42.895336, 50.576939, 53.971043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689320, 50.708168, 54.287804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699655, -0.694625, -0.167268,
		0.495197, -0.640205, 0.587297,
		-0.515037, 0.328075, 0.791899,
		42.534809, 50.806591, 54.525372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339241, 50.242538, 53.453995>,  <42.895336, 50.576939, 53.971043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339241, 50.242538, 53.453995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537422, 49.969337, 53.239323>,  <43.656330, 49.805416, 53.110519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537422, 49.969337, 53.239323>,  <43.339241, 50.242538, 53.453995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537422, 49.969337, 53.239323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717616, -0.026290, 0.695943,
		-0.489440, -0.729942, 0.477109,
		0.495454, -0.683004, -0.536685,
		43.686058, 49.764435, 53.078316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806816, 50.837570, 53.450649>,  <43.339241, 50.242538, 53.453995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806816, 50.837570, 53.450649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.851040, 50.780762, 53.844116>,  <43.877575, 50.746677, 54.080196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.851040, 50.780762, 53.844116>,  <43.806816, 50.837570, 53.450649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.851040, 50.780762, 53.844116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825489, 0.564305, -0.011306,
		-0.553485, 0.813259, 0.179622,
		0.110556, -0.142018, 0.983671,
		43.884205, 50.738155, 54.139217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.645264, 51.412170, 53.931007>,  <43.806816, 50.837570, 53.450649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.645264, 51.412170, 53.931007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920856, 51.182327, 54.107700>,  <44.086212, 51.044422, 54.213718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920856, 51.182327, 54.107700>,  <43.645264, 51.412170, 53.931007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920856, 51.182327, 54.107700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675416, 0.730106, -0.103726,
		-0.262911, 0.369820, 0.891129,
		0.688978, -0.574612, 0.441735,
		44.127548, 51.009945, 54.240219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854832, 51.790955, 54.422440>,  <43.645264, 51.412170, 53.931007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854832, 51.790955, 54.422440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152359, 51.548210, 54.310406>,  <44.330875, 51.402565, 54.243183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152359, 51.548210, 54.310406>,  <43.854832, 51.790955, 54.422440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152359, 51.548210, 54.310406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620395, 0.782789, -0.048482,
		0.248671, -0.137702, 0.958750,
		0.743823, -0.606860, -0.280087,
		44.375507, 51.366154, 54.226379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454788, 52.026905, 54.838303>,  <43.854832, 51.790955, 54.422440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.454788, 52.026905, 54.838303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549179, 51.818939, 54.509911>,  <44.605816, 51.694160, 54.312874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549179, 51.818939, 54.509911>,  <44.454788, 52.026905, 54.838303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549179, 51.818939, 54.509911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693650, 0.681795, -0.232388,
		0.680560, -0.514634, 0.521526,
		0.235979, -0.519911, -0.820979,
		44.619972, 51.662968, 54.263618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.240536, 51.800640, 54.883911>,  <44.454788, 52.026905, 54.838303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.240536, 51.800640, 54.883911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.060459, 51.855846, 54.531033>,  <44.952412, 51.888969, 54.319305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.060459, 51.855846, 54.531033>,  <45.240536, 51.800640, 54.883911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.060459, 51.855846, 54.531033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578477, 0.797700, -0.170409,
		0.680213, -0.587049, -0.438957,
		-0.450194, 0.138012, -0.882200,
		44.925400, 51.897251, 54.266373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.756741, 52.021393, 54.392433>,  <45.240536, 51.800640, 54.883911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.756741, 52.021393, 54.392433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.403809, 52.126663, 54.236366>,  <45.192051, 52.189823, 54.142727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.403809, 52.126663, 54.236366>,  <45.756741, 52.021393, 54.392433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.403809, 52.126663, 54.236366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395313, 0.864302, -0.310981,
		0.255383, -0.428627, -0.866636,
		-0.882331, 0.263173, -0.390170,
		45.139111, 52.205616, 54.119316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.744926, 52.175205, 53.566242>,  <45.756741, 52.021393, 54.392433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.744926, 52.175205, 53.566242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.529865, 52.389282, 53.826859>,  <45.400829, 52.517727, 53.983227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.529865, 52.389282, 53.826859>,  <45.744926, 52.175205, 53.566242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.529865, 52.389282, 53.826859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638184, 0.763313, -0.100371,
		-0.551047, 0.361839, -0.751944,
		-0.537651, 0.535188, 0.651541,
		45.368568, 52.549839, 54.022320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.388432, 52.693825, 53.236496>,  <45.744926, 52.175205, 53.566242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.388432, 52.693825, 53.236496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521320, 52.733887, 53.611645>,  <45.601055, 52.757923, 53.836735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521320, 52.733887, 53.611645>,  <45.388432, 52.693825, 53.236496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.521320, 52.733887, 53.611645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525099, 0.806363, -0.272120,
		-0.783516, 0.582878, 0.215302,
		0.332224, 0.100155, 0.937868,
		45.620987, 52.763935, 53.893005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.245232, 53.363102, 53.715485>,  <45.388432, 52.693825, 53.236496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.245232, 53.363102, 53.715485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593884, 53.193726, 53.814247>,  <45.803074, 53.092098, 53.873505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593884, 53.193726, 53.814247>,  <45.245232, 53.363102, 53.715485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.593884, 53.193726, 53.814247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479709, 0.840419, -0.252142,
		-0.100740, 0.338218, 0.935660,
		0.871625, -0.423444, 0.246910,
		45.855370, 53.066692, 53.888321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.746326, 53.794254, 54.161304>,  <45.245232, 53.363102, 53.715485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.746326, 53.794254, 54.161304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.980865, 53.555080, 53.942699>,  <46.121590, 53.411575, 53.811535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.980865, 53.555080, 53.942699>,  <45.746326, 53.794254, 54.161304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.980865, 53.555080, 53.942699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551339, 0.788852, -0.271547,
		0.593485, -0.142093, 0.792203,
		0.586346, -0.597931, -0.546513,
		46.156769, 53.375702, 53.778744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.243797, 54.245651, 53.994789>,  <45.746326, 53.794254, 54.161304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.243797, 54.245651, 53.994789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.309635, 53.921761, 53.769489>,  <46.349140, 53.727425, 53.634312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.309635, 53.921761, 53.769489>,  <46.243797, 54.245651, 53.994789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.309635, 53.921761, 53.769489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674324, 0.509125, -0.534863,
		0.719857, -0.291773, 0.629821,
		0.164600, -0.809728, -0.563247,
		46.359016, 53.678841, 53.600513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.919323, 53.966118, 54.163418>,  <46.243797, 54.245651, 53.994789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.919323, 53.966118, 54.163418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.821041, 53.871475, 53.787407>,  <46.762070, 53.814690, 53.561802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.821041, 53.871475, 53.787407>,  <46.919323, 53.966118, 54.163418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.821041, 53.871475, 53.787407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759106, 0.556100, -0.338394,
		0.602814, -0.796724, 0.042974,
		-0.245709, -0.236611, -0.940023,
		46.747330, 53.800491, 53.505402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.479771, 53.611794, 53.670765>,  <46.919323, 53.966118, 54.163418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.479771, 53.611794, 53.670765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.204990, 53.822891, 53.470932>,  <47.040123, 53.949551, 53.351032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.204990, 53.822891, 53.470932>,  <47.479771, 53.611794, 53.670765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.204990, 53.822891, 53.470932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709819, 0.634610, -0.305660,
		0.155730, -0.564587, -0.810549,
		-0.686954, 0.527743, -0.499582,
		46.998905, 53.981213, 53.321056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.508007, 54.154491, 53.237164>,  <47.479771, 53.611794, 53.670765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.508007, 54.154491, 53.237164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.807678, 53.935600, 53.386444>,  <47.987480, 53.804264, 53.476013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.807678, 53.935600, 53.386444>,  <47.508007, 54.154491, 53.237164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.807678, 53.935600, 53.386444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414671, 0.826841, 0.379977,
		-0.516513, -0.129912, 0.846367,
		0.749175, -0.547227, 0.373203,
		48.032429, 53.771431, 53.498405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.555283, 54.300087, 54.045033>,  <47.508007, 54.154491, 53.237164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.555283, 54.300087, 54.045033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.891514, 54.180012, 53.864670>,  <48.093254, 54.107967, 53.756454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.891514, 54.180012, 53.864670>,  <47.555283, 54.300087, 54.045033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.891514, 54.180012, 53.864670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494318, 0.765514, 0.411872,
		0.221535, -0.569101, 0.791863,
		0.840579, -0.300188, -0.450905,
		48.143688, 54.089954, 53.729397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.084946, 54.079006, 54.501205>,  <47.555283, 54.300087, 54.045033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.084946, 54.079006, 54.501205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.268024, 54.198631, 54.166283>,  <48.377872, 54.270405, 53.965328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.268024, 54.198631, 54.166283>,  <48.084946, 54.079006, 54.501205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.268024, 54.198631, 54.166283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560148, 0.634344, 0.532767,
		0.690470, -0.712859, 0.122817,
		0.457696, 0.299064, -0.837302,
		48.405334, 54.288349, 53.915092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.633202, 54.305786, 54.792206>,  <48.084946, 54.079006, 54.501205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.633202, 54.305786, 54.792206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.658733, 54.437534, 54.415390>,  <48.674053, 54.516582, 54.189301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.658733, 54.437534, 54.415390>,  <48.633202, 54.305786, 54.792206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.658733, 54.437534, 54.415390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635792, 0.714178, 0.292777,
		0.769217, -0.617629, -0.163826,
		0.063827, 0.329368, -0.942042,
		48.677883, 54.536346, 54.132778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.336697, 54.083870, 54.454662>,  <48.633202, 54.305786, 54.792206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.336697, 54.083870, 54.454662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.163063, 54.417938, 54.319572>,  <49.058884, 54.618382, 54.238518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.163063, 54.417938, 54.319572>,  <49.336697, 54.083870, 54.454662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.163063, 54.417938, 54.319572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872170, 0.483480, 0.074606,
		0.225591, -0.262166, -0.938284,
		-0.434082, 0.835174, -0.337722,
		49.032837, 54.668491, 54.218254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.760490, 54.312183, 53.839214>,  <49.336697, 54.083870, 54.454662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.760490, 54.312183, 53.839214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.544952, 54.593948, 54.024017>,  <49.415630, 54.763008, 54.134899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.544952, 54.593948, 54.024017>,  <49.760490, 54.312183, 53.839214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.544952, 54.593948, 54.024017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814489, 0.575661, 0.072265,
		-0.215056, 0.415241, -0.883927,
		-0.538849, 0.704408, 0.462008,
		49.383297, 54.805271, 54.162621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.793213, 54.936550, 53.481113>,  <49.760490, 54.312183, 53.839214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.793213, 54.936550, 53.481113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.743996, 55.046223, 53.862625>,  <49.714466, 55.112026, 54.091530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.743996, 55.046223, 53.862625>,  <49.793213, 54.936550, 53.481113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.743996, 55.046223, 53.862625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776642, 0.624912, -0.079451,
		-0.617809, 0.730967, -0.289827,
		-0.123041, 0.274178, 0.953775,
		49.707085, 55.128475, 54.148758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.642872, 55.688782, 53.502949>,  <49.793213, 54.936550, 53.481113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.642872, 55.688782, 53.502949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.816517, 55.513798, 53.817955>,  <49.920704, 55.408806, 54.006958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.816517, 55.513798, 53.817955>,  <49.642872, 55.688782, 53.502949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.816517, 55.513798, 53.817955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860452, 0.460226, -0.218665,
		-0.266777, 0.772541, 0.576203,
		0.434112, -0.437460, 0.787512,
		49.946751, 55.382561, 54.054207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.946861, 56.163059, 54.018852>,  <49.642872, 55.688782, 53.502949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.946861, 56.163059, 54.018852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.120399, 55.805477, 53.973911>,  <50.224522, 55.590927, 53.946949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.120399, 55.805477, 53.973911>,  <49.946861, 56.163059, 54.018852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.120399, 55.805477, 53.973911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843006, 0.446771, -0.299560,
		0.317987, 0.035253, 0.947439,
		0.433848, -0.893954, -0.112349,
		50.250553, 55.537292, 53.940208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.609791, 56.286251, 54.022736>,  <49.946861, 56.163059, 54.018852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.609791, 56.286251, 54.022736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.650806, 55.935616, 53.834656>,  <50.675415, 55.725235, 53.721809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.650806, 55.935616, 53.834656>,  <50.609791, 56.286251, 54.022736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.650806, 55.935616, 53.834656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813165, 0.346117, -0.467938,
		0.572930, -0.334367, 0.748298,
		0.102536, -0.876585, -0.470196,
		50.681568, 55.672642, 53.693596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.292923, 55.962612, 54.055801>,  <50.609791, 56.286251, 54.022736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.292923, 55.962612, 54.055801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.075100, 55.879333, 53.730812>,  <50.944408, 55.829365, 53.535820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.075100, 55.879333, 53.730812>,  <51.292923, 55.962612, 54.055801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.075100, 55.879333, 53.730812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815863, 0.093141, -0.570694,
		0.194491, -0.973642, 0.119139,
		-0.544555, -0.208196, -0.812474,
		50.911732, 55.816875, 53.487068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.655384, 55.391819, 53.629684>,  <51.292923, 55.962612, 54.055801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.655384, 55.391819, 53.629684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.396450, 55.609043, 53.415749>,  <51.241089, 55.739376, 53.287388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.396450, 55.609043, 53.415749>,  <51.655384, 55.391819, 53.629684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.396450, 55.609043, 53.415749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598757, -0.071892, -0.797697,
		-0.471645, -0.836613, -0.278621,
		-0.647334, 0.543056, -0.534835,
		51.202251, 55.771961, 53.255299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.707806, 55.067066, 52.952934>,  <51.655384, 55.391819, 53.629684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.707806, 55.067066, 52.952934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.524029, 55.410286, 52.861137>,  <51.413765, 55.616219, 52.806057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.524029, 55.410286, 52.861137>,  <51.707806, 55.067066, 52.952934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.524029, 55.410286, 52.861137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467942, 0.014215, -0.883645,
		-0.754948, -0.513371, -0.408048,
		-0.459438, 0.858049, -0.229496,
		51.386196, 55.667702, 52.792290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.485855, 54.975052, 52.719757>,  <51.707806, 55.067066, 52.952934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.485855, 54.975052, 52.719757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.673618, 55.057457, 52.376312>,  <52.786278, 55.106899, 52.170246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.673618, 55.057457, 52.376312>,  <52.485855, 54.975052, 52.719757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.673618, 55.057457, 52.376312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851743, 0.150713, 0.501817,
		0.232784, -0.966874, -0.104723,
		0.469410, 0.206012, -0.858611,
		52.814442, 55.119259, 52.118729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.142914, 54.675182, 52.663990>,  <52.485855, 54.975052, 52.719757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.142914, 54.675182, 52.663990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.205902, 54.974442, 52.406158>,  <53.243694, 55.153996, 52.251461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.205902, 54.974442, 52.406158>,  <53.142914, 54.675182, 52.663990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.205902, 54.974442, 52.406158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883805, 0.184423, 0.429974,
		0.440558, -0.637391, -0.632172,
		0.157474, 0.748145, -0.644579,
		53.253143, 55.198883, 52.212784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.828068, 54.632141, 52.360565>,  <53.142914, 54.675182, 52.663990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.828068, 54.632141, 52.360565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.716557, 55.015301, 52.333092>,  <53.649651, 55.245197, 52.316608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.716557, 55.015301, 52.333092>,  <53.828068, 54.632141, 52.360565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.716557, 55.015301, 52.333092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873174, 0.282597, 0.397121,
		0.399810, 0.050738, -0.915193,
		-0.278780, 0.957896, -0.068682,
		53.632923, 55.302670, 52.312489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.330452, 55.125835, 51.951477>,  <53.828068, 54.632141, 52.360565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.330452, 55.125835, 51.951477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.121956, 55.326252, 52.227814>,  <53.996857, 55.446503, 52.393616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.121956, 55.326252, 52.227814>,  <54.330452, 55.125835, 51.951477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.121956, 55.326252, 52.227814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842976, 0.428474, 0.325271,
		-0.133036, 0.751911, -0.645702,
		-0.521241, 0.501039, 0.690845,
		53.965584, 55.476562, 52.435066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.819839, 55.428562, 51.429409>,  <54.330452, 55.125835, 51.951477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.819839, 55.428562, 51.429409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.161896, 55.331768, 51.246025>,  <55.367130, 55.273693, 51.135994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.161896, 55.331768, 51.246025>,  <54.819839, 55.428562, 51.429409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.161896, 55.331768, 51.246025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430500, 0.824173, 0.367978,
		0.288804, -0.512038, 0.808956,
		0.855139, -0.241982, -0.458457,
		55.418438, 55.259174, 51.108486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.397869, 55.618885, 51.803120>,  <54.819839, 55.428562, 51.429409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.397869, 55.618885, 51.803120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.550514, 55.586250, 51.434834>,  <55.642101, 55.566669, 51.213863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.550514, 55.586250, 51.434834>,  <55.397869, 55.618885, 51.803120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.550514, 55.586250, 51.434834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541740, 0.826823, 0.151268,
		0.748926, -0.556514, 0.359724,
		0.381610, -0.081589, -0.920715,
		55.664997, 55.561775, 51.158619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.122509, 55.739471, 51.842438>,  <55.397869, 55.618885, 51.803120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.122509, 55.739471, 51.842438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.016350, 55.836720, 51.469246>,  <55.952656, 55.895069, 51.245331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.016350, 55.836720, 51.469246>,  <56.122509, 55.739471, 51.842438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.016350, 55.836720, 51.469246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481552, 0.871765, 0.090188,
		0.835267, -0.425343, -0.348442,
		-0.265398, 0.243124, -0.932981,
		55.936729, 55.909657, 51.189350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.657085, 55.988022, 52.195415>,  <56.122509, 55.739471, 51.842438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.657085, 55.988022, 52.195415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.971146, 56.147526, 52.005875>,  <57.159580, 56.243229, 51.892151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.971146, 56.147526, 52.005875>,  <56.657085, 55.988022, 52.195415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.971146, 56.147526, 52.005875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315119, 0.915908, 0.248623,
		0.533141, -0.045887, 0.844781,
		0.785150, 0.398758, -0.473848,
		57.206692, 56.267155, 51.863720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.073956, 56.552353, 52.554955>,  <56.657085, 55.988022, 52.195415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.073956, 56.552353, 52.554955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.163757, 56.634388, 52.173897>,  <57.217640, 56.683609, 51.945263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.163757, 56.634388, 52.173897>,  <57.073956, 56.552353, 52.554955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.163757, 56.634388, 52.173897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042681, 0.974594, 0.219874,
		0.973538, -0.090023, 0.210048,
		0.224505, 0.205090, -0.952646,
		57.231110, 56.695915, 51.888103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.619854, 56.974846, 52.616875>,  <57.073956, 56.552353, 52.554955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.619854, 56.974846, 52.616875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.486809, 57.042274, 52.245724>,  <57.406982, 57.082733, 52.023033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.486809, 57.042274, 52.245724>,  <57.619854, 56.974846, 52.616875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.486809, 57.042274, 52.245724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194541, 0.974997, 0.107396,
		0.922781, -0.144788, -0.357089,
		-0.332611, 0.168572, -0.927876,
		57.387024, 57.092846, 51.967361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.136059, 57.331924, 52.254715>,  <57.619854, 56.974846, 52.616875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.136059, 57.331924, 52.254715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.802269, 57.391151, 52.042404>,  <57.601994, 57.426689, 51.915020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.802269, 57.391151, 52.042404>,  <58.136059, 57.331924, 52.254715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.802269, 57.391151, 52.042404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267958, 0.950706, -0.156069,
		0.481501, -0.272462, -0.833019,
		-0.834479, 0.148067, -0.530774,
		57.551926, 57.435570, 51.883171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.303635, 58.060966, 52.509483>,  <58.136059, 57.331924, 52.254715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.303635, 58.060966, 52.509483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.567963, 58.278435, 52.716457>,  <58.726559, 58.408916, 52.840641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.567963, 58.278435, 52.716457>,  <58.303635, 58.060966, 52.509483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.567963, 58.278435, 52.716457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366139, 0.368307, -0.854571,
		-0.655181, 0.754171, 0.044325,
		0.660818, 0.543669, 0.517439,
		58.766209, 58.441536, 52.871689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.253174, 58.716560, 52.229462>,  <58.303635, 58.060966, 52.509483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.253174, 58.716560, 52.229462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.608521, 58.646854, 52.399368>,  <58.821728, 58.605030, 52.501312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.608521, 58.646854, 52.399368>,  <58.253174, 58.716560, 52.229462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.608521, 58.646854, 52.399368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459097, 0.347657, -0.817536,
		-0.005211, 0.921286, 0.388851,
		0.888371, -0.174261, 0.424771,
		58.875031, 58.594578, 52.526798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.686161, 59.111965, 51.900318>,  <58.253174, 58.716560, 52.229462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.686161, 59.111965, 51.900318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.962067, 58.892036, 52.088749>,  <59.127609, 58.760078, 52.201809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.962067, 58.892036, 52.088749>,  <58.686161, 59.111965, 51.900318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.962067, 58.892036, 52.088749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695034, 0.320543, -0.643568,
		0.202849, 0.771327, 0.603247,
		0.689768, -0.549825, 0.471077,
		59.168999, 58.727089, 52.230072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.329247, 59.535439, 52.063885>,  <58.686161, 59.111965, 51.900318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.329247, 59.535439, 52.063885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.399216, 59.145996, 52.005245>,  <59.441196, 58.912331, 51.970062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.399216, 59.145996, 52.005245>,  <59.329247, 59.535439, 52.063885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.399216, 59.145996, 52.005245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770965, 0.228054, -0.594646,
		0.612383, -0.009001, 0.790510,
		0.174927, -0.973607, -0.146596,
		59.451694, 58.853912, 51.961266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.099438, 59.803829, 52.182510>,  <59.329247, 59.535439, 52.063885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.099438, 59.803829, 52.182510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.204887, 59.928337, 52.547722>,  <60.268158, 60.003040, 52.766850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.204887, 59.928337, 52.547722>,  <60.099438, 59.803829, 52.182510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.204887, 59.928337, 52.547722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610716, -0.678797, 0.407750,
		0.746679, -0.665091, 0.011151,
		0.263622, 0.311268, 0.913026,
		60.283974, 60.021717, 52.821629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.238441, 59.140690, 52.643295>,  <60.099438, 59.803829, 52.182510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.238441, 59.140690, 52.643295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.179764, 59.472473, 52.858879>,  <60.144558, 59.671543, 52.988228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.179764, 59.472473, 52.858879>,  <60.238441, 59.140690, 52.643295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.179764, 59.472473, 52.858879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689172, -0.476554, 0.545837,
		0.709593, -0.291364, 0.641549,
		-0.146695, 0.829459, 0.538959,
		60.135754, 59.721310, 53.020569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.129036, 58.984821, 53.344166>,  <60.238441, 59.140690, 52.643295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.129036, 58.984821, 53.344166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.909439, 59.312363, 53.277130>,  <59.777679, 59.508888, 53.236908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.909439, 59.312363, 53.277130>,  <60.129036, 58.984821, 53.344166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.909439, 59.312363, 53.277130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781864, -0.432247, 0.449279,
		0.295455, 0.377681, 0.877533,
		-0.548995, 0.818853, -0.167585,
		59.744740, 59.558018, 53.226856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.701168, 59.144920, 53.891743>,  <60.129036, 58.984821, 53.344166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.701168, 59.144920, 53.891743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.534027, 59.272865, 53.551605>,  <59.433743, 59.349632, 53.347523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.534027, 59.272865, 53.551605>,  <59.701168, 59.144920, 53.891743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.534027, 59.272865, 53.551605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771800, -0.618758, 0.146504,
		-0.479297, 0.717514, 0.505418,
		-0.417851, 0.319863, -0.850346,
		59.408672, 59.368824, 53.296501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.270359, 59.094490, 54.448864>,  <59.701168, 59.144920, 53.891743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.270359, 59.094490, 54.448864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.336105, 59.160301, 54.837898>,  <60.375553, 59.199787, 55.071320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.336105, 59.160301, 54.837898>,  <60.270359, 59.094490, 54.448864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.336105, 59.160301, 54.837898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985105, -0.023117, 0.170392,
		0.050517, -0.986102, 0.158275,
		0.164365, 0.164525, 0.972582,
		60.385414, 59.209660, 55.129673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.121376, 58.507572, 54.922672>,  <60.270359, 59.094490, 54.448864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.121376, 58.507572, 54.922672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.028175, 58.847496, 55.111786>,  <59.972256, 59.051453, 55.225254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.028175, 58.847496, 55.111786>,  <60.121376, 58.507572, 54.922672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.028175, 58.847496, 55.111786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945917, -0.310898, 0.092647,
		0.225722, -0.425632, 0.876292,
		-0.233004, 0.849812, 0.472789,
		59.958275, 59.102440, 55.253624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.674488, 58.118538, 55.453289>,  <60.121376, 58.507572, 54.922672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.674488, 58.118538, 55.453289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.044769, 58.225201, 55.560600>,  <61.266937, 58.289200, 55.624989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.044769, 58.225201, 55.560600>,  <60.674488, 58.118538, 55.453289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.044769, 58.225201, 55.560600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262445, -0.057979, 0.963204,
		0.272401, -0.962045, 0.016312,
		0.925700, 0.266659, 0.268277,
		61.322479, 58.305199, 55.641083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.927956, 57.595085, 55.826996>,  <60.674488, 58.118538, 55.453289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.927956, 57.595085, 55.826996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.049545, 57.951252, 55.962502>,  <61.122498, 58.164951, 56.043804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.049545, 57.951252, 55.962502>,  <60.927956, 57.595085, 55.826996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.049545, 57.951252, 55.962502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396859, -0.204920, 0.894713,
		0.866086, -0.406408, 0.291080,
		0.303970, 0.890416, 0.338764,
		61.140736, 58.218376, 56.064133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.438286, 57.489220, 56.357815>,  <60.927956, 57.595085, 55.826996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.438286, 57.489220, 56.357815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.217896, 57.819996, 56.402702>,  <61.085659, 58.018463, 56.429634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.217896, 57.819996, 56.402702>,  <61.438286, 57.489220, 56.357815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.217896, 57.819996, 56.402702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366665, -0.360681, 0.857593,
		0.749653, 0.431369, 0.501938,
		-0.550979, 0.826940, 0.112217,
		61.052601, 58.068077, 56.436367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.867741, 57.057571, 56.948196>,  <61.438286, 57.489220, 56.357815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.867741, 57.057571, 56.948196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.050270, 57.342674, 57.161270>,  <62.159786, 57.513737, 57.289112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.050270, 57.342674, 57.161270>,  <61.867741, 57.057571, 56.948196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.050270, 57.342674, 57.161270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800424, -0.590312, 0.104185,
		0.388706, 0.378828, -0.839879,
		0.456322, 0.712756, 0.532680,
		62.187168, 57.556499, 57.321075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.540676, 57.222450, 56.675087>,  <61.867741, 57.057571, 56.948196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.540676, 57.222450, 56.675087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.548668, 57.341545, 57.056862>,  <62.553463, 57.413002, 57.285927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.548668, 57.341545, 57.056862>,  <62.540676, 57.222450, 56.675087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.548668, 57.341545, 57.056862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803299, -0.573128, 0.161972,
		0.595240, 0.763465, -0.250619,
		0.019977, 0.297734, 0.954440,
		62.554661, 57.430866, 57.343193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.148724, 57.263508, 56.889950>,  <62.540676, 57.222450, 56.675087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.148724, 57.263508, 56.889950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.956787, 57.215508, 57.237595>,  <62.841625, 57.186707, 57.446182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.956787, 57.215508, 57.237595>,  <63.148724, 57.263508, 56.889950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.956787, 57.215508, 57.237595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718411, -0.622372, 0.310706,
		0.503626, 0.773468, 0.384847,
		-0.479839, -0.119999, 0.869111,
		62.812836, 57.179508, 57.498329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.629589, 57.134144, 57.330143>,  <63.148724, 57.263508, 56.889950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.629589, 57.134144, 57.330143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.314911, 57.052006, 57.563019>,  <63.126102, 57.002724, 57.702744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.314911, 57.052006, 57.563019>,  <63.629589, 57.134144, 57.330143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.314911, 57.052006, 57.563019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578720, -0.573625, 0.579687,
		0.214922, 0.792961, 0.570106,
		-0.786697, -0.205344, 0.582187,
		63.078903, 56.990402, 57.737675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.621685, 57.409470, 58.099255>,  <63.629589, 57.134144, 57.330143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.621685, 57.409470, 58.099255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.428680, 57.059753, 58.078102>,  <63.312878, 56.849922, 58.065411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.428680, 57.059753, 58.078102>,  <63.621685, 57.409470, 58.099255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.428680, 57.059753, 58.078102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463007, -0.305849, 0.831914,
		-0.743509, 0.376924, 0.552379,
		-0.482513, -0.874291, -0.052883,
		63.283928, 56.797466, 58.062237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.822529, 56.884346, 58.466915>,  <63.621685, 57.409470, 58.099255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.822529, 56.884346, 58.466915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.782188, 56.800713, 58.855988>,  <63.757984, 56.750530, 59.089432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.782188, 56.800713, 58.855988>,  <63.822529, 56.884346, 58.466915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.782188, 56.800713, 58.855988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199820, 0.953489, 0.225679,
		-0.974628, 0.217122, -0.054384,
		-0.100854, -0.209086, 0.972682,
		63.751930, 56.737988, 59.147793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.739853, 56.393524, 57.832649>,  <63.822529, 56.884346, 58.466915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.739853, 56.393524, 57.832649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.682838, 56.180759, 58.166534>,  <63.648628, 56.053101, 58.366867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.682838, 56.180759, 58.166534>,  <63.739853, 56.393524, 57.832649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.682838, 56.180759, 58.166534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967016, 0.105024, 0.232058,
		-0.211101, 0.840259, 0.499401,
		-0.142539, -0.531916, 0.834714,
		63.640076, 56.021183, 58.416950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.462387, 56.138378, 58.142147>,  <63.739853, 56.393524, 57.832649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.462387, 56.138378, 58.142147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.750427, 55.926132, 58.320992>,  <64.923248, 55.798786, 58.428299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.750427, 55.926132, 58.320992>,  <64.462387, 56.138378, 58.142147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.750427, 55.926132, 58.320992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589352, 0.127615, -0.797734,
		0.366228, 0.837953, 0.404612,
		0.720098, -0.530611, 0.447113,
		64.966454, 55.766949, 58.455124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.103989, 56.383301, 58.131950>,  <64.462387, 56.138378, 58.142147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.103989, 56.383301, 58.131950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.176437, 55.991943, 58.171844>,  <65.219910, 55.757130, 58.195782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.176437, 55.991943, 58.171844>,  <65.103989, 56.383301, 58.131950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.176437, 55.991943, 58.171844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609043, 0.031957, -0.792493,
		0.772180, 0.204282, 0.601670,
		0.181120, -0.978390, 0.099740,
		65.230774, 55.698425, 58.201767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.658081, 55.950188, 58.282784>,  <65.103989, 56.383301, 58.131950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.658081, 55.950188, 58.282784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.906403, 55.750217, 58.524338>,  <66.055397, 55.630238, 58.669270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.906403, 55.750217, 58.524338>,  <65.658081, 55.950188, 58.282784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.906403, 55.750217, 58.524338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724147, 0.070555, -0.686027,
		0.300353, 0.863191, 0.405819,
		0.620805, -0.499923, 0.603886,
		66.092644, 55.600239, 58.705505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.225639, 56.277794, 58.632847>,  <65.658081, 55.950188, 58.282784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.225639, 56.277794, 58.632847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.306900, 55.898403, 58.535583>,  <66.355659, 55.670769, 58.477226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.306900, 55.898403, 58.535583>,  <66.225639, 56.277794, 58.632847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.306900, 55.898403, 58.535583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677122, 0.315467, -0.664821,
		0.707274, -0.029588, 0.706320,
		0.203150, -0.948475, -0.243156,
		66.367844, 55.613861, 58.462635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.973953, 56.127975, 58.759487>,  <66.225639, 56.277794, 58.632847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.973953, 56.127975, 58.759487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.840462, 55.856579, 58.497719>,  <66.760368, 55.693741, 58.340656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.840462, 55.856579, 58.497719>,  <66.973953, 56.127975, 58.759487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.840462, 55.856579, 58.497719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677353, 0.310218, -0.667052,
		0.655603, -0.665894, 0.356047,
		-0.333734, -0.678491, -0.654425,
		66.740341, 55.653030, 58.301392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.884964, 56.701817, 58.171692>,  <66.973953, 56.127975, 58.759487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.884964, 56.701817, 58.171692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.170052, 56.558704, 58.413033>,  <67.341103, 56.472836, 58.557838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.170052, 56.558704, 58.413033>,  <66.884964, 56.701817, 58.171692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.170052, 56.558704, 58.413033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677216, 0.126795, -0.724777,
		0.182811, 0.925157, 0.332664,
		0.712712, -0.357783, 0.603351,
		67.383865, 56.451370, 58.594036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.530258, 57.025150, 58.074562>,  <66.884964, 56.701817, 58.171692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.530258, 57.025150, 58.074562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.850861, 56.843987, 58.230751>,  <68.043221, 56.735287, 58.324463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.850861, 56.843987, 58.230751>,  <67.530258, 57.025150, 58.074562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.850861, 56.843987, 58.230751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225963, 0.833944, 0.503467,
		-0.553657, -0.315297, 0.770747,
		0.801501, -0.452908, 0.390474,
		68.091309, 56.708115, 58.347893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.538780, 57.246502, 58.695663>,  <67.530258, 57.025150, 58.074562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.538780, 57.246502, 58.695663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.911072, 57.151581, 58.584366>,  <68.134445, 57.094627, 58.517590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.911072, 57.151581, 58.584366>,  <67.538780, 57.246502, 58.695663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.911072, 57.151581, 58.584366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335996, 0.855260, 0.394509,
		0.144349, -0.460671, 0.875754,
		0.930736, -0.237303, -0.278240,
		68.190292, 57.080391, 58.500893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.058662, 57.549244, 59.183620>,  <67.538780, 57.246502, 58.695663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.058662, 57.549244, 59.183620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.298515, 57.429337, 58.886818>,  <68.442429, 57.357391, 58.708736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.298515, 57.429337, 58.886818>,  <68.058662, 57.549244, 59.183620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.298515, 57.429337, 58.886818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727874, 0.589661, 0.349998,
		0.332613, -0.749959, 0.571777,
		0.599639, -0.299768, -0.742005,
		68.478409, 57.339405, 58.664215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.585159, 57.143742, 59.346088>,  <68.058662, 57.549244, 59.183620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.585159, 57.143742, 59.346088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.670830, 57.374256, 59.030617>,  <68.722229, 57.512566, 58.841331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.670830, 57.374256, 59.030617>,  <68.585159, 57.143742, 59.346088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.670830, 57.374256, 59.030617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746925, 0.423696, 0.512430,
		0.629469, -0.698838, -0.339697,
		0.214177, 0.576287, -0.788683,
		68.735085, 57.547142, 58.794010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.360519, 57.046482, 59.114040>,  <68.585159, 57.143742, 59.346088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.360519, 57.046482, 59.114040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.185081, 57.395470, 59.027855>,  <69.079819, 57.604862, 58.976143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.185081, 57.395470, 59.027855>,  <69.360519, 57.046482, 59.114040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.185081, 57.395470, 59.027855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805148, 0.487996, 0.337041,
		0.399205, -0.025656, -0.916503,
		-0.438603, 0.872469, -0.215468,
		69.053497, 57.657211, 58.963215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.716110, 57.410629, 58.537609>,  <69.360519, 57.046482, 59.114040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.716110, 57.410629, 58.537609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.537567, 57.658772, 58.795578>,  <69.430443, 57.807655, 58.950359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.537567, 57.658772, 58.795578>,  <69.716110, 57.410629, 58.537609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.537567, 57.658772, 58.795578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887756, 0.397573, 0.232003,
		-0.112479, 0.676089, -0.728184,
		-0.446361, 0.620354, 0.644921,
		69.403656, 57.844879, 58.989056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.324280, 57.894836, 58.671791>,  <69.716110, 57.410629, 58.537609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.324280, 57.894836, 58.671791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.608910, 57.901146, 58.390816>,  <70.779686, 57.904934, 58.222229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.608910, 57.901146, 58.390816>,  <70.324280, 57.894836, 58.671791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.608910, 57.901146, 58.390816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258951, 0.923484, 0.283059,
		0.653155, -0.383313, 0.653038,
		0.711571, 0.015776, -0.702438,
		70.822380, 57.905880, 58.180084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.924202, 58.181572, 59.021660>,  <70.324280, 57.894836, 58.671791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.924202, 58.181572, 59.021660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.962540, 58.217300, 58.625107>,  <70.985542, 58.238739, 58.387177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.962540, 58.217300, 58.625107>,  <70.924202, 58.181572, 59.021660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.962540, 58.217300, 58.625107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368690, 0.921941, 0.118712,
		0.924598, -0.376890, 0.055428,
		0.095843, 0.089325, -0.991380,
		70.991295, 58.244099, 58.327694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.670853, 57.899010, 58.899342>,  <70.924202, 58.181572, 59.021660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.670853, 57.899010, 58.899342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.981842, 57.701172, 59.054726>,  <72.168434, 57.582470, 59.147957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.981842, 57.701172, 59.054726>,  <71.670853, 57.899010, 58.899342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.981842, 57.701172, 59.054726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596084, 0.382590, -0.705910,
		0.200515, 0.780388, 0.592274,
		0.777482, -0.494591, 0.388462,
		72.215088, 57.552795, 59.171265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.096870, 58.323849, 59.011848>,  <71.670853, 57.899010, 58.899342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.096870, 58.323849, 59.011848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.291473, 57.983482, 58.932602>,  <72.408234, 57.779263, 58.885056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.291473, 57.983482, 58.932602>,  <72.096870, 58.323849, 59.011848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.291473, 57.983482, 58.932602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690516, 0.513417, -0.509499,
		0.535258, 0.111074, 0.837354,
		0.486504, -0.850920, -0.198112,
		72.437424, 57.728207, 58.873169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.855827, 58.278496, 59.170765>,  <72.096870, 58.323849, 59.011848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.855827, 58.278496, 59.170765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.816414, 58.008472, 58.878304>,  <72.792770, 57.846458, 58.702827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.816414, 58.008472, 58.878304>,  <72.855827, 58.278496, 59.170765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.816414, 58.008472, 58.878304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759823, 0.423428, -0.493333,
		0.642621, -0.604154, 0.471208,
		-0.098526, -0.675061, -0.731154,
		72.786858, 57.805954, 58.658958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.444565, 57.747223, 58.866959>,  <72.855827, 58.278496, 59.170765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.444565, 57.747223, 58.866959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.182968, 57.911964, 58.613136>,  <73.026009, 58.010811, 58.460842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.182968, 57.911964, 58.613136>,  <73.444565, 57.747223, 58.866959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.182968, 57.911964, 58.613136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745967, 0.490564, -0.450423,
		0.125784, -0.767935, -0.628055,
		-0.653997, 0.411852, -0.634560,
		72.986771, 58.035519, 58.422768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.693733, 58.328678, 59.016373>,  <73.444565, 57.747223, 58.866959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.693733, 58.328678, 59.016373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<74.029350, 58.426208, 59.210915>,  <74.230721, 58.484726, 59.327641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<74.029350, 58.426208, 59.210915>,  <73.693733, 58.328678, 59.016373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<74.029350, 58.426208, 59.210915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432655, 0.242958, -0.868206,
		-0.329853, 0.938894, 0.098362,
		0.839051, 0.243823, 0.486358,
		74.281067, 58.499355, 59.356823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.375549, 58.142639, 59.754528>,  <73.693733, 58.328678, 59.016373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.375549, 58.142639, 59.754528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.299652, 58.317806, 60.106033>,  <73.254112, 58.422905, 60.316936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.299652, 58.317806, 60.106033>,  <73.375549, 58.142639, 59.754528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.299652, 58.317806, 60.106033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059711, 0.888219, -0.455524,
		-0.980015, -0.138909, -0.142393,
		-0.189752, 0.437918, 0.878762,
		73.242729, 58.449181, 60.369663>
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
